-- DADOS DA BASE ORIGINAL + ATIVIDADE COMPLEMENTAR
-- A complementar pede +10 alunos, +3 disciplinas e matrículas.
-- Não pede uma terceira turma: permanecem as 2 turmas originais.
PRAGMA foreign_keys = ON;

-- As duas turmas originais.
INSERT INTO turmas (nome) VALUES ('Informática 1'), ('Informática 2');

-- 4 alunos da base do material.
INSERT INTO alunos (nome,turma_id) VALUES
('Ana',1),('Bruno',1),('Carlos',2),('Daniela',2);

-- +10 novos alunos, distribuídos nas duas turmas existentes.
INSERT INTO alunos (nome,turma_id) VALUES
('Beatriz',1),('Caio',1),('Eduarda',1),('Felipe',2),('Gabriela',2),
('Henrique',2),('Isabela',2),('João',2),('Larissa',2),('Mateus',2);

-- Carteirinhas. numero e aluno_id possuem UNIQUE conforme o modelo 1:1.
INSERT INTO carteirinhas (numero,aluno_id) VALUES
('CT001',1),('CT002',2),('CT003',3),('CT004',4),('CT005',5),('CT006',6),
('CT007',7),('CT008',8),('CT009',9),('CT010',10),('CT011',11),('CT012',12),
('CT013',13),('CT014',14);

-- 3 disciplinas originais + exatamente 3 novas.
INSERT INTO disciplinas (nome) VALUES
('Banco de Dados'),('Programação Web'),('Redes'),
('Engenharia de Software'),('Programação Orientada a Objetos'),('Sistemas Operacionais');

-- Matrículas. aluno_disciplina é a tabela associativa do N:N.
INSERT INTO aluno_disciplina (aluno_id,disciplina_id) VALUES
(1,1),(1,2),(2,1),(2,3),(3,1),(4,2),
(5,1),(5,4),(6,1),(6,5),(7,2),(7,4),(8,1),(8,6),(9,3),(9,5),
(10,2),(10,6),(11,4),(11,5),(12,3),(12,6),(13,4),(13,6),(14,2),(14,5);
