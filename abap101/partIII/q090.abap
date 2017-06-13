* QUESTAO 90 - Declare a selection screen with 8 parameters and 3 select-options of your choice. Execute
* your program and save a variant so you refer to your selection any time you want

REPORT zabap101_090 .


SELECTION-SCREEN: BEGIN OF BLOCK t001 WITH FRAME TITLE s_title1.
PARAMETERS p_f TYPE p.
PARAMETERS p_p TYPE p.
PARAMETERS p_i TYPE i.
SELECTION-SCREEN: END OF BLOCK t001 .

SELECTION-SCREEN: BEGIN OF BLOCK t002 WITH FRAME TITLE s_title2.
PARAMETERS p_c TYPE c LENGTH 5.
PARAMETERS p_s TYPE string.
PARAMETERS p_n TYPE n.
SELECTION-SCREEN: END OF BLOCK t002 .

SELECTION-SCREEN: BEGIN OF BLOCK t003 WITH FRAME TITLE s_title3.
PARAMETERS p_d TYPE d.
PARAMETERS p_t TYPE t.
PARAMETERS p_x TYPE x.
SELECTION-SCREEN: END OF BLOCK t003 .

DATA: v_c TYPE c LENGTH 5,
      v_i TYPE i,
      v_p TYPE p.
SELECTION-SCREEN: BEGIN OF BLOCK t004 WITH FRAME TITLE s_title4.
SELECT-OPTIONS s_c FOR v_c .
SELECT-OPTIONS s_i FOR v_i .
SELECT-OPTIONS s_p FOR v_p .
SELECTION-SCREEN: END OF BLOCK t004 .

INITIALIZATION .
  s_title1 = 'Intergers'.
  s_title2 = 'Text'.
  s_title3 = 'Others'.
  s_title4 = 'Select'.

