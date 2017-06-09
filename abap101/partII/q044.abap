* QUESTAO 44 - Write an executable program that concatenates two words and write the result.

REPORT zabap101_044 .

CONSTANTS c_string TYPE string VALUE 'palavra a ser concatenada' .
DATA: v_res TYPE string .

CONCATENATE c_string ' teste' INTO v_res .
WRITE: / v_res .
