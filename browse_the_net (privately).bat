@ECHO OFF
title Browse The Net Like a Paranoid
REM This program opens one of two browsers on one's computer and opens a search engine.
REM But in this case, it opens the so-called private browsing mode where internet history 
REM and whatnot is not recorded by the browsers.

echo ############################################################
echo.
echo Welcome to Browsing the Internet for the Paranoid !!!!!!!!!!
echo.
echo With this progam, you can browse the net without your internet
echo history being recorded.
echo.
echo ############################################################
echo.

echo Choice of Web Browser
echo 1) Google Chrome
echo 2) Mozilla Firefox
echo.
echo Choice of Search Engine
echo 1) Startpage
echo 2) Duck Duck Go
echo 3) Disconnect

set /p wb=Enter the browser you want to use: 
set /p se=Enter the search engine you want to use: 

if %wb%==1 goto google_chrome
if %wb%==2 goto mozilla_firefox

:google_chrome
if %se%==1 start chrome.exe -incognito www.startpage.com
if %se%==2 start chrome.exe -incognito www.duckduckgo.com
if %se%==3 start chrome.exe -incognito www.disconnect.com
goto eof

:mozilla_firefox
if %se%==1 start firefox.exe -private www.startpage.com
if %se%==2 start firefox.exe -private www.duckduckgo.com
if %se%==3 start firefox.exe -private www.disconnect.com
goto eof

pause