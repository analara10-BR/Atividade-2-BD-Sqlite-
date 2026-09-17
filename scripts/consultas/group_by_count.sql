-- ============================================================
-- GROUP BY E COUNT()
-- ============================================================
-- O material do professor apresenta funções de agregação,
-- principalmente COUNT(), e agrupamento com GROUP BY.
-- ============================================================

PRAGMA foreign_keys = ON;

-- ------------------------------------------------------------
-- COUNT(): quantidade total de alunos.
-- COUNT(*) conta todas as linhas.
-- ------------------------------------------------------------
SELECT COUNT(*) AS total_alunos
FROM alunos;

-- ------------------------------------------------------------
-- COUNT(): quantidade total de disciplinas.
-- ------------------------------------------------------------
SELECT COUNT(*) AS total_disciplinas
FROM disciplinas;

-- ------------------------------------------------------------
-- COUNT() + WHERE:
-- quantidade de alunos matriculados na disciplina 1.
-- ------------------------------------------------------------
SELECT COUNT(*) AS total
FROM aluno_disciplina
WHERE disciplina_id = 1;

-- ------------------------------------------------------------
-- GROUP BY:
-- quantidade de alunos por turma.
-- ------------------------------------------------------------
SELECT
    turmas.nome AS turma,
    COUNT(alunos.id) AS quantidade_alunos
FROM turmas
JOIN alunos
    ON alunos.turma_id = turmas.id
GROUP BY turmas.id, turmas.nome;

-- ------------------------------------------------------------
-- GROUP BY:
-- quantidade de disciplinas cursadas por aluno.
-- ------------------------------------------------------------
SELECT
    alunos.nome AS aluno,
    COUNT(aluno_disciplina.disciplina_id) AS quantidade_disciplinas
FROM alunos
JOIN aluno_disciplina
    ON alunos.id = aluno_disciplina.aluno_id
GROUP BY alunos.id, alunos.nome
ORDER BY alunos.nome ASC;

-- ------------------------------------------------------------
-- GROUP BY + ORDER BY:
-- quantidade de alunos por disciplina, começando pelas
-- disciplinas com maior quantidade.
-- ------------------------------------------------------------
SELECT
    disciplinas.nome AS disciplina,
    COUNT(aluno_disciplina.aluno_id) AS quantidade_alunos
FROM disciplinas
JOIN aluno_disciplina
    ON disciplinas.id = aluno_disciplina.disciplina_id
GROUP BY disciplinas.id, disciplinas.nome
ORDER BY quantidade_alunos DESC;

-- O material também cita SUM(), AVG(), MIN() e MAX() como
-- funções de agregação. Como este banco acadêmico não possui
-- um campo numérico como salário ou preço, COUNT() é a função
-- mais diretamente aplicável aos dados desta atividade.
