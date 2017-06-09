* QUESTAO 10 - Declare a structure containing all the fields mentioned in exercises 8 and 9. Check it using
* the ABAP Debugger

REPORT zabap101_010 .

TYPES: BEGIN OF tipo_voo,
         carrid    TYPE sflight-carrid,
         connid    TYPE sflight-connid,
         fldate    TYPE sflight-fldate,
         price     TYPE sflight-price,
         currency  TYPE sflight-currency,
         planetype TYPE sflight-planetype,
         seatsmax  TYPE sflight-seatsmax,
         seatsocc  TYPE sflight-seatsocc,
       END OF tipo_voo .

TYPES: BEGIN OF marcacao_voo ,
         carrid   TYPE sbook-carrid,
         connid   TYPE sbook-connid,
         fldate   TYPE sbook-fldate,
         bookid   TYPE sbook-bookid,
         customid TYPE sbook-customid,
       END OF marcacao_voo .

TYPES: BEGIN OF all_fields.
    INCLUDE TYPE tipo_voo.
    INCLUDE TYPE marcacao_voo AS b RENAMING WITH SUFFIX _book.
TYPES END OF all_fields .

START-OF-SELECTION .

  DATA: debug TYPE all_fields .