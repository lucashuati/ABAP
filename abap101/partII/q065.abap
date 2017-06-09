* QUESTAO 65 - Write an executable program which has a routine that receives an internal table of strings
* and concatenates their values in four different ways:
*  1. Way 1: concatenate internal table texts by the line order
*  2. Way 2: concatenate internal table texts by the text ascending order
*  3. Way 3: concatenate internal table texts by the text descending order
*  4. Way 4: concatenate internal table texts by the line reverse order

REPORT zabap101_065 .

TYPES: ty_table TYPE STANDARD TABLE OF string.

DATA: itab TYPE ty_table.

FORM add_table
  USING u1 TYPE string.

  DATA: wa TYPE string.

  wa = u1.

  APPEND wa TO itab.

ENDFORM .

FORM concatenate_table
    USING type TYPE c.

  DATA: print_str  TYPE string,
        copy_table TYPE ty_table.

  FIELD-SYMBOLS:
     <table> TYPE string .


  copy_table = itab .

  IF type = '2' .
    SORT copy_table .
  ELSEIF type = '3' .
    SORT copy_table DESCENDING .
  ENDIF .

  IF type <> 4 .
    LOOP AT copy_table ASSIGNING <table>  .
      CONCATENATE print_str <table> INTO print_str .
    ENDLOOP .
  ELSE .
    DATA: c_line TYPE i .
    DESCRIBE TABLE copy_table LINES c_line .
    WHILE c_line > 0 .
      READ TABLE copy_table ASSIGNING <table> INDEX c_line .
      CONCATENATE print_str <table> INTO print_str .
      ADD -1 TO c_line .
    ENDWHILE .
  ENDIF .

  WRITE: / print_str .

ENDFORM .

START-OF-SELECTION .
  PERFORM add_table USING 'abc'.
  PERFORM add_table USING 'ghi'.
  PERFORM add_table USING 'uvw'.
  PERFORM add_table USING 'mno'.
  PERFORM add_table USING 'jkl'.
  PERFORM add_table USING 'rst'.
  PERFORM add_table USING 'def'.
  PERFORM add_table USING 'xyz'.
  PERFORM concatenate_table USING '1'.
  PERFORM concatenate_table USING '2'.
  PERFORM concatenate_table USING '3'.
  PERFORM concatenate_table USING '4'.