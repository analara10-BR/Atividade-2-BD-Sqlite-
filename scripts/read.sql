-- =====================================================
-- 7. CONSULTA — TODOS OS CLIENTES
-- =====================================================

-- SELECT consulta os dados da tabela
-- O * significa que queremos todas as colunas
SELECT *
FROM cliente;

-- =====================================================
-- 8. CONSULTA — TODOS OS PRODUTOS
-- =====================================================

-- Lista todos os produtos cadastrados
SELECT *
FROM produto;

-- =====================================================
-- 9. CONSULTA — BUSCAR CLIENTE
-- =====================================================

-- Lista somente o cliente que possui esse nome
-- WHERE é usado para criar uma condição/filtro
SELECT *
FROM cliente
WHERE nome = 'Ana Silva';

-- =====================================================
-- 10. CONSULTA — PRODUTOS DE UMA CATEGORIA
-- =====================================================

-- Lista somente os produtos da categoria Camiseta
-- WHERE filtra pela categoria
SELECT *
FROM produto
WHERE categoria = 'Camiseta';

-- =====================================================
-- 11. CONSULTA — PRODUTOS ABAIXO DE 80 REAIS
-- =====================================================

-- WHERE filtra os produtos cujo preço seja menor que 80
SELECT *
FROM produto
WHERE preco < 80;

-- =====================================================
-- 12. CONSULTA — ORDENAR PRODUTOS POR PREÇO
-- =====================================================

-- ORDER BY organiza os resultados
-- ASC coloca os preços em ordem crescente
SELECT *
FROM produto
ORDER BY preco ASC;

-- =====================================================
-- 13. CONSULTA — PRODUTOS EM EXCELENTE ESTADO
-- =====================================================

-- Lista somente os produtos que estão em excelente estado
SELECT *
FROM produto
WHERE estado_conservacao = 'Excelente';
