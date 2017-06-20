REPORT ztr2017_01 .

  TYPES: BEGIN OF tye_data,
           matnr TYPE mara-matnr, " Material Number
           maktx TYPE makt-maktx, " Description
           werks TYPE marc-werks, " Plant
           lgort TYPE mard-lgort, " Storage Location
           labst TYPE mard-labst, " Stock
         END OF tye_data.

  DATA: it_data TYPE TABLE OF tye_data WITH HEADER LINE,
        it_matn TYPE TABLE OF mara-matnr WITH HEADER LINE.

  SELECT DISTINCT matnr
    FROM mara
    INTO TABLE it_matn .

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

  DATA: sub_total TYPE p,
        total     TYPE p,
        last      TYPE string VALUE IS INITIAL.
  LOOP AT it_data.
    IF it_data-lgort <> last .
      IF last IS NOT INITIAL .
        WRITE: / .
      ENDIF .
      last = it_data-lgort .
      WRITE: /(120) 'Material No.', 15 'Description' .
      WRITE: /(120) it_data-matnr, 15 it_data-maktx .
      WRITE: /(120) 'Plant',15 'Storage Loc.',30 'Unrestricted stock' .
    ENDIF .
    WRITE: /(120) it_data-werks,15 it_data-lgort, 31 it_data-labst .
  ENDLOOP . 
