/*
Rodrigo Alves & Eduardo Trindade
Aqui é nois! Paulista represented! hue
*/

/* tb_funcionarios */

INSERT INTO tb_funcionarios VALUES ('06234438765', 'Walter White', TO_DATE('30/03/2014','dd/mm/yyyy'), TO_DATE('13/04/1976','dd/mm/yyyy'), tp_telefones_funcionarios(tp_telefone('73-955851930')), NULL);
INSERT INTO tb_funcionarios VALUES ('88140983799', 'Jesse Pinkman', TO_DATE('08/02/1966','dd/mm/yyyy'), TO_DATE('15/06/1931','dd/mm/yyyy'),  tp_telefones_funcionarios(tp_telefone('86-544220923')),  NULL);
INSERT INTO tb_funcionarios VALUES ('90752904834', 'Todd Price', TO_DATE('28/11/2008', 'dd/mm/yyyy'), TO_DATE('29/11/1962', 'dd/mm/yyyy'),   tp_telefones_funcionarios(tp_telefone('67-593225915')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('84865465963', 'Laura Thompson', TO_DATE('20/07/1960', 'dd/mm/yyyy'), TO_DATE('07/10/1934', 'dd/mm/yyyy'), tp_telefones_funcionarios(tp_telefone('30-966035845')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('73235295212', 'Nancy Greene', TO_DATE('01/08/1962', 'dd/mm/yyyy'), TO_DATE('01/12/1939', 'dd/mm/yyyy'),   tp_telefones_funcionarios(tp_telefone('12-305231025')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('88838233153', 'Richard Palmer', TO_DATE('07/09/1971', 'dd/mm/yyyy'), TO_DATE('06/02/1949', 'dd/mm/yyyy'),  tp_telefones_funcionarios(tp_telefone('58-128915989')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('57424468667', 'Irene Nelson', TO_DATE('21/10/1992', 'dd/mm/yyyy'), TO_DATE('09/02/1932', 'dd/mm/yyyy'),    tp_telefones_funcionarios(tp_telefone('69-089661833')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('94183732742', 'Craig Marshall', TO_DATE('30/09/1981', 'dd/mm/yyyy'), TO_DATE('24/08/1951', 'dd/mm/yyyy'),  tp_telefones_funcionarios(tp_telefone('01-082838113')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('42025593625', 'Dennis Morrison', TO_DATE('28/01/2005', 'dd/mm/yyyy'), TO_DATE('24/03/1951', 'dd/mm/yyyy'), tp_telefones_funcionarios(tp_telefone('10-716206606')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('31988589642', 'Earl Jenkins', TO_DATE('24/05/2007', 'dd/mm/yyyy'), TO_DATE('07/11/1982', 'dd/mm/yyyy'),    tp_telefones_funcionarios(tp_telefone('49-576866426')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('97268251891', 'Lois Davis', TO_DATE('28/06/1992', 'dd/mm/yyyy'), TO_DATE('24/07/1967', 'dd/mm/yyyy'),      tp_telefones_funcionarios(tp_telefone('59-019463948')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('57158935832', 'Evelyn Banks', TO_DATE('22/02/2009', 'dd/mm/yyyy'), TO_DATE('24/11/1988', 'dd/mm/yyyy'),    tp_telefones_funcionarios(tp_telefone('83-493926329')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('80817022099', 'Elizabeth Ortiz', TO_DATE('14/07/1988', 'dd/mm/yyyy'), TO_DATE('14/01/1953', 'dd/mm/yyyy'), tp_telefones_funcionarios(tp_telefone('64-874254541')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('99053717997', 'Eugene Jenkins', TO_DATE('01/10/1980', 'dd/mm/yyyy'), TO_DATE('06/09/1946', 'dd/mm/yyyy'),  tp_telefones_funcionarios(tp_telefone('97-174478839')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('52806078197', 'Kathleen Baker', TO_DATE('24/10/1986', 'dd/mm/yyyy'), TO_DATE('11/01/1952', 'dd/mm/yyyy'),  tp_telefones_funcionarios(tp_telefone('06-915249410')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('93366940787', 'Richard Mason', TO_DATE('07/05/1974', 'dd/mm/yyyy'), TO_DATE('17/09/1930', 'dd/mm/yyyy'),   tp_telefones_funcionarios(tp_telefone('11-653120573')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('19392779618', 'Bruce Hicks', TO_DATE('11/09/1995', 'dd/mm/yyyy'), TO_DATE('02/08/1971', 'dd/mm/yyyy'),     tp_telefones_funcionarios(tp_telefone('47-775980291')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('66886800515', 'Jessica Rogers', TO_DATE('10/12/1996', 'dd/mm/yyyy'), TO_DATE('23/10/1955', 'dd/mm/yyyy'),  tp_telefones_funcionarios(tp_telefone('33-158219829')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('90746704523', 'Aaron Marshall', TO_DATE('21/03/2004', 'dd/mm/yyyy'), TO_DATE('24/06/1980', 'dd/mm/yyyy'),  tp_telefones_funcionarios(tp_telefone('42-572442986')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('48671138077', 'Christopher Day', TO_DATE('16/02/1980', 'dd/mm/yyyy'), TO_DATE('13/04/1962', 'dd/mm/yyyy'), tp_telefones_funcionarios(tp_telefone('23-474682320')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('09677549050', 'Joseph Lewis', TO_DATE('18/12/2015', 'dd/mm/yyyy'), TO_DATE('31/07/1995', 'dd/mm/yyyy'),    tp_telefones_funcionarios(tp_telefone('38-083558365')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('25104679287', 'Andrew Barnes', TO_DATE('26/04/1970', 'dd/mm/yyyy'), TO_DATE('10/04/1948', 'dd/mm/yyyy'),   tp_telefones_funcionarios(tp_telefone('74-739842145')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='06234438765'));
INSERT INTO tb_funcionarios VALUES ('55223845862', 'Bruce Gilbert', TO_DATE('28/02/1984', 'dd/mm/yyyy'), TO_DATE('27/09/1945', 'dd/mm/yyyy'),   tp_telefones_funcionarios(tp_telefone('72-689677057')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='88140983799'));
INSERT INTO tb_funcionarios VALUES ('14400581772', 'Philip Howell', TO_DATE('28/06/1967', 'dd/mm/yyyy'), TO_DATE('07/08/1948', 'dd/mm/yyyy'),   tp_telefones_funcionarios(tp_telefone('11-184057062')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='88140983799'));
INSERT INTO tb_funcionarios VALUES ('16629828403', 'Antonio Hunt', TO_DATE('22/02/2004', 'dd/mm/yyyy'), TO_DATE('20/10/1931', 'dd/mm/yyyy'),    tp_telefones_funcionarios(tp_telefone('38-451129023')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='88140983799'));
INSERT INTO tb_funcionarios VALUES ('28328322904', 'Evelyn Andrews', TO_DATE('20/09/2013', 'dd/mm/yyyy'), TO_DATE('12/10/1944', 'dd/mm/yyyy'),  tp_telefones_funcionarios(tp_telefone('34-576510381')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='88140983799'));
INSERT INTO tb_funcionarios VALUES ('77206501260', 'Paul Smith', TO_DATE('04/05/1994', 'dd/mm/yyyy'), TO_DATE('23/06/1948', 'dd/mm/yyyy'),      tp_telefones_funcionarios(tp_telefone('99-357419494')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='88140983799'));
INSERT INTO tb_funcionarios VALUES ('12230884090', 'Willie Jackson', TO_DATE('20/09/2000', 'dd/mm/yyyy'), TO_DATE('11/12/1972', 'dd/mm/yyyy'),  tp_telefones_funcionarios(tp_telefone('44-563702997')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='88140983799'));
INSERT INTO tb_funcionarios VALUES ('10705340017', 'Patrick Reid', TO_DATE('02/08/1995', 'dd/mm/yyyy'), TO_DATE('25/07/1962', 'dd/mm/yyyy'),    tp_telefones_funcionarios(tp_telefone('24-567714659')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='88140983799'));
INSERT INTO tb_funcionarios VALUES ('44160467456', 'Angela Carroll', TO_DATE('20/08/2000', 'dd/mm/yyyy'), TO_DATE('27/05/1937', 'dd/mm/yyyy'),  tp_telefones_funcionarios(tp_telefone('79-496267747')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='88140983799'));
INSERT INTO tb_funcionarios VALUES ('79859148466', 'Paul Nguyen', TO_DATE('20/01/2005', 'dd/mm/yyyy'), TO_DATE('04/12/1973', 'dd/mm/yyyy'),     tp_telefones_funcionarios(tp_telefone('52-016256469')), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf='88140983799'));

/* tb_telefones_funcionarios */

/*
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='90752904834'), tp_telefones_funcionarios(tp_telefone('73-955851930')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='88140983799'), tp_telefones_funcionarios(tp_telefone('86-544220923')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='06234438765'), tp_telefones_funcionarios(tp_telefone('67-593225915')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='84865465963'), tp_telefones_funcionarios(tp_telefone('30-966035845')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='73235295212'), tp_telefones_funcionarios(tp_telefone('12-305231025')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='88838233153'), tp_telefones_funcionarios(tp_telefone('58-128915989')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='57424468667'), tp_telefones_funcionarios(tp_telefone('69-089661833')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='94183732742'), tp_telefones_funcionarios(tp_telefone('01-082838113')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='42025593625'), tp_telefones_funcionarios(tp_telefone('10-716206606')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='31988589642'), tp_telefones_funcionarios(tp_telefone('49-576866426')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='97268251891'), tp_telefones_funcionarios(tp_telefone('59-019463948')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='57158935832'), tp_telefones_funcionarios(tp_telefone('83-493926329')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='80817022099'), tp_telefones_funcionarios(tp_telefone('64-874254541')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='99053717997'), tp_telefones_funcionarios(tp_telefone('97-174478839')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='52806078197'), tp_telefones_funcionarios(tp_telefone('06-915249410')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='93366940787'), tp_telefones_funcionarios(tp_telefone('11-653120573')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='19392779618'), tp_telefones_funcionarios(tp_telefone('47-775980291')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='66886800515'), tp_telefones_funcionarios(tp_telefone('33-158219829')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='90746704523'), tp_telefones_funcionarios(tp_telefone('42-572442986')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='48671138077'), tp_telefones_funcionarios(tp_telefone('23-474682320')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='09677549050'), tp_telefones_funcionarios(tp_telefone('38-083558365')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='25104679287'), tp_telefones_funcionarios(tp_telefone('74-739842145')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='55223845862'), tp_telefones_funcionarios(tp_telefone('72-689677057')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='14400581772'), tp_telefones_funcionarios(tp_telefone('11-184057062')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='16629828403'), tp_telefones_funcionarios(tp_telefone('38-451129023')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='28328322904'), tp_telefones_funcionarios(tp_telefone('34-576510381')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='77206501260'), tp_telefones_funcionarios(tp_telefone('99-357419494')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='77206501260'), tp_telefones_funcionarios(tp_telefone('44-563702997')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='10705340017'), tp_telefones_funcionarios(tp_telefone('24-567714659')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='44160467456'), tp_telefones_funcionarios(tp_telefone('79-496267747')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='79859148466'), tp_telefones_funcionarios(tp_telefone('52-016256469')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='04910256448'), tp_telefones_funcionarios(tp_telefone('64-540562398')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='89851302606'), tp_telefones_funcionarios(tp_telefone('73-462204136')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='68788809434'), tp_telefones_funcionarios(tp_telefone('60-693345220')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='92346383395'), tp_telefones_funcionarios(tp_telefone('07-585280716')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='13574644097'), tp_telefones_funcionarios(tp_telefone('67-800006041')));
INSERT INTO tb_telefones_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='92496388053'), tp_telefones_funcionarios(tp_telefone('00-212047640')));
*/

/* enderecos_funcionarios */

INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='90752904834'), '24002419', 'Rua Amaro Gomes Poroca, 91, Várzea');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='88140983799'), '47146819', 'Av. Agamenon Magalhães, 1000, Santo Amaro');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='06234438765'), '21162509', '190 Main Street West Salt Lake City, UT 84119');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='84865465963'), '40037681', '474 Fieldstone Drive Olive Branch, MS 38654');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='73235295212'), '28554775', '626 Brandywine Drive Middleburg, FL 32068');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='88838233153'), '21147608', '309 Highland Drive Fairburn, GA 30213');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='57424468667'), '24931142', '266 School Street Fenton, MI 48430');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='94183732742'), '19687243', '505 Virginia Avenue yattsville, MD 20782');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='42025593625'), '40984189', '508 Cambridge Road Mount Prospect, IL 60056');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='31988589642'), '48939700', '121 New Street Champlin, MN 55316');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='97268251891'), '15676650', '225 Sycamore Drive Phillipsburg, NJ 08865');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='57158935832'), '58569663', '441 Park Avenue Omaha, NE 68107');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='80817022099'), '20749684', '704 Hawthorne Lane Parkville, MD 21234');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='99053717997'), '31103687', '107 Cypress Court Ladson, SC 29456');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='52806078197'), '41382473', '407 1st Avenue Wasilla, AK 99654');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='93366940787'), '16239833', '971 Laurel Drive District Heights, MD 20747');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='19392779618'), '28887159', '86 Cleveland Avenue Uniondale, NY 11553');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='66886800515'), '47335459', '17 Amherst Street Glen Allen, VA 23059');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='90746704523'), '31119034', '558 Beechwood Drive Newtown, PA 18940');
INSERT INTO tb_enderecos_funcionarios VALUES ((SELECT REF(s) FROM tb_funcionarios s WHERE cpf='48671138077'), '49272302', '426 Marshall Street Rocky Mount, NC 27804');

