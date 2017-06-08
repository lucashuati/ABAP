* QUESTAO 11 - Declare a table type of integers.

REPORT zabap101_11 .

TYPES: tabela_inteiros TYPE TABLE OF i .

DATA: it_pares TYPE tabela_inteiros .
DATA: it_impares TYPE tabela_inteiros .

APPEND: 0 TO it_pares,
2 TO it_pares,
4 TO it_pares,
6 TO it_pares,
8 TO it_pares.

APPEND: 1 TO it_impares,
3 TO it_impares,
5 TO it_impares,
7 TO it_impares,
9 TO it_impares.
