       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0001.
       
       DATA DIVISION.
       
       WORKING-STORAGE SECTION.
       
       LOCAL-STORAGE SECTION.

       COPY 'books/PROG0002.cpy'.
       COPY 'books/PROG0003.cpy'.
           
       LINKAGE SECTION.

       COPY 'books/PROG0001.cpy'.
       
       PROCEDURE DIVISION USING PROG0001-BOOK.
           
           DISPLAY "PROG0001-NAME: " PROG0001-NAME
           DISPLAY "PROG0001-TESTE: " PROG0001-TESTE
           DISPLAY "PROG0001-RTN-CODE: " PROG0001-RTN-CODE
           PERFORM PROC-MAIN.
       
       PROC-MAIN.
      
      * Mostra no console um texto   
           PERFORM PROC-CALL-PROG0003

      * Retorna do tamanho de uma string   
           PERFORM PROC-CALL-PROG0002
      
      * Termina o programa      
           PERFORM PROC-END-PROG.

       PROC-CALL-PROG0003.

           INITIALIZE PROG0003-BOOK

           MOVE PROG0001-NAME  TO PROG0003-NAME
           CALL 'PROG0003' USING PROG0003-BOOK.

       PROC-CALL-PROG0002.
       
           INITIALIZE PROG0002-BOOK
           
           MOVE PROG0001-NAME TO PROG0002-NAME
           
           CALL 'PROG0002' USING PROG0002-BOOK

           IF PROG0002-RTN-CODE <> 0 THEN 
               MOVE 1                   TO PROG0001-RTN-CODE
               MOVE PROG0002-MSG        TO PROG0001-MSG
               MOVE PROG0002-EXP-MSG    TO PROG0001-EXP-MSG
               PERFORM PROC-END-PROG
           END-IF

           DISPLAY "PROG0002-NAME SIZE " PROG0002-NAME-SIZE.

       PROC-END-PROG.

           STOP RUN.
