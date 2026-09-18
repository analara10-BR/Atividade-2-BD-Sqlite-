-- Define a estrutura do banco de dados acadêmico.
-- Esta opção permite que o SQLite controle os relacionamentos entre as tabelas.
PRAGMA foreign_keys = ON;

-- Cria a tabela de turmas.
-- O id identifica cada turma de forma única.
-- O nome é obrigatório para que toda turma tenha uma identificação.
CREATE TABLE IF NOT EXISTS turmas (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 nome TEXT NOT NULL
);

-- Cria a tabela de alunos.
-- turma_id guarda a turma à qual cada aluno pertence.
-- A FOREIGN KEY garante que a turma informada exista.
CREATE TABLE IF NOT EXISTS alunos (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 nome TEXT NOT NULL,
 turma_id INTEGER NOT NULL,
 FOREIGN KEY (turma_id) REFERENCES turmas(id)
);

-- Cria a tabela de carteirinhas.
-- numero não pode se repetir por causa da restrição UNIQUE.
-- aluno_id relaciona a carteirinha ao aluno e também é UNIQUE.
-- Assim, cada aluno pode ter no máximo uma carteirinha.
CREATE TABLE IF NOT EXISTS carteirinhas (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 numero TEXT NOT NULL UNIQUE,
 aluno_id INTEGER UNIQUE NOT NULL,
 FOREIGN KEY (aluno_id) REFERENCES alunos(id)
);

-- Cria a tabela de disciplinas.
-- nome é obrigatório e UNIQUE para evitar disciplinas com o mesmo nome.
CREATE TABLE IF NOT EXISTS disciplinas (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 nome TEXT NOT NULL UNIQUE
);

-- Cria a tabela que relaciona alunos e disciplinas.
-- Ela representa o relacionamento N:N entre alunos e disciplinas.
-- A chave primária composta impede a mesma matrícula duas vezes.
CREATE TABLE IF NOT EXISTS aluno_disciplina (
 aluno_id INTEGER NOT NULL,
 disciplina_id INTEGER NOT NULL,
 PRIMARY KEY (aluno_id, disciplina_id),
 FOREIGN KEY (aluno_id) REFERENCES alunos(id),
 FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);
