* QUESTAO 54 - Write an executable program that has a routine that receives two numbers and return a flag
* (character with length 1). If the numbers are equal, set the flag with 'X. Otherwise set the flag to
* space.

REPORT zabap101_054 .

FORM equals
  USING p1 TYPE i
        p2 TYPE i
  CHANGING r TYPE c.
  r = space .
  IF p1 = p2 .
    r = 'X'.
  ENDIF.
ENDFORM.

START-OF-SELECTION .
  DATA: r2 TYPE c .

  PERFORM equals USING 4 4 CHANGING r2 .