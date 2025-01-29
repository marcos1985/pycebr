       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0002.
       
       DATA DIVISION.
       
       WORKING-STORAGE SECTION.

       LINKAGE SECTION.

       copy 'books/PROG0002.cpy'.

       PROCEDURE DIVISION USING PROG0002-BOOK.

           DISPLAY "TESTE"

           MOVE FUNCTION LENGTH(PROG0002-NAME) TO PROG0002-NAME-SIZE

           IF PROG0002-NAME-SIZE < 10 THEN
               MOVE 1 TO  PROG0002-RTN-CODE
               MOVE 'Nome com tamanho menor que 10 caracteres.'
                                      TO PROG0002-MSG
               MOVE 'PROG0002: String com tamanho menor que 10.'
                                      TO PROG0002-EXP-MSG
               GOBACK
           END-IF

           MOVE 0 TO  PROG0002-RTN-CODE    
           GOBACK.
           