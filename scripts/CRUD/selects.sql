-- ============================================================
-- CRUD - READ / SELECT
-- ============================================================
-- SELECT consulta e lê dados do banco.
-- ============================================================

PRAGMA foreign_keys = ON;

-- Ver todos os registros de cada tabela.
SELECT * FROM turmas;
SELECT * FROM alunos;
SELECT * FROM carteirinhas;
SELECT * FROM disciplinas;
SELECT * FROM aluno_disciplina;

-- ------------------------------------------------------------
-- WHERE
-- ------------------------------------------------------------
-- WHERE filtra os registros que atendem à condição.
-- Aqui serão mostrados somente os alunos da turma 2.
SELECT *
FROM alunos
WHERE turma_id = 2;

-- Buscar um aluno pelo nome.
SELECT *
FROM alunos
WHERE nome = 'Ana';

-- LIKE permite procurar um padrão de texto.
SELECT *
FROM alunos
WHERE nome LIKE '%a%';

-- ------------------------------------------------------------
-- JOIN
-- ------------------------------------------------------------
-- JOIN combina dados de tabelas relacionadas.
--
-- 1:N: alunos + turmas.
SELECT
    alunos.nome AS aluno,
    turmas.nome AS turma
FROM alunos
JOIN turmas
    ON alunos.turma_id = turmas.id;

-- 1:1: alunos + carteirinhas.
SELECT
    alunos.nome AS aluno,
    carteirinhas.numero AS carteirinha
FROM alunos
JOIN carteirinhas
    ON alunos.id = carteirinhas.aluno_id;

-- N:N: alunos + disciplinas por meio da tabela associativa.
SELECT
    alunos.nome AS aluno,
    disciplinas.nome AS disciplina
FROM aluno_disciplina
JOIN alunos
    ON aluno_disciplina.aluno_id = alunos.id
JOIN disciplinas
    ON aluno_disciplina.disciplina_id = disciplinas.id;

-- ------------------------------------------------------------
-- ORDER BY
-- ------------------------------------------------------------
-- ORDER BY organiza o resultado.
-- ASC = crescente.
SELECT *
FROM alunos
ORDER BY nome ASC;

-- DESC = decrescente.
SELECT *
FROM alunos
ORDER BY nome DESC;

-- Ordena primeiro pela turma e depois pelo nome.
SELECT
    alunos.nome AS aluno,
    turmas.nome AS turma
FROM alunos
JOIN turmas
    ON alunos.turma_id = turmas.id
ORDER BY turmas.nome, alunos.nome;
