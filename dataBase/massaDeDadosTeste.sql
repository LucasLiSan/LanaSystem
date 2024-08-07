use lanasystemdb;

INSERT INTO categorias (categoria) VALUES
('Material de Escritório'),
('Material Escolar'),
('Material Didático'),
('Material de Arte'),
('Equipamentos de Tecnologia'),
('Material de Limpeza'),
('Equipamentos de Segurança'),
('Móveis e Equipamentos'),
('Material de Educação Física'),
('Material de Música'),
('Material de Ciências'),
('Suprimentos de Refeição'),
('Material de Jardinagem');

select * from categorias;

INSERT INTO almoxarifados (nomeProduto, descricaoProduto, corProduto, qtdEstoque, categoriaProd, codBarraProd) VALUES
('Caneta Azul', 'Caneta esferográfica azul', 'Azul', 500, 1, '7891234567890'),
('Lápis HB', 'Lápis de grafite HB', 'Preto', 1000, 1, '7891234567891'),
('Borracha', 'Borracha branca', 'Branca', 300, 1, '7891234567892'),
('Caderno 10 Matérias', 'Caderno espiral 10 matérias', 'Branco', 200, 2, '7891234567893'),
('Agenda 2024', 'Agenda anual 2024','Branco', 150, 2, '7891234567894'),
('Livro de Matemática', 'Livro didático de matemática','Branco', 100, 3, '7891234567895'),
('Giz de Cera', 'Caixa com 12 cores','Multicor', 400, 4, '7891234567896'),
('Tinta Guache', 'Tinta guache 250ml','Multicor', 300, 4, '7891234567897'),
('Laptop', 'Laptop para uso escolar','Preto', 50, 5, '7891234567898'),
('Projetor', 'Projetor multimídia','Amarelo', 20, 5, '7891234567899'),
('Detergente', 'Detergente líquido 1L','Multicor', 100, 6, '7891234567800'),
('Vassoura', 'Vassoura de piaçava','Multicor', 50, 6, '7891234567801'),
('Extintor de Incêndio', 'Extintor de incêndio ABC 4kg','Multicor', 10, 7, '7891234567802'),
('Kit de Primeiros Socorros', 'Kit básico de primeiros socorros','Multicor', 20, 7, '7891234567803'),
('Mesa Escolar', 'Mesa escolar individual','Multicor', 100, 8, '7891234567804'),
('Cadeira Escolar', 'Cadeira escolar com braço','Multicor', 200, 8, '7891234567805'),
('Bola de Futebol', 'Bola de futebol tamanho 5','Multicor', 60, 9, '7891234567806'),
('Rede de Vôlei', 'Rede de vôlei oficial','Multicor', 30, 9, '7891234567807'),
('Violão', 'Violão acústico','Multicor', 25, 10, '7891234567808'),
('Flauta Doce', 'Flauta doce de plástico','Multicor', 50, 10, '7891234567809'),
('Microscópio', 'Microscópio biológico','Multicor', 15, 11, '7891234567810'),
('Lâminas para Microscópio', 'Caixa com 50 lâminas','Multicor', 100, 11, '7891234567811'),
('Copos Descartáveis', 'Copos descartáveis 200ml (pacote c/ 100)','Multicor', 200, 12, '7891234567812'),
('Pratos Descartáveis', 'Pratos descartáveis (pacote c/ 50)','Multicor', 150, 12, '7891234567813'),
('Pá de Jardim', 'Pá de jardinagem pequena','Multicor', 75, 13, '7891234567814'),
('Adubo Orgânico', 'Saco de adubo orgânico 5kg','Preto', 50, 13, '7891234567815');

select * from almoxarifados;

#UPDATE almoxarifados
#SET nomeProduto = 'Caneta Azul'
#WHERE idProduto = 1;

INSERT INTO localizacaos (armario, prateleira, idProdutoGuardado, qtdPrdoGuardado, localArmario) VALUES
(3,3,1,15,'ESTOQUE LIMPEZA');

