-- ============================================================
-- CRUD - UPDATE
-- ============================================================
-- UPDATE altera dados já existentes.
-- WHERE é essencial para limitar qual registro será alterado.
--
-- SEM WHERE, todos os registros poderiam ser modificados.
-- ============================================================

PRAGMA foreign_keys = ON;

-- ------------------------------------------------------------
-- EXEMPLO SEGURO PARA A APRESENTAÇÃO
-- ------------------------------------------------------------
-- Antes de atualizar, confira o registro:
-- SELECT * FROM alunos WHERE id = 14;
--
-- Depois altere somente o aluno de id 14:
-- UPDATE alunos
-- SET nome = 'Mateus Silva'
-- WHERE id = 14;
--
-- Confira novamente:
-- SELECT * FROM alunos WHERE id = 14;

-- Outro exemplo:
-- UPDATE turmas
-- SET nome = 'Informática 2 - Manhã'
-- WHERE id = 2;

-- Exemplo de atualização de carteirinha:
-- UPDATE carteirinhas
-- SET numero = 'CT014-A'
-- WHERE aluno_id = 14;

-- ------------------------------------------------------------
-- CUIDADO
-- ------------------------------------------------------------
-- Isto NÃO deve ser executado sem intenção:
--
-- UPDATE alunos
-- SET nome = 'Aluno';
--
-- Sem WHERE, a alteração atingiria todos os alunos.
