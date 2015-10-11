-- 1
-- status: pending
DECLARE
  /*
  Bloco anônimo que altera o campo situação das manutenções de equipamentos de 'CONCLUIDA' para 'FINALIZADA'.
  */
  v_nova_situacao VARCHAR2(50) := 'FINALIZADA';
BEGIN
  -- Atualiza a tabela
  UPDATE manutencoes_equipamentos
    SET situacao = v_nova_situacao
    WHERE situacao = 'CONCLUIDA';
END;
/

-- 2
-- status: pending
CREATE OR REPLACE PROCEDURE
MostraDados (p_cpf funcionarios.cpf%TYPE)
IS
BEGIN
  SELECT INTO telefones_funcionarios.fone, enderecos_funcionarios.cep, enderecos_funcionarios.descricao
  FROM telefones_funcionarios, enderecos_funcionarios
  WHERE telefones_funcionarios.funcionario_cpf = p_cpf AND enderecos_funcionarios.funcionario_cpf = p_cpf
END MostraDados;
/
