*&---------------------------------------------------------------------*
*& Report z07_demo_17
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_demo_17.

**********************************************************************
* Deklaration interner Tabellen
**********************************************************************
data connections TYPE Z07_CONNECTIONS. "TYPE ( Tabellentyp )
" ConnectionList connections = new ConnectionList();
data connections2 TYPE TABLE OF Z07_CONNECTION. "TYPE TABLE OF [STRUKTURTYP]
" List<Connection> connections = new ArrayList <> ();

**********************************************************************
* HInzufügen von Datensätzen
**********************************************************************

connections = value #(
  ( carrier_id = 'LH' connection_id = '0400')
  ( carrier_id = 'UA' connection_id = '0400' depature_city = 'NEW YORK' )
  ( )
  ( carrier_id = 'LH' arrival_city = 'Frankfurt' ) ).

connections = value #( BASE connections ( carrier_id = 'AA' connection_id = '0017' arrival_city = 'ROM') ).

    APPEND value #( connection_id = '0401' ) TO connections.

    data connection type Z07_CONNECTION.
    connection-arrival_city = 'MADRID'.
    connection-depature_city = 'BERLIN'.

    APPEND connection TO connections.
    connections = VALUE #(  BASE connections ( connection ) ).

**********************************************************************
* Lesen von Datensätzen
**********************************************************************
" Lesen eines Einzelsatzes

if line_exists( connections[ 1 ] ).
  connection = connections[ 10 ]. "Index
endif.

try.
connection = connections[ carrier_id = 'AA' connection_id = '0017']. "Komponenten
 CATCH cx_sy_itab_line_not_found.
endtry.

**********************************************************************
*Ändern von Datensätzen
**********************************************************************
connections[ 1 ]-depature_city = 'FRANKFURT'. "Index
connections[ carrier_id = 'AA' connection_id = '0017' ]-depature_city = 'Walldorf'. "Komponent



 " Änderen mehrerer Datensätze
 data connection_r type ref to z07_connection.

 LOOP AT connections REFERENCE INTO connection_r WHERE carrier_id = 'LH' AND arrival_city IS NOT INITIAL.
  connection_r->carrier_id = 'LH'.


 ENDLOOP.

**********************************************************************
*Sortieren
**********************************************************************
SORT connections BY carrier_id DESCENDING connection_id ASCENDING depature_city DESCENDING.

**********************************************************************
* Löschen
**********************************************************************
"Löschen eines Einzelsatzes
DELETE connections INDEX 4.

"Löschen mehrerer Daten
DELETE connections WHERE arrival_city IS INITIAL.

**********************************************************************
*Größe
**********************************************************************
write / lines( connections ).





 WRITE ''.
