@echo off

::  argument "Action" can be one of the following:
::
:: "POSITION" is sent whenever Dragonframe moves to a new frame.
::   This is probably what you want to use. After shooting 
::   frame 10, when Dragonframe is ready to capture frame 11, it
::   sends "POSITION 11".
::
:: "SHOOT" happens immediately before shooting.
::
:: "DELETE" happens immediately before deleting.
::
:: "CC" is capture complete. There is an additional argument,
::   the file name of the main downloaded image.
::
:: "FC" is frame complete. There is an additional argument,
::   the file name of the main downloaded image.
::
:: "TEST" is test shot complete. There is an additional argument,
::   the file name of the main downloaded image.
::
:: "EDIT" means a timeline edit (cut/copy/paste frames) is
::   complete.
::
:: "CONFORM" means a conform edits is complete.

:: echo Dragonframe Script

:: echo Production    : %1 >> DEBUGPATH\dragonframe_script_log.txt
:: echo Scene         : %2 >> DEBUGPATH\dragonframe_script_log.txt
:: echo Take          : %3 >> DEBUGPATH\dragonframe_script_log.txt
:: echo Action        : %4 >> DEBUGPATH\dragonframe_script_log.txt
:: echo Frame         : %5 >> DEBUGPATH\dragonframe_script_log.txt
:: echo Exposure      : %6 >> DEBUGPATH\dragonframe_script_log.txt
:: echo Exposure Name : %7 >> DEBUGPATH\dragonframe_script_log.txt
:: echo Image Path    : %8 >> DEBUGPATH\dragonframe_script_log.txt

node -- c:\Users\damia\LeonardaCode\dragonframe-osc\dragonframe-script.js %1 %2 %3 %4 %5 %6 %7 %8

exit