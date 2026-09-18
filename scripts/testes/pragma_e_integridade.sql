-- TESTES DE PRAGMA E INTEGRIDADE
PRAGMA foreign_keys = ON;
-- Deve retornar 1.
PRAGMA foreign_keys;

-- Conferir tabelas do projeto (sqlite_sequence é interna do AUTOINCREMENT).
SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name;
PRAGMA foreign_key_list(alunos);
PRAGMA foreign_key_list(carteirinhas);
PRAGMA foreign_key_list(aluno_disciplina);
PRAGMA foreign_key_check; -- deve retornar zero linhas.

-- TESTE DE FK inválida (deixe comentado; deve ser rejeitado):
-- INSERT INTO alunos (nome,turma_id) VALUES ('Teste FK',999);
-- TESTE DE UNIQUE (deixe comentado; deve ser rejeitado):
-- INSERT INTO carteirinhas (numero,aluno_id) VALUES ('CT999',1);
