* QUESTAO 6 - Declare a structure type with 5 fields, each field with the same types from exercises 1 to 5.

REPORT zabap101_06.

TYPES: BEGIN OF my_type,
         nome      TYPE c,
         idade     LIKE inteiro,
         matricula TYPE cnum,
         data      TYPE dat,
         hora      TYPE tempo,
       END OF my_type .