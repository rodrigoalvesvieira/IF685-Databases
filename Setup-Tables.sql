/* Drops */

DROP TABLE funcionarios FORCE;
DROP TABLE telefones_funcionarios FORCE;
DROP TABLE enderecos_funcionarios FORCE;
DROP TABLE clientes FORCE;
DROP TABLE representantes FORCE;
DROP TABLE telefones_clientes FORCE;
DROP TABLE enderecos_clientes FORCE;
DROP TABLE embarcacoes FORCE;
DROP TABLE especificacoes FORCE;
DROP TABLE responsaveis_setores FORCE;
DROP TABLE setores FORCE;
DROP TABLE projetos FORCE;
DROP TABLE projetos_criacoes FORCE;
DROP TABLE projetos_restauracoes FORCE;
DROP TABLE execucoes_projetos FORCE;
DROP TABLE solicitacoes_projetos FORCE;
DROP TABLE equipamentos FORCE;
DROP TABLE compras_equipamentos FORCE;
DROP TABLE manutencoes_equipamentos FORCE;

/* Creates */

CREATE TABLE funcionarios (
  cpf VARCHAR2(11),
  cpf_super VARCHAR2(11),
  nome VARCHAR2(50) NOT NULL,
  data_admissao DATE NOT NULL,
  data_nascimento DATE NOT NULL,
  CONSTRAINT funcionario_pk PRIMARY KEY (cpf),
  CONSTRAINT funcionario_cpf_super_fk FOREIGN KEY (cpf_super) REFERENCES funcionarios (cpf)
);


CREATE TABLE telefones_funcionarios (
  funcionario_cpf VARCHAR2(11) NOT NULL,
  fone VARCHAR2(20) NOT NULL,
  CONSTRAINT telefone_funcionario_cpf_fk FOREIGN KEY (funcionario_cpf) REFERENCES funcionarios (cpf)
);

CREATE TABLE enderecos_funcionarios (
  funcionario_cpf VARCHAR2(11) NOT NULL,
  cep VARCHAR2(8) NOT NULL,
  descricao VARCHAR2(50) NOT NULL,
  CONSTRAINT endereco_funcionario_cpf_fk FOREIGN KEY (funcionario_cpf) REFERENCES funcionarios (cpf)
);


CREATE TABLE clientes (
  cnpj VARCHAR2(15),
  nome_empresa VARCHAR2(50) NOT NULL,
  email VARCHAR2(50),
  site VARCHAR2(50),
  CONSTRAINT cliente_pk PRIMARY KEY (cnpj)
);

CREATE TABLE representantes (
  empresa_cnpj VARCHAR2(15) NOT NULL,
  cpf_representante VARCHAR2(11),
  nome VARCHAR2(50) NOT NULL,
  CONSTRAINT representante_pk PRIMARY KEY (cpf_representante),
  CONSTRAINT representante_empresa_cnpj_fk FOREIGN KEY (empresa_cnpj) REFERENCES clientes (cnpj)
);

CREATE TABLE telefones_clientes (
  cliente_cnpj VARCHAR2(15) NOT NULL,
  fone VARCHAR2(20) NOT NULL,
  CONSTRAINT telefone_cliente_cnpj_fk FOREIGN KEY (cliente_cnpj) REFERENCES clientes (cnpj)
);

CREATE TABLE enderecos_clientes (
  cliente_cnpj VARCHAR2(15) NOT NULL,
  cep VARCHAR2(8) NOT NULL,
  descricao VARCHAR2(50) NOT NULL,
  CONSTRAINT enderecos_clientes_cnpj_fk FOREIGN KEY (cliente_cnpj ) REFERENCES clientes (cnpj)
);

CREATE TABLE embarcacoes (
  certificado VARCHAR2(50) NOT NULL,
  tipo VARCHAR2(50) NOT NULL,
  data_fabricacao DATE NOT NULL,
  CONSTRAINT embarcacao_tipo_ck CHECK (tipo IN ('CONTEINEIRO', 'GASEIRO', 'VLCC', 'PETROLEIRO')),
  CONSTRAINT embarcacao_certificado_pk PRIMARY KEY (certificado)
);

CREATE TABLE especificacoes (
  certificado_embarcacao VARCHAR2(50),
  versao DECIMAL(5, 2) NOT NULL,
  peso DECIMAL(6, 3) NOT NULL,
  comprimento DECIMAL(5, 3) NOT NULL,
  altura DECIMAL(5, 3) NOT NULL,
  capacidade_ocupantes INTEGER NOT NULL,
  capacidade_carga DECIMAL(5, 3) NOT NULL,
  CONSTRAINT especificacoes_versao_pk PRIMARY KEY (versao),
  CONSTRAINT especificacoes_certificado_fk FOREIGN KEY (certificado_embarcacao) REFERENCES embarcacoes (certificado)
);

