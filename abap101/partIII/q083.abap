* QUESTAO 83 - Write a program that declare four parameters. The first two should have a character type and
* the last two a numeric type. Separate each pair in the selection screen using selection screen blocks.
* Both blocks  should contain a frame so it's possible to see the separation between them.


REPORT zabap101_083 .

SELECTION-SCREEN: BEGIN OF BLOCK t001 WITH FRAME .
PARAMETERS: p_char1 TYPE c LENGTH 25,
            p_char2 TYPE c LENGTH 17.
SELECTION-SCREEN: END OF BLOCK t001 .

SELECTION-SCREEN: BEGIN OF BLOCK t002 WITH FRAME .
PARAMETERS: p_num1 TYPE n LENGTH 7,
            p_num2 TYPE n LENGTH 3.
SELECTION-SCREEN: END OF BLOCK t002 .