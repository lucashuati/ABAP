REPORT ztr2017_01 .

DATA: it_bkpf TYPE TABLE OF bkpf,
      wa_bkpf TYPE bkpf.

SELECT *
  FROM bkpf
  INTO TABLE it_bkpf .

LOOP AT it_bkpf INTO wa_bkpf.
  WRITE: / wa_bkpf-bukrs, wa_bkpf-belnr, wa_bkpf-blart, wa_bkpf-budat .
ENDLOOP .
