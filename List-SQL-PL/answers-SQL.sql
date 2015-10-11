-- 1
-- status: pending
SELECT
  cpf, nome
FROM
  funcionarios F
inner join
  telefones_funcionarios TF
  on F.cpf = TF.funcionario_cpf
where
  F.cpf_super = '06234438765' AND auth_token LIKE '%9' ORDER BY nome ASC;

-- 2
-- status: pending
SELECT COUNT(*) FROM embarcacoes WHERE capacidade_carga BETWEEN 50.000 AND 100.000 GROUP BY tipo;

-- 4
-- status: pending
CREATE USER novo_usuario IDENTIFIED BY quero_passar_direto;
GRANT SELECT ON funcionarios TO novo_usuario;

-- 7
-- status: pending
SELECT CL.site, REP.nome
FROM clientes CL, representantes REP
WHERE REP.empresa_cnpj = CL.cnpj
AND CL.site LIKE '%com' OR CL.site LIKE '%com.br'

-- 9
-- status: pending
SELECT
  MAX(SumPesos)
FROM (
  SELECT SUM(ESP.peso) as SumPesos, EMB.tipo
  FROM especificacoes ESP, embarcacoes EMB
  WHERE ESP.certificado_embarcacao = EMB.certificado
  GROUP BY EMB.tipo
)
