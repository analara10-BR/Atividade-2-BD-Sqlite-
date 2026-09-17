-- ============================================
-- BRECHÓ ONLINE - INSERTS
-- Este arquivo insere e popula os dados do banco.
-- ============================================

PRAGMA foreign_keys = ON;

-- Categorias iniciais.
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

-- Produtos iniciais.
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

-- ============================================
-- ATIVIDADE COMPLEMENTAR
-- Adição de pelo menos 10 novos clientes.
-- ============================================

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

-- Adição de 3 novas categorias.
INSERT INTO categorias (nome) VALUES
('Calçados'),
('Acessórios'),
('Moda Praia');

-- Produtos das novas categorias.
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

-- Dados para demonstrar o relacionamento 1:1.
INSERT INTO perfis_clientes (cliente_id, telefone) VALUES
(1, '88999990001'),
(2, '88999990002'),
(3, '88999990003'),
(4, '88999990004'),
(5, '88999990005');
