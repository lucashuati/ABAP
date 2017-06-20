REPORT ztr2017_01 .

DATA: it_bseg TYPE TABLE OF bseg,
      wa_bseg TYPE bseg.

SELECT *
  FROM bseg
  INTO TABLE it_bseg .

LOOP AT it_bseg INTO wa_bseg.
  WRITE: / wa_bseg-bukrs, wa_bseg-belnr, wa_bseg-KOART, wa_bseg-QSSKZ .
ENDLOOP .
 
