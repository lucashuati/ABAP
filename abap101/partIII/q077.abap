* QUESTAO 77 - Write a program that declare a parameter as a listbox containing all Airline codes com table SCARR.

REPORT zabap101_077 .

TABLES scarr .

PARAMETERS s_fli TYPE scarr-carrid AS LISTBOX VISIBLE LENGTH 20.
