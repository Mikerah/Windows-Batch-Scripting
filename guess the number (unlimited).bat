@ECHO OFF 
TITLE Guess the number (unlimited)
REM This is a version of guess the number. The range of the number to guessed is 0 to 32767, the range of the %random% variable.
REM There is an unlimited amount of tries for each guess. That is why this file has unlimited in its title.


:guess_again
cls
ECHO ################## Welcome to Guess the number ##################
ECHO You have to guess a number between 0 and 32767. You have an unlimited number of guesses.
ECHO ################## That is one big ass range   ##################
ECHO.
SET /A number_to_guess = %RANDOM%
SET /P guess=Guess?
if %guess%==%number_to_guess% (goto won) else (goto maybe_end)

:maybe_end
SET /P ans=Do you want to continue (Y/N):
if /i %ans%==Y (goto guess_again) 
if /i "%ans%"=="N" (goto end) else call :invalid_input
pause

:won
ECHO You have won!
pause
goto eof

:end
ECHO.
ECHO Goodbye.
pause
goto eof

:invalid_input
echo It's either a lowercase or uppercase y or n. Nothing else
goto maybe_end