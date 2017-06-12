* QUESTAO 70 - Have a routine that receives an internal table (with at least three columns) and the sort it by
* its first column.

REPORT zabap101_070 .

TYPES: BEGIN OF ty_line,
         c1 TYPE i,
         c2 TYPE i,
         c3 TYPE i,
       END OF ty_line,
       ty_table TYPE TABLE OF ty_line WITH KEY c1. " Define a c1 as key for SORT

DATA: it_t1 TYPE ty_table,
      wa    TYPE ty_line.

START-OF-SELECTION .
  " ADD RECORDs TO it_t1
  wa-c1 = 3 .
  wa-c2 = 5.
  wa-c3 = 18 .

  APPEND wa TO it_t1 .
  wa-c1 = 4 .
  wa-c2 = 5.
  wa-c3 = 18 .

  APPEND wa TO it_t1 .
  wa-c1 = 5 .
  wa-c2 = 5.
  wa-c3 = 18 .

  APPEND wa TO it_t1 .
  wa-c1 = 1 .
  wa-c2 = 5.
  wa-c3 = 18 .

  APPEND wa TO it_t1 .
  wa-c1 = 2 .
  wa-c2 = 5.
  wa-c3 = 18 .

  APPEND wa TO it_t1 .
  SORT it_t1.
 
  LOOP AT it_t1 INTO wa .
    WRITE: / wa-c1, wa-c2, wa-c3 .
  ENDLOOP .
 