/* telefones_clientes */

/*
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='32771001010862'), tp_nt_telefones_clientes(tp_telefone('1097112736')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='74023615300569'), tp_nt_telefones_clientes(tp_telefone('1098522898')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='35480432803963'), tp_nt_telefones_clientes(tp_telefone('1099631901')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='40824079424045'), tp_nt_telefones_clientes(tp_telefone('1098326714')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='50997772767181'), tp_nt_telefones_clientes(tp_telefone('1099367308')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='61841660367260'), tp_nt_telefones_clientes(tp_telefone('1097878759')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='49991270192798'), tp_nt_telefones_clientes(tp_telefone('1098480548')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='77016702913997'), tp_nt_telefones_clientes(tp_telefone('1098503945')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='14010782046701'), tp_nt_telefones_clientes(tp_telefone('1099108026')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='94405974919694'), tp_nt_telefones_clientes(tp_telefone('1098424309')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='91913832268294'), tp_nt_telefones_clientes(tp_telefone('1097782276')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='57290869110659'), tp_nt_telefones_clientes(tp_telefone('1098610719')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='26990196975153'), tp_nt_telefones_clientes(tp_telefone('1097208407')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='94395785501995'), tp_nt_telefones_clientes(tp_telefone('1097195017')));
INSERT INTO tb_telefones_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='46168389687831'), tp_nt_telefones_clientes(tp_telefone('1099685226')));
*/

