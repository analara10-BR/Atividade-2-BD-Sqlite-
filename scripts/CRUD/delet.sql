-- ============================================
-- BRECHÓ ONLINE - DELETE
-- ============================================
-- DELETE remove registros.
-- WHERE evita apagar todos os registros da tabela.

PRAGMA foreign_keys = ON;

-- Excluir apenas um relacionamento da tabela associativa do Brechó.
-- Isso demonstra DELETE sem apagar o pedido inteiro.
DELETE FROM itens_pedido
WHERE pedido_id = 13
  AND produto_id = 3;

-- Conferir o resultado da exclusão.
SELECT *
FROM itens_pedido
WHERE pedido_id = 13;

-- DELETE de um relacionamento N:N entre um aluno e uma disciplina.
-- Assim como no PDF, somente o relacionamento é removido;
-- o aluno e a disciplina continuam cadastrados.
DELETE FROM aluno_disciplina
WHERE aluno_id = 10
  AND disciplina_id = 2;

-- Conferir o resultado da exclusão do relacionamento.
SELECT *
FROM aluno_disciplina
WHERE aluno_id = 10
ORDER BY disciplina_id;
