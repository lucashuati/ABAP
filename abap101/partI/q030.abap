* QUESTAO 30 - Declare an internal table with all table fields from SCARR and the field TELEPHONE
* from table SCUSTOM.

REPORT zabap101_030.

TYPES: BEGIN OF ty_scarr_plus .
    INCLUDE TYPE scarr .
TYPES telefone TYPE scustom-telephone .
TYPES END OF ty_scarr_plus.

TYPES: ty_itab_scarr_plus TYPE SORTED TABLE OF ty_scarr_plus WITH UNIQUE KEY carrid.

DATA: it_scarr_plus TYPE ty_itab_scarr_plus .
