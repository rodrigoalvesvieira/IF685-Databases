/* Drops types */

DROP TYPE tipo_funcionarios FORCE;
DROP TYPE tipo_telefone FORCE;
DROP TYPE tipo_enderecos_funcionarios FORCE;
DROP TYPE tipo_clientes FORCE;
DROP TYPE tipo_representantes FORCE;
DROP TYPE tipo_telefones_funcionarios FORCE;
DROP TYPE tipo_nt_telefones_clientes FORCE;
DROP TYPE tipo_enderecos_clientes FORCE;
DROP TYPE tipo_embarcacoes FORCE;
DROP TYPE tipo_especificacoes FORCE;
DROP TYPE tipo_responsaveis_setores FORCE;
DROP TYPE tipo_setores FORCE;
DROP TYPE tipo_projetos_criacoes FORCE;
DROP TYPE tipo_projetos_restauracoes FORCE;
DROP TYPE tipo_execucoes_projetos FORCE;
DROP TYPE tipo_solicitacoes_projetos FORCE;
DROP TYPE tipo_equipamentos FORCE;
DROP TYPE tipo_compras_equipamentos FORCE;
DROP TYPE tipo_manutencoes_equipamentos FORCE;

/* Create types */

CREATE OR REPLACE TYPE tipo_funcionarios AS object (
  cpf VARCHAR2(11),
  nome VARCHAR2(50),
  data_admissao DATE,
  data_nascimento DATE,
  cpf_super REF tipo_funcionarios
);
/

CREATE OR REPLACE TYPE tipo_telefone AS object(
  numero VARCHAR(15)
);
/

CREATE OR REPLACE TYPE tipo_telefones_funcionarios AS VARRAY(5) OF tipo_telefone;
/

CREATE OR REPLACE TYPE tipo_enderecos_funcionarios AS object(
  funcionario_cpf REF tipo_funcionarios,
  cep VARCHAR2(8),
  descricao VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tipo_clientes AS object (
  cnpj VARCHAR2(15),
  nome_empresa VARCHAR2(50),
  email VARCHAR2(50),
  site VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tipo_representantes AS object (
  cpf_representante VARCHAR2(15),
  empresa_cnpj REF tipo_clientes,
  nome VARCHAR2(50)
);
/

CREATE TYPE tipo_nt_telefones_clientes AS TABLE OF tipo_telefone;
/

CREATE OR REPLACE TYPE tipo_enderecos_clientes AS object (
  cliente_cnpj REF tipo_clientes,
  cep VARCHAR2(8),
  descricao VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tipo_embarcacoes AS object(
  certificado VARCHAR2(50),
  tipo VARCHAR2(50),
  data_fabricacao DATE
);
/

CREATE OR REPLACE TYPE tipo_especificacoes AS object(
  versao DECIMAL(5, 2),
  peso DECIMAL(6, 3),
  comprimento DECIMAL(5, 3),
  altura DECIMAL(5, 3),
  capacidade_ocupantes INTEGER,
  capacidade_carga DECIMAL(5, 3),
  certificado_embarcacao REF tipo_embarcacoes
);
/

CREATE OR REPLACE TYPE tipo_setores AS object (
  id INTEGER,
  nome_setor VARCHAR2(50),
  descricao VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tipo_projetos AS object (
  id INTEGER,
  nome VARCHAR2(50),
  descricao VARCHAR2(200),
  orcamento DECIMAL(5, 2),
  data_inicio DATE,
  data_previsao_termino DATE,
  data_termino DATE
) NOT FINAL NOT INSTANTIABLE;
/

CREATE OR REPLACE TYPE tipo_projetos_criacoes UNDER tipo_projetos (
  modelagem VARCHAR2(50)
);
/

CREATE OR REPLACE TYPE tipo_projetos_restauracoes UNDER tipo_projetos(
  partes_reutilizadas INTEGER,
  partes_descartadas INTEGER
);
/

CREATE OR REPLACE TYPE tipo_responsaveis_setores AS object (
  funcionario_cpf REF tipo_funcionarios,
  setor_id REF tipo_setores
);
/

CREATE OR REPLACE TYPE tipo_execucoes_projetos AS object (
  setor_id REF tipo_setores,
  projeto_id REF tipo_projetos
);
/

CREATE OR REPLACE TYPE tipo_solicitacoes_projetos AS object (
  projeto_id REF tipo_projetos,
  embarcacao_certificado REF tipo_embarcacoes,
  cliente_cnpj REF tipo_clientes,
  DATA DATE
);
/

CREATE OR REPLACE TYPE tipo_equipamentos AS object (
  id INTEGER,
  nome_equipamento VARCHAR2(50),
  tipo VARCHAR2(50),
  data_uso_inicio DATE,
  data_uso_termino DATE
);
/

CREATE OR REPLACE TYPE tipo_compras_equipamentos AS object (
  equipamento_id REF tipo_equipamentos,
  setor_id REF tipo_setores,
  funcionario_cpf REF tipo_funcionarios
);
/

CREATE OR REPLACE TYPE tipo_manutencoes_equipamentos AS object (
  equipamento_id REF tipo_equipamentos,
  data DATE,
  situacao VARCHAR2(50)
);
/
