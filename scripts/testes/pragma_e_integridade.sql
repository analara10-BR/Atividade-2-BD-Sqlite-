-- ============================================================
-- TESTES DE PRAGMA E INTEGRIDADE REFERENCIAL
-- ============================================================
-- Execute este arquivo no DB Browser for SQLite para demonstrar
-- que as regras de integridade estão configuradas.
-- ============================================================

-- Ativa as FOREIGN KEY nesta conexão.
PRAGMA foreign_keys = ON;

-- Deve retornar 1 quando a verificação está habilitada.
PRAGMA foreign_keys;

-- ------------------------------------------------------------
-- Verificação das tabelas
-- ------------------------------------------------------------
SELECT name
FROM sqlite_master
WHERE type = 'table'
ORDER BY name;

-- ------------------------------------------------------------
-- Verificação das FOREIGN KEY de alunos
-- ------------------------------------------------------------
PRAGMA foreign_key_list(alunos);

-- Verificação das FOREIGN KEY de carteirinhas.
PRAGMA foreign_key_list(carteirinhas);

-- Verificação das FOREIGN KEY da tabela associativa.
PRAGMA foreign_key_list(aluno_disciplina);

-- ------------------------------------------------------------
-- Verificação de possíveis registros órfãos.
-- Se o banco estiver íntegro, as consultas abaixo devem retornar
-- zero linhas.
-- ------------------------------------------------------------
SELECT alunos.*
FROM alunos
LEFT JOIN turmas
    ON alunos.turma_id = turmas.id
WHERE turmas.id IS NULL;

SELECT aluno_disciplina.*
FROM aluno_disciplina
LEFT JOIN alunos
    ON aluno_disciplina.aluno_id = alunos.id
LEFT JOIN disciplinas
    ON aluno_disciplina.disciplina_id = disciplinas.id
WHERE alunos.id IS NULL
   OR disciplinas.id IS NULL;

-- ------------------------------------------------------------
-- TESTE DE FOREIGN KEY INVÁLIDA
-- ------------------------------------------------------------
-- NÃO execute junto com o restante se quiser preservar a
-- execução sem erro. Este comando deve ser REJEITADO porque
-- turma_id = 999 não existe.
--
-- INSERT INTO alunos (nome, turma_id)
-- VALUES ('Teste FK', 999);

-- ------------------------------------------------------------
-- TESTE DE UNIQUE
-- ------------------------------------------------------------
-- Também deve ser REJEITADO porque o aluno 1 já possui
-- uma carteirinha.
--
-- INSERT INTO carteirinhas (numero, aluno_id)
-- VALUES ('CT999', 1);
