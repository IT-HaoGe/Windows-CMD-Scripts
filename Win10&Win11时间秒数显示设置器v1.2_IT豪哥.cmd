@echo off
TITLE Win10&Win11时间秒数显示设置器v1.2_IT豪哥
color 3f
mode con cols=80 lines=35
:Start
CLS
ECHO. 【Win10&Win11时间秒数显示设置器v1.2】 by IT豪哥-电脑教程网 at 2023.4.27
ECHO. 秒数设置支持情况：①支持 Win10 系统所有版本
ECHO. ② 支持安装了 StartAllBack 的 Win11，因为该软件会启用旧版任务栏
ECHO. ③ 已测试支持4月25日更新的 Win11 正式版，系统版本号22621.1635
ECHO. 
ECHO. 我是IT豪哥，一个电脑软件教程UP主！致力于持续分享电脑教程、电脑技巧、软件操作等，助力高效生活。
ECHO. 
ECHO. 希望我的实践经验心得能帮到大家，欢迎留言发弹幕或者私信交流。
ECHO. 
ECHO. ==================================================================================
ECHO. 注意：选择显示或隐藏秒数后，默认会【重启资源管理器】，以便设置生效！
ECHO. ==================================================================================
ECHO.
ECHO.       请选择要进行的操作?
ECHO.
ECHO.           1.任务栏时间显示秒数
ECHO.
ECHO.           2.取消任务栏时间秒数显示
ECHO.
ECHO.           3.手动重启资源管理器
ECHO.    
ECHO.           4.查看更多电脑教程-获取IT豪哥实用小工具
ECHO.
ECHO.           0.完成退出
ECHO.
ECHO. ==================================================================================
:CHO
set choice=
set /p choice= 请输入对应数字，然后按回车键:
if /i "%choice%"=="1" goto Option1
if /i "%choice%"=="2" goto Option2
if /i "%choice%"=="3" goto Option3
if /i "%choice%"=="4" goto Option4
if /i "%choice%"=="0" goto Eixt
echo 选择无效，请重新输入
echo.
GOTO Start

:Option1
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSecondsInSystemClock" /t REG_DWORD /d 1 /f
taskkill /f /im explorer.exe
start explorer.exe
pause
GOTO Start

:Option2
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowSecondsInSystemClock" /t REG_DWORD /d 0 /f
taskkill /f /im explorer.exe
start explorer.exe
pause
GOTO Start

:Option3
taskkill /f /im explorer.exe
start explorer.exe
pause
GOTO Start

:Option4
START https://www.ithaoge.cn
pause
GOTO Start

:Eixt
exit