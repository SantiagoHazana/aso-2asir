@echo off
set correctos=0
for %%i in (%1, %2, %3) do (
	type %%i > nul
	if errorlevel 1 echo %%i no es fichero && set correctos=1
)

if %correctos%==0 (
	for %%i in (%1, %2, %3) do (
		type %%i
		echo.
	)
)