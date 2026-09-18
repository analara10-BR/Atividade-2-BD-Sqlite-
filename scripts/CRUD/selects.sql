-- CRUD: READ/SELECT
-- SELECT consulta dados. WHERE filtra, JOIN relaciona tabelas e ORDER BY ordena.
PRAGMA foreign_keys = ON;
SELECT * FROM turmas;
SELECT * FROM alunos;
SELECT * FROM carteirinhas;
SELECT * FROM disciplinas;
SELECT * FROM aluno_disciplina;

-- WHERE: alunos da turma 1.
SELECT * FROM alunos WHERE turma_id = 1;
-- LIKE: procura texto por padrão.
SELECT * FROM alunos WHERE nome LIKE '%ani%';

-- JOIN 1:N: aluno + turma.
SELECT alunos.nome AS aluno, turmas.nome AS turma FROM alunos JOIN turmas ON alunos.turma_id=turmas.id;
-- JOIN 1:1: aluno + carteirinha.
SELECT alunos.nome AS aluno, carteirinhas.numero AS carteirinha FROM alunos JOIN carteirinhas ON alunos.id=carteirinhas.aluno_id;
-- JOIN N:N: aluno + disciplina usando tabela associativa.
SELECT alunos.nome AS aluno, disciplinas.nome AS disciplina FROM aluno_disciplina JOIN alunos ON aluno_disciplina.aluno_id=alunos.id JOIN disciplinas ON aluno_disciplina.disciplina_id=disciplinas.id;

-- ORDER BY crescente e decrescente.
SELECT * FROM alunos ORDER BY nome ASC;
SELECT * FROM alunos ORDER BY nome DESC;
-- ORDER BY com JOIN: turma e depois aluno.
SELECT alunos.nome AS aluno,turmas.nome AS turma FROM alunos JOIN turmas ON alunos.turma_id=turmas.id ORDER BY turmas.nome,alunos.nome;
