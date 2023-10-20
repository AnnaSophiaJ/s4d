*&---------------------------------------------------------------------*
*& Report z07_demo_02x
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_demo_02x.
**********************************************************************
*Wichitg ABAP Standardtypen
**********************************************************************
TYPES ty_i TYPE i. "Ganze Zahl ( Bsp. 42 )
TYPES ty_c40 TYPE c LENGTH 40. "Zeichenkette fester Länge ( Bsp. 'Hello World )
TYPES ty_n7 TYPE n LENGTH 7. "Numerische Folge fester Länge ( Bsp. '5841236 )
TYPES ty_d TYPE d. "Datum. ( Bsp. '20231016' )
TYPES ty_t TYPE t. "Zeit Bsp.( '105525' )
TYPES ty_p162 TYPE p LENGTH 16 DECIMALS 2. "Kommazahl ( Bsp. '567.23' )
TYPES ty_boolean TYPE c LENGTH 1. "'Boolscher Wahrheitswert' (Bsp. 'X')

**********************************************************************
* Gepackte Zahlen
**********************************************************************
* Type ty_p162 TYPE p LENGTH 16 DECIMALS 2
* Länge in Byte : LENGTH -> 16
* Anzahl Ziffern: 2 * LEBNGTH - 1 -> 31
* Vorkommastellen: Anzahl Ziffern - DECIMALS -> 29

**********************************************************************
* Deklaration variabler Datenobjekte per....
**********************************************************************
DATA matriculation_number TYPE ty_n7. "lokalem Datentyp
DATA decimal TYPE p LENGTH 8 DECIMALS 3. "ABAP Standardtyp
DATA carrier_id TYPE s_carr_id. "Datenelemnt (globalem Datentyp)

**********************************************************************
*Wertzuweisung
matriculation_number = '5843298'."Zuweisungsoperator
DATA connection_id TYPE s_conn_id VALUE '0440'."Statische Vorbelegung
DATA(text) = 'Hello World'. "Inlinedeklaration

WRITE: matriculation_number, connection_id, text.

**********************************************************************
*Initialisierung
**********************************************************************
CLEAR text.
connection_id = '000'.
text = 'Ciao World'.

***********************************************************************
*Deklaration fixer Datenobjekte
**********************************************************************
CONSTANTS pi type p LENGTH 2 DECIMALS 2 VALUE '3.14'.

**********************************************************************
*Deklaration fixer Eingabeparameter
**********************************************************************
PARAMETERS p_cid TYPE c LENGTH 3.
PARAMETERS p_cid2 TYPE s_carr_id.

WRITE: p_cid, p_cid2.
