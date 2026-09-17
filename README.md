# Brechó Online - Banco de Dados

Projeto acadêmico de banco de dados utilizando SQLite e SQL.

## Objetivo

Criar um banco de dados para representar um Brechó Online,
utilizando tabelas, chaves, relacionamentos e comandos SQL.

## Tabelas

- categorias
- clientes
- produtos
- pedidos
- itens_pedido
- perfis_clientes

## Relacionamentos

- categorias 1:N produtos
- clientes 1:N pedidos
- pedidos N:N produtos através da tabela associativa itens_pedido
- clientes 1:1 perfis_clientes

## CRUD

- CREATE: criação das tabelas em tabelas.sql
- READ: consultas em selects.sql
- UPDATE: alterações em updat.sql
- DELETE: exclusões em delet.sql

## Outros comandos utilizados

- PRIMARY KEY
- FOREIGN KEY
- PRAGMA foreign_keys = ON
- WHERE
- JOIN
- ORDER BY
- GROUP BY
- COUNT
- MAX
- MIN
- AVG

## Atividade complementar

Foram adicionados:
- 10 novos clientes;
- 3 novas categorias;
- produtos relacionados às novas categorias;
- pedidos e itens de pedidos para os novos clientes;
- consultas complementares adaptadas ao tema do Brechó Online.

## Ordem de execução

1. scripts/tabelas.sql
2. scripts/CRUD/inserts.sql
3. scripts/CRUD/selects.sql
4. scripts/CRUD/updat.sql
5. scripts/CRUD/delet.sql
6. scripts/CRUD/consultas_complementares.sql

O arquivo `brecho_online.db` contém uma base populada.
