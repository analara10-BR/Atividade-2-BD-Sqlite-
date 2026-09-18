-- Mostra exemplos de funções de agregação usando GROUP BY e COUNT().
-- COUNT conta quantos registros existem no resultado de uma consulta.
-- GROUP BY agrupa os registros que possuem o mesmo valor.
PRAGMA foreign_keys = ON;
-- Ativa a verificação das chaves estrangeiras antes das consultas.

-- Conta quantos alunos existem no total.
SELECT COUNT(*) AS total_alunos FROM alunos;
-- Conta quantas disciplinas existem no total.
SELECT COUNT(*) AS total_disciplinas FROM disciplinas;
-- Conta quantas matrículas existem para a disciplina de ID 1.
SELECT COUNT(*) AS total FROM aluno_disciplina WHERE disciplina_id=1;

-- Agrupa os alunos por turma e conta quantos alunos existem em cada turma.
SELECT turmas.nome AS turma, COUNT(alunos.id) AS quantidade_alunos
FROM turmas JOIN alunos ON alunos.turma_id=turmas.id
GROUP BY turmas.id,turmas.nome;

-- Agrupa as matrículas por aluno e conta quantas disciplinas cada aluno possui.
SELECT alunos.nome AS aluno, COUNT(aluno_disciplina.disciplina_id) AS quantidade_disciplinas
FROM alunos JOIN aluno_disciplina ON alunos.id=aluno_disciplina.aluno_id
GROUP BY alunos.id,alunos.nome ORDER BY alunos.nome;

-- Agrupa as matrículas por disciplina e conta quantos alunos existem em cada uma.
-- ORDER BY DESC coloca primeiro as disciplinas com maior quantidade de alunos.
SELECT disciplinas.nome AS disciplina, COUNT(aluno_disciplina.aluno_id) AS quantidade_alunos
FROM disciplinas JOIN aluno_disciplina ON disciplinas.id=aluno_disciplina.disciplina_id
GROUP BY disciplinas.id,disciplinas.nome ORDER BY quantidade_alunos DESC;
-- SUM, AVG, MIN e MAX também fazem agregações, mas aqui o foco principal é COUNT.
