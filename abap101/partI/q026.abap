* QUESTAO 26 - Declare a structure with all fields of the table SBOOK and the field TELEPHONE from
* SCUSTOM table.

REPORT zabap101_026 .

DATA: struct_sbook TYPE sbook .

DATA: BEGIN OF struct_sflight_plus .
    INCLUDE STRUCTURE struct_sbook .
DATA telefone TYPE scustom-telephone .
DATA END OF struct_sflight_plus.