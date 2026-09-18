-- ATIVIDADE COMPLEMENTAR
PRAGMA foreign_keys = ON;

-- 1) Alunos de uma determinada turma, em ordem alfabética.
-- WHERE escolhe a turma; JOIN relaciona alunos e turmas; ORDER BY ordena os nomes.
SELECT alunos.nome AS aluno, turmas.nome AS turma
FROM alunos JOIN turmas ON alunos.turma_id=turmas.id
WHERE turmas.nome='Informática 2'
ORDER BY alunos.nome ASC;

-- 2) Todas as disciplinas cursadas por cada aluno.
-- A tabela associativa é necessária para o relacionamento N:N.
SELECT alunos.nome AS aluno, disciplinas.nome AS disciplina
FROM aluno_disciplina
JOIN alunos ON aluno_disciplina.aluno_id=alunos.id
JOIN disciplinas ON aluno_disciplina.disciplina_id=disciplinas.id
ORDER BY alunos.nome ASC, disciplinas.nome ASC;
