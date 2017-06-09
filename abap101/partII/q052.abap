* QUESTAO 52 - For this exercise, you should Read the help from command FORM completely. Then, write
* an executable program that has a routine that receives four global variables and change their value.
* Each variable will be received in a different way: 2 of them using the addition USING and the other
* 2 using the addition CHANGING from the FORM command. For each pair use and omit the adding
* VALUE. Print the contents of all global variables before the routine is called, at the beginning of the
* routine, at the end of the routine (after all values are changed) and after the PERFORM statement.
* See how the contents of variables behave using the debugger.

REPORT zabap101_052 .

DATA: v1 TYPE i VALUE 1,
      v2 TYPE i VALUE 2,
      v3 TYPE i VALUE 3,
      v4 TYPE i VALUE 4.

FORM passing_parameters
  USING p1 TYPE i
        VALUE(p2) TYPE i
  CHANGING p3 TYPE i
        VALUE(p4) TYPE i  .

  ADD 10 TO p1 .
  ADD 10 TO p2 .
  ADD 10 TO p3 .
  ADD 10 TO p4 .

ENDFORM .

START-OF-SELECTION .

  PERFORM passing_parameters USING v1 v2 CHANGING v3 v4 .