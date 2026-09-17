-- ============================================================
-- ATIVIDADE COMPLEMENTAR - CONSULTAS
-- ============================================================
-- Estas são as duas consultas solicitadas:
--
-- 1. Listar, em ordem alfabética, os alunos de uma determinada
--    turma.
-- 2. Listar todas as disciplinas cursadas por cada aluno.
-- ============================================================

PRAGMA foreign_keys = ON;

-- ============================================================
-- 1) ALUNOS DE UMA DETERMINADA TURMA EM ORDEM ALFABÉTICA
-- ============================================================
-- A turma usada como exemplo é "Informática 2".
--
-- JOIN relaciona alunos com turmas.
-- WHERE seleciona somente a turma desejada.
-- ORDER BY nome ASC coloca os alunos em ordem alfabética.
-- ============================================================
SELECT
    alunos.nome AS aluno,
    turmas.nome AS turma
FROM alunos
JOIN turmas
    ON alunos.turma_id = turmas.id
WHERE turmas.nome = 'Informática 2'
ORDER BY alunos.nome ASC;

-- Para trocar a turma, altere o valor dentro do WHERE.
-- Exemplo:
-- WHERE turmas.nome = 'Informática 1';

-- ============================================================
-- 2) TODAS AS DISCIPLINAS CURSADAS POR CADA ALUNO
-- ============================================================
-- A tabela aluno_disciplina é necessária porque alunos e
-- disciplinas possuem relacionamento N:N.
--
-- São usados dois JOINs:
--   aluno_disciplina -> alunos
--   aluno_disciplina -> disciplinas
--
-- ORDER BY organiza primeiro os alunos e depois as disciplinas.
-- ============================================================
SELECT
    alunos.nome AS aluno,
    disciplinas.nome AS disciplina
FROM aluno_disciplina
JOIN alunos
    ON aluno_disciplina.aluno_id = alunos.id
JOIN disciplinas
    ON aluno_disciplina.disciplina_id = disciplinas.id
ORDER BY alunos.nome ASC, disciplinas.nome ASC;
