@echo off
rem Writen by °²ºÕ¶û
title v4 Athena MySQL   Powered by RoSF.us cRO Development Team Presents.
start cmd /k ..\branches\mysql_start.bat
@ping -n 8 127.1 >nul
start cmd /k login-server.bat
start cmd /k char-server.bat
start cmd /k map-server.bat
cls