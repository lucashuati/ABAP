* QUESTAO 49 - Write an executable program that counts a string length and if it's bigger than 20 characteres,
* write 'Too big'. If not, write the string length.

REPORT zabap101_049 .

DATA: v_string     TYPE string VALUE 'asqwasqwasqascxasvds',
      v_string_len TYPE i.

v_string_len = strlen( v_string ) .

IF v_string_len > 20 .
  WRITE: / 'Too Big' .
ELSE .
  WRITE: / v_string_len .
ENDIF.