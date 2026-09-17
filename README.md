# Brechó Online - Banco de Dados

Projeto acadêmico de Banco de Dados utilizando **SQLite e SQL**.

## Objetivo

O projeto representa um **Brechó Online**, utilizando tabelas, chaves, relacionamentos e comandos SQL. Para a atividade complementar, o mesmo banco também contém a estrutura acadêmica solicitada pelo professor.

## Tabelas do Brechó Online

- `categorias`
- `clientes`
- `produtos`
- `pedidos`
- `itens_pedido`
- `perfis_clientes`

### Relacionamentos do Brechó

- `categorias` 1:N `produtos`
- `clientes` 1:N `pedidos`
- `pedidos` N:N `produtos` através de `itens_pedido`
- `clientes` 1:1 `perfis_clientes`

## Tabelas da atividade complementar

- `turmas`
- `alunos`
- `carteirinhas`
- `disciplinas`
- `aluno_disciplina`

### Relacionamentos da atividade

- `turmas` 1:N `alunos`
- `alunos` 1:1 `carteirinhas`
- `alunos` N:N `disciplinas` através de `aluno_disciplina`

## Chaves e relacionamentos

### PRIMARY KEY

A **PRIMARY KEY** identifica cada registro de forma única.

Exemplo:

```sql
id INTEGER PRIMARY KEY AUTOINCREMENT
```

### FOREIGN KEY

A **FOREIGN KEY** cria uma ligação entre tabelas e ajuda a manter a integridade dos relacionamentos.

Exemplo em `alunos`:

```sql
turma_id INTEGER NOT NULL,
FOREIGN KEY (turma_id) REFERENCES turmas(id)
```

### Tabela associativa

`aluno_disciplina` é a tabela associativa do relacionamento N:N entre alunos e disciplinas.

Sua chave primária é composta por:

```sql
PRIMARY KEY (aluno_id, disciplina_id)
```

Isso impede que o mesmo aluno seja matriculado duas vezes na mesma disciplina.

### Relacionamento 1:1 entre aluno e carteirinha

A tabela `carteirinhas` possui `aluno_id` como FOREIGN KEY e também como `UNIQUE`:

```sql
aluno_id INTEGER NOT NULL UNIQUE,
FOREIGN KEY (aluno_id) REFERENCES alunos(id)
```

O `UNIQUE` garante que um mesmo aluno não tenha duas carteirinhas cadastradas.

## PRAGMA foreign_keys = ON

O comando:

```sql
PRAGMA foreign_keys = ON;
```

ativa a verificação das chaves estrangeiras na conexão SQLite. Ele aparece nos scripts para garantir que os relacionamentos sejam respeitados durante a execução.

## CRUD

O projeto demonstra os quatro comandos básicos do CRUD:

- **CREATE**: criação das tabelas em `scripts/tabelas.sql`.
- **READ**: consultas `SELECT` em `scripts/CRUD/selects.sql`.
- **UPDATE**: alterações em `scripts/CRUD/updat.sql`.
- **DELETE**: exclusões em `scripts/CRUD/delet.sql`.

## Comandos SQL demonstrados

O projeto utiliza exemplos de:

- `PRIMARY KEY`
- `FOREIGN KEY`
- tabela associativa
- `PRAGMA foreign_keys = ON`
- `WHERE`
- `JOIN`
- `ORDER BY`
- `GROUP BY`
- `COUNT`
- `MAX`
- `MIN`
- `AVG`
- CRUD

## Atividade complementar

Foram adicionados:

- 3 turmas;
- 10 novos alunos;
- 10 carteirinhas;
- 3 novas disciplinas;
- matrículas dos alunos em algumas disciplinas;
- consulta para listar alunos de uma determinada turma em ordem alfabética;
- consulta para listar as disciplinas cursadas por cada aluno.

As consultas solicitadas estão em:

```text
scripts/CRUD/consultas_complementares.sql
```

## Banco de dados

O arquivo `brecho_online.db` já está populado com os dados do Brechó Online e com os dados da atividade complementar.

Foi feita a verificação de integridade das FOREIGN KEYs e não há registros com referências inválidas.

## Estrutura do projeto

```text
Brecho_Online_Final
├── README.md
├── brecho_online.db
└── scripts
    ├── tabelas.sql
    └── CRUD
        ├── inserts.sql
        ├── selects.sql
        ├── updat.sql
        ├── delet.sql
        └── consultas_complementares.sql
```

## Ordem de execução dos scripts

Em um banco vazio, a ordem sugerida é:

1. `scripts/tabelas.sql`
2. `scripts/CRUD/inserts.sql`
3. `scripts/CRUD/selects.sql`
4. `scripts/CRUD/updat.sql`
5. `scripts/CRUD/delet.sql`
6. `scripts/CRUD/consultas_complementares.sql`

O arquivo `.db` entregue no projeto já contém os dados populados.
