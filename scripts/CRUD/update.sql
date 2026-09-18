-- CRUD: UPDATE.
-- UPDATE altera dados de registros que já existem.

PRAGMA foreign_keys = ON;
-- Ativa a verificação das chaves estrangeiras.

-- Altera o nome do aluno de ID 1.
UPDATE alunos
SET nome = 'Ana Silva'
WHERE id = 1;

-- Confere os dados dos alunos depois da alteração.
SELECT * FROM alunos;

-- Altera o nome da turma de ID 1.
UPDATE turmas
SET nome = 'Informática - 1º Ano'
WHERE id = 1;

-- Altera o número da carteirinha do aluno de ID 1.
UPDATE carteirinhas
SET numero = 'CT100'
WHERE aluno_id = 1;

-- O WHERE garante que somente o registro indicado seja alterado.
-- Evite usar UPDATE sem WHERE, pois ele pode alterar todos os registros.