select * from localizacaos;

INSERT INTO estoquelimpezas (nomeProduto, descricaoProduto, corProduto, qtdEstoque, categoriaProd, codBarraProd, marcaProd, validadeProd, tipoProd, situacaoProd) VALUES
('ALCOOL','ALCOOL BACTERICIDA 70','TRANSPARENTE',25,5,'7898255676773','AUDAX FACILITA','INDETERMINADA','PESO/LITRO'),
('ALCOOL','ALCOOL HIDRATADO 70','TRANSPARENTE',17,5,'7899449498331','BARBAREX','45809','PESO/LITRO'),
('AVENTAL','AVENTAL PVC','TRANSPARENTE',1,5,'201649202407181','AVENTAL','INDETERMINADO','VESTUÁRIO'),
('BOTA','BOTA DE PVC CANO CURTO','BRANCO',2,5,'201649202407182','WORKFLEX','INDETERMINADO','VESTUÁRIO'),
('BOTA','BOTA DE PVC CANO CURTO','BRANCO',1,5,'7899310784969','FUJIWARA','INDETERMINADO','VESTUÁRIO'),
('BOTINA','BOTINA DE PLASTICO DORSO ACOLCHOADO','PRETO',1,5,'217253020019','F-SEG','INDETERMINADO','VESTUÁRIO'),
('CABO','CABO DE MADEIRA P/ PÁ DE LIXO','VERMELHO',3,5,'201649202407183','CABO DE MADEIRA','INDETERMINADO','PLANOS'),
('CABO','CABO DE MADEIRA P/ VASSOURA','VERDE',9,5,'201649202407184','CABO DE MADEIRA','INDETERMINADO','PLANOS'),
('CABO','CABO DE MADEIRA P/ VASSOURA','MULTICOR',3,5,'201649202407184','CABO DE MADEIRA','INDETERMINADO','PLANOS'),
('CABO','CABO DE METAL P/ RODO','VERMELHO',5,5,'201649202407184','CONDOR','INDETERMINADO','PESO/KG'),
('CERA','CERA PERFUMADA INCOLOR','INCOLOR',6,5,'7896527700096','ROUXINOL','45514','PESO/KG'),
('CERA','CERA PERFUMADA INCOLOR','INCOLOR',32,5,'7896527700096','ROUXINOL','45738','PESO/KG'),
('CERA','CERA PERFUMADA INCOLOR','INCOLOR',4,5,'7896527700096','ROUXINOL','45340','PESO/KG'),
('CLORO','CLORO ATIVO','TRANSPARENTE',7,5,'7898462401137','BIO-KISS','45474','PESO/KG'),
('DESINFETANTE','DESINFETANTE ALGAS','VERDE',9,5,'789846240243','BIO-KISS','45901','PESO/KG'),
('DESINFETANTE','DESINFETANTE JASMIN','ROSA',1,5,'7898462402301','BIO-KISS','45352','PESO/KG'),
('DESINFETANTE','DESINFETANTE LAVANDA','LAVANDA',19,5,'7896090300211','CONDE','45445','PESO/KG'),
('DESINFETANTE','DESINFETANTE LAVANDA','LAVANDA',3,5,'7896090300211','CONDE','45485','PESO/KG'),
('DESINFETANTE','DESINFETANTE LAVANDA','LAVANDA',6,5,'7896524705100','SUPREMA','45578','PESO/KG'),
('DESINFETANTE','DESINFETANTE LAVANDA','LAVANDA',3,5,'7896524705353','SUPREMA','45771','PESO/KG'),
('DESINFETANTE','DESINFETANTE LAVANDA','LAVANDA',1,5,'7896524705353','SUPREMA','45579','PESO/KG'),
('DESINFETANTE','DESINFETANTE TALCO','AZUL',16,5,'7898462402448','BIO-KISS','46113','PESO/KG'),
('DESINFETANTE','DESINFETANTE VIOLEX','ROXO',9,5,'7898462402561','BIO-KISS','46082','PESO/KG'),
('DISPENSER','DISPENSER PLASTICO P/ PAPEL TOALHA','BRANCO',1,5,'7899682766563','NOBRE','INDETERMINADO','PESO/KG'),
('ESPONJA DE LÃ DE AÇO','ESPONJA DE LÃ DE AÇO','CINZA',6,5,'7896090100101','ASSOLAN','46388','PESO/KG'),
('ESPONJA','ESPONJA MULTIUSO','VERDE',33,5,'7896001044517','JEITOSA','INDETERMINADO','PESO/KG'),
('EXTENSOR','EXTENSOR TELESCÓPICO P/ PINTURA','VERDE',1,5,'7898602575858','DURÍN','INDETERMINADO','PESO/KG'),
('FLANELA','FLANELA','LARANJA',9,5,'7898947870045','CAEBI','INDETERMINADO','PESO/KG'),
('FLANELA','FLANELA','LARANJA',26,5,'7898990702294','NEVES','INDETERMINADO','PESO/KG'),
('GEL DENTAL','GEL DENTAL INFANTIL','BRANCA',2,5,'7898185413943','DOCTOR DUCK','46082','PESO/KG'),
('LIMPA VIDRO','LIMPA VIDRO','TRANSPARENTE',3,5,'7897380300676','FACILIT','46296','PESO/KG'),
('LIMPA VIDRO','LIMPA VIDRO','TRANSPARENTE',2,5,'7898005490444','AGI FACÍL','45051','PESO/KG'),
('LIMPA VIDRO','LIMPA VIDRO','TRANSPARENTE',1,5,'7898086420729','ECOAR','INDETERMINADA','PESO/KG'),
('LIXEIRA ','LIXEIRA ','PRETO',1,5,'7898264711809','LIXEIRA','INDETERMINADO','PESO/KG'),
('LIXEIRA','LIXEIRA BASCULANTE','PRETO',1,5,'7896042034850','ECOBLACK','INDETERMINADO','PESO/KG'),
('LIXEIRA','LIXEIRA DE PIA','PRETO',4,5,'7896042034843','ECOBLACK','INDETERMINADO','PESO/KG'),
('LUVAS','LUVA BICOLOR C/ FORRO','AZUL',1,5,'7898207216217','VOLK','45078','PESO/KG'),
('LUVAS','LUVA MULTIUSO SLIM','AMARELA',1,5,'7898619330587','VOLK','47392','PESO/KG'),
('LUVAS','LUVAS DE LATEX','AMARELA',2,5,'7898703420507','INOVAN','46569','PESO/KG'),
('LUVAS','LUVAS DE LATEX','AMARELA',5,5,'7898703420514','INOVAN','46569','PESO/KG'),
('LUVAS','LUVAS DE LATEX','AMARELA',12,5,'7898703420514','INOVAN','46600','PESO/KG'),
('LUVAS','LUVAS DE LATEX','AMARELA',11,5,'7898703420521','INOVAN','46569','PESO/KG'),
('LUVAS','LUVAS MULTIUSO','AMARELA',2,5,'7898947170732','MB LIFE','45962','PESO/KG'),
('LUVAS','LUVAS MULTIUSO','AMARELA',1,5,'7898947170756','MB LIFE','45962','PESO/KG'),
('MÁSCARA','MASCARA CIRURGICA CX C/ 50 UNIDADES','BRANCA',4,5,'7898946757637','TALGE','46388','PESO/KG'),
('PÁ','PÁ DE LIXO C/ CABO','MULTICOR',1,5,'201649202407185','PÁ','INDETERMINADO','PESO/KG'),
('PÁ','PÁ DE LIXO C/ CABO','MULTICOR',2,5,'201649202407185','PÁ','INDETERMINADO','PESO/KG'),
('PÁ','PÁ DE LIXO C/ CABO','MULTICOR',1,5,'201649202407185','PÁ','INDETERMINADO','PESO/KG'),
('PÁ','PÁ DE LIXO C/ CABO','MULTICOR',1,5,'201649202407185','PÁ','INDETERMINADO','PESO/KG'),
('PÁ','PÁ DE LIXO C/ CABO','MULTICOR',2,5,'201649202407185','PÁ','INDETERMINADO','PESO/KG'),
('PÁ','PÁ DE LIXO DE MÃO','MULTICOR',1,5,'201649202407186','PÁ','INDETERMINADO','PESO/KG'),
('PÁ','PÁ DE LIXO S/ CABO','PRETO',3,5,'201649202407187','PÁ','INDETERMINADO','PESO/KG'),
('PÁ','PÁ DE LIXO S/ CABO','PRETO',3,5,'7897788813112','PÁ','INDETERMINADO','PESO/KG'),
('PAPEL HIGIÊNICO','PAPEL HIGIÊNICO PCT C/ 12 UNIDADES','BRANCO',3,5,'7899853806012','QUALITÉ CAMPIONE','INDETERMINADO','PESO/KG'),
('PAPEL TOALHA','PAPEL TOALHA BRANCO EXTRA LUXO INTERFOLHAS','BRANCO',12,5,'7898190094366','SNOP PAPÉIS','INDETERMINADO','PESO/KG'),
('PAPEL TOALHA','PAPEL TOALHA BRANCO EXTRA LUXO INTERFOLHAS PCT C/ 1000 TOALHAS','BRANCO',7,5,'7898190094366','SNOP PAPÉIS','INDETERMINADO','PESO/KG'),
('PEDRA SANITÁRIA','PEDRA SANITARIA FLORAL','ROSA',3,5,'7898065730061','SANY MIX','45901','PESO/KG'),
('PEDRA SANITÁRIA','PEDRA SANITARIA LAVANDA','LAVANDA',4,5,'7898065730085','SANY MIX','45778','PESO/KG'),
('PEDRA SANITÁRIA','PEDRA SANITARIA LAVANDA','LAVANDA',7,5,'7898065730085','SANY MIX','45901','PESO/KG'),
('PROTETOR FACIAL','PROTETOR FACIAL FACE SHIELD','TRANSPARENTE',10,5,'7898294970009','RDJ','INDETERMINADO','PESO/KG'),
('RODO','RODO C/ CABO','PRETO',4,5,'201649202407188','PUXA SECA','INDETERMINADO','PESO/KG'),
('RODO','RODO RODO S/ CABO R-40','MULTICOR',7,5,'7897788815116','PUXA SECA','INDETERMINADO','PESO/KG'),
('RODO','RODO RODO S/ CABO R-40','VERMELHO',3,5,'7897788822039','PUXA SECA','INDETERMINADO','PESO/KG'),
('SABONETE','SABONETE LÍQUIDO','VERDE',1,5,'7899449497686','BIO-KISS','46204','PESO/KG'),
('SABONETEIRA','SABONETEIRA C/ RESERVATORIO','BRANCO',3,5,'7898373170436','TRILHA','INDETERMINADO','PESO/KG'),
('SABONETEIRA','SABONETEIRA C/ RESERVATÓRIO GIMBA','BRANCO',2,5,'201649202407189','GIMBA','INDETERMINADO','PESO/KG'),
('SACO PANO DE CHÃO ALVEJADO','SACO ALVEJADO PANO DE CHÃO','BRANCO',3,5,'7898037540018','SACARIA THOMAZ','INDETERMINADO','PESO/KG'),
('SACO DE LIXO','SACO DE LIXO 100 LITROS','PRETO',1,5,'2016492024071810','SACO DE LIXO','INDETERMINADO','PESO/KG'),
('SACO DE LIXO','SACO DE LIXO 100 LITROS','PRETO',1,5,'2016492024071810','SACO DE LIXO','INDETERMINADO','PESO/KG'),
('SACO DE LIXO','SACO DE LIXO 15 LITROS','PRETO',2,5,'2016492024071811','ALTABOR','INDETERMINADO','PESO/KG'),
('SACO DE LIXO','SACO DE LIXO 15 LITROS','PRETO',4,5,'2016492024071811','SACO DE LIXO','INDETERMINADO','PESO/KG'),
('SACO DE LIXO','SACO DE LIXO 200 LITROS','PRETO',6,5,'2016492024071812','SACO DE LIXO','INDETERMINADO','PESO/KG'),
('SACO DE LIXO','SACO DE LIXO 30 LITROS','PRETO',1,5,'2016492024071813','ALTABOR','INDETERMINADO','PESO/KG'),
('SACO DE LIXO','SACO DE LIXO 30 LITROS','PRETO',15,5,'2016492024071813','SACO DE LIXO','INDETERMINADO','PESO/KG'),
('SACO DE LIXO','SACO DE LIXO 30 LITROS','PRETO',2,5,'2016492024071813','SACO DE LIXO','INDETERMINADO','PESO/KG'),
('SACO DE LIXO','SACO DE LIXO 50 LITROS','PRETO',2,5,'2016492024071814','ALTABOR','INDETERMINADO','PESO/KG'),
('SACO DE LIXO','SACO DE LIXO 50 LITROS','PRETO',8,5,'2016492024071814','SACO DE LIXO','INDETERMINADO','PESO/KG'),
('SACO PANO DE CHÃO','SACO PANO DE CHÃO','BRANCO',8,5,'7898990702225','NEVES','INDETERMINADO','PESO/KG'),
('SUPORTE PLASTICO','SUPORTE PLASTICO P/ PAPEL','BRANCO',1,5,'7898509282224','SUPER PRO','INDETERMINADO','PESO/KG'),
('TAPETE HIGIENIZADOR ','TAPETE HIGIENIZADOR','BRANCO',4,5,'2016492024071815','AGRAPLAST','INDETERMINADO','PESO/KG'),
('TAPETE HIGIENIZADOR ','TAPETE HIGIENIZADOR','BRANCO',4,5,'2016492024071815','AGRAPLAST','INDETERMINADO','PESO/KG'),
('TOALHAS DE PAPEL','TOALHAS DE PAPEL PCT C/ 1000 FOLHAS','BRANCO',10,5,'7897217201275','SHARK','INDETERMINADO','PESO/KG'),
('VASSOURA','VARROURA S/ CABO','PRETO',1,5,'2016492024071816','VASSOURA','INDETERMINADO','PESO/KG'),
('VASSOURA','VASSOURA C/ CABO','MULTICOR',6,5,'2016492024071817','VASSOURA','INDETERMINADO','PESO/KG'),
('VASSOURA','VASSOURA C/ CABO','MULTICOR',1,5,'2016492024071817','VASSOURA','INDETERMINADO','PESO/KG'),
('VASSOURA','VASSOURA S/ CABO','MULTICOR',9,5,'2016492024071816','VASSOURA','INDETERMINADO','PESO/KG'),
('VASSOURA','VASSOURA S/ CABO CONDOR','VERMELHO',1,5,'7891055020081','CONDOR','INDETERMINADO','PESO/KG'),
('VASSOURÃO ','VASSOURÃO S/ CABO','MARROM',1,5,'2016492024071818','VASSOURÃO','INDETERMINADO','PESO/KG');

