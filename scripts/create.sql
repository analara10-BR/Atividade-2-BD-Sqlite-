-- 1. ATIVANDO AS CHAVES ESTRANGEIRAS

-- Ativa a verificação das FOREIGN KEY no SQLite
PRAGMA foreign_keys = ON;


-- 2. TABELA CLIENTE

-- Cria a tabela para armazenar os clientes
CREATE TABLE cliente (
    
    -- PRIMARY KEY identifica cada cliente de forma única
    -- AUTOINCREMENT gera o ID automaticamente
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    
    -- TEXT armazena texto
    -- NOT NULL significa que o campo é obrigatório
    nome TEXT NOT NULL,
    email TEXT NOT NULL,
    telefone TEXT NOT NULL,
    senha TEXT NOT NULL
);


-- 3. TABELA PRODUTO


-- Cria a tabela para armazenar os produtos do brechó
CREATE TABLE produto (
    
    -- Identifica cada produto de forma única
    id_produto INTEGER PRIMARY KEY AUTOINCREMENT,
    
    -- Informações do produto
    nome TEXT NOT NULL,
    categoria TEXT NOT NULL,
    tamanho TEXT NOT NULL,
    
    -- DECIMAL(10,2) representa um valor com duas
    -- casas decimais, usado para o preço
    preco DECIMAL(10,2) NOT NULL,
    
    -- Guarda o estado de conservação do produto
    estado_conservacao TEXT NOT NULL
);

-- 4. TABELA PEDIDO

-- Cria a tabela para armazenar os pedidos
CREATE TABLE pedido (
    
    -- PRIMARY KEY identifica cada pedido
    id_pedido INTEGER PRIMARY KEY AUTOINCREMENT,
    
    -- Guarda a data em que o pedido foi feito
    data_pedido DATE NOT NULL,
    
    -- Guarda o status do pedido
    status TEXT NOT NULL,
    
    -- Guarda o valor total do pedido
    valor_total DECIMAL(10,2) NOT NULL,
    
    -- Guarda o cliente que fez o pedido
    id_cliente INTEGER NOT NULL,
    
    -- FOREIGN KEY relaciona o pedido com o cliente
    -- id_cliente referencia a PRIMARY KEY da tabela cliente
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);
