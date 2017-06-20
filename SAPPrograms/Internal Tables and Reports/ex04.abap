4.	REPORT ztr2017_01 .

TYPES: BEGIN OF tye_data,
         mtart TYPE mara-mtart,
         matnr TYPE mara-matnr,
         meins TYPE mara-meins,
         brgew TYPE mara-brgew,
       END OF tye_data .

DATA: it_data TYPE TABLE OF tye_data,
      wa_data TYPE tye_data.

SELECT-OPTIONS p_mtart FOR wa_data-mtart NO INTERVALS .

SELECT mtart
       matnr
       meins
       brgew
  FROM mara
  INTO TABLE it_data
  WHERE mtart in p_mtart 
  GROUP BY mtart matnr meins brgew .

SORT it_data BY mtart brgew DESCENDING .
DATA: last    TYPE string,
      counter TYPE i.

LOOP AT it_data INTO wa_data .
  IF wa_data-mtart <> last .
    counter = 0 .
    last = wa_data-mtart .
  ENDIF .
  IF counter < 5 .
    WRITE: / wa_data-mtart, wa_data-matnr, wa_data-meins , wa_data-brgew .
    counter = counter + 1 .
  ENDIF .
ENDLOOP .
