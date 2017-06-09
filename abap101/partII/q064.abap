* QUESTAO 64 - Write an executable program which has a routine that receives a standard internal table. The
* line type used in the internal table declaration must contain at least three components any text type.
* The routine should replace all occurrences of "space" by a "_" (underscore) using field symbols
* (and not work areas). Print the table contents before and after calling the routine. The internal table
* must be populated with at least 10 records and contemplating some fields that have "space" in all
* field values, other records containing spaces in just a few fields and other records without spaces at
* all.


REPORT zabap101_064 .

TYPES: BEGIN OF ty_line,
         c1 TYPE string,
         c2 TYPE c LENGTH 10,
         c3 TYPE c LENGTH 15,
       END OF ty_line,
       ty_table TYPE STANDARD TABLE OF ty_line.

DATA: itab TYPE ty_table.


FORM add_table
  USING u1 TYPE string
        u2 TYPE c
        u3 TYPE c .

  DATA: wa TYPE ty_line.

  wa-c1 = u1.
  wa-c2 = u2.
  wa-c3 = u3.

  APPEND wa TO itab.

ENDFORM .


FORM print_table.

  DATA: wa TYPE ty_line.

  LOOP AT itab INTO wa .
    WRITE: / wa-c1 , '|',wa-c2 , '|',wa-c3.
  ENDLOOP .
  ULINE .

ENDFORM .

FORM replace_table.

  FIELD-SYMBOLS:
     <table> TYPE ty_line .

  LOOP AT itab ASSIGNING <table>  .
    REPLACE ALL OCCURRENCES OF ` ` IN <table>-c1 WITH '_'.
    REPLACE ALL OCCURRENCES OF ` ` IN <table>-c2 WITH '_'.
    REPLACE ALL OCCURRENCES OF ` ` IN <table>-c3 WITH '_'.

    MODIFY itab FROM <table> .
  ENDLOOP .

ENDFORM .

START-OF-SELECTION .
  PERFORM add_table USING 'teste 1' 'teste 1' 'teste 1' .
  PERFORM add_table USING 'teste 2' 'teste 2' 'teste 2' .
  PERFORM add_table USING 'teste 3' 'teste 3' 'teste 3' .
  PERFORM add_table USING 'teste 4' 'teste 4' 'teste 4' .
  PERFORM add_table USING 'teste 5' 'teste 5' 'teste 5' .

  PERFORM print_table .

  PERFORM replace_table .

  PERFORM print_table .