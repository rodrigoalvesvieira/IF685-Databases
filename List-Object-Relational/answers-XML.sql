-- 1. Adicione um campo XML no tipo tp_equipamentos, onde conterão dados do ano de
-- fabricação do equipamento e o prazo médio de manutenção em meses. Depois insira em
-- pelo menos 5 Equipamentos diferentes os dados do XML, variando o prazo de manutenção
-- entre 1 e 5.

-- 2. Agora faça uma consulta que retorne os Equipamentos com prazo de manutenção menor
-- que 3 meses. Garanta pelas inserções da questão anterior que pelo menos um
-- Equipamento seja retornado pela consulta (USE VALUE).

-- 3. Usando SYS_XMLGEN, gere o xml de uma consulta que Retorne os nomes dos
-- equipamentos do tipo 'Solda'.

SELECT SYS_XMLGEN(nome) AS XML FROM tb_equipamentos WHERE tipo = 'Solda';

-- 4. Usando o pacote DBMS_XMLGEN, crie um bloco que imprima um documento XML com
-- os dados dos Equipamentos que estão com a sua manutenção no estado de 'PENDENTE'.
-- Exiba na consulta o id, nome e tipo do equipamento. Use como nome para a raiz do
-- documento 'Equipamentos Pendentes' e para cada ocorrência nomeie a tag de 'Equipamento'.

DECLARE
XML clob;
CTX dbms_xmlgen.ctxhandle;
BEGIN
	ctx:= dbms_xmlgen.newContext('SELECT E.id, E.nome_equipamento, E.tipo FROM tb_equipamentos E INNER JOIN tb_manutencoes_equipamentos ME ON E.id = ME.equipamento_id where ME.situacao = \'PENDENTE\'');
	xml:= dbms_xmlgen.getXML(ctx);
	dbms_output.put_line(xml);
	dbms_xmlgen.closeContext(ctx);
END;
/
