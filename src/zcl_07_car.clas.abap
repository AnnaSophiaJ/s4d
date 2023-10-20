CLASS zcl_07_car DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  INHERITING FROM zcl_07_vehicel.

  PUBLIC SECTION.
    data number_of_seats TYPE i READ-ONLY.

    methods constructor
      importing
        make type string
        model type string
        number_of_seats type i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_07_car IMPLEMENTATION.
  METHOD constructor.
   super->constructor( make = make model = model ).

   me->number_of_seats = number_of_seats.

  ENDMETHOD.

ENDCLASS.
