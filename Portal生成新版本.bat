@echo off
@echo �趨��������ĵ�ַ
set ClientCommonDLLDir=D:\WebApp\apache-tomcat-7.0.64

set yy=%date:~0,4%
set mm=%date:~5,2%
set dd=%date:~8,2%


echo ��ʼ����
echo.
md "d:\Wamp\www\KTopPortal\%yy%%mm%%dd%"
xcopy "d:\Wamp\www\KTopPortal" "d:\WebApp\grunt" /e /c /y /q
echo.
echo �ָ���� by Crmhf
echo.
pause


echo ��ʼִ�д��
cd %ClientCommonDLLDir%
DIR
echo.
echo �ָ���� by Crmhf
pause


echo ��ʼ�������
cd "D:\WebApp\grunt"
REM  Delete the output files.
if exist *.html* del *.html*
if exist *.js* del *.js*
if exist *.json* del *.json*
if exist temp del temp
echo �ָ���� by Crmhf
pause
