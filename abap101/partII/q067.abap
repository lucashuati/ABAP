* QUESTAO 67 - Write an executable program with two parameters which represents a base and exponent.
* Print the result of exponentiation. As both parameters are required for the operation they should be
* mandatory.

REPORT zabap101_067 .

START-OF-SELECTION .

  SELECTION-SCREEN: BEGIN OF BLOCK t001.
  PARAMETERS: p_base  TYPE i OBLIGATORY,
              p_exp TYPE i OBLIGATORY.
  SELECTION-SCREEN: END OF BLOCK t001 .
  
  DATA: result TYPE i .
  
  result = p_base ** p_exp .
  
  WRITE: / result .