select * from estoquelimpezas;

#SET SQL_SAFE_UPDATES=0;
#UPDATE estoquelimpezas SET situacaoProd = 'FECHADO' WHERE tipoProd = 6;

select * from estoquelimpezas where tipoProd = 1;

INSERT INTO areaprodlimps (idProduto, formaProd, dimLargura, dimComprimento, dimRaio) VALUES
(27, 'QUADRADO', 6.4, 2,''),
(29, 'QUADRADO', 37, 27,''),
(30, 'QUADRADO', 37, 27, ''),
(55, 'QUADRADO', 10, 3000,''),
(56, 'QUADRADO', 21, 23,''),
(57, 'QUADRADO', 21, 23,''),
(68, 'QUADRADO', 67, 39,''),
(79, 'QUADRADO', 70, 40,''),
(83, 'QUADRADO', 20, 21,'');

select * from areaprodlimps;

select * from estoquelimpezas where tipoProd = 2;

INSERT INTO volumeprodlimps (idProduto, formaProd, dimLargura, dimComprimento, dimAltura, dimRaio) VALUES
(8, 'CIRCULO', '', '', 61, 3),
(9, 'CIRCULO', '', '', 118, 3),
(10, 'CIRCULO', '', '', 122, 3),
(11, 'CIRCULO', '', '', 113, 3),
(25, 'QUADRADO', 20, 10, 61, ''),
(28, 'CIRCULO', '', '', 200, 3),
(35, 'QUADRADO', 23, 18, 28.8, ''),
(36, 'QUADRADO', 23, 18.5, 28.8, ''),
(37, 'QUADRADO', 23, 18.5, 39.6, ''),
(47, 'QUADRADO', 14, 21.5, 5.5 , ''),
(48, 'QUADRADO',15.5, 21, 5.5, ''),
(49, 'QUADRADO', 18, 17.5, 3.5, ''),
(50, 'QUADRADO', 19, 22, 6, ''),
(51, 'QUADRADO', 19.5, 24, 8.5, ''),
(52, 'QUADRADO', 17.5, 22, 6, ''),
(53, 'QUADRADO', 16.5, 20.5, 5.5, ''),
(54, 'QUADRADO', 16.5, 23, 6.5, ''),
(62, 'QUADRADO', 5, 40, 3, ''),
(63, 'QUADRADO', 5, 40, 3, ''),
(64, 'QUADRADO', 5, 40, 3, ''),
(66, 'QUADRADO', 20, 10, 61, ''),
(67, 'QUADRADO', 20, 10, 61, ''),
(80, 'QUADRADO', 20, 10, 61, ''),
(81, 'QUADRADO', 20, 10, 61, ''),
(82, 'QUADRADO', 20, 10, 61, ''),
(84, 'QUADRADO', 3, 26, 3, ''),
(85, 'QUADRADO', 3, 18, 3, ''),
(86, 'QUADRADO', 3, 21, 3, ''),
(87, 'QUADRADO', 3, 19, 3, ''),
(88, 'QUADRADO', 3, 22, 3, ''),
(89, 'QUADRADO', 3, 58, 3, '');

