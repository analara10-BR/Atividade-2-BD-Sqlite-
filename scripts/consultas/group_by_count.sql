-- GROUP BY E COUNT()
-- COUNT conta registros; GROUP BY reúne registros com o mesmo valor.
PRAGMA foreign_keys = ON;
SELECT COUNT(*) AS total_alunos FROM alunos;
SELECT COUNT(*) AS total_disciplinas FROM disciplinas;
SELECT COUNT(*) AS total FROM aluno_disciplina WHERE disciplina_id=1;

-- Quantidade de alunos por turma.
SELECT turmas.nome AS turma, COUNT(alunos.id) AS quantidade_alunos
FROM turmas JOIN alunos ON alunos.turma_id=turmas.id
GROUP BY turmas.id,turmas.nome;

-- Quantidade de disciplinas por aluno.
SELECT alunos.nome AS aluno, COUNT(aluno_disciplina.disciplina_id) AS quantidade_disciplinas
FROM alunos JOIN aluno_disciplina ON alunos.id=aluno_disciplina.aluno_id
GROUP BY alunos.id,alunos.nome ORDER BY alunos.nome;

-- Quantidade de alunos por disciplina, ordenada pela maior quantidade.
SELECT disciplinas.nome AS disciplina, COUNT(aluno_disciplina.aluno_id) AS quantidade_alunos
FROM disciplinas JOIN aluno_disciplina ON disciplinas.id=aluno_disciplina.disciplina_id
GROUP BY disciplinas.id,disciplinas.nome ORDER BY quantidade_alunos DESC;
-- O material também cita SUM, AVG, MIN e MAX como agregações; COUNT é a principal neste banco.
