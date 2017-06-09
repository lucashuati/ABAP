* QUESTAO 51 - Write an executable program that contains a routine which prints all usernames in the system

REPORT zabap101_051 .

PERFORM print_users.

FORM print_users .
  DATA: it_usr04 TYPE TABLE OF usr04,
        wa_usr04 TYPE usr04.

  SELECT bname
    FROM usr04
    INTO wa_usr04-bname.

    WRITE: / wa_usr04-bname .
  ENDSELECT .
ENDFORM .