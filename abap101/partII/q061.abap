* QUESTAO 61 - Write an executable program which has a routine that receives an internal table and print how many
* fields are filled with their default value (the line type of the table must have at least 4 fields).
*
* Hint: each primitive type has a default value. For example, 0 (zero) is the default value of integers
*whereas space ( ' ' ) is the default value of characters.


REPORT zabap101_061.


TYPES: BEGIN OF ty_line,
         id            TYPE i,
         name          TYPE string,
         value         TYPE f,
         creation_date TYPE d,
       END OF ty_line .

TYPES: ty_table TYPE TABLE OF ty_line .



FORM itab_inital
  USING itab TYPE ty_table .

  DATA: wa      TYPE LINE OF ty_table,
        counter TYPE i.

  LOOP AT itab INTO wa .
    IF wa-id IS INITIAL.
      ADD 1 TO counter.
    ENDIF .

    IF wa-name IS INITIAL.
      ADD 1 TO counter.
    ENDIF .

    IF wa-value IS INITIAL.
      ADD 1 TO counter.
    ENDIF .

    IF wa-creation_date IS INITIAL.
      ADD 1 TO counter.
    ENDIF .

  ENDLOOP.

  WRITE: / counter .
ENDFORM.

START-OF-SELECTION.

  DATA: wa   TYPE ty_line,
        itab TYPE ty_table.

  wa-id = '1'.
  wa-name = 'John'.
  wa-value = 50.
  wa-creation_date = '20140727'.
  APPEND wa TO itab .

  PERFORM itab_inital USING itab. " 0

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

  PERFORM itab_inital USING itab. " 6