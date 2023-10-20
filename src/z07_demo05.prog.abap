*&---------------------------------------------------------------------*
*& Report z07_demo05
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z07_demo05.

DATA result_i TYPE i.
DATA result_p TYPE p LENGTH 8 DECIMALS 4.

result_i = 5 + 3. "Addition
WRITE: / |5 + 3 = { result_i }|.

result_i = 5 - 3. "Subtraktion
WRITE: / |5 - 3 = { result_i }|.

result_i = 5 * 3. "Multiplikation
WRITE: / |5 * 3 = { result_i }|.

result_p = 5 / 3. "Division
WRITE: / |5 / 3 = { result_i }|.