select * from volumeprodlimps;

select * from estoquelimpezas where tipoProd = 3;

INSERT INTO litroprodlimps (idProduto, litros) VALUES
(1, 1000),
(2, 1000),
(3, 1000),
(12, 750),
(13, 750),
(14, 750),
(15, 2000),
(16, 2000),
(17, 2000),
(18, 2000),
(19, 2000),
(20, 5000),
(21, 2000),
(22, 2000),
(23, 2000),
(24, 2000),
(32, 500),
(33, 500),
(34, 500),
(65, 5000),
(69, 100000),
(70, 100000),
(71, 15000),
(72, 15000),
(73, 200000),
(74, 30000),
(75, 30000),
(76, 30000),
(77, 50000),
(78, 50000);

select * from litroprodlimps;

select * from estoquelimpezas where tipoProd = 4;

INSERT INTO pesoprodlimps (idProduto, peso) VALUES
(26, 1),
(31, 50),
(58, 1),
(59, 1),
(60, 1);

select * from pesoprodlimps;

select * from estoquelimpezas where tipoProd = 5;

INSERT INTO tamanhoprodlimps (idProduto, tamanho) VALUES
(4, 'M'),
(5, '38'),
(6, '38'),
(7, '38'),
(38, 'P(7)'),
(39, 'M(8)'),
(40, 'P'),
(41, 'M'),
(42, 'G'),
(43, 'G'),
(44, 'P'),
(45, 'P'),
(46, 'M'),
(61, 'M');

