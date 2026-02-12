>>SOURCE FORMAT IS FREE
IDENTIFICATION DIVISION.
  PROGRAM-ID. Sorting-Files.

ENVIRONMENT DIVISION.
  INPUT-OUTPUT SECTION.
    FILE-CONTROL.
      *> The file to sort
      SELECT Input-File ASSIGN TO "Input.txt"
      ORGANISATION LINE SEQUENTIAL
      ACCESS SEQUENTIAL.

      *> Sort work file
      SELECT Sort-File ASSIGN TO "SortWork.txt"
      ORGANISATION LINE SEQUENTIAL
      ACCESS SEQUENTIAL.

      *> Sort output file
      SELECT Out-File ASSIGN TO "Output.txt"
      ORGANISATION LINE SEQUENTIAL
      ACCESS SEQUENTIAL.

DATA DIVISION.
  FILE SECTION.
    FD Input-File.
      01 Input-Rec.
        05 In-UID PIC 9(4).
        05 FILLER PIC X VALUE ",".
        05 In-Username PIC X(25).
        05 FILLER PIC X VALUE ",".
        05 In-User-Age PIC 999.

    SD Sort-File.
      01 Sort-Rec.
        05 Sf-UID PIC 9(4).
        05 FILLER PIC X VALUE ",".
        05 Sf-Username PIC X(25).
        05 FILLER PIC X VALUE ",".
        05 Sf-User-Age PIC 999.

    FD Out-File.
      01 Out-Rec.
        05 Out-UID PIC 9(4).
        05 FILLER PIC X VALUE ",".
        05 Out-Username PIC X(25).
        05 FILLER PIC X VALUE ",".
        05 Out-User-Age PIC 999.

PROCEDURE DIVISION.
  DISPLAY "Hello, World!".
  STOP RUN.

END PROGRAM Sorting-Files.
