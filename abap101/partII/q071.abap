* QUESTAO 71 - Have a routine that receives an internal table (with at least three columns) and a string with
* the name of a column. Sort the table by the specified column accordingly

REPORT zabap101_071 .


TYPES: BEGIN OF ty_line,
         c1 TYPE i,
         c2 TYPE i,
         c3 TYPE i,
       END OF ty_line,
       ty_table TYPE TABLE OF ty_line . 
       
DATA: it_t1 TYPE ty_table,
      wa    TYPE ty_line, 
      str TYPE string VALUE 'c3'.

START-OF-SELECTION .
  " ADD RECORDs TO it_t1
  wa-c1 = 3 .
  wa-c2 = 5.
  wa-c3 = 18 .

  APPEND wa TO it_t1 .
  wa-c1 = 4 .
  wa-c2 = 5.
  wa-c3 = 52 .

  APPEND wa TO it_t1 .
  wa-c1 = 5 .
  wa-c2 = 5.
  wa-c3 = 11 .

  APPEND wa TO it_t1 .
  wa-c1 = 1 .
  wa-c2 = 5.
  wa-c3 = 10 .

  APPEND wa TO it_t1 .
  wa-c1 = 2 .
  wa-c2 = 5.
  wa-c3 = 199 .

  APPEND wa TO it_t1 .
  SORT it_t1 BY (str).

  LOOP AT it_t1 INTO wa .
    WRITE: / wa-c1, wa-c2, wa-c3 .
  ENDLOOP .