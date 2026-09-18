-- CRUD: DELETE
-- DELETE exclui registros. WHERE define exatamente o que será excluído.
PRAGMA foreign_keys = ON;
-- Para remover uma matrícula: DELETE FROM aluno_disciplina WHERE aluno_id=14 AND disciplina_id=5;
-- Para remover uma carteirinha: DELETE FROM carteirinhas WHERE aluno_id=14;
-- Depois, se necessário, remova o aluno: DELETE FROM alunos WHERE id=14;
-- Com FOREIGN KEY ativa, relacionamentos dependentes precisam ser tratados primeiro.
-- NUNCA use DELETE FROM alunos sem WHERE se não quiser apagar todos os alunos.
