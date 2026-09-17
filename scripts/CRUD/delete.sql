-- ============================================================
-- CRUD - DELETE
-- ============================================================
-- DELETE exclui registros.
-- WHERE é fundamental para definir exatamente o que será
-- excluído.
--
-- No banco deste projeto, as exclusões relacionadas são feitas
-- manualmente, como explicado no material do professor.
-- ============================================================

PRAGMA foreign_keys = ON;

-- ------------------------------------------------------------
-- EXCLUIR UMA MATRÍCULA
-- ------------------------------------------------------------
-- Remove somente a relação entre aluno e disciplina.
-- Não exclui o aluno nem a disciplina.
--
-- DELETE FROM aluno_disciplina
-- WHERE aluno_id = 14
--   AND disciplina_id = 5;

-- ------------------------------------------------------------
-- EXCLUIR UMA CARTEIRINHA
-- ------------------------------------------------------------
-- Remove somente a carteirinha do aluno.
--
-- DELETE FROM carteirinhas
-- WHERE aluno_id = 14;

-- ------------------------------------------------------------
-- EXCLUIR UM ALUNO
-- ------------------------------------------------------------
-- Como existem FOREIGN KEYs relacionadas, primeiro é necessário
-- remover as relações dependentes.
--
-- DELETE FROM aluno_disciplina
-- WHERE aluno_id = 14;
--
-- DELETE FROM carteirinhas
-- WHERE aluno_id = 14;
--
-- DELETE FROM alunos
-- WHERE id = 14;

-- ------------------------------------------------------------
-- CUIDADO COM DELETE SEM WHERE
-- ------------------------------------------------------------
-- DELETE FROM alunos;
--
-- Sem WHERE, a instrução tentaria excluir todos os alunos.
