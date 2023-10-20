CLASS zcl_07_airplane DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  DATA name TYPE string READ-ONLY.
  DATA plane_type TYPE string READ-ONLY.

  class-data number_of_airplanes TYPE i READ-ONLY.

  METHODS constructor
   IMPORTING
    name TYPE string
    plane_type TYPE string.


   METHODS to_string
    RETURNING VALUE(string) TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_airplane IMPLEMENTATION.
  METHOD constructor.
   if name is INITIAL.
    ENDIF.


   if plane_type is INITIAL.
   ENDIF.

   me->name = name.
   me->plane_type = plane_type.
   number_of_airplanes += 1.
  ENDMETHOD.

  METHOD to_string.
   string = |Airplane: { name } { plane_type }|.


  ENDMETHOD.

ENDCLASS.
