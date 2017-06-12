* QUESTAO 81 - Write a program that declare three radio buttons and an input field. If any radio button
* is selected, the input field should be cleared. Note: the field should be cleared as soon any radio buttons
* is selected and not after the program is executed.


REPORT zabap101_081 .

PARAMETERS: p_first RADIOBUTTON GROUP grp1 USER-COMMAND action,
            p_busin RADIOBUTTON GROUP grp1,
            p_econo LIKE p_first RADIOBUTTON GROUP grp1,
            p_input TYPE string.

AT SELECTION-SCREEN .
  IF sy-ucomm = 'ACTION' .
    CLEAR p_input .
  ENDIF .