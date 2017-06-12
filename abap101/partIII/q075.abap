* QUESTAO 75 - Write a program that declare a select-options for numeric values without ranges. Then, validate
* if the number zero is entered and if it is, show an error message.

REPORT zabap101_075 .

DATA v_number TYPE i.
SELECT-OPTIONS s_number FOR v_number NO INTERVALS.

AT SELECTION-SCREEN ON s_number .
  IF s_number-low = '0' .
    MESSAGE 'Number zero is not allowed' TYPE 'E' .
  ENDIF .

