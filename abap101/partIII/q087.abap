* QUESTAO 87 - Declare a button inside a selection screen and show an information message when it is
* pressed.

REPORT zabap101_087 .

SELECTION-SCREEN: BEGIN OF BLOCK t001 WITH FRAME .
SELECTION-SCREEN PUSHBUTTON 10(8) TEXT-001 USER-COMMAND press .

SELECTION-SCREEN: END OF BLOCK t001 .

AT SELECTION-SCREEN .
  IF sy-ucomm = 'PRESS' .
    MESSAGE 'Button Pressed' TYPE 'I' .
  ENDIF .