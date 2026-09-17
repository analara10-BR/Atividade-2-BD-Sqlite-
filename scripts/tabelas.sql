-- ============================================
-- BRECHÓ ONLINE - CRIAÇÃO DAS TABELAS
-- ============================================
-- Este arquivo cria a estrutura do banco de dados.
-- O projeto continua sendo um Brechó Online e também
-- possui as tabelas acadêmicas exigidas na atividade.

-- Ativa a verificação das FOREIGN KEYs nesta conexão SQLite.
PRAGMA foreign_keys = ON;

-- ============================================
-- TABELAS DO BRECHÓ ONLINE
-- ============================================

-- Categorias dos produtos.
-- PRIMARY KEY identifica cada categoria de forma única.
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
-- categoria_id é FOREIGN KEY e aponta para categorias(id).
CREATE TABLE IF NOT EXISTS produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    preco REAL NOT NULL,
    tamanho TEXT NOT NULL,
    categoria_id INTEGER NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

-- Cada pedido pertence a um cliente.
-- cliente_id é FOREIGN KEY para clientes(id).
CREATE TABLE IF NOT EXISTS pedidos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_id INTEGER NOT NULL,
    data_pedido TEXT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Tabela associativa do relacionamento N:N entre pedidos e produtos.
-- A PRIMARY KEY composta evita repetir o mesmo produto no mesmo pedido.
CREATE TABLE IF NOT EXISTS itens_pedido (
    pedido_id INTEGER NOT NULL,
    produto_id INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    PRIMARY KEY (pedido_id, produto_id),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- Relacionamento 1:1 entre cliente e perfil.
-- UNIQUE em cliente_id garante no máximo um perfil por cliente.
CREATE TABLE IF NOT EXISTS perfis_clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cliente_id INTEGER NOT NULL UNIQUE,
    telefone TEXT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- ============================================
-- TABELAS EXIGIDAS PELA ATIVIDADE
-- ============================================

-- Representa as turmas. Uma turma pode possuir vários alunos.
CREATE TABLE IF NOT EXISTS turmas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL UNIQUE
);

-- Representa os alunos.
-- turma_id é FOREIGN KEY para turmas(id).
-- Assim, cada aluno pertence a uma turma e uma turma pode ter vários alunos.
CREATE TABLE IF NOT EXISTS alunos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    turma_id INTEGER NOT NULL,
    FOREIGN KEY (turma_id) REFERENCES turmas(id)
);

-- Representa a carteirinha de cada aluno.
-- numero é UNIQUE para não existir número repetido.
-- aluno_id é FOREIGN KEY e também UNIQUE para garantir o relacionamento 1:1:
-- um aluno pode ter no máximo uma carteirinha.
CREATE TABLE IF NOT EXISTS carteirinhas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    numero TEXT NOT NULL UNIQUE,
    aluno_id INTEGER NOT NULL UNIQUE,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id)
);

-- Representa as disciplinas.
-- nome é UNIQUE para evitar disciplinas duplicadas.
CREATE TABLE IF NOT EXISTS disciplinas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL UNIQUE
);

-- Tabela associativa do relacionamento N:N entre alunos e disciplinas.
-- Um aluno pode cursar várias disciplinas e uma disciplina pode ser cursada
-- por vários alunos. A PRIMARY KEY composta evita uma matrícula duplicada.
CREATE TABLE IF NOT EXISTS aluno_disciplina (
    aluno_id INTEGER NOT NULL,
    disciplina_id INTEGER NOT NULL,
    PRIMARY KEY (aluno_id, disciplina_id),
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (disciplina_id) REFERENCES disciplinas(id)
);

-- Relacionamentos principais da atividade:
-- TURMAS 1:N ALUNOS
-- ALUNO 1:1 CARTEIRINHAS
-- ALUNOS N:N DISCIPLINAS através de ALUNO_DISCIPLINA
