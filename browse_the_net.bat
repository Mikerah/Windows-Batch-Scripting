@ECHO OFF
REM This program opens one of two browsers on one's computer and opens a search engine.

echo ############################################################
echo.
echo With this program, you can browse the Internet with ease.
echo.
echo ############################################################
echo.

echo Choice of Web Browser
echo 1) Google Chrome
echo 2) Mozilla Firefox
echo.
echo Choice of Search Engine
echo 1) Google
echo 2) Bing
echo 3) Yahoo
echo 4) Startpage
echo 5) Duck Duck Go
echo 6) Disconnect

set /p wb=Enter the browser you want to use: 
set /p se=Enter the search engine you want to use: 

if %wb%==1 goto google_chrome
if %wb%==2 goto mozilla_firefox

:google_chrome
if %se%==1 start chrome.exe www.google.com
if %se%==2 start chrome.exe www.bing.com
if %se%==3 start chrome.exe www.yahoo.com
if %se%==4 start chrome.exe www.startpage.com
if %se%==5 start chrome.exe www.duckduckgo.com
if %se%==6 start chrome.exe www.disconnect.com
goto eof

:mozilla_firefox
if %se%==1 start firefox.exe www.google.com
if %se%==2 start firefox.exe www.bing.com
if %se%==3 start firefox.exe www.yahoo.com
if %se%==4 start firefox.exe www.startpage.com
if %se%==5 start firefox.exe www.duckduckgo.com
if %se%==6 start firefox.exe www.disconnect.com
goto eof

pause