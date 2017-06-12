* QUESTAO 68 - Write an executable program with two parameters (a string and a number) The number
* should be accepted only if it's less or equal to 25. The program should print the string as many times
* as the value of the numeric parameter. The output should be as following
* String = "ABAPers are not crazy people." Number = 21.
*
* Line [1]: A
* Line [2]: AB
* Line [3]: ABA
* Line [4]: ABAP
* Line [5]: ABAPe
* (...)
* Line [21]: ABAPers are not crazy

REPORT zabap101_068 .

START-OF-SELECTION .

  SELECTION-SCREEN: BEGIN OF BLOCK t001.
  PARAMETERS: p_string  TYPE string OBLIGATORY,
              p_num TYPE i OBLIGATORY.
  SELECTION-SCREEN: END OF BLOCK t001 .

  AT SELECTION-SCREEN ON p_num .
    IF p_num > 25 .
      MESSAGE 'P_NUM should be less or equal 25' TYPE 'E' .
    ELSEIF p_num > strlen( p_string ) .
      MESSAGE 'P_NUM should be less than P_STRING length' TYPE 'E' .
    ENDIF .

  START-OF-SELECTION .
    DO p_num TIMES .
      WRITE: `Line[`, sy-index, `]: `, p_string(sy-index) .
      NEW-LINE .
    ENDDO .