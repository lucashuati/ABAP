* QUESTAO 72 - Have a routine that receives an internal table (with at least three fields) and another internal
* table with the name of the columns to be ordered and order accordingly.

REPORT zabap101_072 .

TYPES: BEGIN OF ty_line,
         c1 TYPE i,
         c2 TYPE i,
         c3 TYPE i,
       END OF ty_line,
       ty_table      TYPE TABLE OF ty_line,
       ty_table_sort TYPE TABLE OF string.

DATA: it_t1   TYPE ty_table,
      it_sort TYPE ty_table_sort WITH HEADER LINE,
      wa      TYPE ty_line.

FORM sort_table
    USING
      it_s TYPE ty_table_sort
    CHANGING
      it_t TYPE ty_table.

  DATA: cmp1 TYPE string,
        cmp2 TYPE string,
        cmp3 TYPE string.

  READ TABLE it_s INDEX 1 INTO cmp1 .
  READ TABLE it_s INDEX 2 INTO cmp2 .
  READ TABLE it_s INDEX 3 INTO cmp3 .

  SORT it_t BY (cmp1) (cmp2) (cmp3) .

ENDFORM .

START-OF-SELECTION .

  " ADD RECORDs TO it_t1
  wa-c1 = 3 .
  wa-c2 = 5.
  wa-c3 = 18 .

  APPEND wa TO it_t1 .
  wa-c1 = 4 .
  wa-c2 = 5 .
  wa-c3 = 52 .

  APPEND wa TO it_t1 .
  wa-c1 = 5 .
  wa-c2 = 5 .
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

  it_sort = 'c3' .
  APPEND it_sort .
  it_sort = 'c1' .
  APPEND it_sort .
  it_sort = 'c2' .
  APPEND it_sort .

  PERFORM sort_table USING it_sort[] CHANGING it_t1 .

  LOOP AT it_t1 INTO wa .
    WRITE: / wa-c1, wa-c2, wa-c3 .
  ENDLOOP .