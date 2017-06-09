* QUESTAO 47 - Write an executable program that reads the current system time and write the time in 6
* different zones (3 of them should be compulsorily Greenwich, Delhi and Brasilia).

REPORT zabap101_047 .

DATA v_timezone1 TYPE tznzone VALUE 'GMTUK'. " Greenwich
DATA v_timezone2 TYPE tznzone VALUE 'INDIA'. " Delhi
DATA v_timezone3 TYPE tznzone VALUE 'BRAZIL'. " Brasilia
DATA v_timezone4 TYPE tznzone VALUE 'CST'.
DATA v_timezone5 TYPE tznzone VALUE 'ISRAEL'.
DATA v_timezone6 TYPE tznzone VALUE 'RUS06'.

DATA v_timestamp TYPE tzonref-tstamps.
DATA v_timestamp_string TYPE string.
DATA time1 TYPE sy-uzeit.

time1 = sy-uzeit + ( 3 * 60 * 60 ).
CONCATENATE sy-datum time1 INTO v_timestamp_string.

v_timestamp = v_timestamp_string.

WRITE:/ v_timestamp TIME ZONE v_timezone1.
WRITE:/ v_timestamp TIME ZONE v_timezone2.
WRITE:/ v_timestamp TIME ZONE v_timezone3.
WRITE:/ v_timestamp TIME ZONE v_timezone4.
WRITE:/ v_timestamp TIME ZONE v_timezone5.
WRITE:/ v_timestamp TIME ZONE v_timezone6.
