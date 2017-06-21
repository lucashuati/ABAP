  REPORT ztr2017_01 .

  TYPES: BEGIN OF tye_data,
           carrid TYPE sflight-carrid,
           connid TYPE sflight-connid,
           price  TYPE sflight-price,
         END OF tye_data,
         tyt_data TYPE TABLE OF tye_data.
  DATA: it_data TYPE tyt_data.

  SELECT carrid
         connid
         SUM( price )
   FROM sflight
    INTO TABLE it_data
    GROUP BY carrid connid .

  SORT it_data BY carrid .

  PERFORM calculate_sales USING it_data .

  FORM calculate_sales
    USING itab TYPE tyt_data.

    DATA: wa TYPE tye_data .

    DATA: current TYPE string VALUE IS INITIAL .
    
    LOOP AT itab INTO wa .
      IF current <> wa-carrid .
        current = wa-carrid .
        WRITE: /(120) wa-carrid .
      ENDIF .
      WRITE: /(120) '', 15 wa-connid, 25 wa-price . 
    ENDLOOP .
  ENDFORM .
