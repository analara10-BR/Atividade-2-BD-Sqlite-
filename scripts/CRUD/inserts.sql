-- CRUD: CREATE/INSERT.
-- INSERT é usado para criar e adicionar novos registros nas tabelas.
PRAGMA foreign_keys = ON;
-- Ativa a verificação das chaves estrangeiras durante as inserções.

-- Exemplo de INSERT que cria uma nova turma usando somente o nome.
-- INSERT INTO turmas (nome) VALUES ('Nova Turma');

-- Exemplo de INSERT que cria um aluno e informa a turma à qual ele pertence.
-- INSERT INTO alunos (nome,turma_id) VALUES ('Novo Aluno',1);

-- Exemplo de INSERT que cria uma nova disciplina.
-- INSERT INTO disciplinas (nome) VALUES ('Nova Disciplina');

-- Exemplo de INSERT que cria uma carteirinha para o aluno de ID 1.
-- INSERT INTO carteirinhas (numero,aluno_id) VALUES ('CT999',1);

-- Exemplo de INSERT que cria uma matrícula do aluno 1 na disciplina 1.
-- INSERT INTO aluno_disciplina (aluno_id,disciplina_id) VALUES (1,1);

-- Os exemplos permanecem comentados para não modificar o banco quando o arquivo for executado.
