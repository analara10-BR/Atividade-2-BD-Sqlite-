-- CRUD: READ/SELECT.
-- SELECT é usado para consultar e visualizar dados armazenados no banco.
PRAGMA foreign_keys = ON;
-- Ativa a verificação das chaves estrangeiras durante a execução.

-- Mostra todas as turmas cadastradas.
SELECT * FROM turmas;
-- Mostra todos os alunos cadastrados.
SELECT * FROM alunos;
-- Mostra todas as carteirinhas cadastradas.
SELECT * FROM carteirinhas;
-- Mostra todas as disciplinas cadastradas.
SELECT * FROM disciplinas;
-- Mostra todas as matrículas cadastradas na tabela associativa.
SELECT * FROM aluno_disciplina;

-- WHERE filtra os registros e mostra somente os alunos da turma de ID 1.
SELECT * FROM alunos WHERE turma_id = 1;
-- LIKE procura nomes que contenham o trecho de texto informado.
SELECT * FROM alunos WHERE nome LIKE '%ani%';

-- JOIN relaciona os alunos às suas respectivas turmas.
SELECT alunos.nome AS aluno, turmas.nome AS turma FROM alunos JOIN turmas ON alunos.turma_id=turmas.id;
-- JOIN relaciona cada aluno à sua carteirinha.
SELECT alunos.nome AS aluno, carteirinhas.numero AS carteirinha FROM alunos JOIN carteirinhas ON alunos.id=carteirinhas.aluno_id;
-- JOIN usa a tabela associativa para relacionar alunos e disciplinas.
SELECT alunos.nome AS aluno, disciplinas.nome AS disciplina FROM aluno_disciplina JOIN alunos ON aluno_disciplina.aluno_id=alunos.id JOIN disciplinas ON aluno_disciplina.disciplina_id=disciplinas.id;

-- ORDER BY ASC organiza os alunos pelo nome em ordem crescente.
SELECT * FROM alunos ORDER BY nome ASC;
-- ORDER BY DESC organiza os alunos pelo nome em ordem decrescente.
SELECT * FROM alunos ORDER BY nome DESC;
-- Ordena primeiro pelo nome da turma e depois pelo nome do aluno.
SELECT alunos.nome AS aluno,turmas.nome AS turma FROM alunos JOIN turmas ON alunos.turma_id=turmas.id ORDER BY turmas.nome,alunos.nome;