/* tb_clientes */

INSERT INTO tb_clientes VALUES ('32771001010862', 'Petrobras S.A', 'jmendoza0@petrobras.com.br', 'petrobras.com.br', tp_nt_telefones_clientes(tp_telefone('1097112736')));
INSERT INTO tb_clientes VALUES ('74023615300569', 'Maersk', 'jparker1@maersk.com', 'maersk.com', tp_nt_telefones_clientes(tp_telefone('1098522898')));
INSERT INTO tb_clientes VALUES ('35480432803963', 'Shell', 'aruiz2@shell.com', 'shell.com', tp_nt_telefones_clientes(tp_telefone('1099631901')));
INSERT INTO tb_clientes VALUES ('40824079424045', 'Texaco', 'swebb3@texaco.com', 'texaco.com',  tp_nt_telefones_clientes(tp_telefone('1098326714')));
INSERT INTO tb_clientes VALUES ('50997772767181', 'Hamburg Süd', 'jwilliamson4@usgs.gov', 'oaic.gov.au', tp_nt_telefones_clientes(tp_telefone('1099367308')));
INSERT INTO tb_clientes VALUES ('61841660367260', 'Vale', 'jcunningham5@vale.com', 'vale.com', tp_nt_telefones_clientes(tp_telefone('1097878759')));
INSERT INTO tb_clientes VALUES ('49991270192798', 'Esso', 'jmartin6@esso.com', 'esso.com', tp_nt_telefones_clientes(tp_telefone('1098480548')));
INSERT INTO tb_clientes VALUES ('77016702913997', 'Samarco', 'alawrence7@samarco.com.br', 'samarco.com.br', tp_nt_telefones_clientes(tp_telefone('1098503945')));
INSERT INTO tb_clientes VALUES ('14010782046701', 'General Motors', 'chawkins8@gm.com', 'gm.com', tp_nt_telefones_clientes(tp_telefone('1099108026')));
INSERT INTO tb_clientes VALUES ('94405974919694', 'Alunorte', 'cferguson9@alunorte.com.br', 'alunorte.com.br', tp_nt_telefones_clientes(tp_telefone('1098424309')));
INSERT INTO tb_clientes VALUES ('91913832268294', 'Namisa', 'ebrooksa@namisa.com.br', 'namisa.com.br', tp_nt_telefones_clientes(tp_telefone('1097782276')));
INSERT INTO tb_clientes VALUES ('57290869110659', 'Alcoa', 'ngreenb@alcoa.com', 'alcoa.com', tp_nt_telefones_clientes(tp_telefone('1098610719')));
INSERT INTO tb_clientes VALUES ('26990196975153', 'Mitsubishi', 'esanchezc@mitsubishi.com', 'mitsubishi.com', tp_nt_telefones_clientes(tp_telefone('1097208407')));
INSERT INTO tb_clientes VALUES ('94395785501995', 'Rio Tinto', 'dcunninghamd@riotinto.com', 'riotinto.com',tp_nt_telefones_clientes(tp_telefone('1097195017')));
INSERT INTO tb_clientes VALUES ('46168389687831', 'BHP Billiton', 'rwarde@bhpbilliton.com', 'bhpbilliton.com', tp_nt_telefones_clientes(tp_telefone('1099685226')));


