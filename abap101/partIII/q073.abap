* QUESTAO 73 - Write a program that contains a select-options for numeric values and print the result of
* multiplying each number within the range of 3.

REPORT zabap101_073 .

DATA v_number TYPE i.
SELECT-OPTIONS s_number FOR v_number NO-EXTENSION.

START-OF-SELECTION.
  DATA: v_result TYPE i,
        vl_it    TYPE i.

  vl_it = s_number-low .
  WHILE vl_it <> s_number-high.
    v_result = vl_it * 3 .
    WRITE: v_result .
    ADD 1 TO vl_it .
  ENDWHILE .