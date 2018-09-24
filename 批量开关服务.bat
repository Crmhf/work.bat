@echo off
 
title 各种服务开启、关闭程序 
 
:allstart
 
cls
 
echo Laycher's Blog www.laycher.com
 
echo 1.VMware 服务开启、关闭
 
echo 2.SQL Server 2008 服务开启、关闭
 
echo 3.MySQL 服务开启、关闭
 
echo 4.Oracle XE 服务开启、关闭
 
echo 5.Teamviewer 服务开启、关闭
 
echo 6.Alipay 支付宝 服务开启、关闭
 
echo e.退出
 
set in=
 
set /p in=请输入:
 
if "%in%"=="1" goto vmware
 
if "%in%"=="2" goto sqlserver
 
if "%in%"=="3" goto mysql
 
if "%in%"=="4" goto oraclexe
 
if "%in%"=="5" goto teamviewer
 
if "%in%"=="6" goto alipay
 
if "%in%"=="e" goto allclose
 
rem VMware服务开启、关闭
 
:vmware
 
echo 1.开启vm服务，2.关闭vm服务。3.设置为手动。
 
echo u.回到上层。e.退出。
 
set in= 
 
set /p in=请输入：
 
if "%in%"=="1" goto vmstart
 
if "%in%"=="2" goto vmstop
 
if "%in%"=="3" goto vmsd
 
if "%in%"=="u" goto allstart
 
if "%in%"=="e" goto allclose
 
:vmstart
 
echo "正在启动VMware相关开机服务..."
 
rem net start ufad-ws60
 
net start VMAuthdService
 
net start VMnetDHCP
 
net start "VMware NAT Service"
 
net start VMUSBArbServicepause
 
echo 服务启动完毕!
 
goto vmware
 
:vmstop
 
echo "正在关闭VMware相关开机服务..."
 
rem net stop ufad-ws60
 
net stop VMAuthdService
 
net stop VMnetDHCP
 
net stop "VMware NAT Service"
 
net stop VMUSBArbService
 
echo 服务已关闭!
 
goto vmware
 
:vmsd
 
echo "切换VMware开机启动服务为手动中,请稍候..."
 
sc config VMAuthdService start= demand
 
sc config VMnetDHCP start= demand
 
sc config "VMware NAT Service" start= demand
 
sc config VMUSBArbService start= demand
 
echo 成功切换为手动模式!
 
goto vmware
 
rem SQL Server 2008服务开启、关闭
 
:sqlserver
 
echo 1.开启SQLServer服务，2.关SQLServer服务。3.设置为手动。
 
echo u.回到上层。e.退出。
 
set in= 
 
set /p in=请输入：
 
if "%in%"=="1" goto sqlserverstart
 
if "%in%"=="2" goto sqlserverstop
 
if "%in%"=="3" goto sqlserversd
 
if "%in%"=="u" goto allstart
 
if "%in%"=="e" goto allclose
 
:sqlserverstart
 
echo "正在开启SQL Server相关开机服务"
 
rem SQL Server 代理 (MSSQLSERVER2008)
 
net start SQLAgent$MSSQLSERVER2008
 
rem SQL Full-text Filter Daemon Launcher (MSSQLSERVER2008)
 
net start MSSQLFDLauncher$MSSQLSERVER2008
 
rem SQL Server (MSSQLSERVER2008)
 
net start MSSQL$MSSQLSERVER2008
 
rem SQL Server Browser
 
net start SQLBrowser
 
rem SQL Server Integration Services 10.0
 
net start MsDtsServer100
 
rem SQL Server VSS Writer
 
net start SQLWriter
 
goto sqlserver
 
:sqlserverstop
 
echo "正在关闭SQL Server相关开机服务"
 
net stop SQLAgent$MSSQLSERVER2008
 
net stop MSSQLFDLauncher$MSSQLSERVER2008
 
net stop MSSQL$MSSQLSERVER2008
 
net stop SQLBrowser
 
net stop MsDtsServer100
 
net stop SQLWriter
 
goto sqlserver
 
:sqlserversd
 
echo "切换SQL Server开机启动服务为手动中"
 
sc config SQLAgent$MSSQLSERVER2008 start= demand
 
sc config MSSQLFDLauncher$MSSQLSERVER2008 start= demand
 
sc config MSSQL$MSSQLSERVER2008 start= demand
 
sc config SQLBrowser start= demand
 
sc config MsDtsServer100 start= demand
 
sc config SQLWriter start= demand
 
