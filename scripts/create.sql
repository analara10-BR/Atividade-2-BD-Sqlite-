PRAGMA foreign_keys = ON;

CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    email TEXT NOT NULL,
    telefone TEXT NOT NULL,
    senha TEXT NOT NULL
);

CREATE TABLE produto (
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    categoria TEXT NOT NULL,
    tamanho TEXT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estado_conservacao TEXT NOT NULL
);

CREATE TABLE pedido (
    id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    data_pedido DATE NOT NULL,
    status TEXT NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    id_cliente INTEGER NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
