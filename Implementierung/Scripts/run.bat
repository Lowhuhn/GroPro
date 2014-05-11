@echo off
REM ###############################################################################################################################################
REM #                                                                                                                                             #
REM # ENTWIKCLUNG EINES SOFTWARESYSTEMS                                                                                                           #
REM # Kaminski, Nils                                                                                                                              #
REM # Prueflingsnummer: 101 XXXXX                                                                                                                 #
REM #                                                                                                                                             #
REM # DIESES SCRIPT FUEHRT DAS PROGRAMM AUS                                                                                                       #
REM # - erstes Eingabeargument des Scripts muss die Input-Datei sein                                                                              #
REM # - der Pfad mit der compilierten Datei muss auf die Variable "PATH_TO_EXECUTABLE" geschrieben werden                                         #
REM # - der Dateiname, der ausführbaren Datei, muss auf die Variable "NAME_OF_EXECUTABLE" geschrieben werden                                      #                                                                                                                              #
REM #                                                                                                                                             #
REM ###############################################################################################################################################


REM Variablen setzen 
Set PATH_TO_EXECUTABLE=..\Test1\Test1\bin\Debug
Set NAME_OF_EXECUTABLE=Test1.exe

call %PATH_TO_EXECUTABLE%\%NAME_OF_EXECUTABLE% %1
