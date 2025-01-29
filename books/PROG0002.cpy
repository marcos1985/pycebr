      * Book para o programa PROG0002.cbl
       01 PROG0002-BOOK.
           03 PROG0002-REQUEST.
               05 PROG0002-NAME PIC X(10).
           03 PROG0002-CONTROL.
               05 PROG0002-RTN-CODE       PIC 9(04).
               05 PROG0002-MSG            PIC X(255).
               05 PROG0002-EXP-MSG        PIC X(255).
           03 PROG0002-RESPONSE.
               05 PROG0002-NAME-SIZE      PIC 9(04).
                 