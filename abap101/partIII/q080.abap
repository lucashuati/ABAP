* QUESTAO 80 - Write a program that declare three parameters as checkboxes. The first one should always
* be checked once the program is started. Moreover, if the current day is between 1 and 10, the other
* two checkboxes should be checked as well once the program is started.


REPORT zabap101_080 .

PARAMETERS: p_first AS CHECKBOX DEFAULT 'X',
            p_busin AS CHECKBOX,
            p_econo AS CHECKBOX.

INITIALIZATION .
  IF sy-datum+6(2) BETWEEN 1 AND 10 .
    p_busin = 'X' .
    p_econo = 'X' .
  ENDIF .
