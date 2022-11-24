@echo off
cd %~dp0
set gmeLoc=%~dp0
::dev stuff
::set canRun=True
::set charTmp=1
::goto gameStart


if not '%canRun%'=='True' (
    exit
    )
setlocal disabledelayedexpansion
if '%canLoad%'=='True' (
    goto %ldLoc%
)

goto start

::----PREDETERMINED ACTIONS (USE call :[action] TO USE)----
:save
cls
echo Saving...
call :p2
if '%sveLoc%'=='' (
    echo Unable to save.
    pause
    exit
)
::Saves data::
echo %sveLoc%>%gmeLoc%SAVE\Loc.sve
echo %char%>%gmeLoc%SAVE\char.sve
exit

:p1
    timeout 1 /nobreak >nul
    goto :eof
:p2
    timeout 2 /nobreak >nul
    goto :eof
:p3
    timeout 3 /nobreak >nul
    goto :eof
:p4
    timeout 4 /nobreak >nul
    goto :eof
:pause
    echo.
    set /p dummyvar="Press ENTER to continue. . ."
    if '%dummyvar%'=='secret' (
        echo Did you seriously think I'd hide something in the pause action? Well, you'd be right ^>:\
        pause
    )

    if '%dummyvar%'=='exit' (
        goto save
    )
    set dummyvar=0
    goto :eof
::--------

:start

cls
echo [It was a dark and quiet night in the forest's of Tek'yr... Not even crows dared caw to interrupt it.]
call :p3
echo [Through countless wars, this place had remained untouched. Until today...]
call :p4
echo.
pause

:chsChar
cls

echo [---CHOOSE YOUR CHARACTER---]
echo.
echo.
echo 1) Arel Xyrmaris  /  2) ???
echo.
echo.
set /p charTmp=

if '%charTmp%'=='1' (
    echo.
    echo Are you sure?
    echo.
    setlocal enabledelayedexpansion
    set /p chsChar2=
    if /I '!chsChar2!'=='y' (
        cls
        set char=Arel
        goto gameStart
    ) ELSE (
        call :dde
        goto chsChar
    )
)
if '%charTmp%'=='2' (
    goto chsChar
)
goto chsChar


:gameStart
setlocal disabledelayedexpansion
echo -DISCLAIMER-
echo.
echo This game is not complete, and the way it handels save data can change at any time.
echo I cannot guarantee that you will not loose save data.
echo.
echo By continuing, you agree that you have read this message, and accept any save data loss that comes with it.
echo.
echo However, any pre-alpha testing feedback (other than save data loss for the aforementioned reason) is always appreciated!
pause
echo THIS IS YOUR FINAL WARNING
pause
cls

::Story begins here.
echo {TIP: type exit at any pause point to save the game and close it.}

echo.
echo "Arel!!"
echo.
echo I look up from the notebook I was writing in to see my colleague rushing towards me. I close it.
call :pause
echo.
echo "Arelllllll!!"
echo.
echo "I hear you!" I yell, setting the notebook down beside me.
call :pause
echo.
echo A short woman with short, dark redish hair burst into my tent, out of breath.
echo.
echo "Arel... You... Won't believe what I just found..."
:c1p1
set sveLoc=c1p1
echo.
echo --CHAPTER ONE: A World Worth Saving--
call :pause
call :p3
cls

echo I stand up. "Oh?"
echo.
echo She nods. "Yeah! Comeoncomeoncomeon!!!"
echo.
echo "Okay, okay! I'm coming!"
call :pause
echo.
echo I follow the woman, who seemed strangely excited about whatever she wanted to show me.
echo This woman was Inari Riki, one of the more favorable people I had worked with before.
call :p1
echo.
echo "Inari? What's got you in such an excited mood?" I asked.
:c1p2
set sveLoc=c1p2
echo.
echo "Huh?" She looked back at me. "Well... You'll see!"
echo.
echo When people say "you'll see", it doesn't normally end well. But I'll give her the benefit of the doubt.
call :pause


pause
exit