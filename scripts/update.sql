-- =====================================================
-- 14. UPDATE — ALTERAR TELEFONE
-- =====================================================

-- UPDATE altera um registro existente
-- SET informa o novo valor
-- WHERE indica qual cliente será alterado
UPDATE cliente
SET telefone = '88988887777'
WHERE id_cliente = 1;

-- =====================================================
-- 15. UPDATE — ALTERAR EMAIL
-- =====================================================

-- Altera o email do cliente de ID 1
UPDATE cliente
SET email = 'ana.silva@gmail.com'
WHERE id_cliente = 1;

-- =====================================================
-- 16. UPDATE — ALTERAR PREÇO
-- =====================================================

-- Altera o preço do produto de ID 1
UPDATE produto
SET preco = 69.90
WHERE id_produto = 1;

-- =====================================================
-- 17. UPDATE — ALTERAR TAMANHO
-- =====================================================

-- Altera o tamanho do produto de ID 2
UPDATE produto
SET tamanho = 'G'
WHERE id_produto = 2;

-- =====================================================
-- 18. UPDATE — ALTERAR ESTADO DE CONSERVAÇÃO
-- =====================================================

-- Altera o estado de conservação do produto de ID 3
UPDATE produto
SET estado_conservacao = 'Muito bom'
WHERE id_produto = 3;
