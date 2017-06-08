* QUESTAO 12 - Declare a table type with all components of the global structure SFLIGHT.

REPORT zabap101_12.

DATA: it_sflight TYPE TABLE OF sflight,
      wa_sflight TYPE sflight.

wa_sflight-carrid = 'AA' .
wa_sflight-connid = '0017' .
wa_sflight-fldate = '20131225' .
wa_sflight-price = '500.12' .

APPEND wa_sflight TO it_sflight .

wa_sflight-carrid = 'AA' .
wa_sflight-connid = '0018' .
wa_sflight-fldate = '20131225' .
wa_sflight-price = '250.12' .

APPEND wa_sflight TO it_sflight .