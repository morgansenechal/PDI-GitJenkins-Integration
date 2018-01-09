@echo off
Set CURRENT_DIR=%CD%

set /p PROJECT_NAME="Enter Project Name: "
set /p ENV="Enter Environment (dev/uat/prd): "
echo IMPORTING %PROJECT_NAME% into Environment %ENV% using installation in %PENTAHO_HOME%
echo SERVER %DI_SERVER.HOST% PORT %DI_SERVER.PORT%
REM load kettle.properties
for /F "usebackq delims=" %%x in ("../config-pdi-%ENV%/.kettle/kettle.properties") do (set %%x)

c:
cd "%PENTAHO_HOME%\server\pentaho-server"
echo SERVER %DI_SERVER.HOST% PORT %DI_SERVER.PORT%
call import-export.bat --import --url=http://%DI_SERVER.HOST%:%DI_SERVER.PORT%/%DI_SERVER.WEBAPP% --path=/public/ --overwrite=true --username=admin --password=password --file-path="%CURRENT_DIR%\%PROJECT_NAME%.zip"
pause