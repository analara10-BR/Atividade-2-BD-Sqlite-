# Atividade BD Completa

Banco SQLite acadêmico conforme a atividade. **Não inclui Brechó Online.**

## Estrutura
- 2 turmas: Informática 1 e Informática 2
- 14 alunos: 4 da base + 10 novos
- 6 disciplinas: 3 da base + 3 novas
- carteirinhas e matrículas cadastradas

## Relacionamentos
- turmas 1:N alunos
- alunos 1:1 carteirinhas (FK + UNIQUE)
- alunos N:N disciplinas por aluno_disciplina (tabela associativa com PK composta)

## Conteúdos demonstrados
PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, AUTOINCREMENT, PRAGMA foreign_keys, CREATE/INSERT, SELECT, WHERE, JOIN, ORDER BY, GROUP BY, COUNT, UPDATE e DELETE.

Os arquivos SQL possuem comentários para explicar o código e facilitar a apresentação no GitHub.

## Atividade complementar
- +10 alunos
- +3 disciplinas
- matrículas dos novos alunos
- consulta de alunos de uma turma em ordem alfabética
- consulta das disciplinas cursadas por cada aluno

## Observação
Não foi adicionada uma terceira turma porque isso não foi solicitado pela atividade complementar.
