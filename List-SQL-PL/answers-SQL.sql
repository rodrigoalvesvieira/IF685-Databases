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

-- 3
-- status: accepted
SELECT EC.nome_empresa, EC.cep, EC.descricao, ESP.capacidade_ocupantes
FROM clientes C
INNER JOIN enderecos_clientes EC
ON E.cliente_cnpj = C.cnpj
INNER JOIN solicitacoes_projetos SOPJ
ON SOPJ.cliente_cnpj = C.cnpj
INNER JOIN embarcacoes EMB
ON EMB.certificado = SOPJ.embarcacao_certificado
INNER JOIN especificacoes ESP
ON ESP.certificado_embarcacao = EMB.certificado
AND ESP.capacidade_ocupantes > (SELECT AVG(capacidade_ocupantes) FROM especificacoes);

-- 4
-- status: accepted
CREATE USER novo_usuario IDENTIFIED BY quero_passar_direto;
GRANT SELECT ON funcionarios TO novo_usuario;

-- 5
-- status: accepted
SELECT COUNT(CE.equipamento_id), E.tipo
FROM compras_equipamentos CE, equipamentos E
WHERE CE.equipamento_id = E.id
GROUP BY E.tipo
HAVING COUNT(CE.equipamento_id) >= 2;

-- 6
-- status: pending
SELECT PJ.nome, ESP.comprimento, SOPJ.data
FROM projetos PJ, especificacoes ESP, solicitacoes_projetos SOPJ, embarcacoes EMB
WHERE
SOPJ.projeto_id = PJ.id AND
SOPJ.embarcacao_certificado = EMB.certificado AND
ESP.certificado_embarcacao = EMB.certificado AND
EMB.tipo = 'VLCC' AND
ESP.comprimento > ALL(SELECT ESP.comprimento FROM ESP);

-- 7
-- status: accepted
SELECT CL.site, REP.nome
FROM clientes CL
INNER JOIN representantes REP ON CL.cnpj = REP.empresa_cnpj
WHERE CL.site LIKE '%.com' OR CL.site LIKE '%.com.br';

--8
SELECT f.nome, s.descricao, e.nome_equipamento, e.data_uso_inicio, e.data_uso_termino
FROM equipamentos e
INNER JOIN compras_equipamentos ce
ON ce.equipamento_id=e.id
RIGHT OUTER JOIN responsaveis_setores rs
ON rs.funcionario_cpf=ce.funcionario_cpf
INNER JOIN funcionarios f
ON f.cpf=rs.funcionario_cpf
INNER JOIN setores s
ON s.id=rs.setor_id;

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

-- 10
-- status: accepted
SELECT EF.cep, EF.descricao
FROM enderecos_funcionarios EF, funcionarios F, responsaveis_setores RESP, setores S
WHERE F.cpf = EF.funcionario_cpf
AND RESP.funcionario_cpf = F.cpf
AND RESP.setor_id = S.id
AND S.nome_setor IN ('Testes');