CREATE TABLE setores (
  id INTEGER NOT NULL,
  nome_setor VARCHAR2(50) NOT NULL,
  descricao VARCHAR2(50),
  CONSTRAINT setor_pk PRIMARY KEY (id)
);

CREATE TABLE projetos (
  id INTEGER,
  nome VARCHAR2(50) NOT NULL,
  descricao VARCHAR2(200) NOT NULL,
  orcamento DECIMAL(5, 2) NOT NULL,
  data_inicio DATE NOT NULL,
  data_previsao_termino DATE NOT NULL,
  data_termino DATE,
  CONSTRAINT projeto_pk PRIMARY KEY (id)
);

CREATE TABLE projetos_criacoes (
  id_projeto INTEGER,
  modelagem VARCHAR2(50) NOT NULL,
  CONSTRAINT projetos_criacoes_pk PRIMARY KEY (id_projeto),
  CONSTRAINT projetos_criacoes_fk FOREIGN KEY (id_projeto) REFERENCES projetos (id)
);

CREATE TABLE projetos_restauracoes (
  id_projeto INTEGER,
  partes_reutilizadas INTEGER,
  partes_descartadas INTEGER,
  CONSTRAINT projetos_restauracoes_pk PRIMARY KEY (id_projeto),
  CONSTRAINT projetos_restauracoes_fk FOREIGN KEY (id_projeto) REFERENCES projetos (id)
);

CREATE TABLE responsaveis_setores (
  funcionario_cpf VARCHAR2(11) NOT NULL,
  setor_id INTEGER NOT NULL,
  CONSTRAINT reponsavel_setor_cpf_fk FOREIGN KEY (funcionario_cpf) REFERENCES funcionarios (cpf),
  CONSTRAINT reponsavel_setor_id_fk FOREIGN KEY (setor_id) REFERENCES setores (id)
);

CREATE TABLE execucoes_projetos (
  setor_id INTEGER NOT NULL,
  projeto_id INTEGER NOT NULL,
  CONSTRAINT execucao_projeto_setor_id_fk FOREIGN KEY (setor_id) REFERENCES setores (id),
  CONSTRAINT execucao_projeto_projeto_id_fk FOREIGN KEY (projeto_id) REFERENCES projetos (id)
);


CREATE TABLE solicitacoes_projetos (
  projeto_id INTEGER NOT NULL,
  embarcacao_certificado VARCHAR2(50) NOT NULL,
  cliente_cnpj VARCHAR2(15) NOT NULL,
  data DATE NOT NULL,
  CONSTRAINT solicitacao_proj_id_fk FOREIGN KEY (projeto_id) REFERENCES projetos (id),
  CONSTRAINT solicitacao_proj_embarcacao_fk FOREIGN KEY (embarcacao_certificado) REFERENCES embarcacoes (certificado),
  CONSTRAINT solicitacao_proj_cliente_fk FOREIGN KEY (cliente_cnpj) REFERENCES clientes (cnpj)
);


CREATE TABLE equipamentos (
  id INTEGER,
  nome_equipamento VARCHAR2(50),
  tipo VARCHAR2(50),
  data_uso_inicio DATE,
  data_uso_termino DATE,
  CONSTRAINT equipamento_pk PRIMARY KEY (id)
);

CREATE TABLE compras_equipamentos (
  equipamento_id INTEGER NOT NULL,
  setor_id INTEGER NOT NULL,
  funcionario_cpf VARCHAR2(11) NOT NULL,
  CONSTRAINT compra_equipamento_id_fk FOREIGN KEY (equipamento_id) REFERENCES equipamentos (id),
  CONSTRAINT compra_equipamento_setor_id_fk FOREIGN KEY (setor_id) REFERENCES setores (id),
  CONSTRAINT compra_equipamento_cpf_fk FOREIGN KEY (funcionario_cpf) REFERENCES funcionarios (cpf)
);

CREATE TABLE manutencoes_equipamentos (
  equipamento_id INTEGER NOT NULL,
  data DATE NOT NULL,
  situacao VARCHAR2(50) NOT NULL,
  CONSTRAINT manutencao_equipamento_id_fk FOREIGN KEY (equipamento_id) REFERENCES equipamentos (id),
  CONSTRAINT manutencao_situacao_ck CHECK (situacao IN ('PENDENTE', 'EM ANDAMENTO', 'CONCLUIDA'))
);
