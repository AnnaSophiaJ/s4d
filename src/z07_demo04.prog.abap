*&---------------------------------------------------------------------*
*& Report z07_demo04
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_demo04.
PARAMETERS p_knr type s_customer LOWER CASE.
PARAMETERS p_name type s_custname LOWER CASE.
PARAMETERS p_city type s_CITY LOWER CASE.
PARAMETERS p_cntry type s_country LOWER CASE.

WRITE:/ | Der Kunde,{ p_name  }, hat die Nummer { p_knr } und wohnt in { p_city } in { p_cntry }|.
