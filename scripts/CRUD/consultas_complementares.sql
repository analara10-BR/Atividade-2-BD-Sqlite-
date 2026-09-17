-- ============================================
-- BRECHÓ ONLINE - CONSULTAS COMPLEMENTARES
-- As consultas abaixo adaptam a ideia da atividade
-- complementar para o tema do Brechó Online.
-- ============================================

PRAGMA foreign_keys = ON;

-- 1. Produtos de uma determinada categoria,
-- apresentados em ordem alfabética.
SELECT
    produtos.nome AS produto,
    categorias.nome AS categoria
FROM produtos
JOIN categorias
    ON produtos.categoria_id = categorias.id
WHERE categorias.nome = 'Feminino'
ORDER BY produtos.nome ASC;

-- 2. Produtos comprados por cada cliente.
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

-- 3. Quantidade de produtos por categoria.
SELECT
    categorias.nome AS categoria,
    COUNT(produtos.id) AS quantidade_produtos
FROM categorias
LEFT JOIN produtos
    ON categorias.id = produtos.categoria_id
GROUP BY categorias.id, categorias.nome
ORDER BY quantidade_produtos DESC;
