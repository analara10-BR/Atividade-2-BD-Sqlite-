-- ============================================
-- BRECHÓ ONLINE - UPDATE
-- ============================================
-- UPDATE altera registros existentes.
-- WHERE é importante para indicar exatamente o registro que será alterado.

PRAGMA foreign_keys = ON;

-- Alterar o preço de um produto específico.
UPDATE produtos
SET preco = 84.90
WHERE id = 2;

-- Alterar o tamanho de um produto específico.
UPDATE produtos
SET tamanho = 'G'
WHERE id = 3;

-- UPDATE em uma tabela da atividade: alterar o nome de uma turma.
UPDATE turmas
SET nome = 'Backend - Manhã'
WHERE id = 1;

-- UPDATE em uma tabela da atividade: alterar o nome de um aluno específico.
-- Este exemplo segue o modelo do PDF (UPDATE + SET + WHERE).
UPDATE alunos
SET nome = 'João Pedro Silva'
WHERE id = 10;

-- UPDATE em uma tabela da atividade: alterar a carteirinha de um aluno específico.
UPDATE carteirinhas
SET numero = '20260010-A'
WHERE aluno_id = 10;

-- Conferir as alterações realizadas.
SELECT *
FROM produtos
WHERE id IN (2, 3)
ORDER BY id;

SELECT *
FROM turmas
WHERE id = 1;

SELECT *
FROM alunos
WHERE id = 10;

SELECT *
FROM carteirinhas
WHERE aluno_id = 10;
