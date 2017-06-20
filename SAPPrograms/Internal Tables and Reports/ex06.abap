6.	REPORT ztr2017_01 .

TYPES: BEGIN OF tye_data,
         carrid TYPE sflight-carrid,
         connid TYPE sflight-connid,
         fldate TYPE sflight-fldate,
         price  TYPE sflight-price,
       END OF tye_data .

DATA: it_data TYPE TABLE OF tye_data,
      wa_data TYPE tye_data.

SELECT carrid
       connid
       fldate
       price
  FROM sflight
  INTO TABLE it_data
  GROUP BY carrid connid fldate price.

DELETE it_data WHERE carrid <> 'LH' .

LOOP AT it_data INTO wa_data .
  IF wa_data-connid = '0400' .
    wa_data-price = wa_data-price * 3 .
  ENDIF .
  MODIFY it_data FROM wa_data . 
ENDLOOP .

LOOP AT it_data INTO wa_data .
  WRITE: / wa_data-carrid, wa_data-connid, wa_data-fldate, wa_data-price  .
ENDLOOP . 
