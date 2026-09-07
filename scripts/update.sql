-- Alterar o telefone de um cliente
UPDATE cliente
SET telefone = '88988887777'
WHERE id_cliente = 1;

-- Alterar o email de um cliente
UPDATE cliente
SET email = 'ana.silva@gmail.com'
WHERE id_cliente = 1;

-- Alterar o preço de um produto
UPDATE produto
SET preco = 69.90
WHERE id_produto = 1;

-- Alterar o tamanho de um produto
UPDATE produto
SET tamanho = 'G'
WHERE id_produto = 2;

-- Alterar o estado de conservação
UPDATE produto
SET estado_conservacao = 'Muito bom'
WHERE id_produto = 3;
