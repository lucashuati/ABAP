* QUESTAO 27 - Declare an internal table with fields of the table SBOOK CARRID, CONNID, FLDATE,
* BOOKID, CUSTOMID.

REPORT zabap101_027 .

TYPES: BEGIN OF ty_sbook,
         carrid   TYPE sbook-carrid,
         connid   TYPE sbook-connid,
         fldate   TYPE sbook-fldate,
         bookid   TYPE sbook-bookid,
         customid TYPE sbook-customid,
       END OF ty_sbook .

TYPES: ty_it_sbook TYPE TABLE OF ty_sbook WITH KEY carrid .

DATA: it_sbook TYPE TABLE OF ty_it_sbook.