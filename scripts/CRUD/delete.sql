-- CRUD: DELETE.
-- DELETE é usado para excluir registros de uma tabela.
PRAGMA foreign_keys = ON;
-- Ativa a verificação das chaves estrangeiras para proteger os relacionamentos.

-- Exclui a matrícula do aluno 14 na disciplina 5.
-- A matrícula é removida primeiro porque depende do aluno e da disciplina.
DELETE FROM aluno_disciplina WHERE aluno_id=14 AND disciplina_id=5;

-- Exclui a carteirinha do aluno 14.
-- A carteirinha possui uma FOREIGN KEY que aponta para esse aluno.
DELETE FROM carteirinhas WHERE aluno_id=14;

-- Exclui o aluno 14 depois que seus registros dependentes foram tratados.
-- WHERE garante que somente o aluno de ID 14 seja excluído.
DELETE FROM alunos WHERE id=14;

-- Com FOREIGN KEY ativa, os registros dependentes devem ser tratados antes do aluno.
-- Nunca use DELETE FROM alunos sem WHERE se a intenção não for apagar todos os alunos.
