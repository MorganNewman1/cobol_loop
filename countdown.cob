       IDENTIFICATION DIVISION.
       
       PROGRAM-ID. countdown. 
     
       ENVIRONMENT DIVISION.
     
       INPUT-OUTPUT SECTION.
     
       DATA DIVISION.
     
       FILE SECTION.
       
       WORKING-STORAGE SECTION.
       77    END-OF-SESSION-SWITCH  PIC X           VALUE "N".
       77    enter-number           PIC 999.
       77    decrease              PIC 9            value 1.
     
       PROCEDURE DIVISION.
     
       000-General.
     
           PERFORM 100-inputs
                   UNTIL END-OF-SESSION-SWITCH = "Y".
           DISPLAY "END OF SESSION.".
           STOP RUN.
           
       100-inputs.
           DISPLAY "-------------------------------------".
           DISPLAY "TO END PROGRAM, ENTER 0.".
           DISPLAY "Please enter another number to get to zero.".
           ACCEPT enter-number.
           IF enter-number = ZERO
              MOVE "Y" TO END-OF-SESSION-SWITCH
           ELSE
              PERFORM 200-loop
           END-IF.
           
       200-loop.
          IF enter-number NOT = ZERO
           DISPLAY enter-number
           subtract decrease from enter-number
           perform 200-loop.