/* enderecos_clientes */

INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='32771001010862'), '46359768', '579 Oak Lane Parlin, NJ 08859.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='74023615300569'), '38372503', '878 8th Avenue Lake In The Hills, IL 60156.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='35480432803963'), '34311823', '340 Somerset Drive Woodstock, GA 30188.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='40824079424045'), '14956210', '948 William Street Barberton, OH 44203.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='50997772767181'), '43483725', '457 Route 2 Griffin, GA 30223.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='61841660367260'), '14576247', '522 Columbia Street Peachtree City, GA 30269.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='49991270192798'), '48415503', '804 Oak Street Silver Spring, MD 20901.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='77016702913997'), '55153968', '872 Bridge Street Oceanside, NY 11572.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='14010782046701'), '14826814', '434 Hickory Street Thibodaux, LA 70301.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='94405974919694'), '28473617', '411 Arlington Avenue Hackensack, NJ 07601.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='91913832268294'), '23573257', '848 Colonial Drive Peabody, MA 01960.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='57290869110659'), '24488350', '201 Bayberry Drive Rosemount, MN 55068.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='26990196975153'), '39413836', '360 Central Avenue Olive Branch, MS 38654.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='94395785501995'), '59547171', '901 Oak Street Natchez, MS 39120.');
INSERT INTO tb_enderecos_clientes VALUES ((SELECT REF(C) FROM tb_clientes C WHERE cnpj='46168389687831'), '59727291', '194 Park Street Belmont, MA 02478.');


/* tb_representantes */

INSERT INTO tb_representantes VALUES ('38349206880', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '32771001010862'), 'Roy Hudson');
INSERT INTO tb_representantes VALUES ('18760215941', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '74023615300569'), 'Bobby Stephens');
INSERT INTO tb_representantes VALUES ('38249379735', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '35480432803963'), 'Jonathan Brooks');
INSERT INTO tb_representantes VALUES ('45463712243', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '40824079424045'), 'Paul Harris');
INSERT INTO tb_representantes VALUES ('19709817248', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '50997772767181'), 'Mark Brown');
INSERT INTO tb_representantes VALUES ('18653207439', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '61841660367260'), 'Jonathan Taylor');
INSERT INTO tb_representantes VALUES ('12581666216', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '49991270192798'), 'Eugene Stewart');
INSERT INTO tb_representantes VALUES ('21417577784', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '77016702913997'), 'Albert Stephens');
INSERT INTO tb_representantes VALUES ('48869558051', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '14010782046701'), 'Jimmy West');
INSERT INTO tb_representantes VALUES ('13170275859', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '94405974919694'), 'Heather Mendoza');
INSERT INTO tb_representantes VALUES ('45765493189', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '91913832268294'), 'Jose Carr');
INSERT INTO tb_representantes VALUES ('15942326847', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '57290869110659'), 'Jose Sims');
INSERT INTO tb_representantes VALUES ('42455806504', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '26990196975153'), 'Victor Flores');
INSERT INTO tb_representantes VALUES ('44896261080', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '94395785501995'), 'Jonathan Gomez');
INSERT INTO tb_representantes VALUES ('38377052223', (SELECT REF(M) FROM tb_clientes M WHERE cnpj = '46168389687831'), 'Philip Torres');

/* tb_setores */

INSERT INTO tb_setores VALUES (1, 'Almoxarifado', 'Setor de estoque/armazenamento.');
INSERT INTO tb_setores VALUES (2, 'Recursos Humanos', 'Setor de R.H.');
INSERT INTO tb_setores VALUES (3, 'Financeiro', 'Setor de contabilidade e economia.');
INSERT INTO tb_setores VALUES (4, 'Soldagem', 'Setor de Soldagem.');
INSERT INTO tb_setores VALUES (5, 'Pintura', 'Setor de Pintura.');
INSERT INTO tb_setores VALUES (6, 'Reciclagem', 'Setor de reciclagem de peças.');
INSERT INTO tb_setores VALUES (7, 'Acabamento', 'Setor de acabamento.');
INSERT INTO tb_setores VALUES (8, 'Mecânico', 'Setor mecânico.');
INSERT INTO tb_setores VALUES (9, 'Testes', 'Onde os navios são testados.');
INSERT INTO tb_setores VALUES (10, 'Pesquisa e Desenvolvimento', 'Setor de R.D da empresa.');

/* tb_responsaveis_setores */

