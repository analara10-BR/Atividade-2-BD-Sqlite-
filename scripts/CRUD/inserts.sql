
-- INSERT é usado para criar e adicionar novos registros nas tabelas.

PRAGMA foreign_keys = ON;
-- Ativa a verificação das chaves estrangeiras durante as inserções.

-- Insere uma nova turma.
INSERT INTO turmas (nome)
VALUES ('Nova Turma');

-- Insere um novo aluno e informa a turma à qual ele pertence.
INSERT INTO alunos (nome, turma_id)
VALUES ('Novo Aluno', 1);

-- Insere uma nova disciplina.
INSERT INTO disciplinas (nome)
VALUES ('Nova Disciplina');

-- Insere uma nova carteirinha para o aluno de ID 1.
INSERT INTO carteirinhas (numero, aluno_id)
VALUES ('CT999', 1);

-- Cria uma matrícula do aluno 1 na disciplina 1.
INSERT INTO aluno_disciplina (aluno_id, disciplina_id)
VALUES (1, 1);

-- Os exemplos acima mostram como criar novos registros usando INSERT.
