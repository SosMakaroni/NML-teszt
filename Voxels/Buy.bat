@echo off

:Loop

IF [%1]==[] GOTO Continue
    echo Elozo %~n1 png-k torlese:
	del "C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\src\%~n1_8bpp.png"
	echo Torles kesz.
	echo File beolvasva: %1
	echo Vasarlasi nezet rendereles...
	E:\grf\renderobject.exe -output C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\src\%~n1 -palette E:\grf\files\ttd_palette.json -m C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\Voxels\m_256_40_buy.json -8 -scale 1 "%~1"
	echo Kesz! %~n1  
	echo ____________________________________________
SHIFT
GOTO Loop
:Continue
echo Bezarashoz nyomj 1 gombot.
pause>nul
