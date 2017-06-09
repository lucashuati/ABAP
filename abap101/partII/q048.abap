* QUESTAO 48 - Write an executable program that counts how many vowels are in the name of the user
* running the program and print the result

REPORT zabap101_048 .

DATA: v_user         TYPE sy-uname,
      v_vowels_count TYPE i.
v_user = sy-uname .

FIND ALL OCCURRENCES OF REGEX 'A|E|I|O|U' IN v_user MATCH COUNT v_vowels_count.
WRITE: / v_vowels_count .