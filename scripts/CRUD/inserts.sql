-- CRUD: CREATE/INSERT
-- INSERT cria novos registros. IDs AUTOINCREMENT não precisam ser informados.
PRAGMA foreign_keys = ON;
-- Exemplo: INSERT INTO turmas (nome) VALUES ('Nova Turma');
-- Exemplo: INSERT INTO alunos (nome,turma_id) VALUES ('Novo Aluno',1);
-- Exemplo: INSERT INTO disciplinas (nome) VALUES ('Nova Disciplina');
-- Exemplo: INSERT INTO carteirinhas (numero,aluno_id) VALUES ('CT999',1);
-- Exemplo: INSERT INTO aluno_disciplina (aluno_id,disciplina_id) VALUES (1,1);
-- As linhas acima estão comentadas para não alterar o banco final acidentalmente.
