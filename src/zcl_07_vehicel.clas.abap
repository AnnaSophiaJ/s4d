CLASS zcl_07_vehicel DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA make TYPE string READ-ONLY.
    DATA model TYPE string READ-ONLY.
    CLASS-DATA number_of_vehicles Type i read-only.

    METHODS constructor
     IMPORTING
      make TYPE string
      model TYPE string.

    METHODS to_string
      RETURNING VALUE(string) TYPE string.


  PROTECTED SECTION.

  PRIVATE SECTION.




ENDCLASS.




CLASS zcl_07_vehicel IMPLEMENTATION.
  METHOD constructor. "this.make = make;
   if make is INITIAL.
    "ToDO:Ausnahme auslösen
     endif.

   if model is INITIAL .
     endif.
    me->make = make.
    me->model = model.
    number_of_vehicles += 1.

  ENDMETHOD.

  METHOD to_string.
    string = |Vehicle: { make } { model }|.
  ENDMETHOD.



ENDCLASS.








