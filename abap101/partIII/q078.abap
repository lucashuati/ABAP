* QUESTAO 78 - Write a program that declare three parameters as checkboxes. Each of them will represent a
* different flight class (first, business and economy).


REPORT zabap101_078 .

PARAMETERS: p_first AS CHECKBOX,
            p_busin AS CHECKBOX,
            p_econo LIKE p_first AS CHECKBOX.