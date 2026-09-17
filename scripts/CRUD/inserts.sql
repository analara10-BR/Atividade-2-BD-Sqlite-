-- ============================================
-- BRECHÓ ONLINE - INSERTS
-- ============================================
-- INSERT adiciona novos registros nas tabelas.
-- Este arquivo popula o banco com os dados do projeto.

PRAGMA foreign_keys = ON;

-- ============================================
-- DADOS DO BRECHÓ ONLINE
-- ============================================

-- Categorias iniciais do brechó.
INSERT INTO categorias (nome) VALUES
('Feminino'),
('Masculino'),
('Infantil');

-- Clientes iniciais.
INSERT INTO clientes (nome, email) VALUES
('Ana Beatriz', 'ana.beatriz@email.com'),
('Bruno Lima', 'bruno.lima@email.com'),
('Camila Souza', 'camila.souza@email.com'),
('Diego Alves', 'diego.alves@email.com'),
('Eduarda Martins', 'eduarda.martins@email.com');

-- Produtos iniciais. categoria_id é FOREIGN KEY.
INSERT INTO produtos (nome, preco, tamanho, categoria_id) VALUES
('Vestido Floral', 89.90, 'M', 1),
('Calça Jeans Mom', 79.90, '38', 1),
('Blusa Branca', 49.90, 'M', 1),
('Camisa Social Azul', 69.90, 'M', 2),
('Calça Sarja', 74.90, '42', 2),
('Camiseta Básica', 39.90, 'G', 2),
('Vestido Infantil Rosa', 59.90, '8', 3),
('Conjunto Infantil', 64.90, '10', 3);

-- Pedidos iniciais.
INSERT INTO pedidos (cliente_id, data_pedido) VALUES
(1, '2026-09-10'),
(2, '2026-09-11'),
(3, '2026-09-12');

-- Produtos presentes nos pedidos.
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade) VALUES
(1, 1, 1),
(1, 3, 1),
(2, 4, 1),
(2, 6, 2),
(3, 2, 1);

-- Relacionamento 1:1 entre clientes e perfis.
INSERT INTO perfis_clientes (cliente_id, telefone) VALUES
(1, '88999990001'),
(2, '88999990002'),
(3, '88999990003'),
(4, '88999990004'),
(5, '88999990005');

-- ============================================
-- ATIVIDADE COMPLEMENTAR
-- ============================================
-- Foram adicionados pelo menos 10 novos alunos,
-- 3 disciplinas e matrículas em algumas disciplinas.

-- Turmas utilizadas pelos novos alunos.
INSERT INTO turmas (nome) VALUES
('Backend - Manhã'),
('Banco de Dados - Manhã'),
('Programação - Manhã');

-- 10 novos alunos.
-- turma_id é FOREIGN KEY para turmas(id).
INSERT INTO alunos (nome, turma_id) VALUES
('Amanda Alves', 1),
('Beatriz Costa', 1),
('Carlos Eduardo', 1),
('Daniel Silva', 1),
('Eduarda Lima', 2),
('Felipe Rocha', 2),
('Gabriela Souza', 2),
('Henrique Martins', 2),
('Isabela Santos', 3),
('João Pedro', 3);

-- Uma carteirinha para cada um dos 10 alunos.
-- aluno_id é FOREIGN KEY e UNIQUE, garantindo 1:1.
INSERT INTO carteirinhas (numero, aluno_id) VALUES
('20260001', 1),
('20260002', 2),
('20260003', 3),
('20260004', 4),
('20260005', 5),
('20260006', 6),
('20260007', 7),
('20260008', 8),
('20260009', 9),
('20260010', 10);

-- 3 novas disciplinas.
INSERT INTO disciplinas (nome) VALUES
('Banco de Dados'),
('Programação Backend'),
('Modelagem de Dados');

-- Matrículas dos alunos nas disciplinas.
-- aluno_disciplina é a tabela associativa do relacionamento N:N.
INSERT INTO aluno_disciplina (aluno_id, disciplina_id) VALUES
(1, 1), (1, 2),
(2, 2), (2, 3),
(3, 1), (3, 3),
(4, 1), (4, 2),
(5, 2), (5, 3),
(6, 1), (6, 3),
(7, 1), (7, 2),
(8, 2), (8, 3),
(9, 1), (9, 3),
(10, 1), (10, 2);

-- ============================================
-- DADOS EXTRAS DO BRECHÓ PARA A ATIVIDADE
-- ============================================

-- 10 novos clientes para manter os dados complementares do Brechó.
INSERT INTO clientes (nome, email) VALUES
('Fernanda Costa', 'fernanda.costa@email.com'),
('Gabriel Rocha', 'gabriel.rocha@email.com'),
('Helena Castro', 'helena.castro@email.com'),
('Igor Mendes', 'igor.mendes@email.com'),
('Juliana Alves', 'juliana.alves@email.com'),
('Karen Oliveira', 'karen.oliveira@email.com'),
('Lucas Ferreira', 'lucas.ferreira@email.com'),
('Mariana Santos', 'mariana.santos@email.com'),
('Nicolas Silva', 'nicolas.silva@email.com'),
('Olivia Ramos', 'olivia.ramos@email.com');

-- 3 novas categorias do Brechó.
INSERT INTO categorias (nome) VALUES
('Calçados'),
('Acessórios'),
('Moda Praia');

-- Produtos relacionados às novas categorias.
INSERT INTO produtos (nome, preco, tamanho, categoria_id) VALUES
('Tênis Branco', 99.90, '37', 4),
('Sandália Preta', 69.90, '36', 4),
('Bolsa Pequena', 54.90, 'Único', 5),
('Cinto Marrom', 34.90, 'M', 5),
('Biquíni Preto', 79.90, 'M', 6),
('Saída de Praia', 64.90, 'M', 6);

-- Pedidos dos novos clientes.
INSERT INTO pedidos (cliente_id, data_pedido) VALUES
(6, '2026-09-13'),
(7, '2026-09-13'),
(8, '2026-09-14'),
(9, '2026-09-14'),
(10, '2026-09-15'),
(11, '2026-09-15'),
(12, '2026-09-16'),
(13, '2026-09-16'),
(14, '2026-09-17'),
(15, '2026-09-17');

-- Itens dos pedidos dos novos clientes.
INSERT INTO itens_pedido (pedido_id, produto_id, quantidade) VALUES
(4, 9, 1),
(5, 11, 1),
(6, 12, 1),
(7, 13, 1),
(8, 14, 1),
(9, 10, 1),
(10, 1, 1),
(11, 5, 1),
(12, 2, 1),
(13, 3, 1);
