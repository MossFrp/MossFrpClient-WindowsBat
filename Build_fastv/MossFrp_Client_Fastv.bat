::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHzeyG8/OwhyXhS9H2ezA7sI1Mru5uaDnUscR/YpRL3eybubMuMW1kP2ZZUR0GhKm4UJFB44
::fBE1pAF6MU+EWHzeyG8/OwhyXhS9H2ezA7sI1Mru5uaDnUscR/YpRL3eybubMuMW1kP2ZZUR0GhKm4UFAhI4
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJHSL51EWOgtrbwiLOWWuOpcJ4eT/0OyGsVkLaOs8d4GV07eBQA==
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
::cxY6rQJ7JhzQF1fEqQJhZkoaG0rQXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlXMayXoZg==
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
::Zh4grVQjdCqDJHSL51EWOgtrbwiLOWWuOpgT+/vd/fq4gUEUUewrR6nayaCYYNZCpBSqIth/mH9Cnas=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Mossfrp�ͻ���
CHCP 936
::��һ���ǿ�ͷ��ʾ
::����һЩ��������ɵ����ʾ�Լ��汾��
:start
cls
echo MossFrp Client [By MossCG]
echo Version 1.1.7.2 Fast Version
echo Bվ�ٷ�Channel @ī��MossCG �ǵ�������ע��
echo QQ����Ⱥ 1072507973 ��ӭ���룡
echo ����/���μ��������Ⱥ~
echo Tips���˰汾Ϊ��ݰ�
echo �������֮��ֱ������Frpc
echo ���賤��ʹ����ʹ�ñ�׼��
echo ==========����==========
echo ������84λ������
echo PS�����ְ汾windows��CMD�޷�ctrl+vճ��
echo ���Գ����Ҽ������ں�ɫ����ճ��
echo ����Free��ʹ�ù����������
echo ==========����==========
@set code=""
@set /p code=
echo ==========��ȡ==========
echo ���ڶ�ȡ��������......
if /I "%code:~0,4%"=="Free" goto Freecode
@set IsCodeFree=false
goto Readcode
::ʹ��FREE������ѡ��ڵ�Ĳ���
::�߼����򵥵�
:Freecode
@set LineChoose=
@set LineUse=
@set IsCodeFree=true
echo ==========��ʾ==========
echo ʹ�ù������룡
echo ������ζ��������������ߴ���ļ�����~
echo ������������ѵ�~�۱���ռ��Free���������~
echo ȥ����һ��������~
echo ==========��ʾ==========
echo �ڵ��б�
::echo 1 zz1 ��ׯһ�ڵ� ���� 10M���� ��������
::echo 2 sh1 �Ϻ�һ�ڵ� ��Ѷ�� 30M���� ��1000G����
::echo 3 cz1 ����һ�ڵ� ���� 10M���� ��4000G����
::echo 4 sh2 �Ϻ����ڵ� ��Ѷ�� 100M���� �����Ʒ�
echo 5 xg1 ���һ�ڵ� ��Ѷ�� 10M���� ��2000G����
::echo 6 sh3 �Ϻ����ڵ� ������ 80M���� �����Ʒ�
echo 7 sc1 �Ĵ�һ�ڵ� �ƶ� 10M���� ��������
echo 8 jp1 �ձ�һ�ڵ� NTT 100M���� ��������
echo 9 sq1 ��Ǩһ�ڵ� ���� 10M���� ��������
echo 10 xg2 ��۶��ڵ� ���� 50M���� ��500G����
::echo 11 xc1 ���һ�ڵ� ��ͨ 10M���� ������������free��
echo 12 rs1 ����˹һ�ڵ� ���� 200M���� ��������
echo 13 rs2 ����˹���ڵ� ���� 100M���� ��������
echo ������ڵ�ǰ���ֱ�ţ�
echo ����Back���Է�����һ������
@set LineChoose=""
@set /p LineChoose=
if /I "%LineChoose%"=="Exit" goto End
if /I "%LineChoose%"=="Back" goto start
::if /I "%LineChoose%"=="1" set LineUse=zz1
::if /I "%LineChoose%"=="1" set code=405460754060408040664082410019316611499994734090012782834256120261323295926062168zz1
::if /I "%LineChoose%"=="1" goto Readcode
::if /I "%LineChoose%"=="2" set LineUse=sh1
::if /I "%LineChoose%"=="2" set code=183338541840185318441845185812116510199993874000017605565421416721761568242771914sh1
::if /I "%LineChoose%"=="2" goto Readcode
if /I "%LineChoose%"=="3" set LineUse=cz1
if /I "%LineChoose%"=="3" set code=248545062492250825072524249811315911399993855000018641536500845721967174951044620cz1
if /I "%LineChoose%"=="3" goto Readcode
::if /I "%LineChoose%"=="4" set LineUse=sh2
::if /I "%LineChoose%"=="4" set code=541374345420544254305427545110614010799993534000023835420302453362555550132285589sh2
::if /I "%LineChoose%"=="4" goto Readcode
if /I "%LineChoose%"=="5" set LineUse=xg1
if /I "%LineChoose%"=="5" set code=472967504737473447414765477016813311699994174900050143090214352495057321923155345xg1
if /I "%LineChoose%"=="5" goto Readcode
::if /I "%LineChoose%"=="6" set LineUse=sh3
::if /I "%LineChoose%"=="6" set code=407860994086408640944128412014219111699994494000031441781571615633250179659031725sh3
::if /I "%LineChoose%"=="6" goto Readcode
if /I "%LineChoose%"=="7" set LineUse=sc1
if /I "%LineChoose%"=="7" set code=193039511938193819481955196810914011199993604200032881451265541543405162526804214sc1  
if /I "%LineChoose%"=="7" goto Readcode
if /I "%LineChoose%"=="8" set LineUse=jp1
if /I "%LineChoose%"=="8" set code=404860694056406040584064408418015018899995183000029585971191851063090619719295360jp1  
if /I "%LineChoose%"=="8" goto Readcode
if /I "%LineChoose%"=="9" set LineUse=sq1
if /I "%LineChoose%"=="9" set code=639984206407641464106412640311212512899993654200027893524104215652850367112891577sq1
if /I "%LineChoose%"=="9" goto Readcode
if /I "%LineChoose%"=="10" set LineUse=xg2
if /I "%LineChoose%"=="10" set code=551375345521553555355529553015710911299993784000022042720331723982296283835062403xg2
if /I "%LineChoose%"=="10" goto Readcode
if /I "%LineChoose%"=="11" set LineUse=rs1
if /I "%LineChoose%"=="11" set code=618082016189618162036183622312714214899994175000022924148562316152487420656711757rs1
if /I "%LineChoose%"=="11" goto Readcode
if /I "%LineChoose%"=="12" set LineUse=rs2
if /I "%LineChoose%"=="12" set code=597779985986599460005987602811318819099994914000051285324456250685173548045865192rs2
if /I "%LineChoose%"=="12" goto Readcode
ping 127.0.0.1 -n 3 >nul
goto FreeCannotUse
::��ȡ������Ĳ���
::˵�׾��ǰѼ����밴λ���ָ�
::����֮���ʹ�ö�ȡɶ��
:Readcode
echo ���ڽ�����������......
set connectkey=%code:~0,44%
set /a authkey=%code:~0,4%
set /a year=%code:~4,4%-%authkey%
set /a month=%code:~8,4%-%authkey%
set /a day=%code:~12,4%-%authkey%
set /a hour=%code:~16,4%-%authkey%
set /a minute=%code:~20,4%-%authkey%
set /a second=%code:~24,4%-%authkey%
set /a numberkeypart1=%code:~28,3%
set /a numberkeypart2=%code:~31,3%
set /a numberkeypart3=%code:~34,3%
set /a number=%code:~37,7%-%numberkeypart1%-%numberkeypart2%-%numberkeypart3%
set /a portserver=%code:~44,5%
set /a portclientstart=%portserver%+1
set /a portclientend=%portserver%+9
set /a ipkeypart1=%code:~49,4%
set /a ipkeypart2=%code:~53,4%
set /a ipkeypart3=%code:~57,4%
set /a ipkeypart4=%code:~61,4%
set /a ippart1=%code:~65,4%-%ipkeypart1%
set /a ippart2=%code:~69,4%-%ipkeypart2%
set /a ippart3=%code:~73,4%-%ipkeypart3%
set /a ippart4=%code:~77,4%-%ipkeypart4%
set ippart5=%code:~81,3%
set ippart6=%code:~84,3%
set designippart=
::��һ������֤�������������������
::�����û������˴�ļ�����
::ʵ���Ͼ����ж϶˿��Ƿ�С��1����65535��֮���
::�ܺ����߼����Ǻ���Ч
echo ==========��֤==========
echo ������֤��������......
if %hour% gtr 24 goto CodeCannotUse
if %hour% lss 0 goto CodeCannotUse
if %month% gtr 12 goto CodeCannotUse
if %month% lss 0 goto CodeCannotUse
if %portserver% gtr 65535 goto CodeCannotUse
if %portserver% lss 0 goto CodeCannotUse
if %ippart1% gtr 255 goto CodeCannotUse
if %ippart1% lss 0 goto CodeCannotUse
if %ippart2% gtr 255 goto CodeCannotUse
if %ippart2% lss 0 goto CodeCannotUse
if %ippart3% gtr 255 goto CodeCannotUse
if %ippart3% lss 0 goto CodeCannotUse
if %ippart4% gtr 255 goto CodeCannotUse
if %ippart4% lss 0 goto CodeCannotUse
if /I "%ippart6%"=="dsg" goto DesignLine
goto Checkisfree
:Checkisfree
if "%IsCodeFree%" == "true" goto SetFreePort
if "%IsCodeFree%" == "false" goto checktrue
:SetFreePort
if "%LineUse%" == "zz1" set /a portclientstart=%portserver%+1
if "%LineUse%" == "zz1" set /a portclientend=%portserver%+99
if "%LineUse%" == "sh1" set /a portclientstart=%portserver%+1
if "%LineUse%" == "sh1" set /a portclientend=%portserver%+10000
if "%LineUse%" == "cz1" set /a portclientstart=%portserver%+1
if "%LineUse%" == "cz1" set /a portclientend=%portserver%+10000
if "%LineUse%" == "sh2" set /a portclientstart=%portserver%+1
if "%LineUse%" == "sh2" set /a portclientend=%portserver%+200
if "%LineUse%" == "xg1" set /a portclientstart=%portserver%+1
if "%LineUse%" == "xg1" set /a portclientend=%portserver%+1000
if "%LineUse%" == "sh2" set /a portclientstart=%portserver%+1
if "%LineUse%" == "sh2" set /a portclientend=%portserver%+10000
if "%LineUse%" == "sc1" set /a portclientstart=%portserver%+1
if "%LineUse%" == "sc1" set /a portclientend=%portserver%+1000
if "%LineUse%" == "jp1" set /a portclientstart=%portserver%+1
if "%LineUse%" == "jp1" set /a portclientend=%portserver%+5000
if "%LineUse%" == "sq1" set /a portclientstart=%portserver%+1
if "%LineUse%" == "sq1" set /a portclientend=%portserver%+1000
if "%LineUse%" == "xg2" set /a portclientstart=%portserver%+1
if "%LineUse%" == "xg2" set /a portclientend=%portserver%+10000
if "%LineUse%" == "rs1" set /a portclientstart=%portserver%+1
if "%LineUse%" == "rs1" set /a portclientend=%portserver%+10000
if "%LineUse%" == "rs2" set /a portclientstart=%portserver%+1
if "%LineUse%" == "rs2" set /a portclientend=%portserver%+10000
goto checktrue
:DesignLine
set /a portclientstart=1
set /a portclientend=65535
set designippart=.dz
:checktrue
echo ==========������==========
echo �������ţ�%number% 
echo ��ͨʱ�䣺%year%-%month%-%day% %hour%:%minute%:%second%
echo ���ֵ�ַ��%ippart1%.%ippart2%.%ippart3%.%ippart4%
echo ������ַ��%ippart5%%designippart%.mossfrp.cn
echo ����˿ڣ�%portserver%
echo ���Ŷ˿ڣ�%portclientstart%-%portclientend%
echo ������Կ��%connectkey%
echo ������ϣ�
ping 127.0.0.1 -n 3 >nul
:Copyfiles
cls
echo ==========�����ļ�==========
echo ���ڿ����ļ���......
ping 127.0.0.1 -n 1 >nul
echo �������� frpc.ini
echo [common] >frpc.ini
echo server_addr = %ippart5%%designippart%.mossfrp.cn >>frpc.ini
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
echo PS�����ö˿ڷ�Χ��%portclientstart%-%portclientend%
echo �������Ϸ��˿ڷ�Χ������˿�
echo ����Back���Է�����һ������
echo ==========����Զ�̶˿�==========
@set PortOpen=""
@set /p PortOpen=
if /I "%PortOpen%"=="Exit" goto End
if /I "%PortOpen%"=="Back" goto settype
if %PortOpen% gtr %portclientend% goto ServerPortCannotUse
if %PortOpen% lss %portclientstart% goto ServerPortCannotUse
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
:ADs
goto WriteADs
:WriteADs
if "%LineUse%" == "zz1" goto zz1ADs
if "%LineUse%" == "sh1" goto sh1ADs
if "%LineUse%" == "cz1" goto cz1ADs
if "%LineUse%" == "sh2" goto sh2ADs
if "%LineUse%" == "xg1" goto xg1ADs
if "%LineUse%" == "sh3" goto sh3ADs
if "%LineUse%" == "sc1" goto sc1ADs
if "%LineUse%" == "jp1" goto jp1ADs
if "%LineUse%" == "sq1" goto sq1ADs
if "%LineUse%" == "xg2" goto xg2ADs
if "%LineUse%" == "xc1" goto xc1ADs
if "%LineUse%" == "rs1" goto rs1ADs
if "%LineUse%" == "rs2" goto rs2ADs
goto frpcstart2
:zz1ADs
echo ==========�ڵ���Ϣ==========
echo ������ʹ�õ���MossFrp�ٷ���ѽڵ�
echo ��Ȼ��Ҳ��������һ���ڵ�
echo ���������ʾ�����Զ���ADŶ~
goto frpcstart2
:sh1ADs
echo ==========�ڵ���Ϣ==========
echo ������ʹ�õ��������ڵ�
echo Star Bonfire�ǿ�������� ��ӭ��ĵ���
echo Java����IP:je.lmzj.cf ��QQȺ:1045317538
echo BE����IP:mc.lmzj.cf���˿�:40302��
echo �汾��1.16.x~1.17.x(JE��)1.17.x(BE)
goto frpcstart2
:cz1ADs
echo ==========�ڵ���Ϣ==========
echo ������ʹ�õ���MossFrp�ٷ���ѽڵ�
echo ��Ȼ��Ҳ��������һ���ڵ�
echo ���������ʾ�����Զ���ADŶ~
echo PS�����Ǯ��~���ӿ�Ҫ�Բ�����~
goto frpcstart2
:sh2ADs
echo ==========�ڵ���Ϣ==========
echo ��Ҫ���Ը��κ�Υ��������
echo �з���ں�̨����
echo ��������WAF
echo .
echo ���ǣ���IP�����Ʒѵİ����ܲ��ܴ�����ѹ����
echo ===========================================
echo ��ӭʹ��MossFrp�Ϻ�2�ڵ� By �з build e37fd24
echo ��ӭ��������www.crabdrive.cnע����˺�Ȼ���Ǯ����
echo ��ӭ��������
echo ԭ��ٷ�uid 177455888
echo B�� 506634621
echo �����HK,TW,MO�� 902026416
echo .
echo ���������һ�飬��Ҫ���Թ���������
echo .
echo ��������ȫ�ұ���
goto frpcstart2
:xg1ADs
echo ==========�ڵ���Ϣ==========
echo ��ӭʹ����۽ڵ㣬������һ�¹�ؾ�����
echo 1.��Ҫ��ͼ������������.��Ҫ��ͼ������������.��Ҫ��ͼ������������
echo 2.��Ҫ�Υ���Ķ���Ŷ��лл������
echo 3.��ʱ�ں�̨ͻ����飬лл֧��Ŷ
echo ��л����ʹ�ã��������Ļ�����һ�°ɣ�����Ҳ��Ҫ�Է��Σ�
echo ��ӭ������������ https://afdian.net/@ren001 
goto frpcstart2
:sh3ADs
echo ==========�ڵ���Ϣ==========
echo ��ӭʹ��
echo ���𹥻����������򾯲����Ų���ˮ��
echo �κ��¶���ڵ�������޹�
echo ������ַ��https://afdian.net/@dfff5f8
echo ���ͣ�blog.skyould.top
echo ��MossCGǿ������
goto frpcstart2
:sc1ADs
echo ==========�ڵ���Ϣ==========
echo ��ӭʹ���Ĵ��ƶ��ڵ㣡
echo ����K����~��л֧��~
goto frpcstart2
:jp1ADs
echo ==========�ڵ���Ϣ========== 
echo ��ӭʹ���ձ�һ�ڵ㣡
echo ��һֻ������~��л֧��~
echo ī�����Ķ��ף�
echo ��һ�ο���������ô������emmm
echo ����ڵ����ö�����Ҽ�����������ø���
echo ����Ϊ1000M��ӭʹ�ã�
echo �벻Ҫ��Υ����;Ŷ��
goto frpcstart2
:sq1ADs
echo ==========�ڵ���Ϣ==========
echo ��ӭʹ����Ǩһ�ڵ㣡
echo ����Ƽ������ܴ����ͼ�i9������
echo 50Ԫ/����
echo ��ϵ��ʽQQ: 1350944738
goto frpcstart2
:xg1ADs
echo ==========�ڵ���Ϣ==========  
echo ��ӭʹ����۶��ڵ㣡 
echo �ɳٳ�����~��л֧��~ 
goto frpcstart2
:xc1ADs
echo ==========�ڵ���Ϣ==========  
echo ������ʹ�õ���MossFrp�ٷ��ڵ� 
echo ��Ȼ��Ҳ��������һ���ڵ� 
echo ���������ʾ�����Զ���ADŶ~ 
echo PS�����Ǯ��~���ӿ�Ҫ�Բ�����~
goto frpcstart2
:rs1ADs
echo ==========�ڵ���Ϣ==========  
echo ��ӭʹ�ö���˹һ�ڵ㣡 
echo ��Nazereth����~��л֧��~ 
goto frpcstart2
:rs2ADs
echo ==========�ڵ���Ϣ==========  
echo ��ӭʹ�ö���˹���ڵ㣡 
echo ���~����ä���è����~��л֧��~ 
goto frpcstart2
:frpcstart2
echo ==========��������==========
echo ӳ�����ƣ�%FrpName%
echo ӳ�����ͣ�%FrpClientType%
echo ���ص�ַ��%LocalIP%:%PortLocal%
echo Զ�̵�ַ��%ippart5%%designippart%.mossfrp.cn:%PortOpen%
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
echo ���ö˿ڷ�Χ��%portclientstart%-%portclientend%
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
exitt