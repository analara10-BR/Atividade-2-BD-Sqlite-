-- ============================================
-- BRECHÓ ONLINE - CRIAÇÃO DAS TABELAS
-- Este arquivo cria a estrutura do banco de dados.
-- ============================================

PRAGMA foreign_keys = ON;

-- Categorias dos produtos.
CREATE TABLE IF NOT EXISTS categorias (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL UNIQUE
);

-- Clientes que realizam compras no brechó.
CREATE TABLE IF NOT EXISTS clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE
);

-- Cada produto pertence a uma categoria.
-- categoria_id é uma FOREIGN KEY para categorias.
CREATE TABLE IF NOT EXISTS produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco REAL NOT NULL,
    tamanho TEXT NOT NULL,
    categoria_id INTEGER NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Cada cliente pode realizar vários pedidos.
-- cliente_id é uma FOREIGN KEY para clientes.
CREATE TABLE IF NOT EXISTS pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_id INTEGER NOT NULL,
    data_pedido TEXT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Tabela associativa entre pedidos e produtos.
-- Um pedido pode ter vários produtos e um produto pode
-- aparecer em vários pedidos: relacionamento N:N.
CREATE TABLE IF NOT EXISTS itens_pedido (
    pedido_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    PRIMARY KEY (pedido_id, produto_id),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Relacionamentos:
-- categorias 1:N produtos
-- clientes 1:N pedidos
-- pedidos N:N produtos através de itens_pedido

-- Relacionamento 1:1:
-- Cada cliente pode possuir um único perfil.
CREATE TABLE IF NOT EXISTS perfis_clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_id INTEGER NOT NULL UNIQUE,
    telefone TEXT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);
