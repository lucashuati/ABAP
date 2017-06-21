  REPORT ztr2017_01 .
  DATA: sum_all TYPE i .
  
  PERFORM sum_all_numbers USING 11 4 CHANGING sum_all .
  
  WRITE: / sum_all .
  
  FORM sum_all_numbers
    USING    limit TYPE i
             digit TYPE i
    CHANGING sum   TYPE i.

    DATA: times TYPE i,
          resto TYPE i,
          aux   TYPE i.
    times = floor(  limit / '10.0' ).
    resto = limit MOD 10 .

    DO times TIMES .
      aux = ( ( sy-index - 1 ) * 10  ) + digit .
      sum = sum + aux .
    ENDDO .

    IF resto >= digit .
      aux = ( 10 * times ) + digit .
      sum = sum + ( 10 * times ) + digit .
    ENDIF .

  ENDFORM .
