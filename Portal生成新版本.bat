@echo off
@echo 设定工具所需的地址
set ClientCommonDLLDir=D:\WebApp\apache-tomcat-7.0.64

set yy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%


echo 开始拷贝
echo.
md "d:\Wamp\www\KTopPortal\%yy%%mm%%dd%"
xcopy "d:\Wamp\www\KTopPortal" "d:\WebApp\grunt" /e /c /y /q
echo.
echo 恢复完毕 by Crmhf
echo.
pause


echo 开始执行打包
cd %ClientCommonDLLDir%
DIR
echo.
echo 恢复完毕 by Crmhf
pause


echo 开始清除代码
cd "D:\WebApp\grunt"
REM  Delete the output files.
if exist *.html* del *.html*
if exist *.js* del *.js*
if exist *.json* del *.json*
if exist temp del temp
echo 恢复完毕 by Crmhf
pause
