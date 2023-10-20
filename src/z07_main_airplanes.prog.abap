*&---------------------------------------------------------------------*
*& Report z07_main_airplanes
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_main_airplanes.

DATA airplane TYPE REF TO ZCL_07_AIRPLANE.
DATA airplanes TYPE TABLE OF REF TO ZCL_07_AIRPLANE.

WRITE ZCL_07_AIRPLANE=>number_of_AIRPLANES.

*Objekterzeugung

airplane = new ZCL_07_AIRPLANE( name = 'Flugzeug 1' plane_type = 'bummel Lummel').
APPEND airplane TO airplanes.

airplane = new ZCL_07_AIRPLANE( name = 'Der Zerstörer' plane_type = 'lummel pummel' ).
APPEND airplane TO airplanes.

*Ausgabe
LOOP AT airplanes INTO airplane.
  WRITE / airplane->to_string(  ).
ENDLOOP.
