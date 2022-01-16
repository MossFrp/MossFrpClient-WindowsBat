::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH7eyG8/OwhyXhS9H2ezA7sI1Mru5uaDnn8YR+0qaoze5rKcMOMv7Ff0dtgozn86
::fBE1pAF6MU+EWH7eyG8/OwhyXhS9H2ezA7sI1Mru5uaDnn8YR+0qaoze5rKcMOMv+Vz3YZMg0kZcitsPQghdbASibQpU
::fBE1pAF6MU+EWH7eyG8/OwhyXhS9H2ezA7sI1Mru5uaDnn8YR+0qaoze5rKcMOMv+Vz3YZMg0kZcitsPLFVLewC9ZwwxyQ==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCiDJHSL51EWOgtrbwiLOWWuOpcJ4eT/0+OErUNTXeEwGA==
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
::cxY6rQJ7JhzQF1fEqQJiZkoaHUrTXA==
::ZQ05rAF9IBncCkqN+0xwdVsGAlXMbSXrZg==
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
::Zh4grVQjdCiDJHSL51EWOgtrbwiLOWWuOpgT+/vd/fq4gUEUUewrOLmJlOXAca5CpED8cPY=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Mossfrp Windows Bat 客户端
CHCP 936
::这一段是开头提示
::包括一些防呆不防傻的提示以及版本号
:start
cls
echo MossFrp Windows Bat Client [By MossCG]
echo Version 2.1.1.1 Beta
echo B站官方Channel @墨守MossCG 记得三连关注！
echo QQ交流群 1072507973 欢迎加入！
echo 购买/白嫖激活码请加群~
echo Tips：此版本为标准版
echo 配置完成之后可使用客户端文件夹下
echo 点击启动.bat 再次启动以长期使用
echo ==========配置==========
echo 请输入激活码
echo PS：部分版本windows的CMD无法ctrl+v粘贴
echo 可以尝试右键窗口内黑色区域粘贴
echo ==========配置==========
@set code=""
@set /p code=
echo ==========读取==========
goto Readcode
::读取激活码的部分
::说白就是把激活码按位数分割
::方便之后的使用读取啥的
:readCode
echo 正在解析激活码中......
set connectkey=%code%
set prefixLength=%code:~0,1%
if "%prefixLength%" == "3" goto prefixLength3
if "%prefixLength%" == "4" goto prefixLength4
goto CodeCannotUse
::3位前缀长度激活码解析
:prefixLength3
set prefix=%code:~1,3%
set authKey=%code:~4,5%
set /a portServer=%code:~9,5%-authKey
set /a portStart=%portServer%+1
set /a portEnd=%portServer%+9
set /a number=%code:~14,7%-authKey
goto checkTrue
::4位前缀长度激活码解析
:prefixLength4
set prefix=%code:~1,4%
set authKey=%code:~5,5%
set /a portServer=%code:~10,5%-authKey
set /a portStart=%portServer%+1
set /a portEnd=%portServer%+9
set /a number=%code:~15,7%-authKey
goto checkTrue
::这一段是验证激活码解析出来的内容
::避免用户复制了错的激活码
::实质上就是判断端口是否小于1大于65535啊之类的
::很憨的逻辑但是很有效
:checkTrue
if %portserver% gtr 65535 goto CodeCannotUse
if %portserver% lss 0 goto CodeCannotUse
goto writeFile
:writeFile
echo ==========生成中==========
echo 服务器号：%number% 
echo 域名地址：%prefix%.mossfrp.cn
echo 服务端口：%portServer%
echo 开放端口：%portStart%-%portEnd%
echo 链接密钥：%connectkey%
echo 生成完毕！
ping 127.0.0.1 -n 4 >nul
:copyFiles
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
echo server_addr = %prefix%.mossfrp.cn >>frpc.ini
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
echo PS：可用端口范围：%portStart%-%portEnd%
echo 请输入上方端口范围内任意端口
echo 输入Back可以返回上一项设置
echo ==========设置远程端口==========
@set PortOpen=""
@set /p PortOpen=
if /I "%PortOpen%"=="Exit" goto End
if /I "%PortOpen%"=="Back" goto settype
if %PortOpen% gtr %portEnd% goto ServerPortCannotUse
if %PortOpen% lss %portStart% goto ServerPortCannotUse
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
:defaultAD
echo echo ==========节点信息========== >>点击启动.bat
echo echo 您正在使用的是MossFrp内网穿透 >>点击启动.bat
echo echo 官方交流群 1072507973 >>点击启动.bat
goto frpcsettingswrite2
:frpcsettingswrite2
echo echo ==========链接配置========== >>点击启动.bat
echo echo 映射名称：%FrpName% >>点击启动.bat
echo echo 映射类型：%FrpClientType% >>点击启动.bat
echo echo 本地地址：%LocalIP%:%PortLocal% >>点击启动.bat
echo echo 远程地址：%prefix%.mossfrp.cn:%PortOpen% >>点击启动.bat
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
echo 可用端口范围：%portStart%-%portEnd%
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