/* Drop tables */
DROP TABLE funcionarios CASCADE CONSTRAINTS;
DROP TABLE telefones_funcionarios CASCADE CONSTRAINTS;
DROP TABLE enderecos_funcionarios CASCADE CONSTRAINTS;
DROP TABLE clientes CASCADE CONSTRAINTS;
DROP TABLE representantes CASCADE CONSTRAINTS;
DROP TABLE telefones_clientes CASCADE CONSTRAINTS;
DROP TABLE enderecos_clientes CASCADE CONSTRAINTS;
DROP TABLE embarcacoes CASCADE CONSTRAINTS;
DROP TABLE especificacoes CASCADE CONSTRAINTS;
DROP TABLE responsaveis_setores CASCADE CONSTRAINTS;
DROP TABLE setores CASCADE CONSTRAINTS;

/* DROP TABLE projetos FORCE; tirei, visto que deixou de existir. Agora inserimos direto nas tabelas de especializações usando somente o tipo_projetos */

DROP TABLE projetos_criacoes CASCADE CONSTRAINTS;
DROP TABLE projetos_restauracoes CASCADE CONSTRAINTS;
DROP TABLE execucoes_projetos CASCADE CONSTRAINTS;
DROP TABLE solicitacoes_projetos CASCADE CONSTRAINTS;
DROP TABLE equipamentos CASCADE CONSTRAINTS;
DROP TABLE compras_equipamentos CASCADE CONSTRAINTS;
DROP TABLE manutencoes_equipamentos CASCADE CONSTRAINTS;

/* Create tables */
CREATE TABLE funcionarios OF tipo_funcionarios (
  cpf PRIMARY KEY,
  cpf_super WITH ROWID REFERENCES funcionarios
);

CREATE TABLE telefones_funcionarios (
  funcionario_cpf REF tipo_funcionarios,
  lista_fones tipo_telefones_funcionarios
);

CREATE TABLE enderecos_funcionarios OF tipo_enderecos_funcionarios (
  cep PRIMARY KEY,
  funcionario_cpf WITH rowid REFERENCES funcionarios
);

CREATE TABLE clientes OF tipo_clientes (
  cnpj PRIMARY KEY
);

CREATE TABLE lista_telefones_clientes (
  cliente_cnpj REF tipo_clientes,
  lista_fones tipo_nt_telefones_clientes
) nested TABLE lista_fones store AS nt_lista_fones;

CREATE TABLE representantes OF tipo_representantes (
  cpf_representante PRIMARY KEY,
  empresa_cnpj WITH rowid REFERENCES clientes
);

CREATE TABLE enderecos_clientes OF tipo_enderecos_clientes (
  cep PRIMARY KEY,
  cliente_cnpj WITH rowid REFERENCES clientes
);

CREATE TABLE embarcacoes OF tipo_embarcacoes (
  certificado PRIMARY KEY
);

CREATE TABLE especificacoes OF tipo_especificacoes (
  versao PRIMARY KEY,
  certificado_embarcacao WITH rowid REFERENCES embarcacoes
);

CREATE TABLE setores OF tipo_setores (
  id PRIMARY KEY
);

CREATE TABLE projetos_criacoes OF tipo_projetos_criacoes (
  id PRIMARY KEY
);

CREATE TABLE projetos_restauracoes OF tipo_projetos_restauracoes (
  id PRIMARY KEY
);

CREATE TABLE responsaveis_setores OF tipo_responsaveis_setores (
  funcionario_cpf WITH rowid REFERENCES funcionarios,
  setor_id WITH rowid REFERENCES setores
);

CREATE TABLE execucoes_projetos OF tipo_execucoes_projetos (
  setor_id WITH rowid REFERENCES setores,
  projeto_id WITH rowid REFERENCES projetos_criacoes
);

CREATE TABLE solicitacoes_projetos OF tipo_solicitacoes_projetos (
  projeto_id WITH rowid REFERENCES projetos_criacoes,
  embarcacao_certificado WITH rowid REFERENCES embarcacoes,
  cliente_cnpj WITH rowid REFERENCES clientes
);

CREATE TABLE equipamentos OF tipo_equipamentos (
  id PRIMARY KEY
);

CREATE TABLE compras_equipamentos OF tipo_compras_equipamentos (
  equipamento_id WITH rowid REFERENCES equipamentos,
  setor_id WITH rowid REFERENCES setores,
  funcionario_cpf WITH rowid REFERENCES funcionarios
);

CREATE TABLE manutencoes_equipamentos OF tipo_manutencoes_equipamentos (
  data PRIMARY KEY,
  equipamento_id WITH rowid REFERENCES equipamentos
);
