-- ============================================
-- BRECHÓ ONLINE - DELETE
-- Este arquivo demonstra a operação DELETE do CRUD.
-- ============================================

PRAGMA foreign_keys = ON;

-- Excluir apenas o relacionamento entre um pedido
-- e um produto na tabela associativa.
DELETE FROM itens_pedido
WHERE pedido_id = 13
  AND produto_id = 3;

-- Conferir a exclusão.
SELECT *
FROM itens_pedido
WHERE pedido_id = 13;
