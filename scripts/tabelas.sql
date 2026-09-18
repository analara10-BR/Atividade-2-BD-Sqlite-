-- ESTRUTURA DO BANCO ACADÊMICO
-- Relacionamentos: turmas 1:N alunos; alunos 1:1 carteirinhas;
-- alunos N:N disciplinas por meio de aluno_disciplina.
PRAGMA foreign_keys = ON;

-- TURMAS: cada turma tem um ID único (PRIMARY KEY + AUTOINCREMENT).
CREATE TABLE IF NOT EXISTS turmas (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 nome TEXT NOT NULL
);

-- ALUNOS: turma_id é FOREIGN KEY e fica no lado N do relacionamento 1:N.
CREATE TABLE IF NOT EXISTS alunos (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 nome TEXT NOT NULL,
 turma_id INTEGER NOT NULL,
 FOREIGN KEY (turma_id) REFERENCES turmas(id)
);

-- CARTEIRINHAS: numero é UNIQUE; aluno_id é FOREIGN KEY e UNIQUE.
-- UNIQUE em aluno_id garante no máximo uma carteirinha por aluno (1:1).
CREATE TABLE IF NOT EXISTS carteirinhas (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 numero TEXT NOT NULL UNIQUE,
 aluno_id INTEGER UNIQUE NOT NULL,
 FOREIGN KEY (aluno_id) REFERENCES alunos(id)
);

-- DISCIPLINAS: nome é NOT NULL e UNIQUE para evitar repetição.
CREATE TABLE IF NOT EXISTS disciplinas (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 nome TEXT NOT NULL UNIQUE
);

-- TABELA ASSOCIATIVA: transforma o N:N em dois relacionamentos 1:N.
-- A PRIMARY KEY COMPOSTA impede a mesma matrícula duas vezes.
CREATE TABLE IF NOT EXISTS aluno_disciplina (
 aluno_id INTEGER NOT NULL,
 disciplina_id INTEGER NOT NULL,
 PRIMARY KEY (aluno_id, disciplina_id),
 FOREIGN KEY (aluno_id) REFERENCES alunos(id),
 FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);