echo 成功切换为手动模式
 
goto sqlserver
 
rem MySQL服务开启、关闭
 
:mysql
 
echo 1.开启mysql服务，2.关闭mysql服务。3.设置为手动。
 
echo u.回到上层。e.退出。
 
set in= 
 
set /p in=请输入：
 
if "%in%"=="1" goto mysqlstart
 
if "%in%"=="2" goto mysqlstop
 
if "%in%"=="3" goto mysqlsd
 
if "%in%"=="u" goto allstart
 
if "%in%"=="e" goto allclose
 
:mysqlstart
 
echo "正在启动MySQL相关开机服务..."
 
net start MySQL55
 
echo 服务启动完毕!
 
goto mysql
 
:mysqlstop
 
echo "正在关闭MySQL相关开机服务..."
 
net stop MySQL55
 
echo 服务已关闭!
 
goto mysql
 
:mysqlsd
 
echo "切换MySQL开机启动服务为手动中,请稍候..."
 
sc config MySQL55 start= demand
 
echo 成功切换为手动模式!
 
goto mysql
 
rem Oracle XE 服务开启、关闭
 
:oraclexe
 
echo 1.开启oraclexe必要服务，2.关闭oraclexe必要服务。3.设置为手动。
 
echo u.回到上层。e.退出。
 
set in= 
 
set /p in=请输入：
 
if "%in%"=="1" goto oraclexestart
 
if "%in%"=="2" goto oraclexestop
 
if "%in%"=="3" goto oraclexesd
 
if "%in%"=="u" goto allstart
 
if "%in%"=="e" goto allclose1
 
:oraclexestart
 
echo "正在启动oracle xe 必要服务..."
 
net start OracleMTSRecoveryService
 
net start OracleXETNSListener
 
net start OracleServiceXE
 
echo 服务启动完毕!
 
goto oraclexe
 
:oraclexestop
 
echo "正在关闭oracle xe相关开机服务..."
 
net stop OracleMTSRecoveryService
 
net stop OracleXETNSListener
 
net stop OracleServiceXE
 
echo 服务已关闭!
 
goto oraclexe
 
:oraclexesd
 
echo "切换oracle xe开机启动服务为手动中,请稍候..."
 
sc config OracleMTSRecoveryService start= demand
 
sc config OracleServiceXE start= demand
 
sc config OracleServiceXE start= demand
 
sc config OracleXEClrAgent start= demand
 
sc config OracleXETNSListener start= demand
 
echo 成功切换为手动模式!
 
goto oraclexe
 
rem Teamviewer服务开启、关闭
 
:teamviewer
 
echo 1.开启Teamviewer服务，2.关闭Teamviewer服务。3.设置为手动。
 
echo u.回到上层。e.退出。
 
set in= 
 
set /p in=请输入：
 
if "%in%"=="1" goto teamviewerstart
 
if "%in%"=="2" goto teamviewerstop
 
if "%in%"=="3" goto teamviewersd
 
if "%in%"=="u" goto allstart
 
if "%in%"=="e" goto allclose
 
:teamviewerstart
 
echo "正在启动Teamviewer相关开机服务..."
 
net start TeamViewer7
 
echo 服务启动完毕！
 
goto teamviewer
 
:teamviewerstop
 
echo "正在关闭Teamviewer相关开机服务..."
 
net stop TeamViewer7
 
echo 服务已关闭！
 
goto teamviewer
 
:teamviewersd
 
echo "切换TeamViewer开机启动服务为手动中,请稍候..."
 
sc config TeamViewer7 start= demand
 
echo 成功切换为手动模式！
 
goto teamviewer
 
rem alipay服务开启、关闭
 
:alipay
 
echo 1.开启alipay服务，2.关闭alipay服务。3.设置为手动。
 
echo u.回到上层。e.退出。
 
set in= 
 
set /p in=请输入：
 
if "%in%"=="1" goto alipaystart
 
if "%in%"=="2" goto alipaystop
 
if "%in%"=="3" goto alipaysd
 
if "%in%"=="u" goto allstart
 
if "%in%"=="e" goto allclose
 
:alipaystart
 
net start AliveSvc
 
net start AlipaySecSvc
 
goto alipay
 
:alipaystop
 
net stop AliveSvc
 
net stop AlipaySecSvc
 
goto alipay
 
:alipaysd
 
sc config AliveSvc start= demand
 
sc config AlipaySecSvc start= demand
 
goto alipay
 
:allclose
 
echo 按任意键退出
 
pause
 
exit