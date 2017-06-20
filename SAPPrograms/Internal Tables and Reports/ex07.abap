7.	REPORT ztr2017_01 .

TYPES: BEGIN OF tye_data,
         lifnr LIKE lfa1-lifnr,
         bukrs LIKE lfb1-bukrs,
         ekorg LIKE lfm1-ekorg,
       END OF tye_data .

DATA: it_data  TYPE TABLE OF tye_data WITH KEY lifnr WITH HEADER LINE,
      wa_data  TYPE tye_data,
      char_aux TYPE c LENGTH 10.

char_aux = '45' .
PERFORM preenche_zero CHANGING char_aux .

SELECT a~lifnr
       b~bukrs
       m~ekorg
  FROM lfa1 AS a
  JOIN lfb1 AS b
  ON a~lifnr = b~lifnr
  JOIN lfm1 AS m
  ON m~lifnr = b~lifnr
  INTO TABLE it_data.

SORT it_data BY lifnr .

READ TABLE it_data[] INTO it_data WITH TABLE KEY lifnr = char_aux .
it_data-bukrs = 'Trainee' .
MODIFY TABLE it_data[] FROM it_data.
CLEAR it_data .

DO 3 TIMES .
  DELETE it_data INDEX 1 .
ENDDO .

LOOP AT it_data .
  WRITE: / it_data-bukrs, it_data-ekorg, it_data-lifnr .
ENDLOOP .



FORM preenche_zero
  CHANGING num TYPE c.

  DATA: len  TYPE i,
        diff TYPE i.

  len = strlen( num ) .
  diff = 10 - len .

  DO diff TIMES .
    CONCATENATE '0' num INTO num .
  ENDDO .

ENDFORM .  
