*&---------------------------------------------------------------------*
*& Report z07_demo09
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_demo09.

PARAMETERS p_id TYPE s_carr_id.
PARAMETERS p_cid_2 TYPE c LENGTH 3.

WRITE 'Systemfelder'.

write: |Anmeldename: { sy-uname }|.
write / |Datum des Servers: { sy-datum }|.
write / |Zeit des Servers: { sy-uzeit }|.
write / |Datum des Client: { sy-datlo }|.
write / |Zeit des Client: { sy-timlo }|.
write / |Anmeldemandant: { sy-mandt }|.
write / |Anmeldesprache: { sy-langu }|.
