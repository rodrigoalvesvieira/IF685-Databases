/* Drop tables */
DROP TABLE tb_funcionarios CASCADE CONSTRAINTS;
DROP TABLE tb_telefones_funcionarios CASCADE CONSTRAINTS;
DROP TABLE tb_enderecos_funcionarios CASCADE CONSTRAINTS;
DROP TABLE tb_clientes CASCADE CONSTRAINTS;
DROP TABLE tb_representantes CASCADE CONSTRAINTS;
DROP TABLE tb_telefones_clientes CASCADE CONSTRAINTS;
DROP TABLE tb_enderecos_clientes CASCADE CONSTRAINTS;
DROP TABLE tb_embarcacoes CASCADE CONSTRAINTS;
DROP TABLE tb_especificacoes CASCADE CONSTRAINTS;
DROP TABLE tb_responsaveis_setores CASCADE CONSTRAINTS;
DROP TABLE tb_setores CASCADE CONSTRAINTS;

/* DROP TABLE tb_projetos FORCE; tirei, visto que deixou de existir. Agora inserimos direto nas tabelas de especializações usando somente o tp_projetos */

DROP TABLE tb_projetos_criacoes CASCADE CONSTRAINTS;
DROP TABLE tb_projetos_restauracoes CASCADE CONSTRAINTS;
DROP TABLE tb_execucoes_projetos CASCADE CONSTRAINTS;
DROP TABLE tb_solicitacoes_projetos CASCADE CONSTRAINTS;
DROP TABLE tb_equipamentos CASCADE CONSTRAINTS;
DROP TABLE tb_compras_equipamentos CASCADE CONSTRAINTS;
DROP TABLE tb_manutencoes_equipamentos CASCADE CONSTRAINTS;

/* Create tables */
CREATE TABLE tb_funcionarios OF tp_funcionarios (
  cpf PRIMARY KEY,
  cpf_super WITH ROWID REFERENCES tb_funcionarios
);

CREATE TABLE tb_telefones_funcionarios (
  funcionario_cpf REF tp_funcionarios,
  lista_fones tp_telefones_funcionarios
);

CREATE TABLE tb_enderecos_funcionarios OF tp_enderecos_funcionarios (
  cep PRIMARY KEY,
  funcionario_cpf WITH rowid REFERENCES tb_funcionarios
);

CREATE TABLE tb_clientes OF tp_clientes (
  cnpj PRIMARY KEY
);

CREATE TABLE tb_telefones_clientes (
  cliente_cnpj REF tp_clientes,
  lista_fones tp_nt_telefones_clientes
) nested TABLE lista_fones store AS nt_lista_fones;

CREATE TABLE tb_representantes OF tp_representantes (
  cpf_representante PRIMARY KEY,
  empresa_cnpj WITH rowid REFERENCES tb_clientes
);

CREATE TABLE tb_enderecos_clientes OF tp_enderecos_clientes (
  cep PRIMARY KEY,
  cliente_cnpj WITH rowid REFERENCES tb_clientes
);

CREATE TABLE tb_embarcacoes OF tp_embarcacoes (
  certificado PRIMARY KEY
);

CREATE TABLE tb_especificacoes OF tp_especificacoes (
  versao PRIMARY KEY,
  certificado_embarcacao WITH rowid REFERENCES tb_embarcacoes
);

CREATE TABLE tb_setores OF tp_setores (
  id PRIMARY KEY
);

CREATE TABLE tb_projetos_criacoes OF tp_projetos_criacoes (
  id PRIMARY KEY
);

CREATE TABLE tb_projetos_restauracoes OF tp_projetos_restauracoes (
  id PRIMARY KEY
);

CREATE TABLE tb_responsaveis_setores OF tp_responsaveis_setores (
  funcionario_cpf WITH rowid REFERENCES tb_funcionarios,
  setor_id WITH rowid REFERENCES tb_setores
);

CREATE TABLE tb_execucoes_projetos OF tp_execucoes_projetos (
  setor_id WITH rowid REFERENCES tb_setores,
  projeto_id WITH rowid REFERENCES tb_projetos_criacoes
);

CREATE TABLE tb_solicitacoes_projetos OF tp_solicitacoes_projetos (
  projeto_id WITH rowid REFERENCES tb_projetos_criacoes,
  embarcacao_certificado WITH rowid REFERENCES tb_embarcacoes,
  cliente_cnpj WITH rowid REFERENCES tb_clientes
);

CREATE TABLE tb_equipamentos OF tp_equipamentos (
  id PRIMARY KEY
);

CREATE TABLE tb_compras_equipamentos OF tp_compras_equipamentos (
  equipamento_id WITH rowid REFERENCES tb_equipamentos,
  setor_id WITH rowid REFERENCES tb_setores,
  funcionario_cpf WITH rowid REFERENCES tb_funcionarios
);

CREATE TABLE tb_manutencoes_equipamentos OF tp_manutencoes_equipamentos (
  data_manutencao PRIMARY KEY, /* renomeado, antes era só data */
  equipamento_id WITH rowid REFERENCES tb_equipamentos
);
