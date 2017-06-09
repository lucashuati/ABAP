* QUESTAO 13 - Declare a table type using the structure type created in exercise 8.

REPORT zabap101_013.

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

TYPES: ty_it_tipo_voo TYPE TABLE OF tipo_voo WITH KEY carrid connid fldate