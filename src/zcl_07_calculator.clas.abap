CLASS zcl_07_calculator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-METHODS divide
      IMPORTING
                value1        TYPE z00_decimal
                value2        TYPE z00_decimal
      RETURNING VALUE(result) TYPE z00_decimal
      RAISING cx_sy_zerodivide.

    CLASS-METHODS calculate_percentage
    IMPORTING
               PERCENTAGE TYPE ZABAP_DECIMAL
               BASE_VALUE TYPE ZABAP_DECIMAL
      RETURNING VALUE(result) TYPE ZABAP_DECIMAL.
    "public static double divide(double value1, double value2)
    " return value1 / value2;
    " }

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_calculator IMPLEMENTATION.

  METHOD divide.
  result = value1 / value2.
 ENDMETHOD.


  METHOD calculate_percentage.
   result = BASE_VALUE * ( PERCENTAGE / 100 ).
  ENDMETHOD.

ENDCLASS.