select * from tamanhoprodlimps;

#1	Material de Limpeza
#2	Produto de Limpeza
#3	EPI
#4	Produto de Higiêne
#5	Material de Construção
#6	Ferramentas
#7	Material de Jardinagem

INSERT INTO localizacaolimpezas (armario, prateleira, idProdutoGuardado, qtdPrdoGuardado, localArmario) VALUES
(4,4,2,25,'ALMOXARIFADO LIMPEZA'),
(3,3,3,17,'ALMOXARIFADO LIMPEZA'),
(3,6,4,1,'ALMOXARIFADO LIMPEZA'),
(3,6,5,2,'ALMOXARIFADO LIMPEZA'),
(3,6,6,1,'ALMOXARIFADO LIMPEZA'),
(3,6,7,1,'ALMOXARIFADO LIMPEZA'),
(6,1,8,3,'ALMOXARIFADO LIMPEZA'),
(6,1,9,9,'ALMOXARIFADO LIMPEZA'),
(6,1,10,3,'ALMOXARIFADO LIMPEZA'),
(6,1,11,5,'ALMOXARIFADO LIMPEZA'),
(3,5,12,6,'ALMOXARIFADO LIMPEZA'),
(3,5,13,32,'ALMOXARIFADO LIMPEZA'),
(3,5,14,4,'ALMOXARIFADO LIMPEZA'),
(1,5,15,7,'ALMOXARIFADO LIMPEZA'),
(1,4,16,9,'ALMOXARIFADO LIMPEZA'),
(1,3,17,1,'ALMOXARIFADO LIMPEZA'),
(1,2,18,19,'ALMOXARIFADO LIMPEZA'),
(1,2,19,3,'ALMOXARIFADO LIMPEZA'),
(1,5,20,6,'ALMOXARIFADO LIMPEZA'),
(1,3,21,3,'ALMOXARIFADO LIMPEZA'),
(1,3,22,1,'ALMOXARIFADO LIMPEZA'),
(1,3,23,16,'ALMOXARIFADO LIMPEZA'),
(1,4,24,9,'ALMOXARIFADO LIMPEZA'),
(3,6,25,1,'ALMOXARIFADO LIMPEZA'),
(2,3,26,6,'ALMOXARIFADO LIMPEZA'),
(2,3,27,33,'ALMOXARIFADO LIMPEZA'),
(6,1,28,1,'ALMOXARIFADO LIMPEZA'),
(2,2,29,9,'ALMOXARIFADO LIMPEZA'),
(2,2,30,26,'ALMOXARIFADO LIMPEZA'),
(2,4,31,2,'ALMOXARIFADO LIMPEZA'),
(2,4,32,3,'ALMOXARIFADO LIMPEZA'),
(2,4,33,2,'ALMOXARIFADO LIMPEZA'),
(2,4,34,1,'ALMOXARIFADO LIMPEZA'),
(2,5,35,1,'ALMOXARIFADO LIMPEZA'),
(2,6,36,1,'ALMOXARIFADO LIMPEZA'),
(2,6,37,4,'ALMOXARIFADO LIMPEZA'),
(2,3,38,1,'ALMOXARIFADO LIMPEZA'),
(2,3,39,1,'ALMOXARIFADO LIMPEZA'),
(2,3,40,2,'ALMOXARIFADO LIMPEZA'),
(2,3,41,5,'ALMOXARIFADO LIMPEZA'),
(2,3,42,12,'ALMOXARIFADO LIMPEZA'),
(2,3,43,11,'ALMOXARIFADO LIMPEZA'),
(2,3,44,2,'ALMOXARIFADO LIMPEZA'),
(2,3,45,1,'ALMOXARIFADO LIMPEZA'),
(2,4,46,4,'ALMOXARIFADO LIMPEZA'),
(5,1,47,1,'ALMOXARIFADO LIMPEZA'),
(5,1,48,2,'ALMOXARIFADO LIMPEZA'),
(5,1,49,1,'ALMOXARIFADO LIMPEZA'),
(5,1,50,1,'ALMOXARIFADO LIMPEZA'),
(5,1,51,2,'ALMOXARIFADO LIMPEZA'),
(5,1,52,1,'ALMOXARIFADO LIMPEZA'),
(1,6,53,3,'ALMOXARIFADO LIMPEZA'),
(1,6,54,3,'ALMOXARIFADO LIMPEZA'),
(3,2,55,3,'ALMOXARIFADO LIMPEZA'),
(2,2,56,12,'ALMOXARIFADO LIMPEZA'),
(4,1,57,7,'ALMOXARIFADO LIMPEZA'),
(2,4,58,3,'ALMOXARIFADO LIMPEZA'),
(2,4,59,4,'ALMOXARIFADO LIMPEZA'),
(2,4,60,7,'ALMOXARIFADO LIMPEZA'),
(3,6,61,10,'ALMOXARIFADO LIMPEZA'),
(5,1,62,4,'ALMOXARIFADO LIMPEZA'),
(1,6,63,7,'ALMOXARIFADO LIMPEZA'),
(1,6,64,3,'ALMOXARIFADO LIMPEZA'),
(1,4,65,1,'ALMOXARIFADO LIMPEZA'),
(3,6,66,3,'ALMOXARIFADO LIMPEZA'),
(3,6,67,2,'ALMOXARIFADO LIMPEZA'),
(2,2,68,3,'ALMOXARIFADO LIMPEZA'),
(4,6,69,1,'ALMOXARIFADO LIMPEZA'),
(4,6,70,1,'ALMOXARIFADO LIMPEZA'),
(4,4,71,2,'ALMOXARIFADO LIMPEZA'),
(4,4,72,4,'ALMOXARIFADO LIMPEZA'),
(4,6,73,6,'ALMOXARIFADO LIMPEZA'),
(4,5,74,1,'ALMOXARIFADO LIMPEZA'),
(4,5,75,15,'ALMOXARIFADO LIMPEZA'),
(4,4,76,2,'ALMOXARIFADO LIMPEZA'),
(4,5,77,2,'ALMOXARIFADO LIMPEZA'),
(4,5,78,8,'ALMOXARIFADO LIMPEZA'),
(2,2,79,8,'ALMOXARIFADO LIMPEZA'),
(3,6,80,1,'ALMOXARIFADO LIMPEZA'),
(3,7,81,4,'ALMOXARIFADO LIMPEZA'),
(4,7,82,4,'ALMOXARIFADO LIMPEZA'),
(4,1,83,10,'ALMOXARIFADO LIMPEZA'),
(1,6,84,1,'ALMOXARIFADO LIMPEZA'),
(5,1,85,6,'ALMOXARIFADO LIMPEZA'),
(5,1,86,1,'ALMOXARIFADO LIMPEZA'),
(1,6,87,9,'ALMOXARIFADO LIMPEZA'),
(1,6,88,1,'ALMOXARIFADO LIMPEZA'),
(1,6,89,1,'ALMOXARIFADO LIMPEZA');

select * from localizacaolimpezas;

INSERT INTO categoriasprodlimps (categoria) VALUES
('Material de Escritório'),
('Material Escolar'),
('Material Didático'),
('Material de Arte'),
('Equipamentos de Tecnologia'),
('Material de Limpeza'),
('Equipamentos de Segurança'),
('Móveis e Equipamentos'),
('Material de Educação Física'),
('Material de Música'),
('Material de Ciências'),
('Suprimentos de Refeição'),
('Material de Jardinagem');

select * from categoriasprodlimps;