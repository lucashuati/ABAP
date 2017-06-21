  REPORT ztr2017_01 .
  DATA: extend  TYPE string.

  PERFORM extensive-number USING 99 CHANGING extend .
  
  WRITE: / extend .

  FORM extensive-number
    USING    number TYPE i
    CHANGING extend TYPE string .

    IF number = 0 .
      extend = 'Zero' .
    ELSEIF number = 10 .
      extend = 'Ten' .
    ELSEIF number = 11 .
      extend = 'Eleven' .
    ELSEIF number = 12 .
      extend = 'Twelve' .
    ELSEIF number = 13 .
      extend = 'Thirteen' .
    ELSEIF number = 14 .
      extend = 'Fourteen' .
    ELSEIF number = 15 .
      extend = 'Fivteen' .
    ELSEIF number = 16 .
      extend = 'Sixteen' .
    ELSEIF number = 17 .
      extend = 'Seventeen' .
    ELSEIF number = 18 .
      extend = 'Eighteen' .
    ELSEIF number = 19 .
      extend = 'Nineteen' .
    ELSE .
      DATA: n  TYPE i,
            nc TYPE i.
      n = floor( number / '10.0' ) .
      nc = number MOD 10 .
      CASE n .
        WHEN 2.
          extend = 'Twenty' .
        WHEN 3.
          extend = 'Thirty' .
        WHEN 4.
          extend = 'Fourty' .
        WHEN 5.
          extend = 'Fivty' .
        WHEN 6.
          extend = 'Sixty' .
        WHEN 7.
          extend = 'Seventy' .
        WHEN 8.
          extend = 'Eighty' .
        WHEN 9 .
          extend = 'Ninety' .
      ENDCASE .
      CASE nc .
        WHEN 1.
          CONCATENATE extend '-one' INTO extend .
        WHEN 2.
          CONCATENATE extend '-two' INTO extend .
        WHEN 3.
          CONCATENATE extend '-three' INTO extend .
        WHEN 4.
          CONCATENATE extend '-four' INTO extend .
        WHEN 5.
          CONCATENATE extend '-five' INTO extend .
        WHEN 6.
          CONCATENATE extend '-six' INTO extend .
        WHEN 7.
          CONCATENATE extend '-seven' INTO extend .
        WHEN 8.
          CONCATENATE extend '-eight' INTO extend .
        WHEN 9 .
          CONCATENATE extend '-nine' INTO extend .
      ENDCASE .
    ENDIF .

  ENDFORM .