-- ============================================
-- BRECHÓ ONLINE - SELECTS
-- Consultas para demonstrar READ, WHERE, JOIN,
-- ORDER BY, GROUP BY e funções de agregação.
-- ============================================

PRAGMA foreign_keys = ON;

-- 1. Listar todos os clientes em ordem alfabética.
SELECT *
FROM clientes
ORDER BY nome ASC;

-- 2. Filtrar produtos com preço maior que 60 reais.
SELECT *
FROM produtos
WHERE preco > 60
ORDER BY preco DESC;

-- 3. JOIN: mostrar produtos junto com suas categorias.
SELECT
    produtos.nome AS produto,
    produtos.preco,
    produtos.tamanho,
    categorias.nome AS categoria
FROM produtos
JOIN categorias
    ON produtos.categoria_id = categorias.id
ORDER BY produtos.nome ASC;

-- 4. JOIN: mostrar os pedidos e seus clientes.
SELECT
    pedidos.id AS pedido,
    clientes.nome AS cliente,
    pedidos.data_pedido
FROM pedidos
JOIN clientes
    ON pedidos.cliente_id = clientes.id
ORDER BY pedidos.data_pedido ASC;

-- 5. JOIN entre várias tabelas: mostrar o que cada cliente comprou.
SELECT
    clientes.nome AS cliente,
    produtos.nome AS produto,
    itens_pedido.quantidade,
    pedidos.data_pedido
FROM clientes
JOIN pedidos
    ON clientes.id = pedidos.cliente_id
JOIN itens_pedido
    ON pedidos.id = itens_pedido.pedido_id
JOIN produtos
    ON itens_pedido.produto_id = produtos.id
ORDER BY clientes.nome ASC, produtos.nome ASC;

-- 6. GROUP BY + COUNT: quantidade de produtos em cada categoria.
SELECT
    categorias.nome AS categoria,
    COUNT(produtos.id) AS quantidade_produtos
FROM categorias
LEFT JOIN produtos
    ON categorias.id = produtos.categoria_id
GROUP BY categorias.id, categorias.nome
ORDER BY quantidade_produtos DESC;

-- 7. GROUP BY + COUNT: quantidade de pedidos por cliente.
SELECT
    clientes.nome AS cliente,
    COUNT(pedidos.id) AS quantidade_pedidos
FROM clientes
LEFT JOIN pedidos
    ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nome
ORDER BY quantidade_pedidos DESC;

-- 8. Funções de agregação: preço maior, menor e médio.
SELECT
    MAX(preco) AS maior_preco,
    MIN(preco) AS menor_preco,
    AVG(preco) AS preco_medio
FROM produtos;

-- 9. Demonstrar o relacionamento 1:1.
SELECT
    clientes.nome AS cliente,
    perfis_clientes.telefone
FROM clientes
JOIN perfis_clientes
    ON clientes.id = perfis_clientes.cliente_id
ORDER BY clientes.nome ASC;