INSERT INTO tb_responsaveis_setores VALUES ((SELECT REF(M) FROM tb_funcionarios M WHERE cpf = '90752904834'), (SELECT REF(M) FROM tb_setores M WHERE id = 1));
INSERT INTO tb_responsaveis_setores VALUES ((SELECT REF(M) FROM tb_funcionarios M WHERE cpf = '88140983799'), (SELECT REF(M) FROM tb_setores M WHERE id = 2));
INSERT INTO tb_responsaveis_setores VALUES ((SELECT REF(M) FROM tb_funcionarios M WHERE cpf = '37608581276'), (SELECT REF(M) FROM tb_setores M WHERE id = 3));
INSERT INTO tb_responsaveis_setores VALUES ((SELECT REF(M) FROM tb_funcionarios M WHERE cpf = '15302830862'), (SELECT REF(M) FROM tb_setores M WHERE id = 4));
INSERT INTO tb_responsaveis_setores VALUES ((SELECT REF(M) FROM tb_funcionarios M WHERE cpf = '92496388053'), (SELECT REF(M) FROM tb_setores M WHERE id = 5));
INSERT INTO tb_responsaveis_setores VALUES ((SELECT REF(M) FROM tb_funcionarios M WHERE cpf = '12060045245'), (SELECT REF(M) FROM tb_setores M WHERE id = 6));
INSERT INTO tb_responsaveis_setores VALUES ((SELECT REF(M) FROM tb_funcionarios M WHERE cpf = '13574644097'), (SELECT REF(M) FROM tb_setores M WHERE id = 7));
INSERT INTO tb_responsaveis_setores VALUES ((SELECT REF(M) FROM tb_funcionarios M WHERE cpf = '92346383395'), (SELECT REF(M) FROM tb_setores M WHERE id = 8));
INSERT INTO tb_responsaveis_setores VALUES ((SELECT REF(M) FROM tb_funcionarios M WHERE cpf = '68788809434'), (SELECT REF(M) FROM tb_setores M WHERE id = 9));
INSERT INTO tb_responsaveis_setores VALUES ((SELECT REF(M) FROM tb_funcionarios M WHERE cpf = '89851302606'), (SELECT REF(M) FROM tb_setores M WHERE id = 10));

/* tb_projetos_criacoes */

INSERT INTO tb_projetos_criacoes VALUES (1, 'Super Petrol 12', 'Nosso maior petroleiro.', 702.88, TO_DATE('26/12/2005', 'dd/mm/yyyy'), TO_DATE('24/11/2013', 'dd/mm/yyyy'), TO_DATE('12/09/2013', 'dd/mm/yyyy'), 'YpC90tTIc');
INSERT INTO tb_projetos_criacoes VALUES (2, 'Gas Titanic 1000', 'Terceiro maior gaseiro.', 410.81, TO_DATE('17/01/1957', 'dd/mm/yyyy'), TO_DATE('23/07/1965', 'dd/mm/yyyy'), TO_DATE('01/12/1967', 'dd/mm/yyyy'), 'vJo5TaA4dl');
INSERT INTO tb_projetos_criacoes VALUES (3, 'TI Class Petrol', 'Segundo maior petroleiro.', 345.33, TO_DATE('25/10/2000', 'dd/mm/yyyy'), TO_DATE('10/03/2003', 'dd/mm/yyyy'), TO_DATE('10/10/2010', 'dd/mm/yyyy'), 'sUDQ5g');
INSERT INTO tb_projetos_criacoes VALUES (4, 'Berge Emperor', 'Terceiro maior petroleiro.', 985.4, TO_DATE('28/02/1965', 'dd/mm/yyyy'), TO_DATE('21/04/1978', 'dd/mm/yyyy'), TO_DATE('12/03/1980', 'dd/mm/yyyy'), 'CiDt8DyCa');
INSERT INTO tb_projetos_criacoes VALUES (5, 'CMA CGM Alexander Von Humboldt', 'Navio container.', 969.97, TO_DATE('06/01/1989', 'dd/mm/yyyy'), TO_DATE('14/10/1998', 'dd/mm/yyyy'), TO_DATE('10/02/1997', 'dd/mm/yyyy'), 'W5W32rDu');

/* tb_projetos_restauracoes */
INSERT INTO tb_projetos_restauracoes VALUES (6, 'Emma Maersk', 'Cargueiro classe E.', 572.65, TO_DATE('13/07/1965', 'dd/mm/yyyy'), TO_DATE('11/03/1971', 'dd/mm/yyyy'), TO_DATE('29/11/1969', 'dd/mm/yyyy'), 6, 6);
INSERT INTO tb_projetos_restauracoes VALUES (7, 'Maersk Mc-Kinney Moller', 'Cargueiro classe E.', 475.59, TO_DATE('14/09/1987', 'dd/mm/yyyy'), TO_DATE('29/10/1993', 'dd/mm/yyyy'), TO_DATE('04/06/1995', 'dd/mm/yyyy'), 7, 7);
INSERT INTO tb_projetos_restauracoes VALUES (8, 'Batillus', 'Segundo maior gaseiro.', 510.23, TO_DATE('30/05/2000', 'dd/mm/yyyy'), TO_DATE('16/06/2011', 'dd/mm/yyyy'), TO_DATE('24/07/2009', 'dd/mm/yyyy'), 8, 8);
INSERT INTO tb_projetos_restauracoes VALUES (9, 'Seawise Giant', 'Quinto maior petroleiro.', 142.74, TO_DATE('03/07/1987', 'dd/mm/yyyy'), TO_DATE('18/07/2012', 'dd/mm/yyyy'), TO_DATE('21/12/2012', 'dd/mm/yyyy'), 9, 9);
INSERT INTO tb_projetos_restauracoes VALUES (10, 'Prelude FLNG', 'Maior gaseiro do mundo.', 233.11, TO_DATE('17/08/1960', 'dd/mm/yyyy'), TO_DATE('16/10/1971', 'dd/mm/yyyy'), TO_DATE('16/10/1971', 'dd/mm/yyyy'), 10, 10);

