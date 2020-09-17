gcc app.c -mwindows -o build.exe
"rtc/rtc.exe" /L /F:".\updateRC.rts"
rename build.exe pizzatowre_gm2.exe

set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%

set SUBFOLDER=%CUR_YYYY%-%CUR_MM%-%CUR_DD%_%CUR_HH%-%CUR_NN%-%CUR_SS%
mkdir ".\builds\%SUBFOLDER%"

copy pizzatowre_gm2.exe ".\builds\%SUBFOLDER%\
copy ".\resources\the data dot win.win" ".\builds\%SUBFOLDER%\

7z.exe a -tzip ".\builds\%SUBFOLDER%\my very real mod.zip" pizzatowre_gm2.exe ".\resources\the data dot win.win"

del pizzatowre_gm2.exe /f /q