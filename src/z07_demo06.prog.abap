*&---------------------------------------------------------------------*
*& Report z07_demo06
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_demo06.

DATA carrier_id TYPE s_carr_id VALUE 'LH'.
DATA flight_date TYPE s_date VALUE '20231016'.

**********************************************************************
*Vergleichsoperatoren
**********************************************************************
*Vergleichsoperatoren und Logische Operatoren
**********************************************************************
*Vergleichsoperatoren: >, >=, <, <=, =, <>
*Logische Operatoren: AND, OR, NOT

*******************************************
*Einfachzuweisungen
**********************************************************************
IF flight_date >= '20230101' AND flight_date <= '20231231' OR carrier_id = 'UA'.
  WRITE 'bedingung erfüllt'.
ELSE.
  WRITE 'bedingung nicht erüllt'.
ENDIF.
