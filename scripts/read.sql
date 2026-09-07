-- Mostrar todos os clientes
SELECT * FROM cliente;

-- Mostrar todos os produtos
SELECT * FROM produto;

-- Buscar cliente pelo nome
SELECT *
FROM cliente
WHERE nome = 'Ana Silva';

-- Buscar produtos de uma categoria
SELECT *
FROM produto
WHERE categoria = 'Camiseta';

-- Mostrar produtos com preço menor que 80
SELECT *
FROM produto
WHERE preco < 80;

-- Mostrar produtos do mais barato para o mais caro
SELECT *
FROM produto
ORDER BY preco ASC;

-- Mostrar produtos em excelente estado
SELECT *
FROM produto
WHERE estado_conservacao = 'Excelente';
