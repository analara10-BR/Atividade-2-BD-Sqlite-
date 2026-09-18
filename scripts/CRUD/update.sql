-- CRUD: UPDATE
-- UPDATE altera registros existentes. WHERE é essencial para não alterar todos.
PRAGMA foreign_keys = ON;
-- Confira primeiro: SELECT * FROM alunos WHERE id=14;
-- Depois, se estiver correto: UPDATE alunos SET nome='Mateus Silva' WHERE id=14;
-- Outro exemplo: UPDATE turmas SET nome='Informática 2 - Manhã' WHERE id=2;
-- Exemplo de carteirinha: UPDATE carteirinhas SET numero='CT014-A' WHERE aluno_id=14;
-- Todos os exemplos estão comentados para preservar o banco final.
