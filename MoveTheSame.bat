@echo off
SETLOCAL ENABLEDELAYEDEXPANSION 
for %%a in (*) do (
	set Num=0
	set folderName=%%~na
	for %%b in (*) do (
		if %%~na == %%~nb set /a Num+=1
	)
	if !Num! geq 2 (
		if exist "!folderName!\" (
			move "%%~na.*" "!folderName!\"
		) else (
			md !folderName!	
			move "%%~na.*" "!folderName!\"
		)
	)
)
REM pause