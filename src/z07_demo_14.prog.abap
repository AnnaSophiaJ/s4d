*&---------------------------------------------------------------------*
*& Report z07_demo_14
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_demo_14.

PARAMETERS p_cid type s_customer.

DATA costumer type Z07_COSTUMER.

TRY.

 costumer = zcl_abap_helper=>get_customer( p_cid ).
CATCH zcx_no_customer_found INTO DATA(e).
 MESSAGE e->get_text(  ) TYPE 'E'.
ENDTRY.

WRITE |Kundennummer: { costumer-customer_id }|.
WRITE / |NAME: { costumer-name }|.
WRITE / |Stadt: { costumer-city }|.
WRITE / |LAND: { costumer-country }|.
