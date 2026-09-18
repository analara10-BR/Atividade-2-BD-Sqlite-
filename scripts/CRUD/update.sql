-- CRUD: UPDATE.
-- UPDATE é usado para alterar dados de registros que já existem.
PRAGMA foreign_keys = ON;
-- Ativa a verificação das chaves estrangeiras antes das alterações.

-- Consulta o aluno 14 para conferir os dados atuais antes de alterá-los.
-- SELECT * FROM alunos WHERE id=14;

-- Altera somente o nome do aluno de ID 14.
-- WHERE evita que o nome de todos os alunos seja alterado.
-- UPDATE alunos SET nome='Mateus Silva' WHERE id=14;

-- Altera somente o nome da turma de ID 2.
-- UPDATE turmas SET nome='Informática 2 - Manhã' WHERE id=2;

-- Altera o número da carteirinha associada ao aluno 14.
-- UPDATE carteirinhas SET numero='CT014-A' WHERE aluno_id=14;

-- Os exemplos permanecem comentados para preservar os dados atuais do banco.
