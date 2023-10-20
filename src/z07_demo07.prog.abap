*&---------------------------------------------------------------------*
*& Report z07_demo07
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_demo07.

DATA text TYPE string VALUE 'hello'.
DATA text2 TYPE string VALUE 'world'.
DATA text3 TYPE string.

text3 = text && | | && text2.
WRITE text3.

text3 = | { text } { text2 }|.
WRITE / text3.
