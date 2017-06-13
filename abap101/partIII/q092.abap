* QUESTAO 92 - Declare a selection screen with two time parameters. The first once should be typed with the
* primitive type. The second, with type SYST-UZEIT. Is there any different between them when
* filling the selection screen? What about the documentation displayed when you hit F1 key?


REPORT zabap101_092 .


SELECTION-SCREEN: BEGIN OF BLOCK t001 WITH FRAME TITLE s_title1.
PARAMETERS p_f TYPE t.
PARAMETERS p_p TYPE syst-uzeit.
SELECTION-SCREEN: END OF BLOCK t001 .


INITIALIZATION .
  s_title1 = 'Time'.


