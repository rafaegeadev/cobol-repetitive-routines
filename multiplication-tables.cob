       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLAS-DE-MULTIPLICAR.
       DATA DIVISION.
       FILE SECTION.

       WORKING-STORAGE SECTION.
       77  NUMERO                       PIC 9(2)       VALUE ZEROES.
       77  MULTIPLICADOR                PIC 9(3)       VALUE ZEROES.
       77  RESULTADO                    PIC 9(4)       VALUE ZEROES.
       77  SALIDA                       PIC X(5)       VALUE SPACES.

       PROCEDURE DIVISION.

           INICIO.
                  DISPLAY 
                    "Para salir introduce 'salir' en la consola."
                  DISPLAY 
                    "Para multiplicar pulsa INTRO."
                  ACCEPT SALIDA.
                  IF SALIDA = "salir" OR "SALIR"
                         PERFORM FINALIZAR
                  ELSE
                         PERFORM REINICIA-PROGRAMA
                         PERFORM INTRODUCE-NUMERO
                         PERFORM MOSTRAR-TABLA
                  END-IF.

           FINALIZAR.
                  STOP RUN.

           REINICIA-PROGRAMA.
                  MOVE 0 TO MULTIPLICADOR.

           INTRODUCE-NUMERO.
                  DISPLAY "INTRODUCE UN NUMERO."
                  ACCEPT NUMERO.
                  IF NUMERO IS ZERO
                         DISPLAY
                         "Por favor, introduce un número"-
                         " o un valor superior a cero."
                         PERFORM INICIO
                  END-IF.

           MOSTRAR-TABLA.
                  DISPLAY "LA TABLA DEL " NUMERO ":"
                  PERFORM CALCULOS 10 TIMES
                  PERFORM INICIO.

           CALCULOS.
                  ADD 1 TO MULTIPLICADOR.
                  COMPUTE RESULTADO = NUMERO * MULTIPLICADOR
                  DISPLAY NUMERO " * " MULTIPLICADOR " = " RESULTADO.

       END PROGRAM TABLAS-DE-MULTIPLICAR.

