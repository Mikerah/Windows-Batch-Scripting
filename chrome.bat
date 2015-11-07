@echo off

REM the values of height and length vary between 500 and 1520 and 500 and 1045 respectively
set /A height=%RANDOM% * 1520/32767+500
set /A length=%RANDOM% * 1045/32767+500
REM the values for x and y vary between 500 and 1000 and 500 and 950 respectively.
set /A x=%RANDOM% * 1000/32767+500
set /A y=%RANDOM% * 950/32767+500
REM these command-line options are available on chrome's main website
start chrome.exe -incognito --window-size=%height%,%length% --window-position=x,y
