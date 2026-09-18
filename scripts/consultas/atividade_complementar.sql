
PRAGMA foreign_keys = ON;
-- Ativa a verificação das chaves estrangeiras antes das consultas.

-- 1) Seleciona os alunos que pertencem à turma Informática 2.
-- WHERE limita o resultado à turma escolhida.
-- JOIN liga cada aluno à sua respectiva turma.
-- ORDER BY ASC coloca os nomes em ordem alfabética crescente.
SELECT alunos.nome AS aluno, turmas.nome AS turma
FROM alunos JOIN turmas ON alunos.turma_id=turmas.id
WHERE turmas.nome='Informática 2'
ORDER BY alunos.nome ASC;

-- 2) Mostra as disciplinas cursadas por cada aluno.
-- aluno_disciplina é usada para representar o relacionamento N:N.
-- O primeiro JOIN encontra o aluno de cada matrícula.
-- O segundo JOIN encontra a disciplina de cada matrícula.
-- ORDER BY organiza os alunos e depois as disciplinas em ordem alfabética.
SELECT alunos.nome AS aluno, disciplinas.nome AS disciplina
FROM aluno_disciplina
JOIN alunos ON aluno_disciplina.aluno_id=alunos.id
JOIN disciplinas ON aluno_disciplina.disciplina_id=disciplinas.id
ORDER BY alunos.nome ASC, disciplinas.nome ASC;
