*&---------------------------------------------------------------------*
*& Report z07_demo10
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_demo10.

TYPES ty_decimal TYPE p LENGTH 16 DECIMALS 2.
PARAMETERS: p_num1 TYPE ty_decimal OBLIGATORY,
            p_oper TYPE c LENGTH 1 OBLIGATORY,
            p_num2 TYPE ty_decimal OBLIGATORY.


DATA: result TYPE ty_decimal.

AT SELECTION-SCREEN on p_oper.
  CASE p_oper.
    WHEN '%'.
     result = zcl_07_calculator=>calculate_percentage( PERCENTAGE = p_num1 BASE_VALUE = p_num2 ).
    WHEN '+'.
      result = p_num1 + p_num2.
    WHEN '-'.
      result = p_num1 - p_num2.
    WHEN '*'.
      result = p_num1 * p_num2.
    WHEN '/'.
      IF p_num2 <> 0.
        result = p_num1 / p_num2.
      ELSE.
        MESSAGE e001(z07).
      ENDIF.
    WHEN OTHERS.
      MESSAGE e002(z07).
  ENDCASE.

WRITE result.
