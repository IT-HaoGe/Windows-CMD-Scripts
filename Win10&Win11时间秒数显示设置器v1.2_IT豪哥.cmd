@echo off
TITLE Win10&Win11ʱ��������ʾ������v1.2_IT����
color 3f
mode con cols=80 lines=35
:Start
CLS
ECHO. ��Win10&Win11ʱ��������ʾ������v1.2�� by IT����-���Խ̳��� at 2023.4.27
ECHO. ��������֧���������֧�� Win10 ϵͳ���а汾
ECHO. �� ֧�ְ�װ�� StartAllBack �� Win11����Ϊ����������þɰ�������
ECHO. �� �Ѳ���֧��4��25�ո��µ� Win11 ��ʽ�棬ϵͳ�汾��22621.1635
ECHO. 
ECHO. ����IT���磬һ����������̳�UP���������ڳ���������Խ̡̳����Լ��ɡ���������ȣ�������Ч���
ECHO. 
ECHO. ϣ���ҵ�ʵ�������ĵ��ܰﵽ��ң���ӭ���Է���Ļ����˽�Ž�����
ECHO. 
ECHO. ==================================================================================
ECHO. ע�⣺ѡ����ʾ������������Ĭ�ϻ᡾������Դ�����������Ա�������Ч��
ECHO. ==================================================================================
ECHO.
ECHO.       ��ѡ��Ҫ���еĲ���?
ECHO.
ECHO.           1.������ʱ����ʾ����
ECHO.
ECHO.           2.ȡ��������ʱ��������ʾ
ECHO.
ECHO.           3.�ֶ�������Դ������
ECHO.    
ECHO.           4.�鿴������Խ̳�-��ȡIT����ʵ��С����
ECHO.
ECHO.           0.����˳�
ECHO.
ECHO. ==================================================================================
:CHO
set choice=
set /p choice= �������Ӧ���֣�Ȼ�󰴻س���:
if /i "%choice%"=="1" goto Option1
if /i "%choice%"=="2" goto Option2
if /i "%choice%"=="3" goto Option3
if /i "%choice%"=="4" goto Option4
if /i "%choice%"=="0" goto Eixt
echo ѡ����Ч������������
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