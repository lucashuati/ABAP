* QUESTAO 69 - Write an executable program which has two internal tables, with a header line and the other
* without. Add five records in each table. In the case of the one with header line, use it embed work
* area. For the other one, use a work area declared explicitly. Print the contents of both internal tables.

REPORT zabap101_069 .

TYPES: BEGIN OF ty_line,
         c1 TYPE i,
         c2 TYPE i,
         c3 TYPE i,
       END OF ty_line,
       ty_table TYPE TABLE OF ty_line.

DATA: it_t1 TYPE ty_table,
      it_t2 TYPE ty_table WITH HEADER LINE,
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

  " ADD RECORDs TO it_t2

  it_t2-c1 = 1 .
  it_t2-c2 = 2 .
  it_t2-c3 = 3 .
  APPEND it_t2 .

  it_t2-c1 = 2 .
  it_t2-c2 = 2 .
  it_t2-c3 = 3 .
  APPEND it_t2 .

  it_t2-c1 = 3 .
  it_t2-c2 = 2 .
  it_t2-c3 = 3 .
  APPEND it_t2 .

  it_t2-c1 = 4 .
  it_t2-c2 = 2 .
  it_t2-c3 = 3 .
  APPEND it_t2 .

  it_t2-c1 = 5 .
  it_t2-c2 = 2 .
  it_t2-c3 = 3 .
  APPEND it_t2 .
  
  WRITE: / 'WITHOUT HEADER LINE ' .
  LOOP AT it_t1 INTO wa .
    WRITE: / wa-c1, wa-c2, wa-c3 .
  ENDLOOP .
  
  WRITE: / 'WITH HEADER LINE ' .
   LOOP AT it_t2 .
    WRITE: / it_t2-c1, it_t2-c2, it_t2-c3 .
  ENDLOOP .