::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHzeyG8/OwhyXhS9H2ezA7sI1Mru5uaDnn8YR+0qaoze5rKcMOMv7Ff0dtgozn86
::fBE1pAF6MU+EWHzeyG8/OwhyXhS9H2ezA7sI1Mru5uaDnn8YR+0qaoze5rKcMOMv+Vz3YZMg0kZcitsPQghdbASibQpU
::fBE1pAF6MU+EWHzeyG8/OwhyXhS9H2ezA7sI1Mru5uaDnn8YR+0qaoze5rKcMOMv+Vz3YZMg0kZcitsPLFVLewC9ZwwxyQ==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJHSL51EWOgtrbwiLOWWuOpcJ4eT/0+OErUNTXeEwGA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnVphFkfU00
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZkoaG0rQXA==
::ZQ05rAF9IBncCkqN+0xwdVsFAlXMayXoZg==
::ZQ05rAF9IAHYFVzEqQIdJwhHahaSA0i2D7AS/Ig=
::eg0/rx1wNQPfEVWB+kM9LVsJDCmNL3icFKUjy+Ty6uSTwg==
::fBEirQZwNQPfEVWB+kM9LVsJDCmNL3icFKUjy+Ty6uSTwg==
::cRolqwZ3JBvQF1fEqQIdJwhHahaSA0i2D7AS/Ig=
::dhA7uBVwLU+EWHSL51EWOgs0
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE2U0jOzhzLA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJHSL51EWOgtrbwiLOWWuOpgT+/vd/fq4gUEUUewrOLmKlOXAd65BpED8cPY=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Mossfrp配置程序
CHCP 936
::这一段是开头提示
::包括一些防呆不防傻的提示以及版本号
:start
cls
echo MossFrp Client [By MossCG]
echo Version 1.1.7.2
echo B站官方Channel @墨守MossCG 记得三连关注！
echo QQ交流群 1072507973 欢迎加入！
echo 购买/白嫖激活码请加群~
echo Tips：此版本为标准版
echo 配置完成之后可使用客户端文件夹下
echo 点击启动.bat 再次启动以长期使用
echo ==========配置==========
echo 请输入84位激活码
echo PS：部分版本windows的CMD无法ctrl+v粘贴
echo 可以尝试右键窗口内黑色区域粘贴
echo 输入Free可使用共享带宽激活码
echo ==========配置==========
@set code=""
@set /p code=
echo ==========读取==========
echo 正在读取激活码中......
if /I "%code:~0,4%"=="Free" goto Freecode
@set IsCodeFree=false
goto Readcode
::使用FREE激活码选择节点的部分
::逻辑蛮简单的
:Freecode
@set LineChoose=
@set LineUse=
@set IsCodeFree=true
echo ==========提示==========
echo 使用共享激活码！
echo 建议白嫖独立激活码或购买更高带宽的激活码~
echo 独立激活码免费的~咱别老占用Free激活码好撒~
echo 去白嫖一个不香嘛~
echo ==========提示==========
echo 节点列表：
::echo 1 zz1 枣庄一节点 多线 10M带宽 不限流量
::echo 2 sh1 上海一节点 腾讯云 30M带宽 限1000G流量
::echo 3 cz1 常州一节点 多线 10M带宽 限4000G流量
::echo 4 sh2 上海二节点 腾讯云 100M带宽 按量计费
echo 5 xg1 香港一节点 腾讯云 10M带宽 限2000G流量
::echo 6 sh3 上海三节点 阿里云 80M带宽 按量计费
echo 7 sc1 四川一节点 移动 10M带宽 不限流量
echo 8 jp1 日本一节点 NTT 100M带宽 不限流量
echo 9 sq1 宿迁一节点 电信 10M带宽 不限流量
echo 10 xg2 香港二节点 多线 50M带宽 限500G流量
::echo 11 xc1 许昌一节点 联通 10M带宽 不限流量【无free】
echo 12 rs1 俄罗斯一节点 多线 200M带宽 不限流量
echo 13 rs2 俄罗斯二节点 多线 100M带宽 不限流量
echo 请输入节点前数字编号：
echo 输入Back可以返回上一项设置
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
::if /I "%LineChoose%"=="3" set LineUse=cz1
::if /I "%LineChoose%"=="3" set code=248545062492250825072524249811315911399993855000018641536500845721967174951044620cz1
::if /I "%LineChoose%"=="3" goto Readcode
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
::读取激活码的部分
::说白就是把激活码按位数分割
::方便之后的使用读取啥的
:Readcode
echo 正在解析激活码中......
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
::这一段是验证激活码解析出来的内容
::避免用户复制了错的激活码
::实质上就是判断端口是否小于1大于65535啊之类的
::很憨的逻辑但是很有效
echo ==========验证==========
echo 正在验证激活码中......
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
echo ==========生成中==========
echo 服务器号：%number% 
echo 开通时间：%year%-%month%-%day% %hour%:%minute%:%second%
echo 数字地址：%ippart1%.%ippart2%.%ippart3%.%ippart4%
echo 域名地址：%ippart5%%designippart%.mossfrp.cn
echo 服务端口：%portserver%
echo 开放端口：%portclientstart%-%portclientend%
echo 链接密钥：%connectkey%
echo 生成完毕！
ping 127.0.0.1 -n 3 >nul
:Copyfiles
cls
echo ==========拷贝文件==========
echo 正在拷贝文件中......
ping 127.0.0.1 -n 1 >nul
echo 正在复制 frpc.exe
ping 127.0.0.1 -n 1 >nul
echo 正在创建文件夹 systemd
md systemd
ping 127.0.0.1 -n 1 >nul
echo 正在复制 frpc.service
echo 正在复制 frpc@.service
copy frpc.service systemd
copy frpc@.service systemd
ping 127.0.0.1 -n 1 >nul
echo 正在移除临时文件......
del frpc.service
del frpc@.service
ping 127.0.0.1 -n 1 >nul
echo 正在生成 frpc.ini
echo [common] >frpc.ini
echo server_addr = %ippart5%%designippart%.mossfrp.cn >>frpc.ini
echo server_port = %portserver% >>frpc.ini
echo token = %connectkey% >>frpc.ini
ping 127.0.0.1 -n 1 >nul
echo 文件复制完成！
:frpcsettingstart
echo ==========开始配置==========
echo 下面即将开始设置......
@set FrpName=
@set FrpType=
@set FrpClientType=
@set PortOpen=
@set LocalIP=
@set PortLocal=
ping 127.0.0.1 -n 2 >nul
:setname
cls
@set FrpType=
@set FrpClientType=
echo ==========Frpc配置==========
echo 设置映射配置[输入Exit取消设置]
echo Frpc设置内容：
echo 映射名称：%FrpName%
echo 映射类型：%FrpType%-%FrpClientType%
echo 远程端口：%PortOpen%
echo 本地地址：%LocalIP%
echo 本地端口：%PortLocal%
echo ==========设置名称==========
echo 请输入映射名称：
echo PS：这个基本写啥都无所谓
echo 请不要输入中文/特殊符号/空格
echo 避免frpc无法识别导致无法启动！
echo ==========设置名称==========
@set FrpName=""
@set /p FrpName=
if /I "%FrpName%"=="Exit" goto End
:settype
cls
@set PortOpen=
@set FrpType=
@set FrpClientType=
echo ==========Frpc配置==========
echo 设置映射配置[输入Exit取消设置]
echo Frpc设置内容：
echo 映射名称：%FrpName%
echo 映射类型：%FrpType%-%FrpClientType%
echo 远程端口：%PortOpen%
echo 本地地址：%LocalIP%
echo 本地端口：%PortLocal%
echo ==========设置类型==========
echo 请输入映射类型前数字：
echo PS：如MC JAVA版为tcp映射
echo MC 基岩版为udp映射
echo 1.tcp
echo 2.udp
echo 输入Back可以返回上一项设置
echo ==========设置类型==========
@set FrpType=""
@set /p FrpType=
@set FrpClientType=tcp
if /I "%FrpType%"=="Exit" goto End
if /I "%FrpType%"=="Back" goto setname
if /I "%FrpType%"=="1" set FrpClientType=tcp
if /I "%FrpType%"=="2" set FrpClientType=udp
if /I "%FrpType%"=="1" goto setremoteport
if /I "%FrpType%"=="2" goto setremoteport
goto TypeCannotUse
:setremoteport
cls
@set PortOpen=
@set LocalIP=
echo ==========Frpc配置==========
echo 设置映射配置[输入Exit取消设置]
echo Frpc设置内容：
echo 映射名称：%FrpName%
echo 映射类型：%FrpType%-%FrpClientType%
echo 远程端口：%PortOpen%
echo 本地地址：%LocalIP%
echo 本地端口：%PortLocal%
echo ==========设置远程端口==========
echo 请输入远程端口：
echo PS：可用端口范围：%portclientstart%-%portclientend%
echo 请输入上方端口范围内任意端口
echo 输入Back可以返回上一项设置
echo ==========设置远程端口==========
@set PortOpen=""
@set /p PortOpen=
if /I "%PortOpen%"=="Exit" goto End
if /I "%PortOpen%"=="Back" goto settype
if %PortOpen% gtr %portclientend% goto ServerPortCannotUse
if %PortOpen% lss %portclientstart% goto ServerPortCannotUse
:setlocalip
cls
@set LocalIP=
@set PortLocal=
echo ==========Frpc配置==========
echo 设置映射配置[输入Exit取消设置]
echo Frpc设置内容：
echo 映射名称：%FrpName%
echo 映射类型：%FrpType%-%FrpClientType%
echo 远程端口：%PortOpen%
echo 本地地址：%LocalIP%
echo 本地端口：%PortLocal%
echo ==========设置本地地址==========
echo 请输入要映射的地址：
echo PS：如本地地址为127.0.0.1
echo 请不要在此处输入端口！！！
echo 输入Back可以返回上一项设置
echo ==========设置本地地址==========
@set LocalIP=""
@set /p LocalIP=
if /I "%LocalIP%"=="Exit" goto End
if /I "%LocalIP%"=="Back" goto setremoteport
:setlocalport
cls
@set PortLocal=
@set UserCheck=
echo ==========Frpc配置==========
echo 设置映射配置[输入Exit取消设置]
echo Frpc设置内容：
echo 映射名称：%FrpName%
echo 映射类型：%FrpType%-%FrpClientType%
echo 远程端口：%PortOpen%
echo 本地地址：%LocalIP%
echo 本地端口：%PortLocal%
echo ==========设置本地端口==========
echo 请输入要映射的本地端口：
echo PS：如MC服务器默认端口25565
echo 输入Back可以返回上一项设置
echo ==========设置本地端口==========
@set PortLocal=""
@set /p PortLocal=
if /I "%PortLocal%"=="Exit" goto End
if /I "%PortLocal%"=="Back" goto setlocalip
if %PortLocal% gtr 65535 goto LocalPortCannotUse
if %PortLocal% lss 1 goto LocalPortCannotUse
:frpcsettingcomplete
cls
echo ==========链接配置==========
echo 映射名称：%FrpName%
echo 映射类型：%FrpClientType%
echo 本地地址：%LocalIP%:%PortLocal%
echo 远程地址：%ippart5%%designippart%.mossfrp.cn:%PortOpen%
echo ==========确认==========
echo Frpc端口配置写入完成
echo 请确认配置是否有误
echo 如无误输入Y将生成文件
echo 有误输入N重新输入
echo 输入Back可以返回上一项设置
echo ==========确认==========
@set UserCheck=""
@set /p UserCheck=
if /I "%PortLocal%"=="Back" goto setlocalport
if /I "%UserCheck%"=="Y" goto frpcsettingswrite
if /I "%UserCheck%"=="N" goto frpcsettingstart
:frpcsettingswrite
echo ==========写入配置==========
echo 正在将配置写入frpc.ini
echo [%FrpName%] >>frpc.ini
echo type = %FrpClientType% >>frpc.ini
echo local_ip = %LocalIP% >>frpc.ini
echo local_port = %PortLocal% >>frpc.ini
echo remote_port = %PortOpen% >>frpc.ini
ping 127.0.0.1 -n 1 >nul
echo 正在生成 启动脚本.bat
echo @echo off >点击启动.bat
echo :start >>点击启动.bat
echo title MossFrp Cilent [By MossCG] >>点击启动.bat
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
goto frpcsettingswrite2
:zz1ADs
echo echo ==========节点信息========== >>点击启动.bat
echo echo 您正在使用的是MossFrp官方节点 >>点击启动.bat
echo echo 当然你也可以赞助一个节点 >>点击启动.bat
echo echo 这里就能显示您的自定义AD哦~ >>点击启动.bat
goto frpcsettingswrite2
:sh1ADs
echo echo ==========节点信息========== >>点击启动.bat
echo echo 您正在使用的是赞助节点 >>点击启动.bat
echo echo Star Bonfire星空篝火公益服 欢迎你的到来 >>点击启动.bat
echo echo Java进服IP:je.lmzj.cf ，QQ群:1045317538 >>点击启动.bat
echo echo BE进服IP:mc.lmzj.cf（端口:40302） >>点击启动.bat
echo echo 版本：1.16.x~1.17.x(JE版)1.17.x(BE) >>点击启动.bat
goto frpcsettingswrite2
:cz1ADs
echo echo ==========节点信息========== >>点击启动.bat
echo echo 您正在使用的是MossFrp官方节点 >>点击启动.bat
echo echo 当然你也可以赞助一个节点 >>点击启动.bat
echo echo 这里就能显示您的自定义AD哦~ >>点击启动.bat
echo echo PS：打点钱吧~孩子快要吃不起饭了~ >>点击启动.bat
goto frpcsettingswrite2
:sh2ADs
echo echo ==========节点信息========== >>点击启动.bat
echo echo 不要尝试干任何违法的事情 >>点击启动.bat
echo echo 螃蟹会在后台盯着 >>点击启动.bat
echo echo 服务器有WAF >>点击启动.bat
echo echo . >>点击启动.bat
echo echo 宝们，这IP按量计费的啊，能不能打开流量压缩啊 >>点击启动.bat
echo echo =========================================== >>点击启动.bat
echo echo 欢迎使用MossFrp上海2节点 By 螃蟹 build e37fd24 >>点击启动.bat
echo echo 欢迎捐赠，到www.crabdrive.cn注册个账号然后充钱就行 >>点击启动.bat
echo echo 欢迎来找我玩 >>点击启动.bat
echo echo 原神官服uid 177455888 >>点击启动.bat
echo echo B服 506634621 >>点击启动.bat
echo echo 外服（HK,TW,MO） 902026416 >>点击启动.bat
echo echo . >>点击启动.bat
echo echo 最后在重申一遍，不要尝试攻击服务器 >>点击启动.bat
echo echo . >>点击启动.bat
echo echo 攻击的人全家必死 >>点击启动.bat
goto frpcsettingswrite2
:xg1ADs
echo echo ==========节点信息========== >>点击启动.bat
echo echo 欢迎使用香港节点，请遵守一下规矩就行啦 >>点击启动.bat
echo echo 1.不要试图攻击服务器，.不要试图攻击服务器，.不要试图攻击服务器！ >>点击启动.bat
echo echo 2.不要搭建违法的东西哦，谢谢合作啦 >>点击启动.bat
echo echo 3.随时在后台突击检查，谢谢支持哦 >>点击启动.bat
echo echo 感谢您的使用，有能力的话赞助一下吧（孩子也是要吃饭滴） >>点击启动.bat
echo echo 欢迎来爱发电赞助 https://afdian.net/@ren001  >>点击启动.bat
goto frpcsettingswrite2
:sh3ADs
echo echo ==========节点信息========== >>点击启动.bat
echo echo 欢迎使用 >>点击启动.bat
echo echo 请勿攻击服务器否则警察上门查你水表 >>点击启动.bat
echo echo 任何事都与节点服务器无关 >>点击启动.bat
echo echo 赞助地址：https://afdian.net/@dfff5f8 >>点击启动.bat
echo echo 博客：blog.skyould.top >>点击启动.bat
echo echo 由MossCG强势驱动 >>点击启动.bat
goto frpcsettingswrite2
:sc1ADs
echo echo ==========节点信息==========  >>点击启动.bat
echo echo 欢迎使用四川移动节点！ >>点击启动.bat
echo echo 由老K赞助~感谢支持~ >>点击启动.bat
goto frpcsettingswrite2
:jp1ADs
echo echo ==========节点信息==========  >>点击启动.bat
echo echo 欢迎使用日本一节点！ >>点击启动.bat
echo echo 由一只帕赞助~感谢支持~ >>点击启动.bat
echo echo 墨守内心独白：>>点击启动.bat
echo echo 第一次看到赞助这么高配置emmm>>点击启动.bat
echo echo 这个节点配置都快比我家里服务器配置高了>>点击启动.bat
echo echo 带宽为1000M欢迎使用！>>点击启动.bat
echo echo 请不要作违法用途哦！>>点击启动.bat
goto frpcsettingswrite2
:sq1ADs
echo echo ==========节点信息========== >>点击启动.bat
echo echo 欢迎使用宿迁一节点！ >>点击启动.bat
echo echo 租服推荐高性能大带宽低价i9服务器 >>点击启动.bat
echo echo 50元/月起 >>点击启动.bat
echo echo 联系方式QQ: 1350944738 >>点击启动.bat
goto frpcsettingswrite2
:xg1ADs
echo echo ==========节点信息==========  >>点击启动.bat
echo echo 欢迎使用香港二节点！ >>点击启动.bat
echo echo 由迟迟赞助~感谢支持~ >>点击启动.bat
goto frpcsettingswrite2
:xc1ADs
echo echo ==========节点信息==========  >>点击启动.bat
echo echo 您正在使用的是MossFrp官方节点 >>点击启动.bat
echo echo 当然你也可以赞助一个节点 >>点击启动.bat
echo echo 这里就能显示您的自定义AD哦~ >>点击启动.bat
echo echo PS：打点钱吧~孩子快要吃不起饭了~ >>点击启动.bat
goto frpcsettingswrite2
:rs1ADs
echo echo ==========节点信息==========    >>点击启动.bat
echo echo 欢迎使用俄罗斯一节点！   >>点击启动.bat
echo echo 由Nazereth赞助~感谢支持~   >>点击启动.bat
goto frpcsettingswrite2
:rs2ADs
echo echo ==========节点信息==========    >>点击启动.bat
echo echo 欢迎使用俄罗斯二节点！   >>点击启动.bat
echo echo 由魚が大好きな猫赞助~感谢支持~   >>点击启动.bat
goto frpcsettingswrite2
:frpcsettingswrite2
echo echo ==========链接配置========== >>点击启动.bat
echo echo 映射名称：%FrpName% >>点击启动.bat
echo echo 映射类型：%FrpClientType% >>点击启动.bat
echo echo 本地地址：%LocalIP%:%PortLocal% >>点击启动.bat
echo echo 远程地址：%ippart5%%designippart%.mossfrp.cn:%PortOpen% >>点击启动.bat
echo echo ==========启动Frp========== >>点击启动.bat
echo echo -----===MossFrp by MossCG===----- >>点击启动.bat
echo echo 正在启动frpc...... >>点击启动.bat
echo call frpc.exe -c frpc.ini >>点击启动.bat
echo echo -----===MossFrp by MossCG===----- >>点击启动.bat
echo echo frpc进程结束，即将自动重启！ >>点击启动.bat
echo timeout 10 >>点击启动.bat
echo goto start >>点击启动.bat
echo pause >>点击启动.bat
echo ==========结束配置==========
echo 写入完成！
echo 如需自定义配置请打开
echo 客户端目录下frpc.ini自行编辑配置！
echo 若无配置更改，请使用客户端下【点击启动.bat】
goto End
:ServerPortCannotUse
echo 此端口无效！
echo 可用端口范围：%portclientstart%-%portclientend%
ping 127.0.0.1 -n 2 >nul
goto setremoteport
:LocalPortCannotUse
echo 此端口无效！
echo 可用端口范围：1-65535
ping 127.0.0.1 -n 2 >nul
goto setlocalport
:TypeCannotUse
echo 此类型无效！
echo 请重新设置！
ping 127.0.0.1 -n 2 >nul
goto settype
:FreeCannotUse
echo 此编号无效！
echo 请重新设置！
ping 127.0.0.1 -n 2 >nul
goto Freecode
:CodeCannotUse
echo 激活码验证失败！
echo 请确认激活码无误或重新生成激活码
ping 127.0.0.1 -n 2 >nul
goto start
:End
echo 设置结束！
echo 五秒钟后自动启动frpc
ping 127.0.0.1 -n 5 >nul
start 点击启动.bat
exit