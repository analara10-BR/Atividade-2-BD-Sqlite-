# Atividade_BD_Completa

Projeto de Banco de Dados em **SQLite**, preparado para abrir no
**DB Browser for SQLite** e também para ser colocado no GitHub.

## Conteúdo

- `atividade_bd.db` — banco SQLite já criado e populado.
- `scripts/tabelas.sql` — criação das tabelas e relacionamentos.
- `scripts/dados_iniciais.sql` — dados iniciais, 10 novos alunos,
  3 novas disciplinas e matrículas.
- `scripts/CRUD/inserts.sql` — exemplos comentados de INSERT.
- `scripts/CRUD/selects.sql` — exemplos comentados de SELECT,
  WHERE, JOIN e ORDER BY.
- `scripts/CRUD/update.sql` — exemplos comentados de UPDATE.
- `scripts/CRUD/delete.sql` — exemplos comentados de DELETE.
- `scripts/consultas/atividade_complementar.sql` — as duas
  consultas exigidas na atividade complementar.
- `scripts/consultas/group_by_count.sql` — GROUP BY e COUNT().
- `scripts/testes/pragma_e_integridade.sql` — testes de
  FOREIGN KEY, PRAGMA e integridade.

## Tabelas

1. `turmas`
2. `alunos`
3. `carteirinhas`
4. `disciplinas`
5. `aluno_disciplina`

Não foi incluída a parte de Brechó Online.

## Relacionamentos

- `turmas 1:N alunos`
- `alunos 1:1 carteirinhas`
- `alunos N:N disciplinas`, usando `aluno_disciplina`

## O que foi incluído para a apresentação

O projeto contém exemplos comentados de:

- PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- NOT NULL
- AUTOINCREMENT
- PRAGMA foreign_keys = ON
- CREATE TABLE
- INSERT
- SELECT
- UPDATE
- DELETE
- WHERE
- JOIN
- ORDER BY
- GROUP BY
- COUNT()

Os comentários explicam o que cada tabela e coluna representa,
por que as chaves existem, como os relacionamentos funcionam e
o objetivo das consultas.

## Dados da atividade complementar

O banco possui:

- 14 alunos no total, sendo 10 adicionados como novos alunos;
- 6 disciplinas no total, sendo exatamente 3 novas disciplinas;
- matrículas para os novos alunos;
- carteirinhas para os alunos cadastrados.

## Como abrir

1. Abra o DB Browser for SQLite.
2. Clique em **Open Database**.
3. Selecione `atividade_bd.db`.
4. Vá para **Execute SQL**.
5. Execute:

```sql
PRAGMA foreign_keys = ON;
PRAGMA foreign_keys;
```

O segundo comando deve retornar `1`.

## Observação sobre os scripts de CRUD

Os arquivos de INSERT, UPDATE e DELETE possuem muitos exemplos
comentados para estudo e apresentação. Isso evita que, ao abrir
o projeto, os exemplos alterem acidentalmente o banco final.

Antes de executar um UPDATE ou DELETE, use um SELECT com WHERE
para conferir exatamente qual registro será afetado.

## Observação para o GitHub

Os arquivos `.sql` foram escritos com comentários explicativos
para que o código possa ser apresentado diretamente no GitHub.
