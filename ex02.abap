  REPORT ztr2017_01 .
  
  PERFORM centre-string USING 'Center Text' .  
 
  FORM centre-string
    USING VALUE(msg) TYPE string.

    WRITE:(500) msg CENTERED .

  ENDFORM .