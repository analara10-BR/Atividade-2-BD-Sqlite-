-- ============================================
-- ATIVIDADE COMPLEMENTAR - CONSULTAS SQL
-- ============================================
-- Estas são as duas consultas solicitadas pelo professor.

PRAGMA foreign_keys = ON;

-- 1. Listar, em ordem alfabética, os alunos de uma determinada turma.
-- WHERE escolhe a turma desejada.
-- JOIN relaciona alunos com turmas.
-- ORDER BY coloca os nomes em ordem alfabética.
SELECT
    alunos.nome AS aluno,
    turmas.nome AS turma
FROM alunos
JOIN turmas
    ON alunos.turma_id = turmas.id
WHERE turmas.nome = 'Banco de Dados - Manhã'
ORDER BY alunos.nome ASC;

-- 2. Listar todas as disciplinas cursadas por cada aluno.
-- aluno_disciplina é a tabela associativa do relacionamento N:N.
-- JOIN passa por essa tabela para ligar alunos e disciplinas.
SELECT
    alunos.nome AS aluno,
    disciplinas.nome AS disciplina
FROM alunos
JOIN aluno_disciplina
    ON alunos.id = aluno_disciplina.aluno_id
JOIN disciplinas
    ON disciplinas.id = aluno_disciplina.disciplina_id
ORDER BY alunos.nome ASC, disciplinas.nome ASC;

-- Consulta extra: contar quantas disciplinas cada aluno cursa.
-- GROUP BY reúne as disciplinas por aluno e COUNT faz a contagem.
SELECT
    alunos.nome AS aluno,
    COUNT(aluno_disciplina.disciplina_id) AS quantidade_disciplinas
FROM alunos
JOIN aluno_disciplina
    ON alunos.id = aluno_disciplina.aluno_id
GROUP BY alunos.id, alunos.nome
ORDER BY alunos.nome ASC;
