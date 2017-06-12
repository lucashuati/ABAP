* QUESTAO 76 - Write a program that declare a select-options for numeric values without multiple ranges. 
* Then, validate if a range bigger than 100 is entered and if it is, show an error message.

REPORT zabap101_076 .

DATA v_number TYPE i.
SELECT-OPTIONS s_number FOR v_number NO-EXTENSION.

AT SELECTION-SCREEN ON s_number .
  DATA diff TYPE i .
  diff = s_number-high - s_number-low .
  IF diff > 100 .
    MESSAGE 'Range shoud be less than 100' TYPE 'E' .
  ENDIF .

