::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH7eyG8/OwhyXhS9H2ezA7sI1Mru5uaDnUscR/YpRL3eybubMuMW1kP2ZZUR0GhKm4UJFB44
::fBE1pAF6MU+EWH7eyG8/OwhyXhS9H2ezA7sI1Mru5uaDnUscR/YpRL3eybubMuMW1kP2ZZUR0GhKm4UFAhI4
::YAwzoRdxOk+EWAjk
::fBw5plQjdCiDJHSL51EWOgtrbwiLOWWuOpcJ4eT/0OyGsVkLaOs8d4GV07eBQA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnVphFkfU00
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJiZkoaHUrTXA==
::ZQ05rAF9IBncCkqN+0xwdVsGAlXMbSXrZg==
::ZQ05rAF9IAHYFVzEqQIdJwhHahaSA0i2D7AS/Nfd7vmTtC0=
::eg0/rx1wNQPfEVWB+kM9LVsJDCmNL3icFKUjy+Ty6uSTnWscR/YpGA==
::fBEirQZwNQPfEVWB+kM9LVsJDCmNL3icFKUjy+Ty6uSTnWscR/YpGA==
::cRolqwZ3JBvQF1fEqQIdJwhHahaSA0i2D7AS/Nfd7vmTtC0=
::dhA7uBVwLU+EWHSL51EWOgs0
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE2U0jOzhzLA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCiDJHSL51EWOgtrbwiLOWWuOpgT+/vd/fq4gUEUUewrR6nayaCYYNZBpBSqJNh8mH9Cnas=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Mossfrp Windows Bat �ͻ���
CHCP 936
::��һ���ǿ�ͷ��ʾ
::����һЩ��������ɵ����ʾ�Լ��汾��
:start
cls
echo MossFrp Windows Bat Client [By MossCG]
echo Version 2.1.1.1 Beta Fast Version
echo Bվ�ٷ�Channel @ī��MossCG �ǵ�������ע��
echo QQ����Ⱥ 1072507973 ��ӭ���룡
echo ����/���μ��������Ⱥ~
echo Tips���˰汾Ϊ��ݰ�
echo �������֮��ֱ������Frpc
echo ���賤��ʹ����ʹ�ñ�׼��
echo ==========����==========
echo �����뼤����
echo PS�����ְ汾windows��CMD�޷�ctrl+vճ��
echo ���Գ����Ҽ������ں�ɫ����ճ��
echo ==========����==========
@set code=""
@set /p code=
echo ==========��ȡ==========
goto readCode
::��ȡ������Ĳ���
::˵�׾��ǰѼ����밴λ���ָ�
::����֮���ʹ�ö�ȡɶ��
:readCode
echo ���ڽ�����������......
set connectkey=%code%
set prefixLength=%code:~0,1%
if "%prefixLength%" == "3" goto prefixLength3
if "%prefixLength%" == "4" goto prefixLength4
goto CodeCannotUse
::3λǰ׺���ȼ��������
:prefixLength3
set prefix=%code:~1,3%
set authKey=%code:~4,5%
set /a portServer=%code:~9,5%-authKey
set /a portStart=%portServer%+1
set /a portEnd=%portServer%+9
set /a number=%code:~14,7%-authKey
goto checkTrue
::4λǰ׺���ȼ��������
:prefixLength4
set prefix=%code:~1,4%
set authKey=%code:~5,5%
set /a portServer=%code:~10,5%-authKey
set /a portStart=%portServer%+1
set /a portEnd=%portServer%+9
set /a number=%code:~15,7%-authKey
goto checkTrue
::��һ������֤�������������������
::�����û������˴�ļ�����
::ʵ���Ͼ����ж϶˿��Ƿ�С��1����65535��֮���
::�ܺ����߼����Ǻ���Ч
:checkTrue
if %portserver% gtr 65535 goto CodeCannotUse
if %portserver% lss 0 goto CodeCannotUse
goto writeFile
:writeFile
echo ==========������==========
echo �������ţ�%number% 
echo ������ַ��%prefix%.mossfrp.cn
echo ����˿ڣ�%portServer%
echo ���Ŷ˿ڣ�%portStart%-%portEnd%
echo ������Կ��%connectkey%
echo ������ϣ�
ping 127.0.0.1 -n 4 >nul
:copyFiles
cls
echo ==========�����ļ�==========
echo ���ڿ����ļ���......
ping 127.0.0.1 -n 1 >nul
echo �������� frpc.ini
echo [common] >frpc.ini
echo server_addr = %prefix%.mossfrp.cn >>frpc.ini
echo server_port = %portserver% >>frpc.ini
echo token = %connectkey% >>frpc.ini
ping 127.0.0.1 -n 1 >nul
echo �ļ�������ɣ�
:frpcsettingstart
echo ==========��ʼ����==========
echo ���漴����ʼ����......
@set FrpName=
@set FrpType=
@set FrpClientType=
@set PortOpen=
@set LocalIP=
@set PortLocal=
ping 127.0.0.1 -n 2 >nul
:setname
set FrpName=Fast_Cilent
if "%IsCodeFree%" == "true" goto Freesetname
goto settype
:Freesetname
set nameyear=%date:~0,4%
set namemonth=%date:~5,2%
set nameday=%date:~8,2%
set namehour=%time:~0,2%
set nameminute=%time:~3,2%
set namesecond=%time:~6,2%
set FrpName=%nameyear%y%namemonth%mo%nameday%d%namehour%h%nameminute%m%namesecond%s
goto settype
:settype
cls
@set FrpType=
@set FrpClientType=
@set PortOpen=
echo ==========Frpc����==========
echo ����ӳ������[����Exitȡ������]
echo Frpc�������ݣ�
echo ӳ�����ƣ�%FrpName%
echo ӳ�����ͣ�%FrpType%-%FrpClientType%
echo Զ�̶˿ڣ�%PortOpen%
echo ���ص�ַ��%LocalIP%
echo ���ض˿ڣ�%PortLocal%
echo ==========��������==========
echo ������ӳ������ǰ���֣�
echo PS����MC JAVA��Ϊtcpӳ��
echo MC ���Ұ�Ϊudpӳ��
echo 1.tcp
echo 2.udp
echo ==========��������==========
@set FrpType=""
@set /p FrpType=
@set FrpClientType=tcp
if /I "%FrpType%"=="Exit" goto End
if /I "%FrpType%"=="1" set FrpClientType=tcp
if /I "%FrpType%"=="2" set FrpClientType=udp
if /I "%FrpType%"=="1" goto setremoteport
if /I "%FrpType%"=="2" goto setremoteport
goto TypeCannotUse
:setremoteport
cls
@set PortOpen=
@set LocalIP=
echo ==========Frpc����==========
echo ����ӳ������[����Exitȡ������]
echo Frpc�������ݣ�
echo ӳ�����ƣ�%FrpName%
echo ӳ�����ͣ�%FrpType%-%FrpClientType%
echo Զ�̶˿ڣ�%PortOpen%
echo ���ص�ַ��%LocalIP%
echo ���ض˿ڣ�%PortLocal%
echo ==========����Զ�̶˿�==========
echo ������Զ�̶˿ڣ�
echo PS�����ö˿ڷ�Χ��%portStart%-%portEnd%
echo �������Ϸ��˿ڷ�Χ������˿�
echo ����Back���Է�����һ������
echo ==========����Զ�̶˿�==========
@set PortOpen=""
@set /p PortOpen=
if /I "%PortOpen%"=="Exit" goto End
if /I "%PortOpen%"=="Back" goto settype
if %PortOpen% gtr %portEnd% goto ServerPortCannotUse
if %PortOpen% lss %portStart% goto ServerPortCannotUse
:setlocalip
cls
@set PortLocal=
@set LocalIP=
echo ==========Frpc����==========
echo ����ӳ������[����Exitȡ������]
echo Frpc�������ݣ�
echo ӳ�����ƣ�%FrpName%
echo ӳ�����ͣ�%FrpType%-%FrpClientType%
echo Զ�̶˿ڣ�%PortOpen%
echo ���ص�ַ��%LocalIP%
echo ���ض˿ڣ�%PortLocal%
echo ==========���ñ��ص�ַ==========
echo ������Ҫӳ��ĵ�ַ��
echo PS���籾�ص�ַΪ127.0.0.1
echo �벻Ҫ�ڴ˴�����˿ڣ�����
echo ����Back���Է�����һ������
echo ==========���ñ��ص�ַ==========
@set LocalIP=""
@set /p LocalIP=
if /I "%LocalIP%"=="Exit" goto End
if /I "%LocalIP%"=="Back" goto setremoteport
:setlocalport
cls
@set PortLocal=
echo ==========Frpc����==========
echo ����ӳ������[����Exitȡ������]
echo Frpc�������ݣ�
echo ӳ�����ƣ�%FrpName%
echo ӳ�����ͣ�%FrpType%-%FrpClientType%
echo Զ�̶˿ڣ�%PortOpen%
echo ���ص�ַ��%LocalIP%
echo ���ض˿ڣ�%PortLocal%
echo ==========���ñ��ض˿�==========
echo ������Ҫӳ��ı��ض˿ڣ�
echo PS����MC������Ĭ�϶˿�25565
echo ����Back���Է�����һ������
echo ==========���ñ��ض˿�==========
@set PortLocal=""
@set /p PortLocal=
if /I "%PortLocal%"=="Exit" goto End
if /I "%PortLocal%"=="Back" goto setlocalip
if %PortLocal% gtr 65535 goto LocalPortCannotUse
if %PortLocal% lss 1 goto LocalPortCannotUse
:frpcsettingswrite
echo ==========д������==========
echo ���ڽ�����д��frpc.ini
echo [%FrpName%] >>frpc.ini
echo type = %FrpClientType% >>frpc.ini
echo local_ip = %LocalIP% >>frpc.ini
echo local_port = %PortLocal% >>frpc.ini
echo remote_port = %PortOpen% >>frpc.ini
ping 127.0.0.1 -n 1 >nul
:frpcstart
echo ==========����frpc==========
title MossFrp Cilent [By MossCG]
echo ����������������......
ping 127.0.0.1 -n 2 >nul
echo ������ϣ�
:defaultAD
echo ==========�ڵ���Ϣ==========
echo ������ʹ�õ���MossFrp������͸
echo �ٷ�����Ⱥ 1072507973
goto frpcstart2
:frpcstart2
echo ==========��������==========
echo ӳ�����ƣ�%FrpName%
echo ӳ�����ͣ�%FrpClientType%
echo ���ص�ַ��%LocalIP%:%PortLocal%
echo Զ�̵�ַ��%prefix%.mossfrp.cn:%PortOpen%
echo ==========����Frp==========
echo -----===MossFrp by MossCG===-----
echo ��������frpc......
call frpc.exe -c frpc.ini
echo -----===MossFrp by MossCG===-----
echo ��⵽frpc���̽����������Զ�������
ping 127.0.0.1 -n 5 >nul
goto frpcstart
pause
:ServerPortCannotUse
echo �˶˿���Ч��
echo ���ö˿ڷ�Χ��%portStart%-%portEnd%
ping 127.0.0.1 -n 2 >nul
goto setremoteport
:LocalPortCannotUse
echo �˶˿���Ч��
echo ���ö˿ڷ�Χ��1-65535
ping 127.0.0.1 -n 2 >nul
goto setlocalport
:TypeCannotUse
echo ��������Ч��
echo ���������ã�
ping 127.0.0.1 -n 2 >nul
goto settype
:FreeCannotUse
echo �˱����Ч��
echo ���������ã�
ping 127.0.0.1 -n 2 >nul
goto Freecode
:CodeCannotUse
echo ��������֤ʧ�ܣ�
echo ��ȷ�ϼ�����������������ɼ�����
ping 127.0.0.1 -n 2 >nul
goto start
:End
echo ���н�������лʹ��MossFrp��
exit