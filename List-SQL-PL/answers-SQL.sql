-- 1
-- status: accepted
SELECT F.cpf, F.nome
FROM funcionarios F
INNER JOIN telefones_funcionarios TF ON F.cpf = TF.funcionario_cpf
WHERE
  F.cpf_super = '06234438765' AND TF.fone LIKE '%9' ORDER BY F.nome ASC;

-- 2
-- status: accepted
SELECT COUNT(EMB.certificado), EMB.tipo
FROM embarcacoes EMB, especificacoes ESP
WHERE ESP.certificado_embarcacao = EMB.certificado
AND ESP.capacidade_carga BETWEEN 50.000 AND 100.000
GROUP BY EMB.tipo;

-- 4
-- status: pending
CREATE USER novo_usuario IDENTIFIED BY quero_passar_direto;
GRANT SELECT ON funcionarios TO novo_usuario;

-- 5
-- status: accepted
SELECT COUNT(CE.equipamento_id), E.tipo
FROM compras_equipamentos CE, equipamentos E
WHERE CE.equipamento_id = E.id
GROUP BY E.tipo
HAVING COUNT(CE.equipamento_id) >= 2;

-- 7
-- status: accepted
SELECT CL.site, REP.nome
FROM clientes CL
INNER JOIN representantes REP ON CL.cnpj = REP.empresa_cnpj
WHERE CL.site LIKE '%.com' OR CL.site LIKE '%.com.br';

-- 9
-- status: accepted
SELECT
  MAX(SumPesos)
FROM (
  SELECT SUM(ESP.peso) as SumPesos, EMB.tipo
  FROM especificacoes ESP, embarcacoes EMB
  WHERE ESP.certificado_embarcacao = EMB.certificado
  GROUP BY EMB.tipo
);
