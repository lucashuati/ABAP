* QUESTAO 40 - Declare a variable which is used in another variable, type, work area, internal table and
* constant.

REPORT zabap101_040 .

DATA: vgc_char TYPE c LENGTH 50,
      BEGIN OF esg_reused,
        c1 TYPE c,
        c2 TYPE i,
        c3 TYPE f,
      END OF esg_reused .

DATA: vcg_reused LIKE vgc_char,
      wag_reused LIKE esg_reused,
      itg_reused LIKE TABLE OF esg_reused.


CONSTANTS: cgc_reused LIKE vgc_char VALUE 'teste' .

TYPES: tye_reused LIKE esg_reused .