* QUESTAO 53 - Write an executable program that has a routine that receives two numbers and returns the
* largest of them, If the numbers are equal return the number itself.

REPORT zabap_101_053.

DATA: r  TYPE i,
      r2 TYPE c.

FORM max
  USING p1 TYPE i
        p2 TYPE i
  CHANGING r TYPE i.
  r = p2 .

  IF p1 > p2.
    r = p1 .
  ENDIF  .

ENDFORM .

START-OF-SELECTION .
  PERFORM max USING 2 2 CHANGING r .