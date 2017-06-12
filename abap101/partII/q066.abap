* QUESTAO 66 - Write an executable program with two parameters types as integers. The first represents a
* number to be printed and the second represents the length of the number to be printed. Place zeros
* to the left if necessary. Example:
*  • p_number = 15 p_length = 2. Output = 15
*  • p_number = 15 p_length = 6. Output = 000015
*  • p_number = 2014 p_length = 2. Output = 20
*  • p_number = 123456789 p_length = 10. Output = 0123456789
*  • p_number = 123456789 p_length = 4. Output = 1234


REPORT zabap101_066 .

START-OF-SELECTION .

  SELECTION-SCREEN: BEGIN OF BLOCK t001.
  PARAMETERS: p_print  TYPE i,
              p_length TYPE i.
  SELECTION-SCREEN: END OF BLOCK t001 .

  DATA: vls_cast  TYPE string,
        num_times TYPE i.
  vls_cast = p_print .
  
  CONDENSE vls_cast NO-GAPS. "Remove a trash space


  IF strlen( vls_cast ) >= p_length.
    WRITE: / vls_cast(p_length).
  ELSE.
    num_times = p_length - strlen( vls_cast ).
    DO  num_times TIMES .
    CONCATENATE '0' vls_cast INTO vls_cast .
  ENDDO .
  WRITE: / vls_cast .
ENDIF.