# Atividade de Banco de Dados - SQLite

Projeto desenvolvido no SQLite/DB Browser for SQLite com operações de CRUD, relacionamentos, consultas e a atividade complementar.

## Estrutura

- `atividade_bd.db` - banco de dados final.
- `scripts/tabelas.sql` - criação das tabelas.
- `scripts/dados_iniciais.sql` - dados originais + atividade complementar.
- `scripts/CRUD/` - exemplos de INSERT, SELECT, UPDATE e DELETE.
- `scripts/consultas/` - consultas da atividade complementar e exemplos com GROUP BY/COUNT.
- `scripts/testes/pragma_e_integridade.sql` - testes de integridade e chaves estrangeiras.

## Atividade complementar

O banco final mantém as 2 turmas originais: Informática 1 e Informática 2.

Foram acrescentados:

- 10 alunos;
- 3 disciplinas;
- novas matrículas dos alunos nas disciplinas;
- as 2 consultas solicitadas.

Não foi criada uma terceira turma.

## Observação sobre os arquivos CRUD

Os arquivos de CRUD são roteiros de comandos SQL. Alguns exemplos de INSERT/DELETE são mantidos comentados para não alterar o banco final ao serem executados. O `update.sql` contém os exemplos de UPDATE do material da disciplina.
