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

INSERT INTO localizacaos (armario, prateleira, idProdutoGuardado, qtdPrdoGuardado, localArmario) VALUES
(1, 1, 1, 100, 'ALMOXARIFADO'),
(1, 2, 2, 200, 'ALMOXARIFADO'),

(2, 1, 3, 50, 'ALMOXARIFADO'),
(2, 2, 4, 75, 'AALMOXARIFADO'),

(3, 1, 5, 30, 'ALMOXARIFADO'),
(3, 2, 6, 60, 'ALMOXARIFADO'),

(4, 1, 7, 40, 'ALMOXARIFADO'),
(4, 2, 8, 50, 'ALMOXARIFADO'),

(5, 1, 9, 20, 'ALMOXARIFADO'),
(5, 2, 10, 10, 'ALMOXARIFADO'),

(6, 1, 11, 30, 'ALMOXARIFADO'),
(6, 2, 12, 20, 'ALMOXARIFADO'),

(7, 1, 13, 5, 'ALMOXARIFADO'),
(7, 2, 14, 8, 'ALMOXARIFADO'),

(8, 1, 15, 25, 'ALMOXARIFADO'),
(8, 2, 16, 50, 'ALMOXARIFADO'),

(9, 1, 17, 10, 'ALMOXARIFADO'),
(9, 2, 18, 15, 'ALMOXARIFADO'),

(10, 1, 19, 8, 'ALMOXARIFADO'),
(10, 2, 20, 10, 'ALMOXARIFADO'),

(11, 1, 21, 3, 'ALMOXARIFADO'),
(11, 2, 22, 5, 'ALMOXARIFADO'),

(12, 1, 23, 100, 'ALMOXARIFADO'),
(12, 2, 24, 75, 'ALMOXARIFADO'),

(13, 1, 25, 15, 'ALMOXARIFADO'),
(13, 2, 26, 20, 'ALMOXARIFADO');

select * from localizacaos;
