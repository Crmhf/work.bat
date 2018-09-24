echo off
echo wscript.sleep 600000>C:\Sleep.Vbs
start /wait C:\Sleep.Vbs
start 你要启动的程序
del C:\Sleep.Vbs
exit