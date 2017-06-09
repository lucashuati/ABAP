* QUESTAO 62 - Write an executable program which has a routine that receives an internal table and prints
* how many fields are blank by line (the type of table must have at least 4 fields). Output must be
* generated as:
*
* Line [line number] => [number of blank fields] + " blank fields"
* Total: [total number of blank fields]

REPORT zabap101_062 .

TYPES: BEGIN OF tye_line ,
         id            TYPE i,
         name          TYPE string,
         value         TYPE f,
         creation_date TYPE d,
       END OF tye_line ,
       tye_table TYPE STANDARD TABLE OF tye_line.


FORM count_blank_fields
  USING itab TYPE tye_table .

  DATA: wa         TYPE tye_line,
        vli_caux   TYPE i,
        vli_ctotal TYPE i,
        vli_index  TYPE i.


  LOOP AT itab INTO wa .
    CLEAR vli_caux .
    IF wa-id IS INITIAL.
      ADD 1 TO vli_caux .
    ENDIF .
    IF wa-name IS INITIAL.
      ADD 1 TO vli_caux .
    ENDIF .
    IF wa-value IS INITIAL.
      ADD 1 TO vli_caux .
    ENDIF .
    IF wa-creation_date IS INITIAL.
      ADD 1 TO vli_caux .
    ENDIF .

    ADD vli_caux TO vli_ctotal .
    vli_index = sy-tabix .
    WRITE: / 'LINE', vli_index, '=>', vli_caux, 'blank fields.' .
  ENDLOOP .
  WRITE: / 'Total:', vli_ctotal.

ENDFORM .

START-OF-SELECTION.

  DATA: wa   TYPE tye_line,
        itab TYPE tye_table.

  wa-id = '1'.
  wa-name = 'John'.
  wa-value = 50.
  wa-creation_date = '20140727'.
  APPEND wa TO itab .

  PERFORM count_blank_fields USING itab.

  CLEAR wa .
  wa-id = '2'.
  wa-name = 'Mary'.
  wa-value = 20.
  APPEND wa TO itab .

  CLEAR wa .
  wa-id = '3'.
  wa-name = 'Max'.
  APPEND wa TO itab .

  CLEAR wa .
  wa-id = '4'.
  APPEND wa TO itab .

  PERFORM count_blank_fields USING itab.