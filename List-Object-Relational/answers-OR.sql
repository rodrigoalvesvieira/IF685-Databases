-- 1. Faça uma consulta que imprima os nomes dos Funcionários e seus endereços
-- (CEP e Descrição), ordenando­os pelo cep de forma crescente. (USE ORDER MEMBER
-- FUNCTION).

SELECT F.nome, EF.cep, EF.descricao
FROM tb_funcionarios F, tb_enderecos_funcionarios EF
ORDER BY EF.cep;

-- 2. Faça uma consulta que retorne o nome e descrição dos projetos que foram solicitados
-- para embarcações do tipo CONTEINEIRO ordenados pelo nome do projeto. (USE DEREF E
-- ORDER BY).

-- 3. Crie um novo Construtor para Embarcação, com os Parâmetros na seguinte ordem:
-- certificado, data_fabricacao, e tipo. Em seguida insira uma nova Embarcação utilizando o
-- novo Construtor criado.

-- 4. Liste todos os Funcionários (Nome, CPF, Data de Nascimento e Data de Admissão) que
-- foram admitidos a partir do ano 2000 e possuem um supervisor através do uso de
-- DANGLING, ou seja, mostre os funcionários que tem o seu campo cpf_super
-- REFERENCIANDO para funcionários cadastrados no sistema.

-- 5. Crie uma MEMBER FUNCTION para o tipo tp_setores que retorne a quantidade de
-- Compras de equipamentos feitas por este Setor.

-- 6. Selecione o Peso, o Comprimento, a Altura, a Capacidade de Ocupantes e a Capacidade
-- de Carga das Embarcações que possuem justamente uma Capacidade de Carga maior que
-- 50.000 ORDENADOS de forma DECRESCENTE pelo PESO através de uma MAP
-- MEMBER FUNCTION sobre as Especificações das Embarcações.

-- 7. Mostre o número dos telefones dos clientes que possuem seu site sob o domínio ‘.com.br’.

-- 8. Crie novos tipos para tp_equipamentos e tp_manutencoes_equipamento. Em seguida,
-- faça duas novas tabelas, restringindo o escopo da referência de tp_manutencoes_pista com
-- a utilização de SCOPE IS.

-- 9. Crie um tipo tp_ramal que possui um número inteiro com atributo, em seguida, crie um
-- tipo tp_ramais que será composto por um VARRAY de 5 posições do tipo tp_ramal. Agora,
-- altere o tipo tp_telefone existente no banco para que este possua um atributo chamado
-- 'ramais' do tipo tp_ramais que você acabou de criar(Use CASCADE para propagar a
-- alteração). Então, insira um novo funcionário no sistema com os telefones 52­016256469 e
-- 52­569871259, no qual o primeiro possui 3 ramais e o segundo apenas 2 ramais.
-- Finalmente como confirmação, faça uma consulta que mostre os ramais para o telefone
-- 52­569871259 para o funcionário que você inseriu.

-- 10. Escreva um Procedimento que recebe um cpf de Funcionário e um número de telefone,
-- então, você deve alterar o campo de telefones para o funcionário com este cpf da -- seguinte forma: Se ele possuir mais de um telefone, você deve apenas excluir o seu último telefone e
-- atualizar esse funcionário com esta alteração, caso contrário, você não remove nenhum
-- telefone, apenas atualiza o seu telefone atual com o numero de telefone que está sendo
-- passado como parâmetro para o procedimento. Em seguida, aplique o Procedure para o cpf
-- '06234438765' e um numero qualquer de telefone. OBS: Caso já tenha se alterado o tipo de
--telefone com a adição dos ramais, adicione como NULL para o campo dos ramais.
