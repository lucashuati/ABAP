3.	REPORT ztr2017_01 .

TYPES: BEGIN OF tye_data,
         vbeln TYPE vbap-vbeln,
         matwa TYPE vbap-matwa,
         matrn TYPE vbap-matnr,
         erdat TYPE vbak-erdat,
         ernam TYPE vbak-ernam,
         auart TYPE vbak-auart,
         konda TYPE vbkd-konda,
         kdgrp TYPE vbkd-kdgrp,
       END OF tye_data .

DATA: it_data TYPE TABLE OF tye_data,
      wa_data TYPE tye_data,
      it_aux  TYPE TABLE OF tye_data.

SELECT   vbap~vbeln
         vbap~matwa
         vbap~matnr
         vbak~erdat
         vbak~ernam
         vbak~auart
         vbkd~konda
         vbkd~kdgrp
  FROM vbap AS vbap
  JOIN vbak AS vbak
  ON vbak~vbeln = vbap~vbeln
  JOIN vbkd AS vbkd
  ON vbkd~vbeln = vbap~vbeln
  INTO TABLE it_data.
SORT it_data BY matrn.
LOOP AT it_data INTO wa_data .
  WRITE: / wa_data-vbeln, wa_data-matwa, wa_data-matrn, wa_data-erdat, wa_data-ernam, wa_data-auart, wa_data-konda, wa_data-kdgrp .
ENDLOOP .
