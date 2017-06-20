8.	  REPORT ztr2017_01 .

  TYPES: BEGIN OF tye_rakt,
           matnr TYPE mara-matnr, " Material Number
           maktx TYPE makt-maktx, " Description
         END OF tye_rakt ,
         BEGIN OF tye_rdrc,
           werks TYPE marc-werks, " Plant
           lgort TYPE mard-lgort, " Storage Location
           labst TYPE mard-labst, " Stock
           matnr TYPE mara-matnr, " Material Number
         END OF tye_rdrc.

  TYPES: BEGIN OF tye_data,
           matnr TYPE mara-matnr, " Material Number
           maktx TYPE makt-maktx, " Description
           werks TYPE marc-werks, " Plant
           lgort TYPE mard-lgort, " Storage Location
           labst TYPE mard-labst, " Stock
         END OF tye_data.

  DATA: it_data TYPE TABLE OF tye_data WITH HEADER LINE,
        it_rakt TYPE TABLE OF tye_rakt WITH HEADER LINE,
        it_rdrc TYPE TABLE OF tye_rdrc WITH HEADER LINE,
        wa_data TYPE tye_data.

  SELECT ra~matnr
         kt~maktx
    FROM mara AS ra
    JOIN makt AS kt
    ON ra~matnr = kt~matnr
    INTO TABLE it_rakt
    GROUP BY ra~matnr kt~maktx.

  SELECT rc~werks
         rd~lgort
         rd~labst
         rc~matnr
  FROM mard AS rd
  JOIN marc AS rc
  ON rc~matnr = rd~matnr
    INTO TABLE it_rdrc
  GROUP BY rc~werks rd~lgort rd~labst rc~matnr.

  DATA: v_lrdrc TYPE i,
        v_lrakt TYPE i.

  DESCRIBE TABLE it_rdrc LINES v_lrdrc .
  DESCRIBE TABLE it_rakt LINES v_lrakt .

  WRITE: / v_lrdrc, v_lrakt .
  DATA: t1   TYPE i,
        t2   TYPE i,
        diff TYPE i.
  WRITE: /(120)  'Plant',15 'Storage Location',36 'Material Number',55 'Description', 104 'Stock' .
  GET RUN TIME FIELD t1 .
  SELECT ra~matnr
         kt~maktx
         rc~werks
         rd~lgort
         rd~labst
    FROM mara AS ra
    JOIN marc AS rc
    ON ra~matnr = rc~matnr
    JOIN mard AS rd
    ON rc~matnr = rd~matnr
    JOIN makt AS kt
    ON rc~matnr = kt~matnr
    INTO TABLE it_data.
  GET RUN TIME FIELD t2 .

  SORT it_data BY lgort .
  diff = ( t2 - t1 ) / 1000000 .

  DATA: sub_total TYPE p,
        total     TYPE p,
        last      TYPE string.
  LOOP AT it_data.
    IF last IS INITIAL .
      last = it_data-lgort .
    ELSEIF it_data-lgort <> last .
      last = it_data-lgort .
      WRITE: / 'Sub Total: ', sub_total .
      sub_total = 0.
    ENDIF .
    sub_total = sub_total + it_data-labst .
    total = total + it_data-labst .
    WRITE: /(120) it_data-werks,15 it_data-lgort,36 it_data-matnr, 55 it_data-maktx, 100 it_data-labst .
  ENDLOOP .

  WRITE:  / 'Total: ', total .  
