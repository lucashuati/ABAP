* QUESTAO 25 - Declare a structure with fields of the table SFLIGHT carrid, CONNID, FLDATE, PRICE,
* CURRENCY, PLANETYPE, and SEATSMAX SEATSOCC.

REPORT zabap101_025 .

DATA: BEGIN OF struct_sflight,
        carrid    TYPE sflight-carrid,
        connid    TYPE sflight-connid,
        fldate    TYPE sflight-fldate,
        price     TYPE sflight-price,
        currency  TYPE sflight-currency,
        planetype TYPE sflight-planetype,
        seatsmax  TYPE sflight-seatsmax,
        seatsocc  TYPE sflight-seatsocc,
      END OF struct_sflight .