/* tb_execucoes_projetos */

INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 1), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 1));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 1), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 2));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 2), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 2));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 2), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 3));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 3), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 3));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 3), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 4));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 4), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 4));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 4), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 5));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 5), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 5));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 5), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 1));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 6), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 2));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 6), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 2));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 7), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 3));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 7), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 3));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 8), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 4));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 8), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 4));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 9), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 5));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 9), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 5));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 10), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 1));
INSERT INTO tb_execucoes_projetos VALUES ((SELECT REF(M) FROM tb_setores M WHERE id = 10), (SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 2));

/* tb_embarcacoes */

INSERT INTO tb_embarcacoes VALUES ('6686256566744014', 'CONTEINEIRO', TO_DATE('23/06/2001','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('3483008998238951', 'CONTEINEIRO', TO_DATE('13/07/1952','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('1858278084503792', 'CONTEINEIRO', TO_DATE('08/01/1983','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('2058105563559733', 'CONTEINEIRO', TO_DATE('16/02/1974','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('3010386456443800', 'CONTEINEIRO', TO_DATE('06/10/1988','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('6894233464033459', 'GASEIRO', TO_DATE('08/07/2006','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('3977665514774184', 'GASEIRO', TO_DATE('07/07/1994','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('4709306226415695', 'GASEIRO', TO_DATE('05/11/1967','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('7663040196268442', 'GASEIRO', TO_DATE('29/05/1962','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('7326302996717560', 'GASEIRO', TO_DATE('12/03/1963','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('1700151499882756', 'GASEIRO', TO_DATE('26/09/1997','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('5322937184789651', 'GASEIRO', TO_DATE('03/07/1959','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('1986326421419801', 'VLCC', TO_DATE('23/01/2011','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('5560728405647844', 'VLCC', TO_DATE('11/03/2015','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('8008944033340588', 'VLCC', TO_DATE('30/03/1962','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('7808994642283709', 'VLCC', TO_DATE('08/07/1971','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('4724698486648050', 'PETROLEIRO', TO_DATE('26/02/1999','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('7578314219866680', 'PETROLEIRO', TO_DATE('25/11/1980','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('4082223176847353', 'PETROLEIRO', TO_DATE('05/09/1997','dd/mm/yyyy'));
INSERT INTO tb_embarcacoes VALUES ('1611889263988087', 'PETROLEIRO', TO_DATE('03/01/1955','dd/mm/yyyy'));

/* tb_solicitacoes_projetos */

INSERT INTO tb_solicitacoes_projetos VALUES ((SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 1), (SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '6686256566744014'), (SELECT REF(S) FROM tb_clientes S WHERE cnpj = '32771001010862'), TO_DATE('24/07/1975','dd/mm/yyyy'));
INSERT INTO tb_solicitacoes_projetos VALUES ((SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 2), (SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '3483008998238951'), (SELECT REF(S) FROM tb_clientes S WHERE cnpj = '75721366166563'), TO_DATE('06/09/2004','dd/mm/yyyy'));
INSERT INTO tb_solicitacoes_projetos VALUES ((SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 3), (SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '1858278084503792'), (SELECT REF(S) FROM tb_clientes S WHERE cnpj = '35480432803963'), TO_DATE('05/01/2008','dd/mm/yyyy'));
INSERT INTO tb_solicitacoes_projetos VALUES ((SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 4), (SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '2058105563559733'), (SELECT REF(S) FROM tb_clientes S WHERE cnpj = '40824079424045'), TO_DATE('21/07/1989','dd/mm/yyyy'));
INSERT INTO tb_solicitacoes_projetos VALUES ((SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 5), (SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '3010386456443800'), (SELECT REF(S) FROM tb_clientes S WHERE cnpj = '50997772767181'), TO_DATE('24/11/1987','dd/mm/yyyy'));
INSERT INTO tb_solicitacoes_projetos VALUES ((SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 1), (SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '6894233464033459'), (SELECT REF(S) FROM tb_clientes S WHERE cnpj = '61841660367260'), TO_DATE('13/03/2009','dd/mm/yyyy'));
INSERT INTO tb_solicitacoes_projetos VALUES ((SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 2), (SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '3977665514774184'), (SELECT REF(S) FROM tb_clientes S WHERE cnpj = '57290869110659'), TO_DATE('18/05/2001','dd/mm/yyyy'));
INSERT INTO tb_solicitacoes_projetos VALUES ((SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 3), (SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '4709306226415695'), (SELECT REF(S) FROM tb_clientes S WHERE cnpj = '26990196975153'), TO_DATE('30/03/2013','dd/mm/yyyy'));
INSERT INTO tb_solicitacoes_projetos VALUES ((SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 4), (SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '7663040196268442'), (SELECT REF(S) FROM tb_clientes S WHERE cnpj = '94395785501995'), TO_DATE('26/07/1985','dd/mm/yyyy'));
INSERT INTO tb_solicitacoes_projetos VALUES ((SELECT REF(M) FROM tb_projetos_criacoes M WHERE id = 5), (SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '5560728405647844'), (SELECT REF(S) FROM tb_clientes S WHERE cnpj = '46168389687831'), TO_DATE('07/07/1964','dd/mm/yyyy'));

/* tb_especificacoes */

INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '6686256566744014'), 123.45, 400.000, 30.000, 20.000, 1000, 90.000);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '3483008998238951'), 234.56, 450.000, 35.000, 25.000, 1250, 99.000);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '1858278084503792'), 345.67, 500.000, 40.000, 50.000, 1500, 10.000);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '2058105563559733'), 456.78, 350.000, 65.000, 75.000, 1750, 19.000);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '3010386456443800'), 567.89, 750.000, 37.050, 27.120, 1980, 99.000);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '6894233464033459'), 678.90, 234.024, 12.423, 23.242, 1412, 24.241);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '3977665514774184'), 215.54, 238.575, 24.235, 86.535, 2355, 35.356);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '4709306226415695'), 832.46, 233.844, 85.741, 86.112, 3431, 23.235);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '7663040196268442'), 034.37, 647.355, 35.356, 37.245, 5236, 35.352);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '7326302996717560'), 038.54, 462.644, 24.574, 43.463, 4363, 43.436);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '1700151499882756'), 352.36, 263.362, 36.362, 75.436, 3346, 23.463);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '5322937184789651'), 474.34, 346.463, 46.436, 86.553, 3525, 53.274);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '1986326421419801'), 523.36, 532.246, 24.426, 76.584, 7435, 34.754);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '5560728405647844'), 233.64, 653.352, 35.325, 64.754, 5246, 54.463);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '8008944033340588'), 025.53, 054.633, 23.435, 46.456, 6436, 54.753);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '7808994642283709'), 001.13, 326.361, 33.265, 23.235, 3575, 23.362);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '4724698486648050'), 673.35, 732.462, 46.462, 44.426, 2532, 23.648);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '7578314219866680'), 112.46, 325.972, 35.464, 34.863, 7334, 23.362);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '4082223176847353'), 123.73, 111.222, 33.444, 55.666, 7777, 88.999);
INSERT INTO tb_especificacoes VALUES ((SELECT REF(M) FROM tb_embarcacoes M WHERE certificado = '1611889263988087'), 012.34, 420.420, 12.344, 56.788, 1337, 54.321);

