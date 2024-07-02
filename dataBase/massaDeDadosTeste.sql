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

UPDATE almoxarifados
SET nomeProduto = 'Caneta Azul'
WHERE idProduto = 1;

INSERT INTO localizacaos (armario, prateleira, idProdutoGuardado, qtdPrdoGuardado, localArmario) VALUES
(1,3,27,1,'ALMOXARIFADO');

select * from localizacaos;
