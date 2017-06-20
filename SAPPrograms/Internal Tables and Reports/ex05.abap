5.	REPORT ztr2017_01 .

TYPES: BEGIN OF tye_data,
         carrid   TYPE sflight-carrid,
         seatsmax TYPE sflight-seatsmax,
       END OF tye_data .

DATA: it_data TYPE TABLE OF tye_data,
      wa_data TYPE tye_data.

SELECT carrid
       SUM( seatsmax )
  FROM sflight
  INTO TABLE it_data
  GROUP BY carrid .
  
DATA: last    TYPE string,
      counter TYPE i.

LOOP AT it_data INTO wa_data .
  WRITE: / wa_data-carrid, wa_data-seatsmax .
ENDLOOP .
