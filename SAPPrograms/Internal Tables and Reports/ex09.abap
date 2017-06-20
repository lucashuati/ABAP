9.	  REPORT ztr2017_01 .

  TYPES: BEGIN OF tye_data,
           name1 TYPE lfa1-name1,
           lifnr TYPE lfa1-lifnr,
           ort01 TYPE lfa1-ort01,
           telf1 TYPE lfa1-telf1,
           telfx TYPE lfa1-telfx,
           burks TYPE lfb1-bukrs,
           zwels TYPE lfb1-zwels,
         END OF tye_data .
  DATA: it_data TYPE TABLE OF tye_data,
        wa_data TYPE tye_data.


  SELECT a~name1 a~lifnr a~ort01 a~telf1 a~telfx b~bukrs b~zwels
    FROM lfa1 AS a
    JOIN lfb1 AS b
    ON a~lifnr = b~lifnr
    INTO TABLE it_data .

  LOOP AT it_data INTO wa_data .
    PERFORM create_listing USING sy-tabix wa_data-name1 wa_data-lifnr wa_data-ort01 wa_data-telf1 wa_data-telfx wa_data-zwels wa_data-burks .
  ENDLOOP .

  FORM create_listing
    USING index   TYPE i
          name    TYPE lfa1-name1
          vnum    TYPE lfa1-lifnr
          address TYPE lfa1-ort01
          tel     TYPE lfa1-telf1
          fax     TYPE lfa1-telfx
          terms   TYPE lfb1-zwels
          cmp     TYPE lfb1-bukrs .
    
    WRITE: /(120) 'Report title: Vendor Master Listing',40 index .
    WRITE: /(120) 'Vendor Name:',17 name,60 'Vendor no.:',76 vnum .
    WRITE: /(120) 'Address:', 13 address .
    WRITE: /(120) 'Telephone no.:', 20 tel, 60 'Fax no.:', 73  .
    WRITE: /(120) 'Company code:',18 cmp, 60 'Terms of payments:', 83 terms  .
    WRITE: / .

  ENDFORM .
