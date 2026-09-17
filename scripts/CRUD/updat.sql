-- ============================================
-- BRECHÓ ONLINE - UPDATE
-- Este arquivo demonstra a operação UPDATE do CRUD.
-- O WHERE evita alterar todos os registros.
-- ============================================

PRAGMA foreign_keys = ON;

-- Alterar o preço de um produto específico.
UPDATE produtos
SET preco = 84.90
WHERE id = 2;

-- Alterar o tamanho de um produto específico.
UPDATE produtos
SET tamanho = 'G'
WHERE id = 3;

-- Conferir as alterações realizadas.
SELECT *
FROM produtos
WHERE id IN (2, 3)
ORDER BY id;
