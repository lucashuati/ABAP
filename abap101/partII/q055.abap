* QUESTAO 55 - Write an executable program that has a routine that takes two numbers and writes the result
* of the operation [higher_number / lower_number] if the numbers are different. If they are equal,
* write the result of the operation [number ^ 2].

REPORT zabap101_055 .

FORM equals
  USING p1 TYPE i
        p2 TYPE i
  CHANGING r TYPE c.
  r = space .
  IF p1 = p2 .
    r = 'X'.
  ENDIF.
ENDFORM.

FORM max
  USING p1 TYPE i
        p2 TYPE i
  CHANGING r TYPE i.
  r = p2 .

  IF p1 > p2.
    r = p1 .
  ENDIF  .

ENDFORM .

FORM min
  USING p1 TYPE i
        p2 TYPE i
  CHANGING r TYPE i.
  r = p2 .

  IF p1 < p2.
    r = p1 .
  ENDIF  .

ENDFORM .

FORM division_or_power
  USING p1 TYPE i
        p2 TYPE i
  CHANGING p3 TYPE i .

  DATA: e       TYPE c LENGTH 1,
        larger  TYPE i,
        shorter TYPE i.

  PERFORM equals USING p1 p2 CHANGING e .

  IF e = 'X'.
    p3 = p1 * p2 .
  ELSE .
    PERFORM max USING p1 p2 CHANGING larger .
    PERFORM min USING p1 p2 CHANGING shorter .
    p3  = larger / shorter .
  ENDIF .

ENDFORM .

START-OF-SELECTION.
  DATA: r TYPE i .
  PERFORM division_or_power USING 4 16 CHANGING r .