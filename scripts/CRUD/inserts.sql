-- ============================================================
-- CRUD - CREATE / INSERT
-- ============================================================
-- CREATE/INSERT é usado para criar registros e inserir dados.
--
-- ATENÇÃO:
-- Estes são exemplos para a apresentação.
-- O banco atividade_bd.db já contém os dados finais da atividade.
-- Se executar novamente os INSERTs abaixo, os dados serão
-- duplicados ou poderão gerar erro por causa de UNIQUE/PK.
-- ============================================================

PRAGMA foreign_keys = ON;

-- ------------------------------------------------------------
-- INSERT em TURMAS
-- ------------------------------------------------------------
-- Insere uma nova turma.
-- O id não precisa ser informado porque é AUTOINCREMENT.
--
-- INSERT INTO turmas (nome)
-- VALUES ('Informática 4');

-- ------------------------------------------------------------
-- INSERT em ALUNOS
-- ------------------------------------------------------------
-- turma_id é FOREIGN KEY e precisa existir em turmas.
--
-- INSERT INTO alunos (nome, turma_id)
-- VALUES ('Novo Aluno', 1);

-- ------------------------------------------------------------
-- INSERT em DISCIPLINAS
-- ------------------------------------------------------------
-- nome é UNIQUE, portanto não pode ser repetido.
--
-- INSERT INTO disciplinas (nome)
-- VALUES ('Nova Disciplina');

-- ------------------------------------------------------------
-- INSERT em CARTEIRINHAS
-- ------------------------------------------------------------
-- aluno_id também é UNIQUE.
-- Isso impede duas carteirinhas para o mesmo aluno.
--
-- INSERT INTO carteirinhas (numero, aluno_id)
-- VALUES ('CT999', 1);

-- ------------------------------------------------------------
-- INSERT em ALUNO_DISCIPLINA
-- ------------------------------------------------------------
-- Cria uma matrícula/relacionamento entre aluno e disciplina.
-- As duas FOREIGN KEY precisam existir.
--
-- INSERT INTO aluno_disciplina (aluno_id, disciplina_id)
-- VALUES (1, 1);
