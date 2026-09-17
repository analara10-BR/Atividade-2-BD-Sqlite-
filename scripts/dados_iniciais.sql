-- ============================================================
-- DADOS DO BANCO + ATIVIDADE COMPLEMENTAR
-- ============================================================
-- Este arquivo popula o banco com os dados usados no projeto.
--
-- A base começa com os dados exemplificados no material do
-- professor e recebe:
--   * pelo menos 10 novos alunos;
--   * exatamente 3 novas disciplinas;
--   * matrículas dos novos alunos.
--
-- IMPORTANTE:
-- Este arquivo foi pensado para ser executado depois de
-- tabelas.sql.
-- ============================================================

PRAGMA foreign_keys = ON;

-- ------------------------------------------------------------
-- TURMAS
-- ------------------------------------------------------------
INSERT INTO turmas (nome) VALUES
('Informática 1'),
('Informática 2'),
('Informática 3');

-- ------------------------------------------------------------
-- ALUNOS
-- ------------------------------------------------------------
-- Os quatro primeiros seguem o exemplo do material.
INSERT INTO alunos (nome, turma_id) VALUES
('Ana', 1),
('Bruno', 1),
('Carlos', 2),
('Daniela', 2);

-- Pelo menos 10 novos alunos foram adicionados abaixo.
INSERT INTO alunos (nome, turma_id) VALUES
('Beatriz', 1),
('Caio', 1),
('Eduarda', 1),
('Felipe', 2),
('Gabriela', 2),
('Henrique', 2),
('Isabela', 3),
('João', 3),
('Larissa', 3),
('Mateus', 3);

-- ------------------------------------------------------------
-- CARTEIRINHAS
-- ------------------------------------------------------------
-- O campo aluno_id é UNIQUE na tabela carteirinhas.
-- Assim, cada aluno pode possuir no máximo uma carteirinha.
INSERT INTO carteirinhas (numero, aluno_id) VALUES
('CT001', 1),
('CT002', 2),
('CT003', 3),
('CT004', 4),
('CT005', 5),
('CT006', 6),
('CT007', 7),
('CT008', 8),
('CT009', 9),
('CT010', 10),
('CT011', 11),
('CT012', 12),
('CT013', 13),
('CT014', 14);

-- ------------------------------------------------------------
-- DISCIPLINAS
-- ------------------------------------------------------------
-- As três primeiras são as disciplinas do exemplo do material.
INSERT INTO disciplinas (nome) VALUES
('Banco de Dados'),
('Programação Web'),
('Redes');

-- EXATAMENTE 3 NOVAS DISCIPLINAS para a atividade complementar.
INSERT INTO disciplinas (nome) VALUES
('Engenharia de Software'),
('Programação Orientada a Objetos'),
('Sistemas Operacionais');

-- ------------------------------------------------------------
-- MATRÍCULAS
-- ------------------------------------------------------------
-- A tabela aluno_disciplina é associativa.
-- Cada linha liga um aluno a uma disciplina.
--
-- Os quatro primeiros relacionamentos seguem os exemplos
-- apresentados no material.
INSERT INTO aluno_disciplina (aluno_id, disciplina_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(3, 1),
(4, 2);

-- Matrículas adicionais dos novos alunos.
INSERT INTO aluno_disciplina (aluno_id, disciplina_id) VALUES
(5, 1),
(5, 4),
(6, 1),
(6, 5),
(7, 2),
(7, 4),
(8, 1),
(8, 6),
(9, 3),
(9, 5),
(10, 2),
(10, 6),
(11, 4),
(11, 5),
(12, 3),
(12, 6),
(13, 4),
(13, 6),
(14, 2),
(14, 5);

-- Cada novo aluno (IDs 5 a 14) possui pelo menos uma matrícula.
