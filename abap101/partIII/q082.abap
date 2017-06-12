* QUESTAO 82 - Write a program that declare three radio buttons and two input fields. If the first
* radio button is selected, both input fields should be displayed and ready for input. If the second
* one is chosen, the first input field should be mandatory and the second one should blocked for input.
* If the last radio button is chosen, both input fields should not be displayed in the screen.



REPORT zabap101_082 .

PARAMETERS: p_first  RADIOBUTTON GROUP grp1 USER-COMMAND action,
            p_busin  RADIOBUTTON GROUP grp1,
            p_econo  LIKE p_first RADIOBUTTON GROUP grp1,
            p_input1 TYPE string,
            p_input2 TYPE string.

DATA: action LIKE sy-ucomm.

AT SELECTION-SCREEN .
  action = sy-ucomm .

AT SELECTION-SCREEN OUTPUT.
  IF action = 'ACTION' .
    CASE 'X'.
      WHEN p_first .
        LOOP AT SCREEN .
          IF screen-name = 'P_INPUT1' OR screen-name = 'P_INPUT2' .
            screen-input = 1 .
            MODIFY SCREEN .
          ENDIF .
        ENDLOOP .
      WHEN p_busin .
        LOOP AT SCREEN .
          IF screen-name = 'P_INPUT1' .
            screen-required = 1 .
            MODIFY SCREEN .
          ELSEIF screen-name = 'P_INPUT2'.
            screen-input = 0 .
            MODIFY SCREEN .
          ENDIF .
        ENDLOOP .
      WHEN p_econo .
        LOOP AT SCREEN .
          IF screen-name = 'P_INPUT1' OR screen-name = 'P_INPUT2' .
            screen-required = 0 .
            screen-input = 0 .
            screen-invisible = 1 .
            
            MODIFY SCREEN .
          ENDIF .
        ENDLOOP .
    ENDCASE .
  ENDIF .