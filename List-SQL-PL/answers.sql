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
