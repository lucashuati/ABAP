* QUESTAO 43 - Write an executable program that get two integers inside parameters and perform the
* addition, subtraction, multiplication, division and power between them.

REPORT zabap101_043 .

START-OF-SELECTION .

  SELECTION-SCREEN BEGIN OF BLOCK t001 .
  PARAMETERS: p_numa TYPE i,
              p_numb TYPE i.
  SELECTION-SCREEN END OF BLOCK t001 .

  DATA: result TYPE i .


  result = p_numa + p_numb .
  result = p_numa - p_numb .
  result = p_numa * p_numb .
  result = p_numa / p_numb .
  result = p_numa ** p_numb .