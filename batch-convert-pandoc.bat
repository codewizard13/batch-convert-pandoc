:: Program Name:   Batch Convert Documents with Pandoc
:: File Name:      batch-convert-pandoc.bat
:: Date Created:   05/26/18
:: Date Modified:  05/29/18
:: Version:        1.02
:: Programmer:     Eric Hepperle
:: 
:: Purpose: Converts MS Word docs to markdown (.md) files.
::  
:: Usage: Add to Windows PATH environment variable and run from anywhere.
:: 
:: Sample results: 
:: 
::  N/A
:: 
:: Requires: 
::  * User must be in the folder whose contents they wish to convert.
::  
:: Demonstrates:
::  - Windows CLI looping
::  - FOR-IN-DO command
::  - Operating on lists
::
:: NOTES:
::  - Inspired by Kai Noack's Stack Overflow answer:
::
::        https://stackoverflow.com/questions/17157638/batch-processing-pandoc-conversions-in-windows#answer-37208709
::
::    which says (all one line):
::
::      FOR /r "startfolder" %%i IN (*.rst) 
::        DO pandoc -f rst -t dokuwiki "%%~fi" -o "%%~dpni.txt"
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Let me see the commands that are executing
@echo OFF

:: [Not sure what this does, but have read that it is necessary]
:: #GOTCHA: Turned out (in this case) delayedexpansion was a hindrance,
::   not a help.
::setlocal enabledelayedexpansion

:: MAIN
FOR /r "." %%i IN (*.doc *.docx) DO pandoc "%%~fi" -o "%%~dpni.md"

:: End with a pause so user can copy any text from screen.
ECHO. Done. Press any key to terminate program
PAUSE>NUL

:: NOTES :::::::::::::::::::::::::::::::::::::::::::::::::::
::
::    NOTE: Any further notes will be found in the git log command.
::
::    05/29/18 - Updated FOR command to remove rst and delayedexpansion.
::                   WORKS!!!
::
::    05/28/18 - Renamed file to batch-convert-pandoc.bat
::             - Tried different version of the FOR command to no avail.
::
::    05/26/18 - Created file.
::             - Tested. Doesn't work. Posted note on Stack Overflow:
:: https://stackoverflow.com/questions/17157638/batch-processing-pandoc-conversions-in-windows#answer-37208709
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: ALGORITHM ::::::::::::::::::::::::::::::::::::::::::::::
::
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::