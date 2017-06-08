* QUESTAO 9 - Declare a structure type with the following components of the global structure SBOOK:
* CARRID, CONNID, FLDATE, BOOKID, CUSTOMID.

REPORT zabap101_09 .

TYPES: BEGIN OF marcacao_voo ,
         carrid   TYPE sbook-carrid,
         connid   TYPE sbook-connid,
         fldate   TYPE sbook-fldate,
         bookid   TYPE sbook-bookid,
         customid TYPE sbook-customid,
       END OF marcacao_voo .