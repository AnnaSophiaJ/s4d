*&---------------------------------------------------------------------*
*& Report z07_main_vehicles
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_main_vehicles.

*Demo 1: Objekte und Referenzvariablen

DATA vehicle TYPE REF TO ZCL_07_VEHICEL.
"vehicle = new ZCL_07_VEHICEL(  ). "Vehicle vehicle = new Vehicle(  );

*DATA(vehicle2) = NEW ZCL_07_VEHICEL(  ).

DATA vehicles type table of ref to ZCL_07_VEHICEL.

WRITE ZCL_07_VEHICEL=>number_of_vehicles.

vehicle = NEW ZCL_07_VEHICEL( make = 'VW' model = 'UP' ).
append vehicle to vehicles.

vehicle = NEW ZCL_07_VEHICEL( make = 'MAN' model ='TGX' ).
APPEND vehicle TO vehicles.

"Ausgabe
LOOP AT vehicles INTO vehicle.
WRITE / vehicle->to_string(  ).
ENDLOOP.
