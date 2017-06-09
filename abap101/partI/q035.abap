* QUESTAO 35 - Declare a work area of 5 constant components. All of them should have
* different primitive types.

REPORT zabap101_035.

CONSTANTS: BEGIN OF c_wa_int5,
             first  TYPE i VALUE 1,
             second TYPE n VALUE '2',
             third  TYPE p LENGTH 4 DECIMALS 2 VALUE '4.22',
             fourth TYPE string VALUE 'TESTE',
             fifth  TYPE c LENGTH 5 VALUE 'teste',
           END OF c_wa_int5 .