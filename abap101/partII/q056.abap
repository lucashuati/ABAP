* QUESTAO 56 - Write an executable program that does NOT have a routine. The program should include a
* work area with 5 fields of different types or more. Then, it must be populated and its fields should
* be printed one per line, separated by one horizontal line. After testing your program, change the
* output separating each field by two lines. During this process, refactor your code to include a
* routine which handle the separation between each line.

REPORT zabap101_056.

FORM separated_lines USING n TYPE i.
  DO n TIMES .
    ULINE .
  ENDDO .
ENDFORM .

START-OF-SELECTION .

  CONSTANTS: BEGIN OF c_wa_int5,
               first  TYPE i VALUE 1,
               second TYPE n VALUE '2',
               third  TYPE p LENGTH 4 DECIMALS 2 VALUE '4.22',
               fourth TYPE string VALUE 'TESTE',
               fifth  TYPE c LENGTH 5 VALUE 'teste',
             END OF c_wa_int5 .
  WRITE: / c_wa_int5-first .
  PERFORM separated_lines USING 2 .
  WRITE: / c_wa_int5-second .
  PERFORM separated_lines USING 2 .
  WRITE: / c_wa_int5-third .
  PERFORM separated_lines USING 2 .
  WRITE: / c_wa_int5-fourth .
  PERFORM separated_lines USING 2 .
  WRITE: / c_wa_int5-fifth .