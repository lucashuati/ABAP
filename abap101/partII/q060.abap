* Questao 60 - Write an executable program which contains three internal tables (their type must contain at
* least three components of different data types). Each table will have a different type (standard,
* sorted and hashed). Add 3 identical values in each table and view the contents of each table in the
* debugger.

REPORT zabap101_060 .

TYPES: BEGIN OF ty_table,
         field1 TYPE i,
         field2 TYPE c LENGTH 10,
         field3 TYPE f,
       END OF ty_table .

DATA: it1 TYPE STANDARD TABLE OF ty_table,
      it2 TYPE SORTED TABLE OF ty_table WITH UNIQUE KEY field1,
      it3 TYPE HASHED TABLE OF ty_table WITH UNIQUE KEY field1,
      wa  TYPE ty_table.

wa-field1 = 123 .
wa-field2 = 'lucas' .
wa-field3 = '123.25'.
APPEND wa TO it1 .
INSERT wa INTO TABLE it2 .
INSERT wa INTO TABLE it3 .

wa-field1 = 124 .
wa-field2 = 'lucas' .
wa-field3 = '123.25'.
APPEND wa TO it1 .
INSERT wa INTO TABLE it2 .
INSERT wa INTO TABLE it3 .

wa-field1 = 120 .
wa-field2 = 'lucas' .
wa-field3 = '123.25'.
APPEND wa TO it1 .
INSERT wa INTO TABLE it2 .
INSERT wa INTO TABLE it3 .

BREAK-POINT .