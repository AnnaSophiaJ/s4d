*&---------------------------------------------------------------------*
*& Report z07_demo11
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_demo11.

**********************************************************************
*Definitionen und Deklarationen
**********************************************************************
PARAMETERS p_cid type s_carr_id.
PARAMETERS p_chckbx AS CHECKBOX.

PARAMETERS p_opt1 RADIOBUTTON GROUP opts.
PARAMETERS p_opt2 RADIOBUTTON GROUP opts.
PARAMETERS p_opt3 RADIOBUTTON GROUP opts.

**********************************************************************
*Eingabeprüfungen
**********************************************************************
AT SELECTION-SCREEN.
IF p_chckbx = 'X'. "IF p_chckx = abap_true
  message s000(z07) with sy-uname .
ENDIF.

**********************************************************************
*Hauptverarbeitung
**********************************************************************
START-OF-SELECTION.
CASE abap_true.
 WHEN p_opt1.
  WRITE 'Option 1 gesetzt'.
 WHEN p_opt2.
  WRITE 'Option 2 gesetzt'.
 WHEN p_opt3.
  WRITE 'Option 3 gesetzt'.
 ENDCASE.
