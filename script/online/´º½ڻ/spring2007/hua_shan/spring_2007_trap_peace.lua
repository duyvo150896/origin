--脚本名称：2007年春节活动-华山竞技PK模式修改脚本
--脚本功能：修改为PK有惩罚状态
--策划人：阿松
--代码编写人：村长
--代码编写时间：2007-01-27
--修改记录：
--============================公共变量定义区===============================
--赵贵春公共文件
Include("\\script\\online\\zgc_public_fun.lua")
--================================主逻辑===================================
function main()
	if spring_2007_date_chk() == 0 then
		return
	end
	if GetPlayerRoute() == 0 then 
		NewWorld(100,1420,2989)
		Msg2Player("Ch璦 v祇 m玭 ph竔 kh玭g th� tham gia H閕 Hoa S琻!")
	end 
	SetDeathPunish(1)
	Msg2Player("B筺  chuy觧 sang tr筺g th竔 PK v� t� vong")
end
