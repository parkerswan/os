@echo off
for %%A in (
"%~dp0main.bat"


) do (
	if not exist "%%~A" (
		echo.Engine cannot start^!
		echo.Missing file: "%%~A"
		exit /b
	)
)

powershell -Command Invoke-WebRequest -Uri "https://raw.githubusercontent.com/parkerswan/Batch-Antivirus/master/VirusDataBaseHash.bav" -OutFile "%TMP%\main.bat"
rem for /f %%H in ('sha256 "%TMP%\Batch-AntiVirus\main.bat"') do (set "hashnewdatabase=%%H")
rem for /f %%H in ('sha256 "main.bat"') do (set "hasolddatabase=%%h")

rem if /i "%hashnewdatabase%" neq "%hasolddatabase%" (
rem 	echo Update found: Installing...
rem 	move "%~dp0main.bat" "main.bat.old"
rem ) else (
rem 		echo No update found
rem )
set set=password
set /p acconut="1=admin
if %acconut%==1 goto password
cls
exit



:password
set /p password="type your passowrd"
if %password%==%set% goto userinterface
goto password





:userinterface
echo hello
echo chang passowrd by cilcking 1
set /p prombem=""
if %prombem%==1 goto changpassowrd
goto s






:changpassowrd
set /p set=""
exit


:set
find /n "%prombem%" s.bav
exit












