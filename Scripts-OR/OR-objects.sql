/* Drop types */

DROP TYPE tp_funcionarios FORCE;
DROP TYPE tp_telefone FORCE;
DROP TYPE tp_enderecos_funcionarios FORCE;
DROP TYPE tp_clientes FORCE;
DROP TYPE tp_representantes FORCE;
DROP TYPE tp_telefones_funcionarios FORCE;
DROP TYPE tp_nt_telefones_clientes FORCE;
DROP TYPE tp_enderecos_clientes FORCE;
DROP TYPE tp_embarcacoes FORCE;
DROP TYPE tp_especificacoes FORCE;
DROP TYPE tp_responsaveis_setores FORCE;
DROP TYPE tp_setores FORCE;
DROP TYPE tp_projetos_criacoes FORCE;
DROP TYPE tp_projetos_restauracoes FORCE;
DROP TYPE tp_execucoes_projetos FORCE;
DROP TYPE tp_solicitacoes_projetos FORCE;
DROP TYPE tp_equipamentos FORCE;
DROP TYPE tp_compras_equipamentos FORCE;
DROP TYPE tp_manutencoes_equipamentos FORCE;

/* Create types */

CREATE OR REPLACE TYPE tp_telefone AS object(
  numero VARCHAR(15)
);
/

CREATE OR REPLACE TYPE tp_telefones_funcionarios AS VARRAY(5) OF tp_telefone;
/

CREATE OR REPLACE TYPE tp_funcionarios AS object (
  cpf VARCHAR2(11),
  nome VARCHAR2(50),
  data_admissao DATE,
  data_nascimento DATE,
  telefones tp_telefones_funcionarios,
  cpf_super REF tp_funcionarios
);
/


CREATE OR REPLACE TYPE tp_enderecos_funcionarios AS object(
  funcionario_cpf REF tp_funcionarios,
  cep VARCHAR2(8),
  descricao VARCHAR2(50)
);
/

CREATE TYPE tp_nt_telefones_clientes AS TABLE OF tp_telefone;
/

CREATE OR REPLACE TYPE tp_clientes AS object (
  cnpj VARCHAR2(15),
  nome_empresa VARCHAR2(50),
  email VARCHAR2(50),
  site VARCHAR2(50),
  telefones tp_nt_telefones_clientes
);
/

CREATE OR REPLACE TYPE tp_representantes AS object (
  cpf_representante VARCHAR2(15),
  empresa_cnpj REF tp_clientes,
  nome VARCHAR2(50)
);
/


CREATE OR REPLACE TYPE tp_enderecos_clientes AS object (
  cliente_cnpj REF tp_clientes,
  cep VARCHAR2(8),
  descricao VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tp_embarcacoes AS object(
  certificado VARCHAR2(50),
  tipo VARCHAR2(50),
  data_fabricacao DATE
);
/

CREATE OR REPLACE TYPE tp_especificacoes AS object(
  certificado_embarcacao REF tp_embarcacoes,
  versao DECIMAL(5, 2),
  peso DECIMAL(6, 3),
  comprimento DECIMAL(5, 3),
  altura DECIMAL(5, 3),
  capacidade_ocupantes INTEGER,
  capacidade_carga DECIMAL(5, 3)
);
/

CREATE OR REPLACE TYPE tp_setores AS object (
  id INTEGER,
  nome_setor VARCHAR2(50),
  descricao VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tp_projetos AS object (
  id INTEGER,
  nome VARCHAR2(50),
  descricao VARCHAR2(200),
  orcamento DECIMAL(5, 2),
  data_inicio DATE,
  data_previsao_termino DATE,
  data_termino DATE
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tp_projetos_criacoes UNDER tp_projetos (
  modelagem VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tp_projetos_restauracoes UNDER tp_projetos(
  partes_reutilizadas INTEGER,
  partes_descartadas INTEGER
);
/

CREATE OR REPLACE TYPE tp_responsaveis_setores AS object (
  funcionario_cpf REF tp_funcionarios,
  setor_id REF tp_setores
);
/

CREATE OR REPLACE TYPE tp_execucoes_projetos AS object (
  setor_id REF tp_setores,
  projeto_id REF tp_projetos
);
/

CREATE OR REPLACE TYPE tp_solicitacoes_projetos AS object (
  projeto_id REF tp_projetos,
  embarcacao_certificado REF tp_embarcacoes,
  cliente_cnpj REF tp_clientes,
  data_solicitacao DATE
);
/

CREATE OR REPLACE TYPE tp_equipamentos AS object (
  id INTEGER,
  nome_equipamento VARCHAR2(50),
  tipo VARCHAR2(50),
  data_uso_inicio DATE,
  data_uso_termino DATE
);
/

CREATE OR REPLACE TYPE tp_compras_equipamentos AS object (
  equipamento_id REF tp_equipamentos,
  setor_id REF tp_setores,
  funcionario_cpf REF tp_funcionarios
);
/

CREATE OR REPLACE TYPE tp_manutencoes_equipamentos AS object (
  equipamento_id REF tp_equipamentos,
  data_manutencao DATE,
  situacao VARCHAR2(50)
);
/