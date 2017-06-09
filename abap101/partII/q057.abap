* QUESTAO 57 - Write an executable program with a routine that receives a work area containing five
* different data types and count how many components are not filled. Finally, print result.

REPORT zabap101_057.

CONSTANTS: BEGIN OF c_wa_int5,
             first  TYPE i VALUE 1,
             second TYPE n VALUE '2',
             third  TYPE p LENGTH 4 DECIMALS 2 VALUE '4.22',
             fourth TYPE string VALUE 'TESTE',
             fifth  TYPE c LENGTH 5 VALUE 'teste',
           END OF c_wa_int5 .

FORM initial_counter USING wa LIKE c_wa_int5 .
  DATA: counter TYPE i VALUE 0.
  IF wa-first IS INITIAL .
    ADD 1 TO counter .
  ENDIF .
  IF wa-second IS INITIAL .
    ADD 1 TO counter .
  ENDIF .
  IF wa-third IS INITIAL .
    ADD 1 TO counter .
  ENDIF .
  IF wa-fourth IS INITIAL .
    ADD 1 TO counter .
  ENDIF .
  IF wa-fifth IS INITIAL .
    ADD 1 TO counter .
  ENDIF .

  WRITE: / counter .

ENDFORM .

START-OF-SELECTION .

  PERFORM initial_counter USING c_wa_int5.