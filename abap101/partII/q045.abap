* QUESTAO 45 - Write an executable program that concatenates two words and the current month, separating
* each part by a "-" and write the result.

REPORT zabap101_045 .

DATA: v_res TYPE string,
      mes   TYPE c LENGTH 2.

mes = sy-datum+4(2).
CONCATENATE '07' mes '2017' INTO v_res SEPARATED BY '-' .
WRITE: / v_res.