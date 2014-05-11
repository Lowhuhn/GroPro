@echo off
REM ##########################################################################################################################################
REM #                                                                                                                                        #
REM # ENTWIKCLUNG EINES SOFTWARESYSTEMS                                                                                                      #
REM # Kaminski, Nils                                                                                                                         #
REM # Prueflingsnummer: 101 XXXXX                                                                                                            #
REM #                                                                                                                                        #
REM # DIESES SCRIPT FUEHRT TESTS DES PROGRAMMS AUS                                                                                           #
REM # - der Pfad des Verzeichnisses, das die Testdateien enthaelt, muss auf die Variable "ORDNER_MIT_TESTDATEIEN" geschrieben werden   		 #
REM # - alle Dateien dieses Verzeichnisses mit der Endung ".in" werden ausgefuehrt.                                                          #
REM #                                                                                                                                        #
REM ##########################################################################################################################################


REM Variablen setzen
set ORDNER_MIT_TESTDATEIEN=..\Testfaelle

FOR /F %%f IN ('dir /B %ORDNER_MIT_TESTDATEIEN%') DO (
    echo %%f
    CALL run.bat %%f
)


