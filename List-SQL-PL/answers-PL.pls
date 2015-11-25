-- 1
-- status: accepted
DECLARE
  /*
  Bloco anônimo que altera o campo situação das manutenções de equipamentos de 'CONCLUIDA' para 'FINALIZADA'.
  */
  v_nova_situacao manutencoes_equipamentos.situacao%TYPE := 'FINALIZADA';
BEGIN
  -- Atualiza a tabela
  UPDATE manutencoes_equipamentos
    SET situacao = v_nova_situacao
    WHERE situacao = 'CONCLUIDA';
END;
/

-- 2
-- status: accepted
set serveroutput on;

CREATE OR REPLACE PROCEDURE contato (cpf IN funcionarios.cpf%TYPE) IS
  tel telefones_funcionarios.fone%TYPE;
  cep enderecos_funcionarios.cep%TYPE;
  descricao enderecos_funcionarios.descricao%TYPE;

BEGIN
  SELECT DISTINCT T.fone INTO tel FROM telefones_funcionarios T WHERE T.funcionario_cpf = cpf;
  SELECT DISTINCT E.cep INTO cep FROM enderecos_funcionarios E WHERE E.funcionario_cpf = cpf;
  SELECT DISTINCT E.descricao INTO descricao FROM enderecos_funcionarios E WHERE E.funcionario_cpf = cpf;

  dbms_output.put_line('Telefone: ' || tel || ' Cep: ' || cep || ' Descrição: ' || descricao);
END contato;
/

-- test it:
EXEC contato('79859148466');

-- 3
-- status: accepted
CREATE OR REPLACE PROCEDURE emb (p_tipo IN embarcacoes.tipo%TYPE) AS
  CURSOR c_emb IS SELECT E.certificado, E.tipo, E.data_fabricacao FROM embarcacoes E WHERE E.tipo = p_tipo;

BEGIN
  FOR v_emb IN c_emb LOOP
    DBMS_OUTPUT.PUT_LINE( 'Certificado: ' || TO_CHAR(v_emb.certificado) || ' Tipo da Embarcação: ' || TO_CHAR(v_emb.tipo) || ' Data de Fabricação: ' || TO_CHAR(v_emb.data_fabricacao));
  END LOOP;
END;
/

-- test it:
EXEC emb('GASEIRO');

-- 4
-- status: accepted
CREATE OR REPLACE FUNCTION capacidade_total (p_cert IN embarcacoes.certificado%TYPE)
  RETURN NUMBER
  AS
  ocupantes especificacoes.capacidade_ocupantes%TYPE; carga especificacoes.capacidade_carga%TYPE;
  resp NUMBER;

BEGIN
  SELECT ES.capacidade_ocupantes INTO ocupantes FROM embarcacoes E, especificacoes ES WHERE E.certificado = ES.certificado_embarcacao AND E.certificado = p_cert;
  SELECT ES.capacidade_carga INTO carga FROM embarcacoes E, especificacoes ES WHERE E.certificado = ES.certificado_embarcacao AND E.certificado = p_cert;
  resp := ocupantes + carga; RETURN resp;
END;
/

SELECT capacidade_total('3977665514774184') FROM DUAL;

-- 5
-- status: accepted
CREATE OR REPLACE FUNCTION conta (p_tipo IN embarcacoes.tipo%TYPE)
  RETURN integer AS resp integer;

BEGIN
  SELECT COUNT(cnpj) INTO resp FROM (SELECT DISTINCT S.cliente_cnpj as cnpj from solicitacoes_projetos S, embarcacoes E, especificacoes ES
  WHERE S.embarcacao_certificado = E.certificado AND E.certificado = ES.certificado_embarcacao AND E.tipo = p_tipo AND EXTRACT(YEAR FROM S.data) BETWEEN 1980 and 2015);
RETURN resp;
END;
/

-- test it:
SELECT conta('CONTEINEIRO') FROM DUAL;

-- 6
-- status: accepted
CREATE OR REPLACE PACKAGE CadastroEquipamento AS

