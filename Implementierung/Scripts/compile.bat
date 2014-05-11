@echo off
REM #################################################################################################################################
REM #                                                                                                                               #
REM # ENTWIKCLUNG EINES SOFTWARESYSTEMS                                                                                             #
REM # Vieten, Martin Gerhard                                                                                                        #
REM # Prueflingsnummer: 101 20612                                                                                                   #
REM #                                                                                                                               #
REM # DIESES SCRIPT COMPILIERT DAS PROGRAMM                                                                                         #
REM # - der Pfad der source-Datei, in der die main-Methode steht, muss auf die Shell-Variable "PFAD_MAIN_DATEI" geschrieben werden  #
REM # - der Pfad mit allen anderen source-Dateien muss auf die Shell-Variable "PFAD_QUELL_DATEIEN" geschrieben werden               #
REM # - der Pfad mit bereits compilierten Klassendatein (Classpath) muss auf Shell-Variable "PFAD_CLASS_DATEIEN" geschrieben werden #
REM #                                                                                                                               #
REM # Als ausfuehrende Shell wurde hier "/bin/bash" gesetzt. Aenderung bitte ueber die Shebang-Zeile vornehmen:                     #
REM #                                                                                                                               #
REM #! /bin/bash                                                                                                                    #
REM #                                                                                                                               #
REM #################################################################################################################################


set WinDirNet=%WinDir%\Microsoft.NET\Framework
IF EXIST "%WinDirNet%\v3.5\csc.exe" set csc="%WinDirNet%\v3.5\csc.exe"
IF EXIST "%WinDirNet%\v4.0.30319\csc.exe" set csc="%WinDirNet%\v4.0.30319\csc.exe"

REM Variablen setzen
PFAD_MAIN_DATEI="../src/steuerung/TheMiddleOfNowhere.java"
PFAD_QUELL_DATEIEN="../src/"
PFAD_CLASS_DATEIEN="../bin/"

javac -sourcepath $PFAD_QUELL_DATEIEN -classpath $PFAD_CLASS_DATEIEN -d $PFAD_CLASS_DATEIEN $PFAD_MAIN_DATEI
