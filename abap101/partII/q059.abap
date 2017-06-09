* QUESTAO 59 - Write an executable program which has a routine that receives a work area with 3 char
* components and 3 numeric components. The routine should clear some component values
* according to the following rules:
*
* 1. Clear char components only if the sum of the numeric components is odd (ignoring possible
* decimal places)
* 2. Clear numeric components only if the sum of vowels in the three char components is even
* (ignoring lower/upper case)

REPORT zabap101_059 .

CONSTANTS: BEGIN OF c_wa_int,
             first  TYPE i VALUE 1,
             second TYPE i VALUE 2,
             third  TYPE i VALUE 3,
           END OF c_wa_int .
DATA: BEGIN OF wa_charint,
        c1 TYPE c LENGTH 15 VALUE 'akawqasweweweas',
        c2 TYPE c LENGTH 15 VALUE 'asjkdhsajhdjksa',
        c3 TYPE c LENGTH 15 VALUE 'sjhdjkshjdhsjkh',
        i1 TYPE i VALUE 3,
        i2 TYPE i VALUE 2,
        i3 TYPE i VALUE 17,
      END OF wa_charint.

FORM clear_wa
  CHANGING wa LIKE wa_charint .
  BREAK-POINT .
  DATA: sum_i   TYPE i,
        sum_v   TYPE i,
        sum_aux TYPE i.

  sum_i = wa-i1 + wa-i2 + wa-i3 .

  IF sum_i MOD 2 <> 0.
    CLEAR: wa-i1, wa-i2, wa-i3 .
  ENDIF .

  FIND ALL OCCURRENCES OF REGEX 'A|E|I|O|U|a|e|i|o|u' IN wa-c1 MATCH COUNT sum_aux .
  ADD sum_aux TO sum_v.
  FIND ALL OCCURRENCES OF REGEX 'A|E|I|O|U|a|e|i|o|u' IN wa-c2 MATCH COUNT sum_aux .
  ADD sum_aux TO sum_v.
  FIND ALL OCCURRENCES OF REGEX 'A|E|I|O|U|a|e|i|o|u' IN wa-c3 MATCH COUNT sum_aux .
  ADD sum_aux TO sum_v.

  IF sum_v MOD 2 = 0 .
    CLEAR: wa-c1,wa-c2,wa-c3.
  ENDIF .

ENDFORM .

START-OF-SELECTION .

  PERFORM clear_wa CHANGING wa_charint.

  BREAK-POINT .