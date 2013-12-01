@ECHO OFF

REM Copyright (c) RoSF.us Dev Team, licensed under GNU GPL.
REM See the LICENSE file
REM Base Author: Mumbles @ http://bbs.rosf.us

COLOR 0F

ECHO.
ECHO                   RoSF.us Development Team Presents
ECHO                  ______           ______  ______
ECHO                 ^|  __  ^|  ______ ^|  ____^|^|  ____^|     _    _   _ __ _
ECHO                 ^| ^|__/ / ^|  __  ^|^| ^|____ ^| ^|___      ^| ^|  ^| ^| ^|  ____^|
ECHO                 ^|  __ _  ^| ^|  ^| ^|^|____  ^|^|  ___^|     ^| ^|  ^| ^| ^|_^|__ _
ECHO                 ^| ^|  ^| ^| ^| ^|__^| ^| ____^| ^|^| ^|      _  ^| ^|__^| ^|  ____^| ^|
ECHO                 ^|_^|  ^|_^| ^|______^|^|______^|^|_^|     ^|_^| ^|______^| ^|______^|
ECHO.
ECHO                       Script Syntax Checker
ECHO                       http://bbs.rosf.us
ECHO.
ECHO                  Drag and drop or input manually
ECHO.
ECHO.

:LOOP
	SET /P SCRIPT="Enter path/to/your/script.txt: " %=%
	map-server.exe --script-check %SCRIPT%
	ECHO.
GOTO LOOP
