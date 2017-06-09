* QUESTAO 14 - Declare a table type with the following components of the table SBOOK: CARRID,
* CONNID, FLDATE, BOOKID, CUSTOMID but using CUSTOMID as part of the table key

REPORT zabap101_014 .

TYPES: BEGIN OF marcacao_voo ,
         carrid   TYPE sbook-carrid,
         connid   TYPE sbook-connid,
         fldate   TYPE sbook-fldate,
         bookid   TYPE sbook-bookid,
         customid TYPE sbook-customid,
       END OF marcacao_voo .

TYPES: ty_it_marcacao_voo TYPE TABLE OF marcacao_voo WITH KEY carrid connid fldate customid .