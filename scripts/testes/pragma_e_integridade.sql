-- Executa testes relacionados a FOREIGN KEY e à integridade do banco.
-- A instrução abaixo ativa a verificação das chaves estrangeiras.
PRAGMA foreign_keys = ON;
-- Consulta se a verificação de FOREIGN KEY está ativa; o resultado esperado é 1.
PRAGMA foreign_keys;

-- Lista as tabelas criadas pelo projeto.
-- sqlite_sequence é interna do SQLite e por isso é excluída do resultado.
SELECT name FROM sqlite_master WHERE type='table' AND name NOT LIKE 'sqlite_%' ORDER BY name;

-- Mostra as chaves estrangeiras definidas na tabela alunos.
PRAGMA foreign_key_list(alunos);
-- Mostra as chaves estrangeiras definidas na tabela carteirinhas.
PRAGMA foreign_key_list(carteirinhas);
-- Mostra as chaves estrangeiras definidas na tabela aluno_disciplina.
PRAGMA foreign_key_list(aluno_disciplina);
-- Verifica se existem registros com FOREIGN KEY inválida; o resultado esperado é zero linhas.
PRAGMA foreign_key_check;

-- Teste de FOREIGN KEY inválida, mantido comentado porque deve ser rejeitado pelo banco.
-- O valor 999 não corresponde a uma turma existente.
-- INSERT INTO alunos (nome,turma_id) VALUES ('Teste FK',999);

-- Teste de UNIQUE, mantido comentado porque deve ser rejeitado pelo banco.
-- O aluno 1 já possui uma carteirinha e aluno_id é UNIQUE.
-- INSERT INTO carteirinhas (numero,aluno_id) VALUES ('CT999',1);
