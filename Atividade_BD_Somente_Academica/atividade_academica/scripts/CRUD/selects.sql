-- SELECT básico
SELECT * FROM alunos;

-- WHERE
SELECT * FROM alunos WHERE turma_id = 2;

-- JOIN
SELECT a.nome, t.nome AS turma FROM alunos a JOIN turmas t ON a.turma_id=t.id;

-- ORDER BY
SELECT * FROM alunos ORDER BY nome;

-- GROUP BY / COUNT
SELECT t.nome AS turma, COUNT(a.id) AS quantidade_alunos
FROM turmas t LEFT JOIN alunos a ON a.turma_id=t.id
GROUP BY t.id, t.nome;
