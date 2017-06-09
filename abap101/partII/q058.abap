* QUESTAO 58 - Write an executable program that receives a work area with at least 4
* components. All components can only be declared using numeric and different primitive types. Your
* routine should sum the values from all components and print the result

REPORT zabap101_058 .

CONSTANTS: BEGIN OF c_wa_int5,
             first  TYPE i VALUE 1,
             second TYPE n VALUE '2',
             third  TYPE p LENGTH 4 DECIMALS 2 VALUE '4.22',
             fourth TYPE string VALUE 'TESTE',
             fifth  TYPE c LENGTH 5 VALUE 'teste',
           END OF c_wa_int5 .

FORM sum_num USING wa LIKE c_wa_int5 .
  DATA: restssr TYPE f.
  restssr = c_wa_int5-first + c_wa_int5-second + c_wa_int5-third .
  WRITE: restssr .
ENDFORM .

START-OF-SELECTION .
  PERFORM sum_num USING c_wa_int5 .