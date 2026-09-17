# RELATÓRIO DE VALIDAÇÃO

Banco criado e testado automaticamente.

- foreign_keys: True
- tables: ['aluno_disciplina', 'alunos', 'carteirinhas', 'disciplinas', 'sqlite_sequence', 'turmas']
- student_count: 14
- discipline_count: 6
- new_student_count: 10
- new_discipline_count: 3
- enrollments_new_students: 10
- foreign_key_violations: 0
- complementary_query_1_rows: 5
- complementary_query_1_sorted: True
- complementary_query_2_rows: 26
- all_students_have_enrollment: True
- exactly_3_new_disciplines: True
- one_card_per_student: True
- no_duplicate_enrollments: True
- expected_tables: True (a tabela interna `sqlite_sequence`, criada pelo SQLite devido ao AUTOINCREMENT, foi desconsiderada)
