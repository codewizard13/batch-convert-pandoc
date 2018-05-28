:: Program Name:   Batch Convert Documents with Pandoc
:: File Name:	   ehCode_2018.05.26_BatchConvertPandoc_01.bat
:: Date Created:   05/26/18
:: Date Modified:  --
:: Version:        1.00
:: Programmer:     Eric Hepperle
:: 
:: Purpose: Converts MS Word docs to markdown.
:: 	
:: Usage: Automatically runs after reboot.
:: 
:: Sample results: 
:: 
:: 	...
:: 
:: Requires: 
:: 	* User must be in the folder whose contents they wish to convert.
:: 	
:: Demonstrates:
:: 	- ...
::
:: NOTES:
::  - Inspired by Kai Noack's Stack Overflow answer:
::
::		https://stackoverflow.com/questions/17157638/batch-processing-pandoc-conversions-in-windows#answer-37208709
::    which says (all one line):
::
::		FOR /r "startfolder" %%i
::      IN (*.rst) DO pandoc -f rst -t dokuwiki "%%~fi" -o "%%~dpni.txt"
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: Let me see the commands that are executing
@echo OFF

:: [Not sure what this does, but have read that it is necessary]
setlocal enabledelayedexpansion

:: MAIN
FOR /r "." %%i IN (*.doc *.docx) DO pandoc -f rst -t markdown "%%~fi" -o "%%~dpni.md"

:: End with a pause so user can copy any text from screen.
ECHO. Done. Press any key to terminate program
PAUSE>NUL

:: NOTES :::::::::::::::::::::::::::::::::::::::::::::::::::
::   05/26/18 - Created file.
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:: ALGORITHM ::::::::::::::::::::::::::::::::::::::::::::::
::
::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::