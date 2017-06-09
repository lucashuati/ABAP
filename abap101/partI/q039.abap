* QUESTAO 39 - Declare a type which is used in another type, variable, work area,
* internal table and constant.

REPORT zabap101_039 .

TYPES: ty_reused TYPE i.

TYPES: BEGIN OF ty_reused_struct,
         campo1,
         campo2,
         campo3,
       END OF ty_reused_struct .

TYPES: new_type TYPE ty_reused .

DATA: var TYPE ty_reused,
      wa  TYPE ty_reused_struct,
      it  TYPE TABLE OF ty_reused_struct.

CONSTANTS c TYPE ty_reused VALUE 14.