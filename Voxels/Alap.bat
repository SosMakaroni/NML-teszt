@echo off

:Loop

IF [%1]==[] GOTO Continue
    echo Elozo %~n1 png-k torlese:
	del "C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\src\%~n1_INFO_8bpp.png"
	del "C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\src\%~n1_KOR_1x_8bpp.png"
	del "C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\src\%~n1_KOR_2x_8bpp.png"
	del "C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\src\%~n1_KOR_4x_8bpp.png"
	echo Torles kesz.
	echo File beolvasva: %1
	echo Rendereles...
	E:\grf\renderobject.exe -output C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\src\%~n1_INFO -palette E:\grf\files\ttd_palette.json -m C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\Voxels\m_256_40_info.json -8 -scale 1 "%~1"
	E:\grf\renderobject.exe -output C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\src\%~n1_KOR -palette E:\grf\files\ttd_palette.json -m C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\Voxels\m_256_40_kor.json -8 -scale 1,2,4 "%~1"
	echo Kesz! %~n1  
	echo ____________________________________________
SHIFT
GOTO Loop
:Continue
echo Bezarashoz nyomj 1 gombot.
pause>nul


C:\Users\balin\OneDrive\Dokumentumok\GitHub\NML-teszt\src