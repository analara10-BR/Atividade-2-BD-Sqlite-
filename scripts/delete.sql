-- =====================================================
-- 19. DELETE — EXCLUIR CLIENTE
-- =====================================================

-- DELETE exclui um registro
-- WHERE indica qual cliente será excluído
DELETE FROM cliente
WHERE id_cliente = 5;

-- =====================================================
-- 20. DELETE — EXCLUIR PRODUTO
-- =====================================================

-- Exclui somente o produto de ID 5
DELETE FROM produto
WHERE id_produto = 5;