/* tb_equipamentos */

INSERT INTO tb_equipamentos VALUES (1, 'Máquina de Solda Compact', 'Solda', TO_DATE('26/12/1981','dd/mm/yyyy'), TO_DATE('20/04/1990','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (2, 'Britadeira Black & Decker', 'Britadeira', TO_DATE('24/03/1956','dd/mm/yyyy'), TO_DATE('03/07/1978','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (3, 'Furadeira Black & Decker', 'Furadeira', TO_DATE('31/03/1993','dd/mm/yyyy'), TO_DATE('26/09/2004','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (4, 'Transformador de Solda', 'Solda', TO_DATE('29/12/1973','dd/mm/yyyy'), TO_DATE('01/01/1998','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (5, 'Bomba Centrífuga', 'Bombeamento', TO_DATE('27/08/1985','dd/mm/yyyy'), TO_DATE('30/05/1988','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (6, 'Bomba Auto-Escorvante', 'Bombeamento', TO_DATE('13/02/1988','dd/mm/yyyy'), TO_DATE('05/03/1994','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (7, 'Maçarico a Gás Rothenberber', 'Maçarico', TO_DATE('06/09/1979','dd/mm/yyyy'), TO_DATE('16/02/1999','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (8, 'Regulador cilíndrico de Solda', 'Solda', TO_DATE('26/10/1982','dd/mm/yyyy'), TO_DATE('15/04/1995','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (9, 'Bomba de Água', 'Bombeamento', TO_DATE('16/02/1963','dd/mm/yyyy'), TO_DATE('25/11/1972','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (10, 'Bomba Auto Espirante', 'Bombeamento', TO_DATE('28/12/1968','dd/mm/yyyy'), TO_DATE('05/07/1977','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (11, 'Parafusadeira Maquita', 'Peça de Montagem', TO_DATE('16/09/1955','dd/mm/yyyy'), TO_DATE('18/05/1967','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (12, 'Soprador Térmico', 'Máquina Térmica', TO_DATE('08/02/1963','dd/mm/yyyy'), TO_DATE('01/03/1972','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (13, 'Compressor de Ar Monofásico', 'Compressor', TO_DATE('09/10/1954','dd/mm/yyyy'), TO_DATE('09/08/1965','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (14, 'Esmerilhadeira Angular', 'Esmerilhadeira', TO_DATE('09/05/1969','dd/mm/yyyy'), TO_DATE('22/05/1989','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (15, 'Fonte Inversora de Solda', 'WMI 140ED 220V BAMBOZZI', TO_DATE('22/06/1968','dd/mm/yyyy'), TO_DATE('25/01/1979','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (16, 'Fonte Inversora de Solda', 'DC - 110V BAMBOZZI', TO_DATE('26/01/2011','dd/mm/yyyy'), TO_DATE('20/08/2011','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (17, 'Fonte Inversora de Solda', 'TIG DC 220V BALMER', TO_DATE('25/11/1950','dd/mm/yyyy'), TO_DATE('29/06/1969','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (18, 'Fonte Inversora de Solda', 'Cabeçote 250A Trifásico', TO_DATE('16/08/1981','dd/mm/yyyy'), TO_DATE('28/05/1994','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (19, 'Máquina de Solda', '150A 110V', TO_DATE('24/11/1979','dd/mm/yyyy'), TO_DATE('24/11/1998','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (20, 'Máquina de Solda', 'MIG130 MIG/MAG0', TO_DATE('17/10/1970','dd/mm/yyyy'), TO_DATE('20/02/1984','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (21, 'Máquina de Solda', '150A 220V WORKER-1002', TO_DATE('06/04/1999','dd/mm/yyyy'), TO_DATE('21/09/2002','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (22, 'Máquina de Solda', '150A 220V WORKER-1548', TO_DATE('19/04/1965','dd/mm/yyyy'), TO_DATE('26/01/1975','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (23, 'Regulador de Oxigênio', 'OMEGA-0250123456', TO_DATE('28/01/1952','dd/mm/yyyy'), TO_DATE('08/11/1974','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (24, 'Regulador de Oxigênio', 'OMEGA-0250910008', TO_DATE('22/11/1975','dd/mm/yyyy'), TO_DATE('08/03/1984','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (25, 'Regulador de Oxigênio', 'OHM-1203601708', TO_DATE('19/05/1994','dd/mm/yyyy'), TO_DATE('22/08/2015','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (26, 'Regulador de Oxigênio', 'OHM-7548928874', TO_DATE('11/11/2004','dd/mm/yyyy'), TO_DATE('07/12/2010','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (27, 'Máquina de Solda', 'MIG130 MIG/MAG', TO_DATE('10/02/1999','dd/mm/yyyy'), TO_DATE('13/12/2014','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (28, 'Máquina de Solda', 'MIG130 MIG/MAG 220V', TO_DATE('29/08/1955','dd/mm/yyyy'), TO_DATE('07/01/1967','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (29, 'Fonte Inversora de Solda', 'DC - 110V BAMBOZZI', TO_DATE('05/04/1975','dd/mm/yyyy'), TO_DATE('06/07/1984','dd/mm/yyyy'));
INSERT INTO tb_equipamentos VALUES (30, 'Fonte Inversora de Solda', 'DC - 110V BAMBOZZI', TO_DATE('06/06/1982','dd/mm/yyyy'), TO_DATE('15/11/1993','dd/mm/yyyy'));



/* tb_compras_equipamentos */

INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 2), (SELECT REF(M) FROM tb_setores M WHERE id = 1), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '06234438765'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 3), (SELECT REF(M) FROM tb_setores M WHERE id = 1), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '88140983799'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 2), (SELECT REF(M) FROM tb_setores M WHERE id = 1), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '90752904834'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 1), (SELECT REF(M) FROM tb_setores M WHERE id = 1), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '84865465963'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 10), (SELECT REF(M) FROM tb_setores M WHERE id = 4), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '73235295212'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 9), (SELECT REF(M) FROM tb_setores M WHERE id = 4), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '88838233153'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 8), (SELECT REF(M) FROM tb_setores M WHERE id = 3), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '57424468667'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 7), (SELECT REF(M) FROM tb_setores M WHERE id = 3), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '94183732742'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 4), (SELECT REF(M) FROM tb_setores M WHERE id = 2), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '42025593625'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 5), (SELECT REF(M) FROM tb_setores M WHERE id = 2), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '31988589642'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 15), (SELECT REF(M) FROM tb_setores M WHERE id = 5), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '97268251891'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 25), (SELECT REF(M) FROM tb_setores M WHERE id = 9), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '57158935832'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 23), (SELECT REF(M) FROM tb_setores M WHERE id = 8), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '80817022099'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 12), (SELECT REF(M) FROM tb_setores M WHERE id = 4), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '99053717997'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 17), (SELECT REF(M) FROM tb_setores M WHERE id = 6), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '25104679287'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 30), (SELECT REF(M) FROM tb_setores M WHERE id = 10), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '28328322904'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 25), (SELECT REF(M) FROM tb_setores M WHERE id = 9), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '44160467456'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 7), (SELECT REF(M) FROM tb_setores M WHERE id = 3), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '79859148466'));
INSERT INTO tb_compras_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 28), (SELECT REF(M) FROM tb_setores M WHERE id = 10), (SELECT REF(S) FROM tb_funcionarios S WHERE cpf = '04910256448'));

/* tb_manutencoes_equipamentos */

INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 1), TO_DATE('24/11/1985','dd/mm/yyyy'), 'CONCLUIDA');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 2), TO_DATE('11/04/1964','dd/mm/yyyy'), 'PENDENTE');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 3), TO_DATE('05/10/1997','dd/mm/yyyy'), 'PENDENTE');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 4), TO_DATE('15/06/1980','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 5), TO_DATE('19/09/1986','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 6), TO_DATE('09/06/1991','dd/mm/yyyy'), 'CONCLUIDA');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 7), TO_DATE('26/12/1990','dd/mm/yyyy'), 'PENDENTE');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 8), TO_DATE('04/11/1984','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 9), TO_DATE('16/03/1969','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 10), TO_DATE('24/10/1972','dd/mm/yyyy'), 'CONCLUIDA');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 11), TO_DATE('01/09/1966','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 12), TO_DATE('10/03/1963','dd/mm/yyyy'), 'PENDENTE');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 13), TO_DATE('11/06/1962','dd/mm/yyyy'), 'PENDENTE');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 14), TO_DATE('30/10/1979','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 15), TO_DATE('07/08/1970','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 16), TO_DATE('13/06/2011','dd/mm/yyyy'), 'PENDENTE');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 17), TO_DATE('04/10/1952','dd/mm/yyyy'), 'CONCLUIDA');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 18), TO_DATE('19/02/1991','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 19), TO_DATE('11/09/1988','dd/mm/yyyy'), 'CONCLUIDA');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 20), TO_DATE('12/08/1978','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 21), TO_DATE('19/10/2001','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 22), TO_DATE('08/11/1971','dd/mm/yyyy'), 'CONCLUIDA');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 23), TO_DATE('30/03/1963','dd/mm/yyyy'), 'CONCLUIDA');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 24), TO_DATE('16/04/1979','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 25), TO_DATE('23/05/2012','dd/mm/yyyy'), 'CONCLUIDA');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 26), TO_DATE('02/11/2007','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 27), TO_DATE('20/01/2000','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 28), TO_DATE('07/02/1960','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 29), TO_DATE('23/06/1983','dd/mm/yyyy'), 'EM ANDAMENTO');
INSERT INTO tb_manutencoes_equipamentos VALUES ((SELECT REF(E) FROM tb_equipamentos E WHERE id = 30), TO_DATE('02/01/1990','dd/mm/yyyy'), 'CONCLUIDA');
