* QUESTAO 50 - Write an executable program that counts from 1 to 100 and for each multiple of 8, write the
* message: "The number [number] is a multiple of 8 ".

REPORT zabap101_050 .

DATA: i TYPE i VALUE 1 .

DO 100 TIMES .
  IF i MOD 8 = 0.
*      WRITE: / 'The number', i, 'is a multiple of 8' .
  ENDIF.
  ADD 1 TO i .
ENDDO.