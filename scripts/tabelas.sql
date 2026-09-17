-- ============================================================
-- ATIVIDADE DE BANCO DE DADOS - ESTRUTURA ACADÊMICA
-- SQLite / DB Browser for SQLite
-- ============================================================
-- Este arquivo cria SOMENTE as tabelas acadêmicas da atividade:
--   1. turmas
--   2. alunos
--   3. carteirinhas
--   4. disciplinas
--   5. aluno_disciplina
--
-- RELACIONAMENTOS:
--   turmas 1:N alunos
--   alunos 1:1 carteirinhas
--   alunos N:N disciplinas, usando aluno_disciplina
--
-- Os comentários deste arquivo também podem ser usados para
-- explicar o código durante a apresentação no GitHub/DB Browser.
-- ============================================================

-- Ativa a verificação das FOREIGN KEY nesta conexão.
-- No SQLite, este PRAGMA precisa ser ativado por conexão.
PRAGMA foreign_keys = ON;

-- ============================================================
-- TABELA: TURMAS
-- ============================================================
-- Cada registro representa uma turma.
--
-- id:
--   PRIMARY KEY = identifica cada turma de forma única.
--   AUTOINCREMENT = o SQLite gera automaticamente o próximo ID.
--
-- nome:
--   NOT NULL = uma turma não pode ser cadastrada sem nome.
-- ============================================================
CREATE TABLE IF NOT EXISTS turmas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

-- ============================================================
-- TABELA: ALUNOS
-- ============================================================
-- Cada registro representa um aluno.
--
-- id:
--   PRIMARY KEY + AUTOINCREMENT.
--
-- nome:
--   NOT NULL porque o cadastro precisa identificar o aluno.
--
-- turma_id:
--   FOREIGN KEY que aponta para turmas(id).
--   Como o relacionamento é 1:N, vários alunos podem estar
--   relacionados à mesma turma.
-- ============================================================
CREATE TABLE IF NOT EXISTS alunos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    turma_id INTEGER NOT NULL,
    FOREIGN KEY (turma_id) REFERENCES turmas(id)
);

-- ============================================================
-- TABELA: CARTEIRINHAS
-- ============================================================
-- Cada registro representa uma carteirinha de aluno.
--
-- numero:
--   NOT NULL = é obrigatório.
--   UNIQUE = não permite dois números iguais.
--
-- aluno_id:
--   FOREIGN KEY para alunos(id).
--   UNIQUE = impede que um mesmo aluno tenha duas carteirinhas.
--
-- Portanto, aluno -> carteirinha é um relacionamento 1:1.
-- ============================================================
CREATE TABLE IF NOT EXISTS carteirinhas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    numero TEXT NOT NULL UNIQUE,
    aluno_id INTEGER UNIQUE NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id)
);

-- ============================================================
-- TABELA: DISCIPLINAS
-- ============================================================
-- Cada registro representa uma disciplina.
--
-- id:
--   PRIMARY KEY + AUTOINCREMENT.
--
-- nome:
--   NOT NULL = obrigatório.
--   UNIQUE = evita disciplinas com o mesmo nome.
-- ============================================================
CREATE TABLE IF NOT EXISTS disciplinas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL UNIQUE
);

-- ============================================================
-- TABELA ASSOCIATIVA: ALUNO_DISCIPLINA
-- ============================================================
-- Esta tabela resolve o relacionamento N:N:
--
--   ALUNOS N -------- N DISCIPLINAS
--
-- Um aluno pode cursar várias disciplinas.
-- Uma disciplina pode ser cursada por vários alunos.
--
-- A tabela associativa transforma o N:N em:
--
--   ALUNOS 1 ---- N ALUNO_DISCIPLINA N ---- 1 DISCIPLINAS
--
-- aluno_id e disciplina_id são FOREIGN KEY.
--
-- A PRIMARY KEY COMPOSTA (aluno_id, disciplina_id) impede que
-- a mesma matrícula seja repetida para o mesmo aluno/disciplina.
-- ============================================================
CREATE TABLE IF NOT EXISTS aluno_disciplina (
    aluno_id INTEGER NOT NULL,
    disciplina_id INTEGER NOT NULL,
    PRIMARY KEY (aluno_id, disciplina_id),
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);
