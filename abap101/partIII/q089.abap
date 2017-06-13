* QUESTAO 89 - Declare three parameters. There should be a horizontal line separating the first two ones and
* a blank line separating the last two

REPORT zabap101_089 .


SELECTION-SCREEN: BEGIN OF BLOCK t001.
PARAMETERS s_n TYPE n LENGTH 5.
SELECTION-SCREEN ULINE .
PARAMETERS s_c TYPE c LENGTH 15.
SELECTION-SCREEN SKIP 1.
PARAMETERS s_d TYPE d.
SELECTION-SCREEN: END OF BLOCK t001 .

