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
