-- ============================================
-- BRECHÓ ONLINE - SELECTS
-- ============================================
-- SELECT consulta registros sem alterar os dados.
-- WHERE filtra registros.
-- JOIN relaciona informações de tabelas diferentes.
-- ORDER BY organiza o resultado.
-- GROUP BY agrupa registros para funções como COUNT.

PRAGMA foreign_keys = ON;

-- 1. READ: listar todos os clientes em ordem alfabética.
SELECT *
FROM clientes
ORDER BY nome ASC;

-- 2. WHERE: filtrar produtos com preço maior que 60 reais.
SELECT *
FROM produtos
WHERE preco > 60
ORDER BY preco DESC;

-- 3. JOIN: mostrar produtos junto com suas categorias.
SELECT
    produtos.nome AS produto,
    produtos.preco,
    produtos.tamanho,
    categorias.nome AS categoria
FROM produtos
JOIN categorias
    ON produtos.categoria_id = categorias.id
ORDER BY produtos.nome ASC;

-- 4. JOIN: mostrar os pedidos e seus clientes.
SELECT
    pedidos.id AS pedido,
    clientes.nome AS cliente,
    pedidos.data_pedido
FROM pedidos
JOIN clientes
    ON pedidos.cliente_id = clientes.id
ORDER BY pedidos.data_pedido ASC;

-- 5. JOIN entre várias tabelas: mostrar o que cada cliente comprou.
SELECT
    clientes.nome AS cliente,
    produtos.nome AS produto,
    itens_pedido.quantidade,
    pedidos.data_pedido
FROM clientes
JOIN pedidos
    ON clientes.id = pedidos.cliente_id
JOIN itens_pedido
    ON pedidos.id = itens_pedido.pedido_id
JOIN produtos
    ON itens_pedido.produto_id = produtos.id
ORDER BY clientes.nome ASC, produtos.nome ASC;

-- 6. GROUP BY + COUNT: quantidade de produtos em cada categoria.
SELECT
    categorias.nome AS categoria,
    COUNT(produtos.id) AS quantidade_produtos
FROM categorias
LEFT JOIN produtos
    ON categorias.id = produtos.categoria_id
GROUP BY categorias.id, categorias.nome
ORDER BY quantidade_produtos DESC;

-- 7. GROUP BY + COUNT: quantidade de pedidos por cliente.
SELECT
    clientes.nome AS cliente,
    COUNT(pedidos.id) AS quantidade_pedidos
FROM clientes
LEFT JOIN pedidos
    ON clientes.id = pedidos.cliente_id
GROUP BY clientes.id, clientes.nome
ORDER BY quantidade_pedidos DESC;

-- 8. Funções de agregação: maior, menor e preço médio.
SELECT
    MAX(preco) AS maior_preco,
    MIN(preco) AS menor_preco,
    AVG(preco) AS preco_medio
FROM produtos;

-- 9. JOIN: demonstrar o relacionamento 1:1 do Brechó.
SELECT
    clientes.nome AS cliente,
    perfis_clientes.telefone
FROM clientes
JOIN perfis_clientes
    ON clientes.id = perfis_clientes.cliente_id
ORDER BY clientes.nome ASC;

-- ============================================
-- CONSULTAS DAS NOVAS TABELAS
-- ============================================

-- 10. JOIN: listar alunos e suas respectivas turmas.
SELECT
    alunos.nome AS aluno,
    turmas.nome AS turma
FROM alunos
JOIN turmas
    ON alunos.turma_id = turmas.id
ORDER BY alunos.nome ASC;

-- 11. JOIN: listar alunos e suas carteirinhas.
-- aluno_id é UNIQUE em carteirinhas, garantindo 1:1.
SELECT
    alunos.nome AS aluno,
    carteirinhas.numero AS carteirinha
FROM alunos
JOIN carteirinhas
    ON alunos.id = carteirinhas.aluno_id
ORDER BY alunos.nome ASC;

-- 12. JOIN: listar os alunos e as disciplinas cursadas.
SELECT
    alunos.nome AS aluno,
    disciplinas.nome AS disciplina
FROM alunos
JOIN aluno_disciplina
    ON alunos.id = aluno_disciplina.aluno_id
JOIN disciplinas
    ON disciplinas.id = aluno_disciplina.disciplina_id
ORDER BY alunos.nome ASC, disciplinas.nome ASC;

-- 13. WHERE + JOIN: consultar somente alunos de uma turma.
SELECT
    alunos.nome AS aluno,
    turmas.nome AS turma
FROM alunos
JOIN turmas
    ON alunos.turma_id = turmas.id
WHERE turmas.nome = 'Backend - Manhã'
ORDER BY alunos.nome ASC;

-- 14. GROUP BY + COUNT: quantidade de alunos em cada turma.
SELECT
    turmas.nome AS turma,
    COUNT(alunos.id) AS quantidade_alunos
FROM turmas
LEFT JOIN alunos
    ON turmas.id = alunos.turma_id
GROUP BY turmas.id, turmas.nome
ORDER BY turmas.nome ASC;
