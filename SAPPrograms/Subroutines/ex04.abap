  REPORT ztr2017_01 .
 
  PERFORM print_date USING '19940201' .

  FORM print_date USING data TYPE d .
    DATA: day           TYPE c LENGTH 2,
          month         TYPE c LENGTH 2,
          year          TYPE c LENGTH 4,
          literal_month TYPE string.
    year = data(4).
    month = data+4(2).
    day = data+6(2) .

    CASE month.
      WHEN '01'.
        literal_month = 'January' .
      WHEN '02'.
        literal_month = 'February' .
      WHEN '03'.
        literal_month = 'March' .
      WHEN '04'.
        literal_month = 'April' .
      WHEN '05'.
        literal_month = 'May' .
      WHEN '06'.
        literal_month = 'June' .
      WHEN '07'.
        literal_month = 'July' .
      WHEN '08'.
        literal_month = 'August' .
      WHEN '09'.
        literal_month = 'September' .
      WHEN '10'.
        literal_month = 'October' .
      WHEN '11'.
        literal_month = 'November' .
      WHEN '12'.
        literal_month = 'December' .
    ENDCASE .

    WRITE: / day,'-' ,literal_month, '-',year .

  ENDFORM .