-- 1) Alunos de uma turma, em ordem alfabética
SELECT a.id, a.nome, t.nome AS turma
FROM alunos a
JOIN turmas t ON a.turma_id = t.id
WHERE t.nome = 'Banco de Dados - Manhã'
ORDER BY a.nome;

-- 2) Todas as disciplinas cursadas por cada aluno
SELECT a.nome AS aluno, d.nome AS disciplina
FROM alunos a
JOIN aluno_disciplina ad ON a.id = ad.aluno_id
JOIN disciplinas d ON d.id = ad.disciplina_id
ORDER BY a.nome, d.nome;