PROCEDURE InsereEquipamento (
p_id equipamentos.id%TYPE,
p_nome equipamentos.nome_equipamento%TYPE, p_tipo equipamentos.tipo%TYPE,
p_data_inicio equipamentos.data_uso_inicio%TYPE, p_data_termino equipamentos.data_uso_termino%TYPE);
­­-- Remoção
PROCEDURE RemoveEquipamento(p_id IN equipamentos.id%TYPE);
­­ Exceção levantada por RemoveEquipamento e_EquipamentoNaoExistente EXCEPTION;
END CadastroEquipamento; /
CREATE OR REPLACE PACKAGE BODY CadastroEquipamento AS
PROCEDURE InsereEquipamento (
p_id equipamentos.id%TYPE,
p_nome equipamentos.nome_equipamento%TYPE,
p_tipo equipamentos.tipo%TYPE,
p_data_inicio equipamentos.data_uso_inicio%TYPE, p_data_termino equipamentos.data_uso_termino%TYPE) AS
BEGIN
INSERT INTO equipamentos ( id, nome_equipamento, tipo, data_uso_inicio, data_uso_termino ) VALUES (p_id, p_nome, p_tipo, p_data_inicio, p_data_termino);
END InsereEquipamento;
PROCEDURE RemoveEquipamento (p_id IN equipamentos.id%TYPE) AS
BEGIN
DELETE FROM equipamentos WHERE id = p_id;
IF SQL%NOTFOUND THEN
RAISE e_EquipamentoNaoExistente; END IF;
EXCEPTION
WHEN e_EquipamentoNaoExistente THEN RAISE_APPLICATION_ERROR(­20101, 'Equipamento Não Existe!');
END RemoveEquipamento; END CadastroEquipamento;
/

-- Executar métodos para checagem, tentar remover o mesmo Avião duas vezes para ativar a Exceção:

EXEC CadastroEquipamento.InsereEquipamento(31, 'Master Drill', 'HRM­369', TO_DATE('09/10/1954','dd/mm/yyyy'), TO_DATE('09/10/1954','dd/mm/yyyy'));
EXEC CadastroEquipamento.RemoveEquipamento(31);
EXEC CadastroEquipamento.RemoveEquipamento(31);

-- 7
-- status: accepted
SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE aptidao IS
CURSOR c_funcionarios IS SELECT nome, data_admissao FROM funcionarios; BEGIN
FOR v_funcionarios in c_funcionarios LOOP
IF EXTRACT(YEAR FROM sysdate) ­ EXTRACT( YEAR FROM v_funcionarios.data_admissao) > 10 THEN
DBMS_OUTPUT.PUT_LINE( 'Nome: ' || TO_CHAR(v_funcionarios.nome) || ' Data de Admissão: ' || TO_CHAR(v_funcionarios.data_admissao) ||' Aptidão ao Teste: APTO PARA TREINAMENTO');
ELSE
DBMS_OUTPUT.PUT_LINE( 'Nome: ' || TO_CHAR(v_funcionarios.nome) || ' Data de Admissão: ' || TO_CHAR(v_funcionarios.data_admissao) ||' Aptidão ao Teste: INAPTO PARA TREINAMENTO');
END IF;
END LOOP;
END;
/

EXEC aptidao;

-- 8
-- status: accepted
CREATE OR REPLACE FUNCTION qtdPecas (p_tipo IN embarcacoes.tipo%TYPE) RETURN integer AS
resp integer; BEGIN
SELECT SUM(PR.partes_reutilizadas) INTO resp FROM projetos_restauracoes PR, solicitacoes_projetos S, embarcacoes E WHERE PR.id_projeto = S.projeto_id AND S.embarcacao_certificado = E.certificado
AND E.tipo = p_tipo;
RETURN resp;
END; /
SELECT qtdPecas('GASEIRO') FROM DUAL;

-- 9
-- status: accepted
CREATE OR REPLACE TRIGGER ManutencaoAndamento BEFORE INSERT ON compras_equipamentos
FOR EACH ROW
DECLARE
v_situacao manutencoes_equipamentos.situacao%TYPE;
BEGIN
SELECT M.situacao INTO v_situacao FROM manutencoes_equipamentos M WHERE M.equipamento_id = :NEW.equipamento_id;
IF v_situacao = 'EM ANDAMENTO' THEN RAISE_APPLICATION_ERROR(­20012, 'Equipamento Em Manutenção!!!'); END IF;
END; /

-- test it:
insert into compras_equipamentos (equipamento_id, setor_id, funcionario_cpf) values (5, 6, '06234438765');

-- 10
-- status: accepted

CREATE OR REPLACE TRIGGER ResponsavelRemove FOR DELETE ON responsaveis_setores
COMPOUND TRIGGER
CURSOR c_func IS SELECT funcionario_cpf, setor_id FROM responsaveis_setores WHERE setor_id = :NEW.setor_id;
v_cont integer;
BEFORE STATEMENT IS BEGIN
v_cont := 0;
for v_reg in c_func loop
v_cont := v_cont + 1;
dbms_output.put_line('Contador: ' || TO_CHAR(v_cont)); end loop;
if v_cont <= 1 then
raise_application_error(­20030, 'Não podem ter menos de 1 Funcionário responsável por este Setor!');
end if;
dbms_output.put_line('Contador: ' || TO_CHAR(v_cont));
END BEFORE STATEMENT;
AFTER EACH ROW IS BEGIN
if v_cont > 1 then dbms_output.put_line('Responsável Deletado');

end if;
END AFTER EACH ROW;
end; /

-- test it
DELETE FROM responsaveis_setores WHERE funcionario_cpf = '89851302606' AND setor_id = 10;
