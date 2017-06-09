* QUESTAO 46 - Write an executable program that reads the current system date and write it in your language
* in text format.

REPORT zabap101_046 .

DATA: mes_extenso TYPE string,
      ano         TYPE string,
      dia         TYPE string,
      v_res       TYPE string.


CASE mes_extenso.
  WHEN 1.
    mes_extenso = 'Janeiro' .
  WHEN 2.
    mes_extenso = 'Fevereiro' .
  WHEN 3.
    mes_extenso = 'Março' .
  WHEN 4.
    mes_extenso = 'Abril' .
  WHEN 5.
    mes_extenso = 'Maio' .
  WHEN 6.
    mes_extenso = 'Junho' .
  WHEN 7.
    mes_extenso = 'Julho' .
  WHEN 8.
    mes_extenso = 'Agosto' .
  WHEN 9.
    mes_extenso = 'Setembro' .
  WHEN 10.
    mes_extenso = 'Outubro' .
  WHEN 11.
    mes_extenso = 'Novembro' .
  WHEN 12.
    mes_extenso = 'Dezembro' .
ENDCASE.


CONCATENATE sy-datum+6(2)`, ` space  mes_extenso ` de ` sy-datum(4) INTO v_res.
WRITE: / v_res .