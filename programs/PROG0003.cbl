       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG0003.
       
       DATA DIVISION.
       
       WORKING-STORAGE SECTION.

       LINKAGE SECTION.
       COPY 'books/PROG0003.cpy'.

       PROCEDURE DIVISION USING PROG0003-BOOK.
      *    DISPLAY "PROG0003-NAME: " PROG0003-NAME

           DISPLAY "{"
           DISPLAY    '"nome": "Teste 123",'
           DISPLAY    '"paises": ["P1", "P2"]'
           DISPLAY "}".  
           GOBACK.
