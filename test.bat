@echo off

REM Set the name of the CSV file
set CSV_FILE=hours.csv

REM Check if the CSV file exists, if not, create it with headers
if not exist "%CSV_FILE%" (
    echo Date,Hours,Project Code,Notes > "%CSV_FILE%"
)

REM Prompt user for input
set /p DATE=Enter date (YYYY-MM-DD):
set /p HOURS=Enter hours worked:
set /p PROJECT_CODE=Enter project code:
set /p NOTES=Enter notes (optional):

REM Append input to the CSV file
echo %DATE%,%HOURS%,%PROJECT_CODE%,%NOTES% >> "%CSV_FILE%"

echo Data has been saved to %CSV_FILE%
