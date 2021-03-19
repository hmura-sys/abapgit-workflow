*&---------------------------------------------------------------------*
*& Report zprgm_git
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zprgm_git.

SELECTION-SCREEN COMMENT /1(50) comm.
SELECTION-SCREEN SKIP.

PARAMETERS: mb11     RADIOBUTTON GROUP g1 DEFAULT 'X',
            matgrp03 RADIOBUTTON GROUP g1.

INITIALIZATION.
  comm = 'Call Transaction Demo'.

START-OF-SELECTION.

  IF mb11 = 'X'.
    CALL TRANSACTION 'MB11' WITH AUTHORITY-CHECK.
  ELSEIF matgrp03 = 'X'.
    CALL TRANSACTION 'MATGRP03' WITH AUTHORITY-CHECK.
  ENDIF.
