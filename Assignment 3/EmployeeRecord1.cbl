      ******************************************************************
      * Author: BENGIE B. VILLESCO
      * Date: OCTOBER 30, 2023
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EmployeeRecord1.

       DATA DIVISION.
       FILE SECTION.
       FD  EMPLOYEE-FILE
           LABEL RECORDS ARE STANDARD
           RECORD NAME IS EMPLOYEE-INFO.
       01  EMPLOYEE-INFO.
           03  EMP-NUMBER     PIC X(10).
           03  EMP-NAME       PIC X(20).
           03  EMP-STATUS     PIC X(7).
           03  EMP-BASIC-SALARY   PIC 9(6)V99.
           03  EMP-DEDUCTIONS     PIC 9(6)V99.
           03  EMP-NETPAY        PIC 9(6)V99.

       WORKING-STORAGE SECTION.
       01  BASIC_SALARY PIC 9(6)V99.
       01  DEDUCTIONS PIC 9(6)V99.
       01  NETPAY  PIC 9(6)V99.
       01  TOTAL_SALARY PIC 9(6)V99.
       01  TOTAL_DEDUCTIONS PIC 9(6)V99.
       01  TOTAL_NETPAY PIC 9(6)V99.

       01  HEADING-1.
           02  FILLER PIC X(37) VALUE SPACES.
           02  FILLER PIC X(11) VALUE "ABC COMPANY".
           02  FILLER PIC X(3) VALUE SPACES.
       01  HEADING-2.
           02  FILLER PIC X(31) VALUE SPACES.
           02  FILLER PIC X(24) VALUE "MAKATI CITY, PHILIPPINES".
           02  FILLER PIC X(31) VALUE SPACES.
       01  HEADING-3.
           02  FILLER PIC X(1) VALUE SPACES.
           02  FILLER PIC X(8) VALUE "EMPLOYEE".
           02  FILLER PIC X(5) VALUE SPACES.
           02  FILLER PIC X(8) VALUE "EMPLOYEE".
           02  FILLER PIC X(15) VALUE SPACES.
           02  FILLER PIC X(6) VALUE "STATUS".
           02  FILLER PIC X(4) VALUE SPACES.
           02  FILLER PIC X(5) VALUE "BASIC".
           02  FILLER PIC X(8) VALUE SPACES.
           02  FILLER PIC X(10) VALUE "DEDUCTIONS".
           02  FILLER PIC X(3) VALUE SPACES.
           02  FILLER PIC X(7) VALUE "NET PAY".
           02  FILLER PIC X(6) VALUE SPACES.
       01  HEADING-4.
           02  FILLER PIC X(1) VALUE SPACES.
           02  FILLER PIC X(6) VALUE "NUMBER".
           02  FILLER PIC X(7) VALUE SPACES.
           02  FILLER PIC X(4) VALUE "NAME".
           02  FILLER PIC X(19) VALUE SPACES.
           02  FILLER PIC X(10) VALUE SPACES.
           02  FILLER PIC X(6) VALUE "SALARY".
           02  FILLER PIC X(8) VALUE SPACES.
           02  FILLER PIC X(25) VALUE SPACES.

       01  PRINTING-LINE.
           02  FILLER PIC X(1) VALUE SPACES.
           02  NUMBER-OUT PIC X(10).
           02  FILLER PIC X(3) VALUE SPACES.
           02  NAME-OUT PIC X(20).
           02  FILLER PIC X(3) VALUE SPACES.
           02  STATUS-OUT PIC X(7).
           02  FILLER PIC X(3) VALUE SPACES.
           02  SALARY-OUT PIC ZZZ,ZZZ.99.
           02  FILLER PIC X(3) VALUE SPACES.
           02  DEDUCTIONS-OUT PIC ZZZ,ZZZ.99.
           02  FILLER PIC X(3) VALUE SPACES.
           02  NETPAY-OUT PIC ZZZ,ZZZ.99.
           02  FILLER PIC X(3) VALUE SPACES.
       01  PRINTING-TOTAL.
           02  FILLER PIC X(1) VALUE SPACES.
           02  FILLER PIC X(6) VALUE "TOTALS".
           02  FILLER PIC X(40) VALUE SPACES.
           02  TOTAL-SALARY-OUT PIC ZZZ,ZZZ.99.
           02  FILLER PIC X(3) VALUE SPACES.
           02  TOTAL-DEDUCTION-OUT PIC ZZZ,ZZZ.99.
           02  FILLER PIC X(3) VALUE SPACES.
           02  TOTAL-NETPAY-OUT PIC ZZZ,ZZZ.99.
           02  FILLER PIC X(3) VALUE SPACES.

       01  PRINTING-NEWLINE.
            02 FILLER PIC X(86) VALUE SPACES.
       END PROGRAM EmployeeRecord1.
