-- 功能说明
-- 此脚本文件会在玩家每次进入任意一个服务器(能识别此文件的)后自动执行 main 函数里面的脚本
-- 简单的说，切换地图、登陆游戏都会执行此脚本文件中 main 函数的内容

-- 功能目的
-- 通常是作为玩家新帐号建立后进入游戏前初始化一些个人信息
-- 比如自动加载初始任务等

 
--添加头文件时请确保全局变量与函数不会冲突　添加头文件时请确保全局变量与函数不会冲突
--添加头文件时请确保全局变量与函数不会冲突	添加头文件时请确保全局变量与函数不会冲突
--添加头文件时请确保全局变量与函数不会冲突	添加头文件时请确保全局变量与函数不会冲突
--添加头文件时请确保全局变量与函数不会冲突	添加头文件时请确保全局变量与函数不会冲突
--添加头文件时请确保全局变量与函数不会冲突	添加头文件时请确保全局变量与函数不会冲突
Include("\\script\\task\\WeekEnd\\weekend_switch.lua");
Include("\\script\\online\\qingrenyuanxiao\\qryx_head.lua")
Include("\\script\\online\\laborday06\\laborday_head.lua");
Include("\\script\\online\\dragonboat06\\dragonboat_head.lua");
Include("\\script\\online\\dragonboat06\\mission_head.lua");
Include("\\script\\online\\plant\\tree_head.lua");
Include("\\script\\global\\mate_head.lua");
Include("\\script\\missions\\bw\\bwhead.lua");
Include("\\script\\online\\afterworldcup06\\hand_in_hand_head.lua");
Include("\\script\\shinynight_head.lua");
Include("\\script\\online\\zgc_public_fun.lua")
Include("\\script\\missions\\northwest_mission\\mission\\mission_head.lua")
Include("\\script\\global\\battlefield_callback.lua")
Include("\\script\\online\\qixi07\\qixi07_head.lua")
Include("\\script\\task\\lingshi_task.lua")
Include("\\script\\global\\c2s_execute_func.lua")
Include("\\script\\online\\viet_event\\new_year_09\\new_year_head.lua");

Include("\\script\\lib\\writelog.lua")
Include("\\script\\online\\viet_event\\200907\\eventopen.lua");--越南09年7月活动开关头文件
Include("\\script\\online\\viet_event\\200907\\event_head.lua");
Include("\\script\\online\\jpz_event\\first_tong\\first_tong_head.lua")
Include("\\script\\online\\viet_event\\200909\\event_head.lua");--09年9月中秋活动头文件
Include("\\script\\task\\richangrenwu\\init_task.lua");--武林使者日常活动头文件
Include("\\script\\online_activites\\player_login_today.lua");
Include("\\script\\online_activites\\player_login_common.lua");
Include("\\script\\online_activites\\daily_reset.lua");
Include("\\script\\online_activites\\2010_12\\activity_05\\head.lua");
Include("\\script\\online_activites\\2010_12\\activity_06\\head.lua");

Include("\\script\\system_switch_config.lua") --gtask switch
Include("\\script\\task\\global_task\\gtask_head.lua") --new task
Include("\\script\\online\\liangshanboss\\lsb_head.lua")
Include("\\script\\online\\olympic\\oly_head.lua")
Include("\\script\\task\\global_task\\gtask_data.lua")
Include("\\script\\online\\qianhe_tower\\qht_head.lua")
Include("\\script\\online\\dazitie\\dzt_head.lua")
Include("\\settings\\static_script\\meridian\\item_julingwan.lua")
Include("\\script\\item\\item_yunling_box.lua")--欠扁盒
Include("\\script\\function\\zq_battles\\zq_head.lua")
Include("\\settings\\static_script\\exchg_server\\exchgsvr_player_login.lua")
Include("\\script\\online\\tong_feast\\tf_head.lua")
Include("\\script\\online\\spring2014\\sp_head.lua")
Include("\\script\\online_activites\\2014_04\\wuxingfulongshu.lua")
Include("\\script\\task_access_code_def.lua")
Include("\\settings\\static_script\\meridian\\meridian_payer_login.lua")
Include("\\script\\misc\\observer\\observer_head.lua")
Include("\\settings\\static_script\\global\\merit.lua")
Include("\\script\\missions\\siling_trial\\slt_head.lua")
Include("\\script\\online\\item_buchang\\ibc_head.lua")

Include("\\script\\lib\\define.lua")
Include("\\script\\task_access_code_def.lua")
Include("\\script\\system_switch_config.lua")
Include("\\script\\lib\\writelog.lua")
Include("\\script\\online\\zgc_public_fun.lua")

--添加头文件时请确保全局变量与函数不会冲突	添加头文件时请确保全局变量与函数不会冲突
g_nBWAwardDate = 2014051200;	--比武大会阶段性发奖的结束日期
Include("\\script\\online\\viet_event\\nationality\\head.lua"); -- Server ID header
Include("\\script\\online\\viet_event\\ip_bonus\\ip_head.lua") -- IP bonus
Include("\\script\\online\\viet_event\\vng_task_control.lua"); -- VNG Task Control
Include("\\script\\online_activites\\task_values.lua"); -- KS Task Control
Include("\\script\\online\\chuyen_sinh\\translife_head.lua")  -- Chuyen sinh VN
Include("\\script\\online\\viet_event\\platinum_card\\platinum_head.lua") 
Include("\\script\\vng\\vanmay_daohuu\\vanmay_npc.lua") 
Include("\\script\\vng\\vng_playerlogin.lua")
Include("\\script\\biwudahui\\tournament\\tournament_head.lua")
Include("\\script\\missions\\northwest_mission\\mission\\mission_head.lua")

Include("\\script\\pet\\forget_pet_skill.lua")
Include("\\script\\mappk.lua")

g_szThisFile = "\\script\\global\\playerloginin.lua"

List_IP_ban = {
	["20437237"] = 1,
}

function CheckIpBan(nName)
	if not List_IP_ban[nName]  == 0 then return 0 end
	return 1
end

--返回星期几，0代表星期天
function GetWeekDay()
	return tonumber(date("%w"))
end;
--返回当前小时和分钟
function GetLocalTime()
	nHour = date("%H");
	nMin = date("%M");
	return tonumber(nHour), tonumber(nMin)
end;

--19 - 23点59分
function CheckTime(day)

	--活动开关
	if WEEKEND_SWITCH == 0 then
		return 0
	end;

	if day ~= GetWeekDay() then
		return 0
	end;

	local nBegin;
	local nEnd;
	if day == 0 then	--周日是下午2：00 - 晚上10：00
		nBegin = 14 * 60;
		nEnd = 22 * 60;
	else
		nBegin = 19 * 60;	--其他日子是晚上7：00到晚上12：00
		nEnd = 24 * 60;
	end;

	local nHour, nMin = GetLocalTime();
	local nValue = nHour * 60 + nMin;
	if nValue >= nBegin and nValue <= nEnd then
		return 1
	else
		return 0
	end;
end;

function ItemLockAlert()
	local isfirst, haveitemunlock, bForceUnlock = GetItemLockStatus()
	if isfirst > 0 then
		Say("H� th鑞g kh鉧 v藅 ph萴 gi髉 b秓 qu秐 t礽 kho秐 \n Trong h祅h trang th猰 n髏 kh鉧 v藅 ph萴, ch� c莕 thi誸 l藀 m藅 m� ban u l� c� th� kh鉧 v藅 ph萴. в bi誸 th猰 chi ti誸 nh蕁 F1.", 0)
	end

	if haveitemunlock > 0 then
		Msg2Player("B筺 hi謓 c� v藅 ph萴 產ng m� kh鉧")
	end

	if bForceUnlock > 0 then
		Msg2Player("Trang b� kh鉧 產ng � tr筺g th竔 ch� nh m�")
	end
end

function main(ExchangeComing)
	local nName = GetAccount();
	local nPlayerRoute = GetPlayerRoute();
	if CheckIpBan(nName) == 1 and nPlayerRoute == 9 then
		ExitGame()
	end
	--NOTE: it MUST be the 1st one calling for resetting things by SunZhuoshi
	--< Added by SunZhuoshi
	DR_OnPlayerLogin();
	PLT_OnPlayerLogin();
	local nNation =GetGlbValue(GLB_TSK_SERVER_ID)
	Msg2Player("SV ID: "..nNation)
	--PLC_OnPlayerLogin();
	-->
--	SB_OnPlayerLogin();
	FG_OnPlayerLogin();
	-->
	
	-- if IsPlayerDeath() == 1 then
		-- CastState("state_physical_parmor_poi_add", 25, 7760000);
		-- CastState("state_magic_parmor_poi_add", 25, 7760000);
	-- else
		-- CastState("state_physical_parmor_poi_add", 25, 7760000);
		-- CastState("state_magic_parmor_poi_add", 25, 7760000);
	-- end
	tao_map_pk();
	LearnSkill(11)	--杨门技能11
	LearnSkill(12)	--杨门技能12
	local nDate = tonumber(date("%Y%m%d"))
	-- 藏剑山庄，断线后重新连接回城处理
	RemoveTrigger(GetTrigger(1101))
	RemoveTrigger(GetTrigger(1102))
	RemoveTrigger(GetTrigger(1103))
	RemoveTrigger(GetTrigger(1104))
	if GetTrigger(2517) ~= 0 then
		RemoveTrigger(GetTrigger(2517));
	end;
	if GetTrigger(2518) ~= 0 then
		RemoveTrigger(GetTrigger(2518));
	end;
	if GetTrigger(2519) ~= 0 then
		RemoveTrigger(GetTrigger(2519));
	end;
	local nMapID, nX, nY = GetWorldPos()
	if ((nMapID >= 1011) and (nMapID <= 1059)) or ((nMapID >= 2011) and (nMapID <= 2059)) or ((nMapID >= 3011) and (nMapID <= 3059))or ((nMapID >= 4011) and (nMapID <= 4059))or ((nMapID >= 5011) and (nMapID <= 5059)) then  --藏剑地图区间
		print("#T祅g Ki誱 s琻 trang: Ngi ch琲 ["..GetName().."] xu蕋 hi謓 s� c� kh竎 thng, t k誸 n鑙 server, b� chuy觧 v� th祅h.")
		NewWorld(350,1397,2852)
		SetFightState(0)
	end

	-- 删除英雄令的掉落
	if (GetTrigger(100)~=0 and GetTask(1152) == 0) then
		SetTask(1152,1)
		RemoveTrigger(GetTrigger(100))
	end
	RemoveTrigger(GetTrigger(555))
	if GetTrigger(2509) ~= 0 then
		RemoveTrigger(GetTrigger(2509))
	end
	if GetTrigger(2516) ~= 0 then
		RemoveTrigger(GetTrigger(2516))
	end

	--公测时"奖券"掉落触发设置
	RemoveTrigger(GetTrigger(260));	--2008年7月31日去掉奖券掉落
	--================================================================
	--05年圣诞活动
	if (nDate >= 20051223 and nDate <= 20051228) then
		if GetTrigger(3000) == 0 then
			CreateTrigger(0,1200,3000);
		end
			Msg2Player("Ho箃 ng l� gi竛g sinh  b総 u, h穣 n Truy襫 gi竜 s� � c竎 th祅h th� ch輓h tra xem th玭g tin c� th�!")
	else
		if GetTrigger(3000) ~= 0 then
			RemoveTrigger(GetTrigger(3000));
		end;
	end
	--================================================================
	--06年元旦活动
	--因为春节活动也有删除跟班的操作，所以下面的KillFollower在春节活动期间要注释掉
	--KillFollower()	--确保上线/跨服的时候没有跟班
	RemoveTitle(3,3)	--确保上线/跨服的时候没有“镖旗在此！”的称号
	if (nDate >= 20051231 and nDate <= 20060105) then
		local mapID = GetWorldPos()
		if mapID == 108 or mapID == 201 or mapID == 304 then
			SetDeathPunish(0)	--在活动期间确保上线/跨服的时候，进入夺旗地图没有死亡惩罚。
		end
		local bCreateFailed = 0	--用来记录触发器是否创建成功
		if CreateTrigger(2,1700,3200) == 0 then	--进入泉州夺旗比赛地图触发器
			bCreateFailed = 1
		end
		if CreateTrigger(2,1701,3201) == 0 then	--离开泉州夺旗比赛地图触发器
			bCreateFailed = 1
		end
		if CreateTrigger(2,1702,3202) == 0 then	--进入汴京夺旗比赛地图触发器
			bCreateFailed = 1
		end
		if CreateTrigger(2,1703,3203) == 0 then	--离开汴京夺旗比赛地图触发器
			bCreateFailed = 1
		end
		if CreateTrigger(2,1704,3204) == 0 then	--进入成都夺旗比赛地图触发器
			bCreateFailed = 1
		end
		if CreateTrigger(2,1705,3205) == 0 then	--离开成都夺旗比赛地图触发器
			bCreateFailed = 1
		end

		if bCreateFailed == 1 then
			Msg2Player("B筺 kh玭g th� tham d� ho箃 ng T誸 Nguy猲 Цn trong l莕 ng nh藀 n祔! H穣 th� ng nh藀 l筰!")
		else
			Msg2Player("Ho箃 ng T誸 Nguy猲 Цn  b総 u! Th阨 gian ho箃 ng b総 u t� 31/12/2005 n 5/1/2006 k誸 th骳.")
			--TaskTip("请到汴京府南、成都府南、泉州府北的夺旗教头处了解夺旗赛细则。")
		end
	else
		for i = 3200,3205 do
			if GetTrigger(i) ~= 0 then
				RemoveTrigger(GetTrigger(i))
			end
		end;
	end
	--================================================================
	--06年春节活动
	if GetWorldPos() == 961 or GetWorldPos() == 962 or GetWorldPos() == 963 or GetWorldPos() == 964 or GetWorldPos() == 965 then
		SetDeathPunish(0)	--上线到雪仗地图时，无死亡惩罚
		for SkillID=843,851 do
			LearnSkill(SkillID)	--上线到雪仗地图时学会打雪仗技能
		end
		SetDeathScript("\\script\\online\\春节活动\\playerdeath.lua")
		UseScrollEnable(0)
	end

	if (nDate >= 20060120 and nDate <=20060205) then
		if CreateTrigger(0,1201,3100) == 0 then
			Msg2Player("B筺 nh qu竔 kh玭g r琲 ra v藅 li謚 l祄 b竛h trong l莕 ng nh藀 n祔. H穣 th� ng nh藀 l筰!")
		end

		local id,idx = 0,0
		bCreateFailed = 0
		for i=1,5 do
			Tid = 1710 + i
			Tidx = 3100 + i
			if CreateTrigger(2,Tid,Tidx) == 0 then	--创建离开地图触发器
				bCreateFailed = 1
			end
		end
		if bCreateFailed == 1 then
			Msg2Player("B筺 kh玭g th� tham gia n衜 tuy誸 b譶h thng trong l莕 ng nh藀 n祔. H穣 th� ng nh藀 l筰!")
			WriteLog("[Ho箃 ng m颽 xu﹏ -K誸 n鑙 th蕋 b筰]:"..GetName().."Жng nh藀/m蕋 k誸 n鑙 server r阨 kh醝 b� k誸 n鑙 map (3101-3105).")
		end
	else
		for i=3100,3105 do
			if GetTrigger(i) ~= 0 then
				RemoveTrigger(GetTrigger(i))
			end
		end
		local MapID = GetWorldPos()
		local Map_Pos = {
					{961,300,1820,3573},
					{962,200,1409,3048},
					{963,100,1365,2932},
					{964,350,1575,2970},
					{965,150,1781,3154}
					}
		for i=1,5 do
			if MapID == Map_Pos[i][1] then	--如果不在活动期间上线到雪仗地图，则传送出去。
				NewWorld(Map_Pos[i][2],Map_Pos[i][3],Map_Pos[i][4])
				if GetWorldPos() == Map_Pos[i][2] then
					SetDeathPunish(1)
					SetFightState(0)
					UseScrollEnable(1)
					SetTempRevPos(0,0,0)
					for SkillID=843,851 do
						if HaveLearnedSkill(SkillID) == 1 then
							RemoveSkill(SkillID)	--忘记打雪仗技能
						end;
					end
					SetDeathScript("")
					break
				end
			end
		end
	end

	--================================================================
	--06年情人节＆元宵节活动(越南版)
	if Is_QRYX_Activity() == 1 and GetSex() == 2 then
		CreateTrigger(0,1202,3110);					-- 打怪掉落巧克力的触发器
	elseif GetTrigger(3110) ~= 0 then
		RemoveTrigger(GetTrigger(3110))
	end
	--================================================================

	--08年清明节活动
	if nDate <= 20080412 then
		Msg2Player("Ho箃 ng ti誸 Thanh Minh  b総 u, c竎 hi謕 kh竎h h穣 n D蒼 L� nh﹏ g莕 D� T萿  bi誸 th玭g tin chi ti誸!");
	else	--非清明节活动期间上线到拜祭地图时，自动传送玩家出去
		local Map_Pos_QM = {
					{818,100,1458,2807},
					{819,200,1170,2828},
					{820,300,1640,3526},
					}
		local MapID_QM = GetWorldPos();
		for i=1,getn(Map_Pos_QM) do
			if MapID_QM == Map_Pos_QM[i][1] then
				NewWorld(Map_Pos_QM[i][2],Map_Pos_QM[i][3],Map_Pos_QM[i][4]);
				break;
			end;
		end;
	end;
	
	--================================================================
	--06年五一节活动
	----- boss和商会任务 登陆公告----
	local nDate = tonumber(date("%Y%m%d"))
	if nDate >= 20060428 and nDate <= 20060430 then
		Msg2Player("21:30 t鑙 nay, boss M� T芻 u m鬰 xu蕋 hi謓 g莕 t﹜ Bi謓 Kinh cp m蕋 1 con Tu蕁 M�,  n l骳 c竎 hi謕 kh竎h tr� h筰 cho d﹏!")
		Msg2Player("Ph莕 thng Nhi謒 v� Thng h閕 h玬 nay r蕋 phong ph�! Nhi謒 v� th� 10 v遪g 2 v� nhi謒 v� th� 10 v遪g 3 u c� ph莕 thng l韓 ch� i b筺!")
	end
	--================================================================
	--06年端午节活动
	if GetTask(1715) == 2 then
		WriteLog("Do tho竧 game t ng閠, d蒼 n ngi ch琲"..GetName().."Thay i nhi謒 v� s� 1715 ch璦 reset, v� th� khi ng nh藀 c莕 ti課 h祅h kh玦 ph鬰 tr筺g th竔 cho ngi ch琲.")
		Restore_Player_State();
	end;
	local nGenre,nDetail,nParticular = GetPlayerEquipInfo(10);
	local bOnBoat = 0;
	if nGenre == 0 and nDetail ==105 then
		for i=25,31 do
			if nParticular == i then
				bOnBoat = 1;
				break;
			end;
		end;
	end;
	if bOnBoat == 1 then
		UnEquipAtPosition(10);
	end;

	for i=854,859 do
		if HaveLearnedSkill(i) == 1 then
			RemoveSkill(i);
		end;
	end;
	if Get_DragonBoatDay_State() == 3 then
		bCreateFailed = 0;
		for i=0,5 do
			Tid = 1107 + i
			Tidx = 3113 + i
			if GetTrigger(Tidx) == 0 then
				if CreateTrigger(2,Tid,Tidx) == 0 then	--创建进入离开种树地图触发器
					bCreateFailed = 1	--某一个触发器创建失败了
				end
			end;
		end;
		if bCreateFailed == 1 then
			Msg2Player("L莕 ng nh藀 n祔 khi課 b筺 kh玭g th� ti課 h祅h tr錸g c﹜ b譶h thng! Vui l遪g ng nh藀 l筰!")
			WriteLog("[Ho箃 ng Th竔 H� Qu� Th� (K誸 n鑙 th蕋 b筰)]:"..GetName().."Жng nh藀/m蕋 k誸 n鑙 server r阨 kh醝 b� k誸 n鑙 map (3113-3118).")
		end
	else
		for i = 3113,3118 do
			if GetTrigger(i) ~= 0 then
				RemoveTrigger(GetTrigger(i))
			end
		end;
	end;
	SetDeathScript("");
	SetTask(TASK_TREEINDEX,0);	--
	SetTask(TASK_TREEGROW,0);	--
	SetTask(TASK_PLANTTIME,0);
	--================================================================
	--携手世界杯活动
	if GetTrigger(3119) ~= 0 then
		RemoveTrigger(GetTrigger(3119));
	end;
--	if GetTask(TASK_GOTPET_TIME) ~= 0 and GetTime() - GetTask(TASK_GOTPET_TIME) > 60*60*24 then
--		KillFollower();
--		SetTask(TASK_GOTPET_TIME,0);
--	end;
	--================================================================
	--多人擂台
	for i=1,getn(MultiMapTab) do
		if GetWorldPos() == MultiMapTab[i][1] then
			NewWorld(300,1832,3582)
		end
	end

	for i=1,getn(SingleTeamMapTab) do
		if GetWorldPos() == SingleTeamMapTab[i][1] then
			NewWorld(300,1832,3582)
		end
	end

	for i=1,getn(TeamMapTab) do
		if GetWorldPos() == TeamMapTab[i][1] then
			NewWorld(300,1832,3582)
		end
	end

	if GetTask(1151) == 1 then
		SetPlayerState(3);
		SetTask(1151,0);
	end
	--================================================================
	--周末活动
	if WEEKEND_SWITCH == 1 then
		if GetTrigger(2000) == 0 then
			CreateTrigger(0, 1000, 2000);
		end;
	else
		if GetTrigger(2000) ~= 0 then
			RemoveTrigger(GetTrigger(2000));
		end;
	end;
	--================================================================
	--大理任务面板出错修正
	if GetTask(1314) >= 2 and (GetTask(1312) == 5 or GetTask(1313) == 4) then
		SetTask(1312,6);
		SetTask(1313,5);
	end
	--================================================================
	--西北任务提示
	if GetLevel() >= 70 and GetTask(2030) == 0 then
		Msg2Player("G莕 y Kh蕌 chu萵 Bi謓 Kinh nh薾 頲 tin Nh蕋 Ph萴 Л阯g  h祅h ng t筰 bi猲 gi韎 T﹜ B綾 i T鑞g, b籲g h鱱 c騨g c� danh ti課g tr猲 giang h�. Xin ra tay gi髉 .");
	end

	--赠送西域探秘门票提示
	if GetTask(2031) >= 68 then
		give_xibei_ticket()
		if random(1,100) <= 33 then
			Msg2Player("Чi T鑞g v� mu鑞 ti謓 cho c竎 i hi謕 tr猲 阯g vt 秈 th莕 b�  ph竔 1 M藅 s� � Ph鬾g Tng ph� gi髉 a c竎 i hi謕 n n琲 th莕 b�, h穣 n Ph鬾g Tng (219, 196)  t譵 hi觰.")
		end
	end

	if GetTask(101) ~= 874 then
		remove_oldquest()	-- 删除原世界任务
	end

	if (IsInGatherMap() == 1) then
		SetInGatherMap(1)
	else
		SetInGatherMap(0)
	end

	if GetTask(1) == 0 then
	    SetTask(1, 100);
	    TaskTip("Hng d蒼 nhi謒 v� t﹏ th�: B竔 ki課 D� T萿");
	end;

	if GetTask(111) > 0 and GetTask(111) < 100 then
	    SetTask(111, 0);
	end;

	if GetTask(121) > 0 and GetTask(121) < 100 then
	    SetTask(121, 0);
	    SetTask(122, 0);
	end;
	--================================================================
	-- 辉煌之夜提示
	ShowShinyNightMsg()
	--================================================================
	--牢房相关
	if GetWorldPos() == 701 then
		SetCanRestorePK(1);	--4倍速度消PK值
		UseScrollEnable(0);	--不能使用回城符
		ForbidRead(1);	--不能修书
	end;

	-- 城市牢房相关
	if GetWorldPos() >= 730 and GetWorldPos() <= 734 then
		StallEnable(0)	-- 不能摆摊
		ForbidRead(1)	--不能修书
		UseScrollEnable(0)	--禁止使用回城
		SetFightState(0)
		ContinueTimer(GetTrigger(261))
	end
	--================================================================
	--战场相关
	if GetTask(800) == 0 then	--新战场变量清除
		for i=701,799 do
			if i ~= 747 then
				SetTask(i,0);
			end;
		end;
		SetTask(800,1);
	end;
	CalcBattleRank()	--设置战场军衔
	UpdateBattleMaxRank()
	VerifyEquip()		-- 检测装备穿上去是否有效
	if GetTask(741) == 1 then
		KillFollower();
		SetTask(741,0)
	end;
	--================================================================
	--结婚相关
	UnSedan()	-- 下花轿
	OnDoll()	-- 激活替身娃娃
	--================================================================
	Del_overdue_goods();	--删除过期物品
	--村长的登陆执行函数
	Zgc_login_fun_main()
	--================================================================
	--兔小丫答题框消失标志位清空
	SetTask(615,0)
	SetTask(629,0)  --收费版是628 IB版是629
	--================================================================
	--07七夕活动
	local nQixiDate = tonumber(date("%Y%m%d"))
	if nQixiDate >= 20070816 and nQixiDate <= 20070830 then
		Msg2Player("Ho箃 ng Th蕋 t辌h  khai m筩, b竎h Hoa s� gi� kh緋 n琲 � trung t﹎ Bi謓 Kinh , Th祅h Й, Tuy襫 Ch﹗  chu萵 b� v� s� l� v藅 cho t譶h nh﹏ trong d辮 l� l穘g m筺 n祔, mau mau n xem!")
	end

	flower_time();
	--================================================================
	--移除已经废止的技能: "混沌拳法"
	if HaveLearnedSkill("H鏽 чn quy襫 ph竝") == 1 then
		RemoveSkill("H鏽 чn quy襫 ph竝")
	end
	--================================================================
	--========灵石任务==============
	if GetTask(TASK_LINGSHI_ID) == 0 then
		--talk_I();
	elseif GetLevel() >= 80 and GetTask(689) == 0 then	--等级大于等于80级，第一次登陆
		local tbBWSay = {
					"Ta mu鑞 n ch� b竜 danh/go_to_biwudahui",
					"в ta suy ngh�/nothing",
					}
		Say("<color=green>Minh Ch� Kim S琻<color>: Nh籱 t筼 n猲 m閠 giang s琻 th竔 b譶h th辬h tr�, tri襲 nh kh玭g ng鮪g xem tr鋘g v� trang. в bi猲 cng kh玭g b� x﹎ lc v�  vang danh sa trng, Чi h閕 t� v� Thi猲 H� е Nh蕋 ch輓h th鴆 b総 u.",getn(tbBWSay),tbBWSay);
		SetTask(689,1,TASK_ACCESS_CODE_BIWUDAHUI);
	elseif GetLevel() >= 70 and GetTask(544) == 0 then --等级大于等于70级，第一次登陆
		Talk(1,"about_suohun","<color=red>Nh綾 nh� quan tr鋘g<color>: V� l﹎ truy襫 k� 2 th猰 bi謓 ph竝 an to祅 m韎, m鋓 ngi c莕 ch� �:\nTh猰 <color=red>蕁 kh鉧 h錸<color>, kh鉧 v藅 ph萴 hi謓 t筰 ph﹏ 2 lo筰, <color=red>Kh鉧 thng<color> v� <color=red>Kh鉧 h錸 v藅 ph萴<color>.\n<color=red>Kh鉧 thng<color> l� ch鴆 n╪g kh鉧 v藅 ph萴  m�, v藅 ph萴 kh鉧 kh玭g th� giao d辌h, n衜 b�, b竛 ti謒 v� l祄 c竎 thao t竎 c bi謙.\n<color=red>蕁 kh鉧 h錸<color> t鴆 l� th猰 ch鴆 n╪g an to祅. V藅 ph萴 kh鉧 h錸 <color=red>c� th� giao d辌h<color>, nh璶g <color=red>kh玭g th�<color> n衜 b�, b竛 ti謒 v� l祄 c竎 thao t竎 c bi謙.");
	elseif GetTask(549) == 0 then
		Say("    V� l﹎ truy襫 k� 2 ch輓h th鴆 c玭g b� ch鴆 n╪g <color=yellow>T� t譵 阯g<color>. T� t譵 阯g, t譵 NPC, t譵 ngi ch琲, d� s� d鬾g.\n    Nh蕁 ph輒 '<color=red>G<color>' m� b秐  l韓: T譵 a 甶觤 ho芻 nh蕁 c竎 b秐  nh�  v祇, d� d祅g n a 甶觤 b蕋 k� tr猲 b秐 ; C騨g c� th� t譵 t猲 NPC  t� t譵 n NPC. Nh蕁 ph輒 '<color=red>H<color>', c� th� m� to祅 c秐h b秐  nh� n v� tr� b蕋 k� tr猲 b秐 .\n    C� th� 'T譵 ngi' qua danh s竎h h秓 h鱱 ho芻 c鮱 nh﹏, danh s竎h t竛 g蓇  t譵 v� tr� ngi ch琲.",0);
		SetTask(549,1);
--	elseif GetTask(443) == 0 then
--		Say("Th阨 gian x竎 nh薾 5 gi� ch琲  h誸, xin ng nh藀 v祇 <color=yellow>http://volam2.zing.vn  ng k� th玭g tin.",0);
--		SetTask(443,1);
	end;
	--========城市称号==============
	local tTongCityTitle =
	{
		[100] = {5,6,7,8},
		[300] = {1,2,3,4},
		[350] = {9,10,11,12},
	}
	local szPlayerName_CityWarUse = GetName()
	for index, value in tTongCityTitle do
		local szSelfTong = GetTongName()
		local szTongName, _2, _3, nCityEndTime = GetCityWarInfo(index, "base")
		for i=1, 4 do
			if IsTitleExist(51, value[i]) > 0 then
				if szTongName == nil or szTongName ~= szSelfTong then
					RemoveTitle(51, value[1])
					RemoveTitle(51, value[2])
					RemoveTitle(51, value[3])
					RemoveTitle(51, value[4])
					break
				else
					if i == 1 or i == 2 then	-- 城主or郡主
						local nCount, szBoss = GetCityWarInfo(index, "boss")
						if szBoss ~= szPlayerName_CityWarUse then
							RemoveTitle(51, value[1])
							RemoveTitle(51, value[2])
							RemoveTitle(51, value[3])
							RemoveTitle(51, value[4])
						end
					elseif i == 3 then			-- 军师
						local nCount, szManager = GetCityWarInfo(index, "manager")
						if szManager ~= szPlayerName_CityWarUse then
							RemoveTitle(51, value[1])
							RemoveTitle(51, value[2])
							RemoveTitle(51, value[3])
							RemoveTitle(51, value[4])
						end
					elseif i == 4 then			-- 名捕
						local nCount, sF1, sF2, sF3, sF4 = GetCityWarInfo(index, "fighter")
						if not (sF1 == szPlayerName_CityWarUse or
							sF2 == szPlayerName_CityWarUse or
							sF3 == szPlayerName_CityWarUse or
							sF4 == szPlayerName_CityWarUse) then
								RemoveTitle(51, value[1])
								RemoveTitle(51, value[2])
								RemoveTitle(51, value[3])
								RemoveTitle(51, value[4])
						end
					end
				end
				break
			end
		end
	end
	--========第一次进入游戏给予拜师帖=========
	if CustomDataRead("mp_p_give_baishitie") == nil then
		AddItem(2,1,587,1,1)
		--AddItem(2,1,30644,1)---GM ITEM
		
		CustomDataSave("mp_p_give_baishitie", "d", 0)
	end
	--=============储物箱加页============================
	if GetTask(TASK_CHUWUXIANG_JIAYE) ~= 1 and GetTask(805) >= 2 and GetStoreBoxPageCount() <= 4 then
		SetStoreBoxPageCount(GetStoreBoxPageCount()+1);
		SetTask(TASK_CHUWUXIANG_JIAYE,1);
		Msg2Player("To祅 th� nh﹏ vi猲 V� L﹎ 2 ch骳 b筺 ch琲 vui v�, ch髇g t玦 t苙g b筺 th猰 1 Rng ch鴄 , ch骳 b筺 k誸 th猰 nhi襲 b筺 m韎.");
	end
	--===============08三八节================================
	if GetTask(2407) ~= 0 and GetTime() - GetTask(2407) > 60*60*24 then
		KillFollower();
		SetTask(2407,0);
	end;
	if GetTask(444) == 0 and nPlayerRoute == 21 then	--如果是蛊师第一次上线
		AddItem(2,0,1063,1);	--给他一个神木王鼎
		Msg2Player("B筺 nh薾 頲 1 Th莕 M閏 Vng жnh");
		TaskTip("B筺 nh薾 頲 1 Th莕 M閏 Vng жnh");
		SetTask(444,1);
	end;
	if nPlayerRoute == 21 then
		sync_guinsect_num_in_guding();	--同步蛊师蛊鼎里面的蛊的数量给客户端
	end;
	
	--跨服上线操作
	exchgsvr_on_player_login()--早点做
	
	process_biwudahui();	--处理比武大会相关内容
	process_shimenguanka();	--处理师门关卡相关内容
	process_ip_issue();		--与上次登陆IP不同时给提示


	--===================================创建进入离开龙泉村地图触发器(天下第一帮)======================================
	first_tong_pk_config();
--	AddItemForViet200906()
--	AddItemForViet200909()
	AddItemForViet200911()
    	AddItemForViet200912()
-- B秓 v� Rng T礽 Nguy猲
	local nDate = tonumber(date("%w"))
	if nDate == 3 then
		if GetTrigger(3204) == 0 then
			if CreateTrigger(2,1704,3204) == 0 then	--进入成都夺旗比赛地图触发器
				WriteLog(GetName().." CreateTrigger 1704 failed")
			end
		end
		if GetTrigger(3205) == 0 then
			if CreateTrigger(2,1705,3205) == 0 then	--离开成都夺旗比赛地图触发器
				WriteLog(GetName().." CreateTrigger 1705 failed")
			end
		end
	else
		for i = 3204,3205 do
			if GetTrigger(i) ~= 0 then
				RemoveTrigger(GetTrigger(i))
			end
		end;
	end

     --取出日常活动的类型
     set_ruchangrenwu_type()
	
	if GetPlayerRoute() ~= 0 then
		local nDate = tonumber(date("%w%H"))
		if nDate >= 319 and nDate < 320 then
			local nMapID, nX, nY = GetWorldPos()
			if nMapID == 304 then
				local szTongName, nCessBuysell, nCessStore, nTime = GetCityWarInfo(300, "base")
				if IsTongMember() == 0 or GetTongName() ~= szTongName then
					LeaveTeam()
					local nFlag = random(1,2)
					SetPKFlag(1,nFlag)
					ForbidChangePK(1)
					SetTaskTemp(105,1)
				end
			end
		end
	end
	
-- reset VNG TaskID	
	ResetTask()
	removeLiangshan()
	
-- VNG clear event item
	DelEventItem()
		
-- VNG IP Bonus
	IpBonusReset()
	IpBonusStart()
	
-- Server ID
--	get_server_id()
	vng_set_nationality()
	if gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 49 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 52)
		return
	elseif  gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 45 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 53)
		return
	elseif  gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 54 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 50)
		return
	elseif gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 30 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 12)
		return
	elseif  gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 46 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 16)
		return
	elseif  gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 51 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 17)
		return
	end
	
--	if gf_GetTaskByte(TSK_SERVER_ID,1) ~= GetGlbValue(GLB_TSK_SERVER_ID) then
--		gf_SetTaskByte(TSK_SERVER_ID,1,GetGlbValue(GLB_TSK_SERVER_ID))
--	end
	
-- Add Ti誹 Ng筼 Giang H� L鬰 n誹 ch璦 c�
	if GetItemCount(2, 1, 30240) < 1 then
		AddItem(2, 1, 30240, 1)
		Msg2Player("B筺 nh薾 頲 1 quy觧 Ti誹 Ng筼 Giang H� L鬰!")
	end	
	
-- Th玭g b竜 s� d鬾g u th祅h
	if GetTask(2154) > 0 then
		TaskTip("B筺  k輈h ho箃 s� d鬾g u Th祅h T輓, u Th祅h Th�, u Th祅h Bi觰. в h駓 b� k輈h ho箃 h穣 n Bi謓 Kinh t譵 Tri謚 Ph�.")
	end
	vng_merge_server()
	local nCheckLServer = GetGlbValue(GLB_TSK_SERVER_ID)
	if nCheckLServer < 150 or nCheckLServer > 158 then
		init_new_server()
		Init_Change_Server()
	end
	
	-- Set ID cho server Th祅h Long
	local nDateSpec = tonumber(date("%y%m%d"))
	if nDateSpec >= 111223 and nDateSpec <= 120123 then
		if gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) ~= 70 and GetGlbValue(GLB_TSK_SERVER_ID) == 70 then
			gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 70)
		end
	end
	
	vng_playerlogin_init()
	
	local nDenBuDate = tonumber(date("%y%m%d"))
	if nDenBuDate >= 120814 and nDenBuDate <= 120814 then
		DenBu_BKL()
	end
	
--  Khu  v鵦 tr錸g b竧 nh� l韓
	local nMapID = GetWorldPos()
	if (nMapID  == 301 or  nMapID == 108) and GetFightState() == 0 then
		SetFightState(1)
	end
	-- 处理白驹调整，注意放在最后！
	if ExchangeComing == 0 then
		OfflineLiveEx()
	end
	if gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 49 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 52)
	elseif  gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 45 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 53)
	elseif  gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 54 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 50)
	elseif gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 31 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 43)
	elseif gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 18 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 16)
	elseif gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 37 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, 26)
	end
	--==========================================201110月海上龙舟战==============================
	if GetTask(2929) == 2 then
		dragon_boat_201110()
	end
	--==============================================
	
	local nDate = tonumber( date( "%y%m%d" ) )
	local nCurDate = floor ( GetTask( TSK_NEWRES_CALC_DAILY ) / 10 ) 
	if nCurDate ~= nDate then
		SetTask ( TSK_NEWRES_CALC_DAILY, nDate * 10 )
	end
	
	local nWeek = tonumber ( date ("%w") ) -- tr� v� ng祔 trong tu莕
	-- Ch� reset task v祇 th� 5 v� th� 7
	if  nWeek == 4 or nWeek == 6 or nWeek == 0 then
		if mod(GetTask(TSK_NEWRES_CALC_DAILY), 10) == 0 then
			SetTask(TSK_TRANS_POINT_ALLOW,0)
			SetTask(TSK_NEWRES_CALC_DAILY,GetTask(TSK_NEWRES_CALC_DAILY) + 1)			
		end
	end
	-------------------------------------------------------------------------------------------------------------------------------------------
--	--Check ng祔 h誸 h筺 B筩h Kim L謓h BKL
--	local nBKL_End = GetTime()
--	local nCountBKL = CheckCharged_BKL() 
--	local nCountBKLbyTSK = GetTask(TSK_BKLB_COUNT)
--	local nActivebyTSK = GetTask(TSK_BKLB_ACTIVE)
--	--Msg2Player("G輆 tr� byte 1: "..nCountBKL)
--	--Msg2Player("Gi� tr� n筽 by task: ".. nCountBKLbyTSK)
--	--Msg2Player("Gi� tr� kich ho箃 by task: ".. nActivebyTSK)
--
--	if CheckAccountExt_BKL() <= 0 then
--	--Msg2Player("Х v祇 1")
--		if nCountBKLbyTSK > nCountBKL then
--			--Msg2Player("Х v祇 2")
--			nCountBKL = nCountBKLbyTSK
--			local nTempExt = GetExtPoint(EXT_POINT_BKLB)
--			PayExtPoint(EXT_POINT_BKLB, nTempExt)
--			--SetByte(nTempExt,1, nCountBKL)
--			gf_SetExtPointByte(EXT_POINT_BKLB, BYTE_BKLB_COUNT, nCountBKL)
--			--local tam1 = gf_GetExtPointByte(EXT_POINT_BKLB, BYTE_BKLB_COUNT)  -- x鉧
--			--Msg2Player("Gi� tr� byte 1 Ext sau: ".. tam1)			
--			--SetByte(nTempExt,2, nActivebyTSK)
--			gf_SetExtPointByte(EXT_POINT_BKLB, BYTE_BKLB_TYPE, nActivebyTSK)
--			--local tam2 = gf_GetExtPointByte(EXT_POINT_BKLB, BYTE_BKLB_TYPE) 			
--			--Msg2Player("Gi� tr� byte 2 Ext sau: ".. tam2)			
--			--AddExtPoint(EXT_POINT_BKLB, nTempExt)
--			--Msg2Player("Gi� tr� n筽 Ext sau: ".. nTempExt)			
--			
--		end
--	end
--	if GetTask(TSK_BKLB_ACTIVE) > 0 then -- or nCountBKL >= 1 	--nCountBKLbyTSK == nCountBKL and 
--	--Msg2Player("Х v祇 3")
--		if nCountBKL == nCountBKLbyTSK then
--		--Msg2Player("Х v祇 4")
--			if nBKL_End - GetTask(TSK_BKLB_START) > 5270400 then --and CheckAccountExt_BKL() <= 0  ch� c莕 check ~ trng h頿  n筽 trong game
--			--Msg2Player("Х v祇 5")
--				SetTask(TSK_BKLB_ACTIVE,0)
--				--local nTempExt1 = GetExtPoint(EXT_POINT_BKLB)
--				--PayExtPoint(EXT_POINT_BKLB, nTempExt1)
--				gf_SetExtPointByte(EXT_POINT_BKLB, BYTE_BKLB_TYPE, 0)
--				--SetByte(nTempExt1,2, 0)
--				--AddExtPoint(EXT_POINT_BKLB, nTempExt1)		
--				--gf_SetExtPointByte(EXT_POINT_BKLB, BYTE_BKLB_COUNT, nCountBKL)
--				Msg2Player("B筩h Kim L謓h  h誸 hi謚 l鵦. Vui l遪g k輈h ho箃 l筰.")
--				Talk(1, "", "<color=green>Ch� Ph遪g M竬<color>: B筩h Kim L謓h  h誸 hi謚 l鵦. Vui l遪g k輈h ho箃 l筰.")
--			end	
--		end
--	end
--	--------------- x鉧 tr飊g task HKLB
--	if nDate >= 120323 and nDate <=120329 then
--		if GetTask(TSK_BKLB_HAVETASK) == 0 and GetTask(TSK_BKLB_START) >= 1332370895 and GetTask(TSK_BKLB_START) <= 1332457260 then
--			SetTask(2720, GetTask(2282))
--			SetTask(TSK_BKLB_HAVETASK, 1)
--		end
--	end
	--====================关卡任务等新增技能都在这里处理删除==============================
	--RemoveNewSkill()
	--=================财神宝箱=====================================================
	treasure_box()
	--gtask支持NPC对话触发器 [发现触发器有异常]
	gtask_support()
	--关卡指引任务（信件）
	get_message_task()
	--给予八卦宝典
	--give_baguabaodian();
	VietResetDate() -- reset task m鏸 ng祔
	--挑战梁山boss活动
	LSB_Challenge_Trigger();
	--奥运活动
	oly_create_trigger();
	--千寻塔触发器创建
	qht_create_trigger();
	--追回字帖大作战
	dzt_tmz_trigger();
-- Nhi謒 v� nh qu竔 chuy觧 sinh 6
	if GetTask(TSK_CS6_TULINH) == 4 then
		CreateTrigger(0,1279,2558)
	end
	if GetByte(GetTask(TRANSLIFE_TASK_ID), TRANSLIFE_BYTE_FLAG_LEVEL) == 1 then
		local nLevel_CS6 = GetByte(GetTask(TRANSLIFE_TASK_ID), TRANSLIFE_BYTE_SAVE_LEVEL)
		SetLevel(nLevel_CS6,0)
		gf_SetTaskByte(TRANSLIFE_TASK_ID, TRANSLIFE_BYTE_FLAG_LEVEL, 0)	
	end
	---------	
	--V薾 may o h鱱
--	if nDate > 130423 and nDate <= 131230 then
		vanmay_daohuu()		--t輓h n╪g 產ng ng (set 甶觤 v� 100, khi m� l筰 ph秈 m� gi韎 h筺 ng祔 th竛g)
--	end	
--	if nDate <= 130423 then --n b� ng祔 22/4/2013
--		vanmay_daohuu_denbu()
--	end	
	--上线领取欠扁盒提示
	show_yunling_box_login_message()
	--真气战场
	ZQ_Leave_Game();
	--帮会盛宴的BUFF
	tf_PlayerLoginAddBuff();
	--Npc死亡触发器
	--\script\global\npcdeath_trigger.lua
	if GetTrigger(1297*2) <= 0 then
		CreateTrigger(0, 1297, 1297*2);
	end
	--春节活动
	sp_CreateTalkTrigger();
	--活动道具添加
	wxfls_AddItemPlayerlogin();
	
	onlogin_fix_meridian_attr_point_addon()--自动修复经脉带来的潜能点上限扩展
	
	Observer:onEvent(SYSEVENT_PLAYER_LOGIN, ExchangeComing)
	--登录检查武林功勋版本是否需要更新
	merit_PlayerLogin();
	--四灵试炼副本
	slt_LeaveGame();
	ibc_PlayerLogin(); --黑道具补偿活动
	DelNguyenTu96();
	effchar();
	if checkhieuboss() >= 1 then
		CastState("state_life_max_point_add", 15000, -1, 1, 0);
		Msg2Player("Nh薾 頲 th猰 15000 m竨")
	end
	-- if GetWorldPos() == 202 then
		-- SetPKFlag(2, 0)
	-- end
	
--	ForgetPetSkillMain();
	-- revert_chankhi();
	-- removelevel99();
	-- if GetWorldPos() == 300 or  GetWorldPos() == 302 or  GetWorldPos() == 303 then
		-- if date("%H") == 21 or date("%H") == 22 then
			-- Msg2Player ("Tay Thanh Do");
			-- SetPKFlag(2, 0);
		-- end
	-- end
	-------------------------------------------------------
end;
--*****************************删除过期物品*************************
overdue_goods_list = {
	--装备大类-副类------------------------小类列表---------------------有效期（天）--删除物品提示
	{0,		109,173,174,175,176,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,1,"Y ph鬰 h玭 l� b筺 thu�  h誸 h筺!"},	--结婚衣服
	{0,		108,131,132,133,134,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,1,"Trang s鴆 h玭 l� b筺 thu�  h誸 h筺!"},	--结婚头饰
	{0,		109,177,178,179,180,1,"Ch� h玭 l� b筺 thu�  h誸 h筺!"},
	{0,		105,32,1,"Ki謚 hoa h玭 l� b筺 thu�  h誸 h筺!"},
	-- Ph莕 n祔 kh玭g Merg khi c� event m韎
	--{0,		105,33,1,"Ni猲 th� c馻 b筺  h誸 h筺!"},
}
function effchar()
	-- 978
	local Efflist = {929 ,979}
	-- local Index = random(1,2)
	SetCurrentNpcSFX(PIdx2NpcIdx(),Efflist[1],5,1)
end

function removelevel99()
	if GetLevel() >= 98 then
		Msg2Player("Inbox ADMIN fb: Thanh Phan");
		SetLevel(80, 1);
	end
end
function revert_chankhi()
	local t1= MeridianGetDanTian();
	if t1 > 290000 then
		GetJingMai_Reset();
		AwardGenuineQi(-150000);
	end
end
function Del_overdue_goods()
	local time_now = GetTime()
	local obj_index, item_index = GetFirstItem();
	local nDeletedCount = 0;
	while (obj_index ~= 0 and item_index ~= 0) do
		local genre = GetItemGenre(item_index)
		local detail = GetItemDetail(item_index)
		local particular = GetItemParticular(item_index)
		for i = 1, getn(overdue_goods_list) do
			local nSize = getn(overdue_goods_list[i]);
			if genre == overdue_goods_list[i][1] and detail == overdue_goods_list[i][2] then
				for j = 3,nSize-2 do
					if particular == overdue_goods_list[i][j] and time_now - GetItemCreateTime(item_index) >= (86400 * overdue_goods_list[i][nSize-1]) then
						DelItemByIndex(item_index,-1)
						Msg2Player(overdue_goods_list[i][nSize])
						nDeletedCount = nDeletedCount + 1;
					end
				end
			end
		end
		obj_index, item_index = GetNextItem(obj_index, item_index)
	end
	if nDeletedCount ~= 0 then
		Say("B筺 c� "..nDeletedCount.."v藅 ph萴  h誸 h筺, chi ti誸 xem h� th鑞g th玭g b竜!",0);
	end;
end

function DelNguyenTu96()
-- BigDelItem(2,1,30244,BigGetItemCount(2,1,30244))
-- BigDelItem(2,1,30245,BigGetItemCount(2,1,30245))
-- BigDelItem(2,1,30249,BigGetItemCount(2,1,30249))
-- BigDelItem(2,1,30240,BigGetItemCount(2,1,30240))
--BigDelItem(0,107,66,BigGetItemCount(0,107,66))
--BigDelItem(0,107,162,BigGetItemCount(0,107,162)) 
-- thien nghia
-- BigDelItem(0,101,3034,BigGetItemCount(0,101,3034))
-- BigDelItem(0,100,3034,BigGetItemCount(0,100,3034))
-- BigDelItem(0,103,3034,BigGetItemCount(0,103,3034))

-- BigDelItem(0,101,3037,BigGetItemCount(0,101,3037))
-- BigDelItem(0,100,3037,BigGetItemCount(0,100,3037))
-- BigDelItem(0,103,3037,BigGetItemCount(0,103,3037))

-- BigDelItem(0,101,3040,BigGetItemCount(0,101,3040))
-- BigDelItem(0,100,3040,BigGetItemCount(0,100,3040))
-- BigDelItem(0,103,3040,BigGetItemCount(0,103,3040))

-- BigDelItem(0,101,3043,BigGetItemCount(0,101,3043))
-- BigDelItem(0,100,3043,BigGetItemCount(0,100,3043))
-- BigDelItem(0,103,3043,BigGetItemCount(0,103,3043))
-- -- ngoc
-- BigDelItem(0,102,9,BigGetItemCount(0,102,9))
-- BigDelItem(0,102,8846,BigGetItemCount(0,102,8846))
-- BigDelItem(0,102,8847,BigGetItemCount(0,102,8847))
-- -- do kham
-- BigDelItem(0,100,81,BigGetItemCount(0,100,81))
-- BigDelItem(0,103,81,BigGetItemCount(0,103,81))

-- BigDelItem(0,100,82,BigGetItemCount(0,100,82))
-- BigDelItem(0,103,82,BigGetItemCount(0,103,82))
-- ma dao thach
BigDelItem(2,1,30428,BigGetItemCount(2,1,30428))
BigDelItem(2,1,30429,BigGetItemCount(2,1,30429))
-- xoa lak combo
BigDelItem(1,0,270,BigGetItemCount(1,0,270))

--- forfun
-- BigDelItem(0,153,1,BigGetItemCount(0,153,1))
-- BigDelItem(0,153,2,BigGetItemCount(0,153,2))
-- BigDelItem(0,153,3,BigGetItemCount(0,153,3))
-- BigDelItem(0,153,4,BigGetItemCount(0,153,4))
-- BigDelItem(0,153,5,BigGetItemCount(0,153,5))
-- BigDelItem(0,153,6,BigGetItemCount(0,153,6))
-- BigDelItem(0,153,7,BigGetItemCount(0,153,7))
-- BigDelItem(0,153,8,BigGetItemCount(0,153,8))
-- BigDelItem(0,153,9,BigGetItemCount(0,153,9))
-- BigDelItem(0,153,10,BigGetItemCount(0,153,10))
-- BigDelItem(0,153,11,BigGetItemCount(0,153,11))
-- BigDelItem(0,153,12,BigGetItemCount(0,153,12))
-- BigDelItem(0,153,13,BigGetItemCount(0,153,13))
-- BigDelItem(0,153,14,BigGetItemCount(0,153,14))
-- BigDelItem(0,153,15,BigGetItemCount(0,153,15))
-- BigDelItem(0,153,16,BigGetItemCount(0,153,16))
-- BigDelItem(0,153,17,BigGetItemCount(0,153,17))
-- BigDelItem(0,153,18,BigGetItemCount(0,153,18))
-- BigDelItem(0,153,19,BigGetItemCount(0,153,19))
-- BigDelItem(0,153,20,BigGetItemCount(0,153,20))
-- BigDelItem(0,153,21,BigGetItemCount(0,153,21))
-- BigDelItem(0,153,22,BigGetItemCount(0,153,22))
-- BigDelItem(0,153,23,BigGetItemCount(0,153,23))
-- BigDelItem(0,153,24,BigGetItemCount(0,153,24))
-- BigDelItem(0,153,25,BigGetItemCount(0,153,25))
-- BigDelItem(0,153,26,BigGetItemCount(0,153,26))
-- BigDelItem(0,153,27,BigGetItemCount(0,153,27))
-- BigDelItem(0,153,28,BigGetItemCount(0,153,28))
-- BigDelItem(0,153,29,BigGetItemCount(0,153,29))
-- BigDelItem(0,153,30,BigGetItemCount(0,153,30))
-- BigDelItem(0,153,31,BigGetItemCount(0,153,31))
-- BigDelItem(0,153,32,BigGetItemCount(0,153,32))
-- BigDelItem(0,153,33,BigGetItemCount(0,153,33))
-- BigDelItem(2,1,205,BigGetItemCount(2,1,205))
-- BigDelItem(2,1,206,BigGetItemCount(2,1,206))
-- BigDelItem(2,1,207,BigGetItemCount(2,1,207))
-- BigDelItem(2,1,203,BigGetItemCount(2,1,203))
-- BigDelItem(1,0,63,BigGetItemCount(1,0,63))
-- BigDelItem(1,0,65,BigGetItemCount(1,0,65))
-- BigDelItem(1,0,54,BigGetItemCount(1,0,54))
-- BigDelItem(1,0,55,BigGetItemCount(1,0,55))
-- BigDelItem(1,0,68,BigGetItemCount(1,0,68))
-- BigDelItem(1,0,53,BigGetItemCount(1,0,53))
-- BigDelItem(1,0,50,BigGetItemCount(1,0,50))
-- BigDelItem(1,0,63,BigGetItemCount(1,0,63))


-- BigDelItem(0,107,30001,BigGetItemCount(0,107,30001))
-- BigDelItem(0,107,30002,BigGetItemCount(0,107,30002))
-- BigDelItem(0,107,30099,BigGetItemCount(0,107,30099))
-- BigDelItem(0,107,30003,BigGetItemCount(0,107,30003))
-- BigDelItem(0,107,30004,BigGetItemCount(0,107,30004))
-- BigDelItem(0,107,30005,BigGetItemCount(0,107,30005))
-- BigDelItem(0,107,30006,BigGetItemCount(0,107,30006))
-- BigDelItem(0,107,30007,BigGetItemCount(0,107,30007))
-- BigDelItem(0,107,30008,BigGetItemCount(0,107,30008))
-- BigDelItem(0,107,30009,BigGetItemCount(0,107,30009))
-- BigDelItem(0,107,30010,BigGetItemCount(0,107,30010))
-- BigDelItem(0,107,30011,BigGetItemCount(0,107,30011))
-- BigDelItem(0,107,30012,BigGetItemCount(0,107,30012))
-- BigDelItem(0,107,30013,BigGetItemCount(0,107,30013))
-- BigDelItem(0,107,30014,BigGetItemCount(0,107,30014))
-- BigDelItem(0,107,30015,BigGetItemCount(0,107,30015))
-- BigDelItem(0,107,30016,BigGetItemCount(0,107,30016))
-- BigDelItem(0,107,30017,BigGetItemCount(0,107,30017))
-- BigDelItem(0,107,30018,BigGetItemCount(0,107,30018))
-- BigDelItem(0,107,30019,BigGetItemCount(0,107,30019))
-- BigDelItem(0,107,30020,BigGetItemCount(0,107,30020))
-- BigDelItem(0,107,30021,BigGetItemCount(0,107,30021))
-- BigDelItem(0,107,30022,BigGetItemCount(0,107,30022))
-- BigDelItem(0,107,30023,BigGetItemCount(0,107,30023))
-- BigDelItem(0,107,30024,BigGetItemCount(0,107,30024))
-- BigDelItem(0,107,30025,BigGetItemCount(0,107,30025))
-- BigDelItem(0,107,30026,BigGetItemCount(0,107,30026))
-- BigDelItem(0,107,30027,BigGetItemCount(0,107,30027))
-- BigDelItem(0,107,30028,BigGetItemCount(0,107,30028))
-- BigDelItem(0,107,30029,BigGetItemCount(0,107,30029))
-- BigDelItem(0,107,30030,BigGetItemCount(0,107,30030))
-- BigDelItem(0,107,30031,BigGetItemCount(0,107,30031))
-- BigDelItem(0,107,30032,BigGetItemCount(0,107,30032))
-- BigDelItem(0,107,30033,BigGetItemCount(0,107,30033))
-- BigDelItem(0,107,30034,BigGetItemCount(0,107,30034))
BigDelItem(2,1,1157,BigGetItemCount(2,1,1157))
-- BigDelItem(1,6,150,BigGetItemCount(1,6,150)) --bua lhl

-- thvs 
-- BigDelItem(0,100,30207,BigGetItemCount(0,100,30207))
-- BigDelItem(0,101,30207,BigGetItemCount(0,101,30207))
-- BigDelItem(0,103,30207,BigGetItemCount(0,103,30207))
-- BigDelItem(0,100,30208,BigGetItemCount(0,100,30208))
-- BigDelItem(0,101,30208,BigGetItemCount(0,101,30208))
-- BigDelItem(0,103,30208,BigGetItemCount(0,103,30208))
-- BigDelItem(0,100,30209,BigGetItemCount(0,100,30209))
-- BigDelItem(0,101,30209,BigGetItemCount(0,101,30209))
-- BigDelItem(0,103,30209,BigGetItemCount(0,103,30209))

--BigDelItem(0,105,30033,BigGetItemCount(0,105,30033))
--BigDelItem(2,1,9997,BigGetItemCount(2,1,9997));

-- BigDelItem(2,1,4,BigGetItemCount(2,1,4));
-- BigDelItem(2,1,8,BigGetItemCount(2,1,8));
-- BigDelItem(2,1,12,BigGetItemCount(2,1,12));
-- BigDelItem(2,1,16,BigGetItemCount(2,1,16));
-- BigDelItem(2,1,20,BigGetItemCount(2,1,20));
-- BigDelItem(2,1,24,BigGetItemCount(2,1,24));
-- BigDelItem(2,1,28,BigGetItemCount(2,1,28));
-- BigDelItem(2,1,32,BigGetItemCount(2,1,32));
-- BigDelItem(2,1,36,BigGetItemCount(2,1,36));
-- BigDelItem(2,1,40,BigGetItemCount(2,1,40));
-- BigDelItem(2,1,44,BigGetItemCount(2,1,44));
-- BigDelItem(2,1,48,BigGetItemCount(2,1,48));
-- BigDelItem(2,1,52,BigGetItemCount(2,1,52));
-- BigDelItem(2,1,56,BigGetItemCount(2,1,56));
-- BigDelItem(2,1,60,BigGetItemCount(2,1,60));


--BigDelItem(0,105,38,BigGetItemCount(0,105,38));
BigDelItem(0,105,139,BigGetItemCount(0,105,139));
BigDelItem(0,105,138,BigGetItemCount(0,105,138));
-- BigDelItem(2,1,469,BigGetItemCount(2,1,469));
-- BigDelItem(2,1,470,BigGetItemCount(2,1,470));
-- BigDelItem(2,1,471,BigGetItemCount(2,1,471));
-- BigDelItem(2,1,472,BigGetItemCount(2,1,472));
-- BigDelItem(2,1,473,BigGetItemCount(2,1,473));
-- BigDelItem(2,1,474,BigGetItemCount(2,1,474));
-- BigDelItem(2,1,475,BigGetItemCount(2,1,475));
-- BigDelItem(2,1,476,BigGetItemCount(2,1,476));
--kx3
BigDelItem(0,152,1,BigGetItemCount(0,152,1));
BigDelItem(0,152,2,BigGetItemCount(0,152,2));
BigDelItem(0,152,3,BigGetItemCount(0,152,3));
BigDelItem(0,152,4,BigGetItemCount(0,152,4));
BigDelItem(0,152,5,BigGetItemCount(0,152,5));
BigDelItem(0,152,6,BigGetItemCount(0,152,6));
BigDelItem(0,152,7,BigGetItemCount(0,152,7));
BigDelItem(0,152,8,BigGetItemCount(0,152,8));
BigDelItem(0,152,9,BigGetItemCount(0,152,9));
BigDelItem(0,152,10,BigGetItemCount(0,152,10));
BigDelItem(0,152,11,BigGetItemCount(0,152,11));
BigDelItem(0,152,12,BigGetItemCount(0,152,12));
BigDelItem(0,152,13,BigGetItemCount(0,152,13));
BigDelItem(0,152,14,BigGetItemCount(0,152,14));
BigDelItem(0,152,15,BigGetItemCount(0,152,15));
BigDelItem(0,152,16,BigGetItemCount(0,152,16));
BigDelItem(0,152,17,BigGetItemCount(0,152,17));
BigDelItem(0,152,18,BigGetItemCount(0,152,18));
BigDelItem(0,152,19,BigGetItemCount(0,152,19));
BigDelItem(0,152,20,BigGetItemCount(0,152,20));
BigDelItem(0,152,21,BigGetItemCount(0,152,21));
BigDelItem(0,152,22,BigGetItemCount(0,152,22));
BigDelItem(0,152,23,BigGetItemCount(0,152,23));
BigDelItem(0,152,24,BigGetItemCount(0,152,24));
BigDelItem(0,152,25,BigGetItemCount(0,152,25));
BigDelItem(0,152,26,BigGetItemCount(0,152,26));
BigDelItem(0,152,27,BigGetItemCount(0,152,27));
BigDelItem(0,152,28,BigGetItemCount(0,152,28));
BigDelItem(0,152,29,BigGetItemCount(0,152,29));
BigDelItem(0,152,30,BigGetItemCount(0,152,30));
BigDelItem(0,152,31,BigGetItemCount(0,152,31));
BigDelItem(0,152,32,BigGetItemCount(0,152,32));
BigDelItem(0,152,33,BigGetItemCount(0,152,33));
BigDelItem(0,152,34,BigGetItemCount(0,152,34));
BigDelItem(0,152,35,BigGetItemCount(0,152,35));
BigDelItem(0,152,36,BigGetItemCount(0,152,36));
BigDelItem(0,152,37,BigGetItemCount(0,152,37));

BigDelItem(0,153,1,BigGetItemCount(0,153,1))
BigDelItem(0,153,2,BigGetItemCount(0,153,2))
BigDelItem(0,153,3,BigGetItemCount(0,153,3))
BigDelItem(0,153,4,BigGetItemCount(0,153,4))
BigDelItem(0,153,5,BigGetItemCount(0,153,5))
BigDelItem(0,153,6,BigGetItemCount(0,153,6))
BigDelItem(0,153,7,BigGetItemCount(0,153,7))
BigDelItem(0,153,8,BigGetItemCount(0,153,8))
BigDelItem(0,153,9,BigGetItemCount(0,153,9))
BigDelItem(0,153,10,BigGetItemCount(0,153,10))
BigDelItem(0,153,11,BigGetItemCount(0,153,11))
BigDelItem(0,153,12,BigGetItemCount(0,153,12))
BigDelItem(0,153,13,BigGetItemCount(0,153,13))
BigDelItem(0,153,14,BigGetItemCount(0,153,14))
BigDelItem(0,153,15,BigGetItemCount(0,153,15))
BigDelItem(0,153,16,BigGetItemCount(0,153,16))
BigDelItem(0,153,17,BigGetItemCount(0,153,17))
BigDelItem(0,153,18,BigGetItemCount(0,153,18))
BigDelItem(0,153,19,BigGetItemCount(0,153,19))
BigDelItem(0,153,20,BigGetItemCount(0,153,20))
BigDelItem(0,153,21,BigGetItemCount(0,153,21))
BigDelItem(0,153,22,BigGetItemCount(0,153,22))
BigDelItem(0,153,23,BigGetItemCount(0,153,23))
BigDelItem(0,153,24,BigGetItemCount(0,153,24))
BigDelItem(0,153,25,BigGetItemCount(0,153,25))
BigDelItem(0,153,26,BigGetItemCount(0,153,26))
BigDelItem(0,153,27,BigGetItemCount(0,153,27))
BigDelItem(0,153,28,BigGetItemCount(0,153,28))
BigDelItem(0,153,29,BigGetItemCount(0,153,29))
BigDelItem(0,153,30,BigGetItemCount(0,153,30))
BigDelItem(0,153,31,BigGetItemCount(0,153,31))
BigDelItem(0,153,32,BigGetItemCount(0,153,32))
BigDelItem(0,153,33,BigGetItemCount(0,153,33))
BigDelItem(0,153,34,BigGetItemCount(0,153,34))
BigDelItem(0,153,35,BigGetItemCount(0,153,35))
BigDelItem(0,153,36,BigGetItemCount(0,153,36))
BigDelItem(0,153,37,BigGetItemCount(0,153,37))

BigDelItem(0,154,1,BigGetItemCount(0,154,1))
BigDelItem(0,154,2,BigGetItemCount(0,154,2))
BigDelItem(0,154,3,BigGetItemCount(0,154,3))
BigDelItem(0,154,4,BigGetItemCount(0,154,4))
BigDelItem(0,154,5,BigGetItemCount(0,154,5))
BigDelItem(0,154,6,BigGetItemCount(0,154,6))
BigDelItem(0,154,7,BigGetItemCount(0,154,7))
BigDelItem(0,154,8,BigGetItemCount(0,154,8))
BigDelItem(0,154,9,BigGetItemCount(0,154,9))
BigDelItem(0,154,10,BigGetItemCount(0,154,10))
BigDelItem(0,154,11,BigGetItemCount(0,154,11))
BigDelItem(0,154,12,BigGetItemCount(0,154,12))
BigDelItem(0,154,13,BigGetItemCount(0,154,13))
BigDelItem(0,154,14,BigGetItemCount(0,154,14))
BigDelItem(0,154,15,BigGetItemCount(0,154,15))
BigDelItem(0,154,16,BigGetItemCount(0,154,16))
BigDelItem(0,154,17,BigGetItemCount(0,154,17))
BigDelItem(0,154,18,BigGetItemCount(0,154,18))
BigDelItem(0,154,19,BigGetItemCount(0,154,19))
BigDelItem(0,154,20,BigGetItemCount(0,154,20))
BigDelItem(0,154,21,BigGetItemCount(0,154,21))
BigDelItem(0,154,22,BigGetItemCount(0,154,22))
BigDelItem(0,154,23,BigGetItemCount(0,154,23))
BigDelItem(0,154,24,BigGetItemCount(0,154,24))
BigDelItem(0,154,25,BigGetItemCount(0,154,25))
BigDelItem(0,154,26,BigGetItemCount(0,154,26))
BigDelItem(0,154,27,BigGetItemCount(0,154,27))
BigDelItem(0,154,28,BigGetItemCount(0,154,28))
BigDelItem(0,154,29,BigGetItemCount(0,154,29))
BigDelItem(0,154,30,BigGetItemCount(0,154,30))
BigDelItem(0,154,31,BigGetItemCount(0,154,31))
BigDelItem(0,154,32,BigGetItemCount(0,154,32))
BigDelItem(0,154,33,BigGetItemCount(0,154,33))
BigDelItem(0,154,34,BigGetItemCount(0,154,34))
BigDelItem(0,154,35,BigGetItemCount(0,154,35))
BigDelItem(0,154,36,BigGetItemCount(0,154,36))
BigDelItem(0,154,37,BigGetItemCount(0,154,37))

-- tt4 ll4 
BigDelItem(2, 1, 30524,BigGetItemCount(2, 1, 30524));
BigDelItem(2, 1, 30530,BigGetItemCount(2, 1, 30530));
-- hhdd
BigDelItem(0,102,8846,BigGetItemCount(0,102,8846));
BigDelItem(0,102,8847,BigGetItemCount(0,102,8847));
-- - DPLC
-- BigDelItem(0,	102,	24,BigGetItemCount(0,	102,	24));
-- tmkl tcl
--do buff nmk
-- BigDelItem(0,110,516,BigGetItemCount(0,110,516));
-- BigDelItem(0,109,516,BigGetItemCount(0,109,516));
-- BigDelItem(0,108,516,BigGetItemCount(0,108,516));

-- BigDelItem(0,110,517,BigGetItemCount(0,110,517));
-- BigDelItem(0,109,517,BigGetItemCount(0,109,517));
-- BigDelItem(0,108,517,BigGetItemCount(0,108,517));
-- 
--thien nghia
-- BigDelItem(0,100,3034,BigGetItemCount(0,100,3034));
BigDelItem(0,101,3034,BigGetItemCount(0,101,3034));
-- BigDelItem(0,103,3034,BigGetItemCount(0,103,3034));

-- BigDelItem(0,100,3037,BigGetItemCount(0,100,3037));
BigDelItem(0,101,3037,BigGetItemCount(0,101,3037));
BigDelItem(0,103,3037,BigGetItemCount(0,103,3037));

-- BigDelItem(0,100,3040,BigGetItemCount(0,100,3040));
BigDelItem(0,101,3040,BigGetItemCount(0,101,3040));
-- BigDelItem(0,103,3040,BigGetItemCount(0,103,3040));

-- BigDelItem(0,100,3043,BigGetItemCount(0,100,3043));
BigDelItem(0,101,3043,BigGetItemCount(0,101,3043));
BigDelItem(0,103,3043,BigGetItemCount(0,103,3043));
--thien nghia
-- BigDelItem(0,100,3046,BigGetItemCount(0,100,3046));
BigDelItem(0,101,3046,BigGetItemCount(0,101,3046));
-- BigDelItem(0,103,3046,BigGetItemCount(0,103,3046));

-- BigDelItem(0,100,3049,BigGetItemCount(0,100,3049));
BigDelItem(0,101,3049,BigGetItemCount(0,101,3049));
BigDelItem(0,103,3049,BigGetItemCount(0,103,3049));

-- BigDelItem(0,100,3052,BigGetItemCount(0,100,3052));
BigDelItem(0,101,3052,BigGetItemCount(0,101,3052));
-- BigDelItem(0,103,3052,BigGetItemCount(0,103,3052));

-- BigDelItem(0,100,3055,BigGetItemCount(0,100,3055));
BigDelItem(0,101,3055,BigGetItemCount(0,101,3055));
BigDelItem(0,103,3055,BigGetItemCount(0,103,3055));

--tcl
BigDelItem(2,95,204,BigGetItemCount(2,95,204));
------
end

function add_pouch_new_year_09_viet(tItem, szLog)
	local szItemName = tItem[1]
	local G, D, P = tItem[2], tItem[3], tItem[4]
	local nItemNum = tItem[5]
	local nRetCode = 0

	nRetCode = AddItem(G, D, P, nItemNum)
	if nRetCode == 1 then
		Msg2Player("B筺 nh薾 頲  "..nItemNum.." c竔 "..szItemName)
		WriteLogEx(szLog, "Nh薾 頲", nItemNum, szItemName, format("(%d,%d,%d)", G, D, P), GetTongName() )
	else
		WriteLogEx(szLog, "Nh薾 頲", nItemNum, szItemName, format("(%d,%d,%d)", G, D, P), GetTongName(), "Thu 頲 th蕋 b筰, ".."AddItem return value = "..nRetCode)
	end
end

function remove_oldquest()
	SetTask(101, 874)
	if GetTrigger(51) ~= 0 then
		RemoveTrigger(GetTrigger(51))
	end
	if GetTrigger(52) ~= 0 then
		RemoveTrigger(GetTrigger(52))
	end
	if GetTrigger(53) ~= 0 then
		RemoveTrigger(GetTrigger(53))
	end
	if GetTrigger(61) ~= 0 then
		RemoveTrigger(GetTrigger(51))
	end
	if GetTrigger(71) ~= 0 then
		RemoveTrigger(GetTrigger(51))
	end
	if GetTrigger(72) ~= 0 then
		RemoveTrigger(GetTrigger(51))
	end
end

-- 下轿
function UnSedan()
	local genre, detail, particular = GetPlayerEquipInfo(10)
	if (genre == 0 and detail == 105 and particular == 32) then
		DesaltPlayer(1, 7)
	end
end

function OnDoll()
	if (GetTask(TASKVAR_DOLLTIME) ~= 0) then
		if (GetMateOnlineStatus() == 1) then
			KillFollower()
			ActivateDoll(0)
		else
			local follower = GetFollower()
			if follower > 0 then
				SetCurrentNpcSFX(follower, SFX_DOLL, 1, 1)
			end;
			ActivateDoll(1)
		end
	end
end

function ShowShinyNightMsg()
	local system = GetGlbValue(GAMESVRGLB_SYSTEM)
	local multiple = GetGlbValue(GAMESVRGLB_MULTIPLE)
	if (system ~= 0) then
		Msg2Player(format("辉煌之夜活动进行中，奖励翻倍的系统是%s，倍率是%1.1f",
			map_sysnames[system],
			multiple / 100))
	end
end

--=================================村长的登陆执行函数=============================
function Zgc_login_fun_main()
	player_out_huashan()
	nw_mission_out()
	tomb_sweep_2008()
	ma_same_heart_deal()			--同心值自动处理
	task_talk_deal()				--任务提示处理
end

--*********************************华山竞技******************************
function player_out_huashan()
	--功能：将在华山区下线后上线的玩家清理出华山地图。
	local map_id = GetWorldPos()
	if map_id == 969 then
		NewWorld(100,1420,2989)
	end
end


--西北关卡传出处理
function nw_mission_out()
	local mapid = GetWorldPos()
	for i= 1, 6 do
		for j	= 1,2 do
			for k = 1,getn(Stage_info[i].map[j]) do
				if Stage_info[i].map[j][k] == mapid then
					Ms_on_log_in()
					break
				end
			end
		end
	end
end

function north_west_mission_out()
	local mission_diff = GetTask(Task_ID_stage_diff)
	if mission_diff == 2 then
		SetPKFlag(1,1)		--PK状态
		ForbidChangePK(0)	--禁止转换PK状态
	end
	UseScrollEnable(1)	--可以使用回城符
	ForbitTrade(0)		--可以交易
	StallEnable(1)		--可以摆摊
	SetDeathPunish(1)	--有死亡惩罚
	OpenFriendliness(1)	--增加好感度
	RestoreAll()		--全部回复
end
--*******************************2008清明节活动**************************
function tomb_sweep_2008()
	--触发器删除
	local task_diff = GetTask(1854)
	local nDate = tonumber(date("%Y%m%d"));
	if nDate <= 20080412 then
		return
	end
	if task_diff ~= 1 and task_diff ~= 3 and task_diff ~= 8 and task_diff ~= 10 then
		return
	end
	for i = 900,903 do
		local trigger_ID = GetTrigger(i)
		if trigger_ID ~= 0  then
			RemoveTrigger(GetTrigger(trigger_ID))
		end
	end
end
--******************************同心值衰减处理***************************
TaskID_attenuation_date_seq = 1219
TaskID_same_heart_value = 2015
Same_heart_value_max_TaskID = 2023		--同心值上限id
function ma_same_heart_deal()
	---------------------------同心值上限处理---------------------------
	if GetTask(Same_heart_value_max_TaskID) <= 500 then
		SetTask(Same_heart_value_max_TaskID,500)
	end
	---------------------------同心值衰减处理---------------------------
	local day_seq_dealed = GetTask(TaskID_attenuation_date_seq)
	local day_seq_now = zgc_pub_day_turn(1)
	--第一次不处理
	if day_seq_dealed == nil or day_seq_dealed == 0 then
		SetTask(TaskID_attenuation_date_seq,day_seq_now)
		return
	end
	--计算差异天数
	local day_distance = day_seq_now - day_seq_dealed
	if day_distance < 7 then
		return
	end
	--同心值衰减
	local same_heart_value = GetTask(2015)
	local attenuation_num = 0
	if same_heart_value <= 500 then
		attenuation_num = (day_distance * 4)
	elseif same_heart_value >501 and same_heart_value <= 2000 then
		attenuation_num = floor(same_heart_value * (0.06/7) * day_distance)
	else
		attenuation_num = floor(same_heart_value * (0.12/7) * day_distance)
	end
	--记入当前天序数
	SetTask(TaskID_attenuation_date_seq,day_seq_now)
	--如果衰减值大于当前值则设置为0
	if same_heart_value <= attenuation_num then
		SetTask(TaskID_same_heart_value,0)
	else
		SetTask(TaskID_same_heart_value,(same_heart_value - attenuation_num))
	end
end
--梁山关卡和天门阵上线提示
nTaskId_LS_TMS_TALK = 2856
tLsTmz_TALK_INFO = {
	{70,"Thi猲 M玭 Tr薾: Nh籱 t╪g quy m� tham gia chi課 trng Di詎 V� Thi猲 M玭 Tr薾, qu﹏ s� Чi T鑞g  m� th猰 chi課 tr薾 di詎 v� Thi猲 M玭 Tr薾 t筰 Th祅h Й (231, 229) v� Чi L� (179,179) h穣 n  t譵 Qu竎h Qu﹏ B籲g b竜 danh tham gia"},
	{80,"Khi猽 chi課 Lng S琻: Lng S琻 108 v� tng g鰅 l阨 m阨 n c竎 v� h祇 ki謙 tr猲 giang h� n t� v� giao h鱱, i hi謕 c� th� n c竎 th祅h ch� t譵 Th祅h H祅h Th竔 B秓 ыi T玭g (b猲 c筺h Th莕 Du Ch﹏ Nh﹏)  頲 tham gia vt 秈"},
}
function task_talk_deal()
	local nPlayerLevel = GetLevel()
	local nTalkValue = GetTask(nTaskId_LS_TMS_TALK)
	for i = 1,getn(tLsTmz_TALK_INFO) do
		if nPlayerLevel >= tLsTmz_TALK_INFO[i][1] and GetBit(nTalkValue,i) == 0 then
			LsTmz_login_talk(i)
			break
		end
	end
end
function LsTmz_login_talk(nTalkSeq)
	Talk(1,"#LsTmzTalkFinish("..nTalkSeq..")",tLsTmz_TALK_INFO[nTalkSeq][2])
end
function LsTmzTalkFinish(nTalkSeq)
	local nTalkValue = GetTask(nTaskId_LS_TMS_TALK)
	nTalkValue = SetBit(nTalkValue,nTalkSeq,1)
	SetTask(nTaskId_LS_TMS_TALK,nTalkValue)
end
--==================================结束=================================

--========================07七夕活动======================================
--统计在线时间，并增加成长度
function flower_time()
	--没种花不统计
	if GetTask(TASK_IS_PLANT) == 0 then
		return
	end
	--成长度到100不再统计
	if GetTask(TASK_FLOWER_GROW) >= 100 then
		return
	end
	--当天成长度已经加1，不再统计
	local now_days = floor((GetTime()+28800)/86400);
	if now_days == GetTask(TASK_IS_GROW) then
		return
	end

	if GetTask(TASK_LAST_LOGIN) ~= GetLastLoginTime()+28800 then   --判断是否跨服
		SetTask(TASK_CURRENT_LOGIN,GetTime()+28800);  --记录当前登陆时间
		SetTask(TASK_LAST_LOGIN,GetLastLoginTime()+28800);
	else                     --跨服也不统计
		return
	end

	local nThisTime = floor(GetTask(TASK_CURRENT_LOGIN)/86400);
	local nLastTime = floor((GetLastLoginTime()+28800)/86400);
	if nLastTime ~= 0 and nThisTime ~= nLastTime then
		SetTask(TASK_TOTAL_TIME,0);
	end
end
--==========================================================================================
function process_biwudahui()
	StopTimeGuage(-1);
	local nVersion,nCurGs = GetRealmType();
	if nCurGs == 1 then
		SetFightState(0);
--		if GetSvrConfig("IsSaveRoleData") == 0 then
--			Del_Item_By_List();
--			Add_Item_By_List(g_tGiveItemList);
--			Del_Spe_Item();
--			--银券处理：跨服区先干掉银券
--			local nValue = GetYinQuan();
--			ModifyYinQuan(-nValue);
--			Msg2Player("银券数量在返回原服后恢复！");
--		end
		ForbidChangePK(1);
		ForbitTrade(1);	--禁止交易
		StallEnable(0);	--禁止摆摊
		local nMap_ID = GetWorldPos();
		local tDLGC_Map = {};
		if _JX2WZ ~= 2 then
			tDLGC_Map = {
				[7990] = 1,
				[7991] = 1,
				[7992] = 1,
				[7993] = 1,
				[7994] = 1,
			};
		else
			tDLGC_Map = {
				[7990] = 1,
				[7991] = 1,
				[7992] = 1,
			};
		end
		if nMap_ID == 7100 then --比武大会
			SetTask(TSK_JOIN_LIST_TYPE,-1,TASK_ACCESS_CODE_BIWUDAHUI);
			JoinGestConvention();
			RemoveRevivals();	--清除五毒宝宝
			SetTask(TSK_JOIN_LIST,1,TASK_ACCESS_CODE_BIWUDAHUI);
			Add_Item_By_List(g_tGiveItemList_biwu)
		elseif nMap_ID == 7980 then --跨服天门阵
			Add_Item_By_List(g_tGiveItemList_tmz_dlgc)
		elseif nMap_ID == 8000 then	-- NVN
--			NvnHall_Enter();
--			SendScript2Client(format("Open('nvnHall', %d)",1));
--			NVN_UpdateItemEnhance();
			Add_Item_By_List(g_tGiveItemList_biwu)
			P3v3_Join();
			SendScript2Client("Open('3v3')");
--		elseif tDLGC_Map[nMap_ID] == 1 then --达鲁古城报名处
--			Add_Item_By_List(g_tGiveItemList_tmz_dlgc)
--			DLGC_Join();
--			SendScript2VM("\\script\\missions\\dlgc\\dlgc_sign_up.lua", "onPlayerLogin()");
--			--SendScript2Client("Open('DLGCBattle')");
--			WriteLog(format("[date:%s][role:%s][acc:%s][达鲁古城登录报名场地][GSID:%d]",date("%Y%m%d%H%M%S"),GetName(),GetAccount(), GetGSIndex()[0]));
--		elseif nMap_ID == 7102 then
--			SetTask(TASKID_XSBK_ENTER_TIME, GetTime());
--			local nMinute = tonumber(date("%M"));
--			local nSecond = tonumber(date("%S"));
--			local nDeltaTime = (40 - nMinute) * 60 + nSecond;
--			if nDeltaTime > 0 then
--				StartTimeGuage("西山宝库倒计时", nDeltaTime, 0, 1);
--			end
--			local szMsg = "失落崖的西山宝库活动将于" .. date("%H") .. "点40分正式开始，侠客请在此等待区域耐心等候。";
--			Talk(1, "", szMsg);
--			Msg2Player(szMsg);
		end
		--外装蕴灵：跨服区不给千变盒
--		local nQBHCount = BigGetItemCount(2,95,572);
--		if nQBHCount > 0 then
--			BigDelItem(2,95,572,nQBHCount);
--		end
		--技能石锦囊
--		local nJNSCount = BigGetItemCount(2,1,10010);
--		if nJNSCount > 0 then
--			BigDelItem(2,1,10010,nJNSCount);
--		end
	else
		--千变盒
--		local nQBHCount = BigGetItemCount(2,95,572);
--		if nQBHCount < 1 then
--			AddItem(2,95,572,1);
--		end
		--技能石锦囊
--		if 0 >= BigGetItemCount(2,1,10010) then
--		AddItem(2,1,10010,1,4);
--		end
	
		SendScript2Client(format("Open('nvnHall', %d)",0));
		SendScript2Client(format("Open('nvnRoom', %d)",0));
		local nNowDate = tonumber(date("%Y%m%d%H"));
		if nNowDate < g_nBWAwardDate then
			Msg2Player("Ph竧 thng Чi H閕 T� V� li猲 u, t� 10 gi� 12/05/2014 n 22 gi� 18/05/2014 c� th� n c s� Чi H閕 T� V� nh薾 thng.");
		end
--		if GetTask(TASKID_BIWU_IS_REALM) ~= 0 then
--			GLB_BW_SynData(0,0);--同步数据
--			local nRoute = GetPlayerRoute();
--			if nRoute == 21 then
--				GLB_BW_SynData(0,1);
--			end
--			GLB_BW_SynData(0,2);
--			GLB_BW_SynData(0,3);
--		else
			process_biwudahui_update_zige()
			process_biwudahui_2()
--		end
	end
end;

function process_biwudahui_2()
	--SetTask(TASKID_BIWU_IS_REALM,0);
	g_tZiGePoint = {};
	local nCurPoint = GetTask(666);
	local nSignUpInfo = GetTask(678);
	local nBeginTime = MkTime(2014,5,12,10,0,0);
	local nCurTime = GetTime();
	local nWeek = ceil((nCurTime-nBeginTime)/(7*24*3600));
	local nCurSeason = ceil(nWeek/g_nBWWeeks); --第几赛季
	local nSeasonWeek = mod(nWeek,g_nBWWeeks); --当前赛季的第几周
	if nSeasonWeek == 0 then
		nSeasonWeek = g_nBWWeeks;
	end
	local nCurWeek = tonumber(date("%w"));
	nBeginTime = nBeginTime+(nCurSeason-1)*g_nBWWeeks*7*24*3600;

	if nCurTime >= nBeginTime and GetTask(649) ~= nBeginTime then
		if BWDH_DEBUG_VERSION == 1 then
			print("biwudahui new season:", GetName(), nCurTime, GetTask(649));
		end
		SetTask(647,nSignUpInfo, TASK_ACCESS_CODE_BIWUDAHUI);	--记录合并前的报名情况
		if nSignUpInfo ~= 0 then	--报过名的玩家
			if nSignUpInfo == 1 then	--如果是新秀比武大会选手
				SetTask(678,2);
			end;
			if nCurPoint < 200 then	--只给200分以下的玩家增加积分
				if nCurPoint + 100 > 200 then
					SetTask(666,200,TASK_ACCESS_CODE_BIWUDAHUI);
					Msg2Player("觤 t� v�  t╪g"..(200 - nCurPoint).." Ph髏 ");
				else
					SetTask(666,nCurPoint+100,TASK_ACCESS_CODE_BIWUDAHUI);
					Msg2Player("觤 t� v�  t╪g 100 甶觤");
				end;
			end;
			SetTask(646,GetTask(662),TASK_ACCESS_CODE_BIWUDAHUI);	--记录合并前的资格积分
			SetTask(TSK_SEASON_ZIGE_LAST,GetTask(662),TASK_ACCESS_CODE_BIWUDAHUI); --记录上赛季的资格积分
			SetTask(662,0,TASK_ACCESS_CODE_BIWUDAHUI);	--资格积分清0
			Msg2Player("觤 t� c竎h  x鉧 0");
			local nLevel = GetLevel();
			local nRoute = GetPlayerRoute();
			if not bInit then
				ApplyRelayShareData("GestConvention_Zige_Last", nLevel, nRoute, g_szThisFile, "gc_zige_point_callback");
			else
				local nPlayerName = GetName();
				if GetTask(TSK_SEASON_ZIGE_LAST) < g_tZiGePoint[nPlayerName] then
					SetTask(TSK_SEASON_ZIGE_LAST,g_tZiGePoint[nPlayerName],TASK_ACCESS_CODE_BIWUDAHUI);
				end
			end
		end;
		SetTask(649,nBeginTime,TASK_ACCESS_CODE_BIWUDAHUI);
	end;

	--对于大于当前周最高资格分的进行处理
	if nCurWeek ~= 0 and nCurWeek ~= 1 then --星期天和星期一都不进行处理
		local nMaxPoint = (nSeasonWeek-1)*100;
		if GetTask(662) > nMaxPoint then
			SetTask(662,nMaxPoint,TASK_ACCESS_CODE_BIWUDAHUI);
			SignUpGestResult();	--将积分强制登记上去
			Msg2Player("Do t� c竎h tham d� Чi H閕 T� V� c馻 b筺 kh玭g h頿 l�, nay  s鯽 v� ng k� l筰.");
		end
	end

	if GetTask(673) == 1 then	--如果报名参加了较艺
		JoinGestConvention();
	end;
	nCurPoint = GetTask(666);
	if GetTask(674) ~= 0 then	--选择过程中下线了，上线时当拒绝比武处理
		SetTask(666,nCurPoint-2,TASK_ACCESS_CODE_BIWUDAHUI);
		Say("T� ch鑙 t� v�, tr� 2 甶觤 so t礽",0);
		SetTask(674,0,TASK_ACCESS_CODE_BIWUDAHUI);
		Msg2Player("T� ch鑙 t� v�, tr� 2 甶觤 so t礽");
	end;
	
	SendScript2VM("\\script\\biwudahui\\tournament\\tournament_function.lua", "BWT_WeeklyClear()")
	--==下面的代码要和BWT_WeeklyClear的功能一样
--	local nWeekNum = GetPlayerBwRank();
--	local nBodyWeek = GetTask(680);
--	if nWeekNum == -1 then	--Relay挂了
--		return 0;
--	end;
--	if nBodyWeek - nWeekNum >= 1 then	--合服后nWeekNum会从0开始
--		SetTask(680,nWeekNum-1,TASK_ACCESS_CODE_BIWUDAHUI);	--同步玩家身上的周数
--		SetTask(676,nWeekNum-1,TASK_ACCESS_CODE_BIWUDAHUI);	--同步玩家领取奖励的周数
--		nBodyWeek = nWeekNum-1;
--	end;
--	
--	if BWDH_DEBUG_VERSION == 1 then
--		print("biwudahui weekly check:", GetName(), nBodyWeek, nWeekNum);
--	end
--	if nBodyWeek < nWeekNum then
--		process_bw_point_attenuation();
--		SetTask(667,0,TASK_ACCESS_CODE_BIWUDAHUI);	--本周总参与场次
--		SetTask(668,0,TASK_ACCESS_CODE_BIWUDAHUI);		--本周胜利场次
--		SetTask(669,0,TASK_ACCESS_CODE_BIWUDAHUI);		--本周失败场次
--		SetTask(679,0,TASK_ACCESS_CODE_BIWUDAHUI);	--本周通过较艺获得的心得数量
--		SetTask(665,0,TASK_ACCESS_CODE_BIWUDAHUI);	--登记积分清0
--		SetTask(681,0,TASK_ACCESS_CODE_BIWUDAHUI);	--本周获得实战心得情况清0
--		SetTask(682,0,TASK_ACCESS_CODE_BIWUDAHUI);		--本周使用实战心得清０
--		SetTask(683,0,TASK_ACCESS_CODE_BIWUDAHUI);		--本周买马清０
--		SetTask(685,0,TASK_ACCESS_CODE_BIWUDAHUI);	--使用传功心得
--		SetTask(640,0,TASK_ACCESS_CODE_BIWUDAHUI);	--本周兑换的战场奖励次数
--		SetTask(687,0,TASK_ACCESS_CODE_BIWUDAHUI);		--本周兑换的师门奖励次数
--		SetTask(642,0,TASK_ACCESS_CODE_BIWUDAHUI);		--本周兑换的灵石奖励次数
--		SetTask(643,0,TASK_ACCESS_CODE_BIWUDAHUI);		--本周兑换的经验奖励次数
--		
--		SetTask(3219,0,TASK_ACCESS_CODE_BIWUDAHUI);		--前10场的胜利场次
--		SetTask(3220,0,TASK_ACCESS_CODE_BIWUDAHUI);		--前10场的失败场次
--		SetTask(3221,0,TASK_ACCESS_CODE_BIWUDAHUI);		--是否领取了前10场的奖励
--		
----		SetTask(2732,0);
----		SetTask(2733,0);
----		SetTask(2734,0);
--		if GetTask(666) < 200 then
--			SetTask(666,200,TASK_ACCESS_CODE_BIWUDAHUI);	--低于100分的回归到100分
--		end;
--	end
	if GetTask(667) >= 10 then
		SetTask(665,GetTask(666),TASK_ACCESS_CODE_BIWUDAHUI);
		SignUpGestResult();	--将积分登记上去
	end
end

--更新当前赛季资格分
g_tZiGePointChange = {}
g_tZiGePointChangeInit = {}
function process_biwudahui_update_zige()
	local nLevel = 1 --GetLevel()
	local nRoute = GetPlayerRoute()
	if not g_tZiGePointChangeInit[nRoute] then
		ApplyRelayShareData("GestConvention_Change", nLevel, nRoute, g_szThisFile, "process_biwudahui_update_zige_cb")
	else
		process_biwudahui_update_zige_do_update()
	end
end

function process_biwudahui_update_zige_cb(szKey,nLevel,nRoute,nRecordCount)
	g_tZiGePointChangeInit[nRoute] = 1
	if nRecordCount == 0 then
		return 0
	end
	for i=1,nRecordCount do
		--返回值：玩家名，资格积分
		szName,nPoint = GetRelayShareDataByIndex(szKey,nLevel,nRoute,i-1)
		g_tZiGePointChange[szName] = nPoint;
	end
	process_biwudahui_update_zige_do_update()
end

function process_biwudahui_update_zige_do_update()
	local nPlayerName = GetName()
	local nNewPoint = g_tZiGePointChange[nPlayerName] or 0
	if nNewPoint > 0 then
		local szScript = format("SyncZgPoint(%d)", nNewPoint)
		SendScript2VM("\\script\\global\\gest_convention_callback.lua", szScript)
	end
end


function GLB_BW_Return_Tb(...)
	local nReturnTb = {};
	for i=1,arg.n do
		tinsert(nReturnTb,arg[i]);
	end
	return nReturnTb
end

--跨服比武同步数据
function GLB_BW_SynData(nkey1,nkey2)
	local strName = GetName();
	strName = "Realm_"..strName;
	ApplyRelayShareData(strName,nkey1,nkey2,g_szThisFile,"GLB_BW_Syn_CB");
end

function GLB_BW_Syn_CB(strName,nkey1,nkey2)
	local TbList = {};
	local strItemKey,strPrefix = "","";
	local tGushiTask = {--蛊师的变量
		2204,2216,2207,2222,2219,2210,2228,2213,2225,2231
	};

	if nkey1 == 0 and nkey2 == 1 then --蛊师
		--2012-08-01 决定不再同步蛊师
--		TbList = GLB_BW_Return_Tb(GetRelayShareDataByKey(strName,nkey1,nkey2,"GS"));
--		if getn(TbList) < 2 then
--			return 0;
--		end
--		for i = 1,getn(TbList) do
--			if tGushiTask[i] ~= nil or tGushiTask[i] ~= 0 then
--				SetTask(tGushiTask[i],TbList[i]);
--			end
--		end
	elseif nkey1 == 0 and nkey2 == 2 then --逍遥币
		local nValue = GetRelayShareDataByKey(strName,nkey1,nkey2,"XYB");
		if nValue == nil or nValue < 0 then
			return 0;
		end
		PayXYB(nValue);
		SetTask(TASKID_XOYO_CONSUME,0);
		WriteLog(format("[Xu Ti猽 Dao] [Role:%s Acc:%s] [T鑞 Xu Ti猽 Dao  %d]", GetName(), GetAccount(), nValue));
	elseif nkey1 == 0 and nkey2 == 3 then --逍遥玉
		local nValue = GetRelayShareDataByKey(strName,nkey1,nkey2,"XYY");
		if nValue == nil or nValue < 0 then
			return 0;
		end
		PayXYY(nValue);
		SetTask(TASKID_XOYOYU_CONSUME,0);
		WriteLog(format("[Ti猽 Dao Ng鋍] [Role:%s Acc:%s] [T鑞 Ti猽 Dao Ng鋍  %d]", GetName(), GetAccount(), nValue));
	else
		if nkey1 == 0 then 			--比武大会
			strPrefix = "BW";
		elseif nkey1 == 1 then 		--天门阵
			strPrefix = "TMZ";
		elseif nkey1 == 2 then		--达鲁古城
			strPrefix = "DLGC";
		end
		for i = 1,500 do
			strItemKey = strPrefix..tostring(i);
			TbList = GLB_BW_Return_Tb(GetRelayShareDataByKey(strName,nkey1,nkey2,strItemKey));
			if getn(TbList) < 2 then
				break;
			end
			for i=1,getn(TbList),2 do
				if TbList[i] ~= 0 and TbList[i+1] ~= nil then
					SetTask(TbList[i],TbList[i+1]);
				end
			end
		end
		process_biwudahui_2();
	end
	DelRelayShareDataCopy(strName,nkey1,nkey2)
	ClearRelayShareData(strName,nkey1,nkey2,g_szThisFile,"GLB_BW_Clear_callback")

	--成就----------------------------
	local nWinNum = GetTask(TASKID_ACH_BIWU_WIN_TOTAL);
	if nWinNum > 0 then
		SetTask(3712,nWinNum);
		OnAchEvent(2,3712);
	end
	local nUseNewRoute = GetTask(TASKID_ACH_USE_NEW_ROUTE);
	local nWinNewRoute = GetTask(TASKID_ACH_WIN_NEW_ROUTE);
	if nUseNewRoute > 0 then
		SetTask(3738,nUseNewRoute);
		OnAchEvent(2,3738);
	end
	if nWinNewRoute > 0 then
		SetTask(3739,nWinNewRoute);
		OnAchEvent(2,3739);
	end
	--成就里面的天门阵
	OnAchEvent(2,3740);
	OnAchEvent(2,3741);
	OnAchEvent(2,TASKID_TMZ_TOTAL_WIN_NUM);
	
	------------------add by wangjing----------------
	--跨服成就变量同步回来再触发
	for i = TASKID_TMZ_SPE_ACH_TASK_1, TASKID_TMZ_SPE_ACH_TASK_10 do		--天门阵相关
		OnAchEvent(2, i);
	end
	
	for i = TASKID_DLGC_SPE_ACH_TASK_1, TASKID_DLGC_SPE_ACH_TASK_15 do		--达鲁古城相关
		OnAchEvent(2, i);
	end
	-------------------------------------------------
	local award_3v3 = GetTask(TASKID_3V3_WIN_AWARD_COUNT);
	if award_3v3 > 0 then
		SetTask(TASKID_3V3_WIN_AWARD_COUNT, 0);
		soul_GivePoint(award_3v3 * 30);
	end
end

function GLB_BW_Clear_callback(strName,nkey1,nkey2)

end

function gc_zige_point_callback(szKey,nLevel,nRoute,nRecordCount)
	if nRecordCount == 0 then
		return 0;
	end;
	local nPlayerName = GetName();
	for i=1,nRecordCount do
		--返回值：玩家名，资格积分，流派，等级，总胜，总负，周胜，周负
		szName,nPoint = GetRelayShareDataByIndex(szKey,nLevel,nRoute,i-1);
		g_tZiGePoint[szName] = nPoint;
	end;
	if GetTask(TSK_SEASON_ZIGE_LAST) < g_tZiGePoint[nPlayerName] then
		SetTask(TSK_SEASON_ZIGE_LAST,g_tZiGePoint[nPlayerName]);
	end
	bInit = 1;
end

--function process_bw_point_attenuation()
--	local nWeekNum,nBWLevel,nBWRank = GetPlayerBwRank();
--	if nWeekNum == -1 then	--Relay挂了
--		return 0;
--	end;
--	local nBodyWeek = GetTask(680);
--	if nBodyWeek >= nWeekNum then
--		return 0;
--	end;
--	local nCurPoint = GetTask(666);
--	local nWeekElapse = nWeekNum - nBodyWeek;
--	local nAttenPoint = get_bw_attenuation_point(nCurPoint,nWeekElapse);
--	if nCurPoint-nAttenPoint > 0 then
--		Msg2Player("觤 t輈h l騳 t� v� gi秏"..(nCurPoint-nAttenPoint).." 甶觤");
--	end;
--	SetTask(666,nAttenPoint,TASK_ACCESS_CODE_BIWUDAHUI);
--	SetTask(680,nWeekNum,TASK_ACCESS_CODE_BIWUDAHUI);
--	SetTask(661,0,TASK_ACCESS_CODE_BIWUDAHUI);	--衰减时清掉上周排名
--	if nBWRank ~= -1 and nBWRank <= 10 then	--如果进入了排行榜
--		SetTask(661,nBWRank,TASK_ACCESS_CODE_BIWUDAHUI);
--		local nBestWeekRank = GetTask(663);
--		if nBestWeekRank == 0 or nBWRank < nBestWeekRank then
--			SetTask(663,nBWRank,TASK_ACCESS_CODE_BIWUDAHUI);	--最高周排名
--		end;
--	end;
--	WriteLog("[Чi h閕 t� v鈃:"..GetName().."抱i觤 t輈h l騳 t� v� gi秏. Trc l骳 gi秏:�"..nCurPoint..", sau khi gi秏:�"..nAttenPoint);
--end;

function get_bw_attenuation_point(nPoint,nWeek)
	if nPoint <= 300 then
		return nPoint;
	end;
	for i=1,nWeek do
		if nPoint <= 300 then
			break;
		else
			nPoint = nPoint - floor((nPoint-300)/2);
		end;
	end;
	return nPoint;
end;
--===================================================================================

--赠送西域探秘门票
function give_xibei_ticket()

local msg_list = {
	[1] = "C� Dng Th�  tr鑞 v� C� Dng чng, C玭 L玭 Mai B蕋 Dung kh玭g nh蒼 t﹎ nh譶 C� Dng Th� b� tra t蕁 n ch誸, mu鑞 t譵 ngi gi髉 , n C玭 L玭 t譵 c� ta 甶.",
	[2] = "Chuy謓 ngi t譵 M� Kim Ph� cho Li評 Tung V﹏ th藅 k� l�, b� m藅 c馻 T莕 L╪g dng nh� kh玭g n gi秐, Li評 Tung V﹏ � Ph鬾g Tng 產ng t譵 ngi gi髉 .",
	[3] = "T� M� Minh Phong bi誸 b� m藅 T莕 L╪g, mu鑞 甶 gi誸 Qu� Tng Qu﹏  t譵 tung t輈h c馻 v� y, n猲 n  gi髉 .",
	[4] = "T玭 Phng Nh﹏ 甶 d筼 Dc Vng чng, ph竧 hi謓 nhi襲 Dc Nh﹏ Th秓, cho r籲g Dc Vng chu萵 b� t竔 sinh, mu鑞 ngi gi髉 di謙 tr� t薾 g鑓.",
	[5] = "L� Nguy猲 Kh竛h kh玭g t� m鋓 th� 畂筺  gi誸 Th竎 B箃 Ho籲g, ngi c騨g c� trong danh s竎h, mau n Ph鬾g Tng t譵 Th竎 B箃 Ho籲g 甶.",
	[6] = "Long M玭 Tr蕁 b� b穙 c竧 甶 qua,  l筰 c秐h tng hoang t祅,  n竧, T玭 Nh� Li猲 甶 qua 甶 l筰 kh玭g bi誸 l祄 g�, tr玭g c� v� u s莡, ngi n  h醝 th� xem.",
	}
local i = random(1,100);
local t = 0;

	--50%几率给予提示，每次只提示一个门票赠送信息
	if i > 50 then
		for t=1,6 do
			if GetBit(GetTask(2038),t) ~= 1 then
				Msg2Player(msg_list[t])
				break;
			end
		end
	end

end

function go_to_biwudahui()
	NewWorld(200,1391,2821);	--如果NewWorld失败，则会在下一帧恢复原先的战斗状态
	SetFightState(0);
end;

function nothing()

end;

function about_suohun()
	Say("<color=red>Ch� �:<color>:\nV藅 ph萴 kh鉧 h錸 s� xu蕋 hi謓 th玭g tin <color=red>s� h鱱: 'T猲 ngi ch琲'<color>, v藅 ph萴 sau khi kh鉧 h錸, nh﹏ v藅  s� c� quy襫 s� h鱱 v藅 ph萴 n祔, m閠 khi ph竧 hi謓 v藅 ph萴 b� r琲 m蕋, h� th鑞g ph鬰 v� s� d鵤 v祇   ph﹏ nh.\nDo , khi 產ng giao d辌h, v藅 ph萴 c� th玭g tin <color=red>s� h鱱: 'T猲 ngi ch琲'<color>, n誹 kh玭g ph秈 cho mn, ch綾 ch緉 kh玭g n猲 giao d辌h.",
		1,
		"Ta  hi觰/nothing");
	SetTask(544,1);
end

function process_shimenguanka()
	if GetTask(1124) == 0 then	--如果是调整后第1次登陆
		SetTask(1127,0);	--本周闯关失败次数（清档次数）清0
		SetTask(1124,1);
	end;
end;

function process_ip_issue()
	local nLastLoginIp,nCurrentLoginIp = GetLoginIP();
	if nLastLoginIp ~= nCurrentLoginIp and nLastLoginIp ~= 0 then
		local nLIP1,nCIP1 = floor(nLastLoginIp/2^24),floor(nCurrentLoginIp/2^24);
		local nLIP2,nCIP2 = floor((nLastLoginIp-nLIP1*2^24)/2^16),floor((nCurrentLoginIp-(nCIP1*2^24))/2^16);
		local nLIP3,nCIP3 = floor((nLastLoginIp-nLIP1*2^24-nLIP2*2^16)/2^8),floor((nCurrentLoginIp-nCIP1*2^24-nCIP2*2^16)/2^8);
		local nLIP4,nCIP4 = nLastLoginIp-nLIP1*2^24-nLIP2*2^16-nLIP3*2^8,nCurrentLoginIp-nCIP1*2^24-nCIP2*2^16-nCIP3*2^8;
		local szLIP = tostring(nLIP1.."."..nLIP2.."."..nLIP3.."."..nLIP4);
		local szCIP = tostring(nCIP1.."."..nCIP2.."."..nCIP3.."."..nCIP4);
--		Talk(1,"","您上次登录游戏的IP是：<color=yellow>"..szLIP.."<color>，本次登录游戏的IP是：<color=yellow>"..szCIP.."<color>，<color=red>两次登录IP不同<color>，请检查是否有异常，如果这两次登陆并不是您本人的操作，那么您的密码很可能已经泄漏，请尽快用绑定手机或绑定邮箱修改所有密码。如果确认被盗，请即刻打开<color=yellow>F1<color>登陆<color=red>[被盗自助处理在线系统]<color>进行上报。此系统只受理被盗3天内的问题，处理时间为1-5个工作日。");
		Msg2Player("IP ng nh藀 l莕 trc l�:"..szLIP..", IP ng nh藀 l莕 n祔 l�:"..szCIP..", IP ng nh藀 kh竎 nhau, xin ki觤 tra l筰, ch� � an to祅 t礽 kho秐.");
	end;
end;
--同步蛊师蛊鼎里面的蛊的数量给客户端
function sync_guinsect_num_in_guding()
	for i=1,40 do
		SyncGuInsectNumInGuDing(i,GetTask(2200+i));
	end;
end;


-- 以下几个任务变量在\script\global\offlinelive_action.lua中定义！！
TASKVAL_BAIJU_LASTACTIVE_TIME = 2292		-- 记录最近一次获得白驹经验的时间
TASKVAL_LIUSHEN_LASTACTIVE_TIME = 2293		-- 记录最近一次获得六神经验的时间
TASKVAL_SANQING_LASTACTIVE_TIME = 2294		-- 记录最近一次获得三清经验的时间

TASKVAL_BAIJU_OFFLINE_TIME = 2295			-- 离线白驹时间（累积）分钟
TASKVAL_LIUSHEN_OFFLINE_TIME = 2296			-- 离线六神时间（累积）分钟
TASKVAL_SANQING_OFFLINE_TIME = 2297			-- 离线三清时间（累积）分钟

TIME_ZONE_OFFSET_SEC = 8 * 3600

-- 离线的离线托管
function OfflineLiveEx()
	local LogoutTime = GetLastLogoutTime()
	if LogoutTime == 0 then		-- 新建帐号
		return
	end

	LogoutTime = LogoutTime - TIME_ZONE_OFFSET_SEC
	local LoginTime = GetTime()
	local PlayerCreateTime = GetCreateTime()
	local MaxOfflineTime = LoginTime - PlayerCreateTime
	local nMaxTime = floor(MaxOfflineTime / 60)
	
	local nBaiJuTime = UpdateOneOfflineTime(LogoutTime, LoginTime, nMaxTime, TASKVAL_BAIJU_LASTACTIVE_TIME, TASKVAL_BAIJU_OFFLINE_TIME, 0)
	local nLiuShenTime = UpdateOneOfflineTime(LogoutTime, LoginTime, nMaxTime, TASKVAL_LIUSHEN_LASTACTIVE_TIME, TASKVAL_LIUSHEN_OFFLINE_TIME, 0)
	local nSanQingTime = UpdateOneOfflineTime(LogoutTime, LoginTime, nMaxTime, TASKVAL_SANQING_LASTACTIVE_TIME, TASKVAL_SANQING_OFFLINE_TIME, 0)
	local nJuLingTime = UpdateJuLingOfflineTime(LogoutTime, LoginTime, nMaxTime)
	
	_TellOfflineTime(nBaiJuTime, nLiuShenTime, nSanQingTime, nJuLingTime)
end

function _TellOfflineTime(nBaiJuTime, nLiuShenTime, nSanQingTime, nJuLingTime)
	if nBaiJuTime > 0 or nLiuShenTime > 0 or nSanQingTime > 0 or nJuLingTime > 0 then
		
		local PlayerLevel = GetLevel()
    	local GiveExpPerMin = 0
    	if PlayerLevel >= 90 then
    		GiveExpPerMin = 5000
    	else
    		GiveExpPerMin = ceil(PlayerLevel * PlayerLevel / 2)
    	end
    	local GiveExp = GiveExpPerMin * nBaiJuTime * 2
    	
		--local szMsg = "C竎 h�  t躰h l騳 頲 \n"
    	--szMsg = format("%s %s th阨 gian r阨 m筺g B筩h C﹗ ho祅, c� th� i t鑙 產 <color=yellow>%s<color> 甶觤 kinh nghi謒\n", szMsg, _GetTimeStr(nBaiJuTime), get_large_num(GiveExp))
    	--szMsg = format("%s %s th阨 gian L鬰 Th莕 Ho祅, c� th� quy i 頲 nhi襲 nh蕋 <color=yellow>%d<color> 甶觤 danh v鋘g\n", szMsg, _GetTimeStr(nLiuShenTime), floor(nLiuShenTime/2))
    	--szMsg = format("%s %s th阨 gian Tam Thanh Ho祅, c� th� quy i 頲 nhi襲 nh蕋 <color=yellow>%d<color> 甶觤 c鑞g hi課 s� m玭\n", szMsg, _GetTimeStr(nSanQingTime), floor(nSanQingTime * 3 / 20))
    	--szMsg = format("%s %s th阨 gian T� Linh Ho祅, c� th� quy i 頲 nhi襲 nh蕋 <color=yellow>%d<color> 甶觤 ch﹏ kh輁n", szMsg, _GetTimeStr(nJuLingTime),3*nJuLingTime)
    	--szMsg = format("%s c� th� d飊g th阨 gian 駓 th竎 tng 鴑g  quy i th祅h 甶觤 thng c莕 thi誸.", szMsg)
    	--Say(szMsg, 0)
--    	local tbDialog = {
--    		"我知道了/no_say",
--    		};
--    	Say(szMsg, getn(tbDialog), tbDialog)
	end
end

function get_large_num(nNum)
	local nLarge = floor(nNum / (10000*10000))
	local nLeft = mod(nNum , (10000*10000))
	local szStr = ""
	if nLarge > 0 then
		szStr = format("%d", nLarge)
	end
	szStr = format("%s%d", szStr,nLeft)
	return szStr
end

function goto_getthose()
	NewWorld(350,1433,2769)
	SetFightState(0)
end

--交易自动锁定
function com_auto_lock()
--	if GetTask(827) == 0 and GetLevel() >= 60 then
--		Say("    您还没有开启[交易自动锁定]功能，强烈建议您开启此功能。此功能开启后将在您的登陆IP变化时自动进入[交易保护时间期]，这可以更有效的保护您的财产安全：\n情况一：防止盗号木马恶意踢号后登陆并转移您的财物。\n情况二：当前剩余交易锁定时间小于自动锁定设置时间时，自动修正最小交易保护时间！",2,"\n我现在就要开启使用此功能/func_2_auto","\n我知道了/no_say");
--	else
--	end;
end;


function no_say()
end


function AddItemForViet200906()
	if EventOpen0906() == 0 then
		return
	end
	if tonumber(date("%y%m%d%H")) >= 09071924 or tonumber(date("%y%m%d%H")) < 09061900 then
		return
	end

		--添加辅助
	if GetTask(TASK_GET_FUZHU_DATE) >= tonumber(date("%y%m%d")) then
		if GetTask(TASK_GET_FUZHU_TYPE) ~= 0 then
			local nType = floor(GetTask(TASK_GET_FUZHU_TYPE) / 10);
			local nRandAttr = mod(GetTask(TASK_GET_FUZHU_TYPE), 10);
			local nHour = tonumber(date("%H"));
			local nMin = tonumber(date("%M"));
			local nSec = tonumber(date("%S"));
			local nLeftTime = ((23 - nHour) * 60 * 60 + (59 - nMin) * 60 + (60 - nSec)) * 18;
			if nType == 1 then
				for i = 1, getn(tb_InBuff[nRandAttr][3]) do
					CastState(tb_InBuff[nRandAttr][3][i][1], tb_InBuff[nRandAttr][3][i][2], nLeftTime);
				end
			else
				for i = 1, getn(tb_OutBuff[nRandAttr][3]) do
					CastState(tb_OutBuff[nRandAttr][3][i][1], tb_OutBuff[nRandAttr][3][i][2], nLeftTime);
				end
			end
		end
	end

	--创建触发器－杀胖兔子掉箱子
	local tID = 1243;
	local cID = 2507;
	local nCreateFlag = 0;
	if GetTrigger(cID) == 0 then
		if CreateTrigger(0, tID, cID) == 0 then	--创建杀怪触发器
			nCreateFlag = 1													--触发器创建失败了
		end
	end
	if nCreateFlag == 1 then
		WriteLog("Hoat dong truy tim tho map:"..GetName().."Tao quai loi (2507)")
	end

	if GetItemCount(2, 1, 30045) ~= 0 then
		return
	end
	local nRetCode, nItem = 0;
	nRetCode = AddItem(2, 1, 30045, 1);
	if nRetCode == 1 then
		gf_SetItemExpireTime(nItem, 2009, 7, 20, 0, 0, 0);
		Msg2Player("Чi hi謕  nh薾 1 c萴 nang i s� ki謓");
	end
end

function first_tong_pk_config()
	if is_first_tong_jpz_open() == 0 then
		return
	end
	if GetTrigger(2502) == 0 then
		if CreateTrigger(2,3001,2502) == 0 then
			WriteLog(g_LogTitle.."[Account: "..GetAccount().."][Role Name:"..GetName().."] CreateTrigger(2,3001,2502) Failed. ")
		end
	end;
	if GetTrigger(2503) == 0 then
		if CreateTrigger(2,3002,2503) == 0 then
			WriteLog(g_LogTitle.."[Account: "..GetAccount().."][Role Name:"..GetName().."] CreateTrigger(2,3002,2503) Failed. ")
		end
	end;
	local nHour = tonumber(date("%H"));
	local nMapID = GetWorldPos();
	if nMapID ~= 106 then
		return
	end
	if nHour == 17 or nHour == 18 then	--  17：00-18：00 龙泉村地图无pk惩罚
		SetDeathPunish(0);
	end
end

function AddItemForViet200909()
	if tonumber(date("%y%m%d%H")) >= 09102524 or tonumber(date("%y%m%d%H")) < 09091800 then
		return
	end

	--添加辅助
--	if GetTask(VIET_0909_TASK_GET_FUZHU_DATE) >= tonumber(date("%y%m%d")) then
--		if GetTask(VIET_0909_TASK_GET_FUZHU_TYPE) ~= 0 then
--			local nType = floor(GetTask(VIET_0909_TASK_GET_FUZHU_TYPE) / 10);
--			local nRandAttr = mod(GetTask(VIET_0909_TASK_GET_FUZHU_TYPE), 10);
--			local nHour = tonumber(date("%H"));
--			local nMin = tonumber(date("%M"));
--			local nSec = tonumber(date("%S"));
--			local nLeftTime = ((23 - nHour) * 60 * 60 + (59 - nMin) * 60 + (60 - nSec)) * 18;
--			if nType == 1 then
--				for i = 1, getn(viet_0909_tb_InBuff[nRandAttr][3]) do
--					CastState(viet_0909_tb_InBuff[nRandAttr][3][i][1], viet_0909_tb_InBuff[nRandAttr][3][i][2], nLeftTime);
--				end
--			else
--				for i = 1, getn(viet_0909_tb_OutBuff[nRandAttr][3]) do
--					CastState(viet_0909_tb_OutBuff[nRandAttr][3][i][1], viet_0909_tb_OutBuff[nRandAttr][3][i][2], nLeftTime);
--				end
--			end
--		end
--	end
	
	--给锦囊大事件
	if GetItemCount(2, 1, 30045) ~= 0 then
		return
	end
	local nRetCode, nItem = AddItem(2, 1, 30045, 1);
	if nRetCode == 1 then
		gf_SetItemExpireTime(nItem, 2009, 10, 26, 0, 0, 0);
		Msg2Player("Чi hi謕  nh薾 1 c萴 nang i s� ki謓");
	end
end

function AddItemForViet200911()
	if BigGetItemCount(2, 1, 30045) == 0 then		
		AddItem(2, 1, 30045, 1);
		Msg2Player("Чi hi謕  nh薾 1 c萴 nang i s� ki謓");		
	end
	if BigGetItemCount(2, 0, 1043) == 0 then		
		AddItem(2, 0, 1043, 1);
		Msg2Player("Чi hi謕  nh薾 1 Nguy謙 Lng Th� luy謓 n l�");		
	end
end

function AddItemForViet200912()
	if tonumber(date("%y%m%d")) >= 100117 or tonumber(date("%y%m%d")) < 091218 then
		return
	end
	--给锦囊大事件
	if GetItemCount(2, 1, 30045) ~= 0 then
		return
	end
	local nRetCode, nItem = AddItem(2, 1, 30045, 1);
	if nRetCode == 1 then
		gf_SetItemExpireTime(nItem, 2010, 1, 17, 0, 0, 0);
		Msg2Player("Чi hi謕  nh薾 1 c萴 nang i s� ki謓");
	end
end

function ProtectRes()
	TSK_PK_FLAG = 1539
	local nDate = tonumber(date("%w%H"))
	if nDate >= 319 and nDate < 320 then
		local nMapID, nX, nY = GetWorldPos()
		if nMapID == 304 then			
			local szTongName, nCessBuysell, nCessStore, nTime = GetCityWarInfo(300, "base")	
			if IsTongMember() == 0 or GetTongName() ~= szTongName then
				LeaveTeam()
				local nFlag = random(2,3)
				SetPKFlag(1,nFlag)
				ForbidChangePK(1)
				SetTask(TSK_PK_FLAG,1)
			end		
		else
			if GetTask(TSK_PK_FLAG) == 1 then
				ForbidChangePK(0)
				SetTask(TSK_PK_FLAG,0)
			end
		end
	else
		if GetTask(TSK_PK_FLAG) == 1 then
			ForbidChangePK(0)
			SetTask(TSK_PK_FLAG,0)
		end	
	end
end

--取出日常活动的类型
function set_ruchangrenwu_type()
    if DAILY_TASK_0912_SWITCH ~= 1 then
        return 0;
    end
    if GetGlbValue(DAILY_TASK_0912_PERSONAL_TASK) == 0  or GetGlbValue(DAILY_TASK_0912_TEAM_TASK) == 0 then
        ApplyRelayShareData("richangrenwu_type", 0, 0, "\\script\\global\\playerloginin.lua", "get_type_callback");
    end
end

function get_type_callback(szKey, nKey1, nKey2, nCount)
		if szKey == "" then
			szKey, nKey1, nKey2 = _szkey, _nkey1, _nkey2
		end
		if nCount == 0 then
			-- 没有记录
			return 0;
		end
    local nPersonalTask, nTeamTask = GetRelayShareDataByKey(szKey, nKey1, nKey2, "type");
    DelRelayShareDataCopy(szKey,nKey1,nKey2);
    if nPersonalTask and nTeamTask then
        SetGlbValue(DAILY_TASK_0912_PERSONAL_TASK, nPersonalTask);
        SetGlbValue(DAILY_TASK_0912_TEAM_TASK, nTeamTask);
        return 0;
    end
    if not nPersonalTask then
        SetGlbValue(DAILY_TASK_0912_PERSONAL_TASK, 1);
    end
    if not nTeamTask then
        SetGlbValue(DAILY_TASK_0912_TEAM_TASK, 1);
    end
end

function init_new_server()
	if GetTask(TSK_CHANGE_SERVER) ~= GetGlbValue(GLB_TSK_SERVER_ID) and GetTask(TSK_CHANGE_SERVER) ~= 0 then
		 if GetTask(701) > 80000 then
		 	SetTask(701, 80000)
		 elseif GetTask(701) < -80000 then
		 	SetTask(701, -80000)
		 end
		 CalcBattleRank()
		 UpdateBattleMaxRank()
		 SetTask(TSK_SETQC_NEWSERVER, 1)
		 Talk(1, "", "Qu﹏ c玭g c馻 b筺  頲 甶襲 ch豱h v� m鴆 80000!")
		  gf_WriteLogEx("RESET DIEM QUAN CONG 80K", "reset th祅h c玭g", 1, "Reset Qu﹏ C玭g")
	end
--	if gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 62 and GetGlbValue(GLB_TSK_SERVER_ID) ~= 62 and tonumber(date("%Y%m%d")) <= 20101203 or 
--	gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) ~= 63 and GetGlbValue(GLB_TSK_SERVER_ID) == 63 and tonumber(date("%Y%m%d")) <= 20110220 then
--		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, GetGlbValue(GLB_TSK_SERVER_ID))
--		local szNation = get_nationality_name(GetGlbValue(GLB_TSK_SERVER_ID))
--		Talk(1, "", "B筺  tr� th祅h ngi c馻 "..szNation.." qu鑓!")
--	end
end

function Init_Change_Server()
	SetTask(TSK_CHANGE_SERVER,GetGlbValue(GLB_TSK_SERVER_ID))
end

function vng_set_nationality()
	if GetTask(TSK_SERVER_ID) == 0 or gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR) == 0 then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_CUR, GetGlbValue(GLB_TSK_SERVER_ID))
		return
	end
	if gf_GetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_NEW) ~= GetGlbValue(GLB_TSK_SERVER_ID) then
		gf_SetTaskByte(TSK_SERVER_ID, TSK_SERVER_ID_NEW, 0)
		SetTask(TSK_SERVER_ID_TIME,0)
		return
	end
end

-- Danh s竎h h� tr� BKL 24/05/2012
tbListDenBu120406 =
{
		[1] = {38, 'tantriquaidao77', '1stAnhTuan'},
}

function DenBu_BKL()
	for i = 1, getn(tbListDenBu120406) do
		if GetTask(TSK_BKL_BONUS) == 0 and GetGlbValue(1023) == tbListDenBu120406[i][1] and GetAccount() == tbListDenBu120406[i][2] and GetName() == tbListDenBu120406[i][3] then
			SetTask(TSK_BKL_BONUS, 1)
			SetTask(701,GetTask(701) + 800000)
			Talk(1,"","B筺  頲 nh薾 l筰 800.000 甶觤 c玭g tr筺g phe T鑞g!")
			WriteLogEx("DEN BU CONG TRANG THANG 8","nh薾",800000,"c玭g tr筺g")
		end
	end
end

--==========================================201110月海上龙舟战==============================
function dragon_boat_201110()
	--print("PlayerLoginIn called &&&&&&&&&&")
	SetTask(1715,0)
	SetTask(VET_LZZ_PLAYER_1715,0)
	-------------------
	SetLogoutRV(0) 	--设置登陆点为城市重生点
	SetDeathPunish(1) 	--无死亡惩罚
	SetCreateTeam(0) 	--关闭组建队伍(下线后会被清掉)
	ForbitTrade(0) 	--禁止交易
	InteractiveEnable(1) 	--关闭交互	必须在NewWorld之后执行才有效
	StallEnable(1) 	--禁止摆摊(下线后会被清掉)
	UseScrollEnable(1) 	--禁止使用回城符
	ForbidChangePK(0) 	--允许改变PK状态
	SetPKFlag(0,0)
	--ForbidChangePK(1) 	--禁止改变PK状态
	SetFightState(0)
	----------------------------------------
	SetDeathScript("")
	SetTempRevPos(0,0,0)
	SetCampToPlayer("")
	RemvoeTempEffect()  --清除玩家身上的所有临时状态
	--解除座寄上的装备
	UnEquipAtPosition(10)
	--删除龙舟
	local nResult = 0
	if BigDelItem(0,105,30034,1) ~= 1 then
		nResult = nResult + 1
	end
	if BigDelItem(0,105,30035,1) ~= 1 then
		nResult = nResult + 1
	end
	if BigDelItem(0,105,30036,1) ~= 1 then
		nResult = nResult + 1
	end
	if BigDelItem(0,105,30037,1) ~= 1 then
		nResult = nResult + 1
	end
	if nResult == 4 then
		WriteLog("[H秈 Chi課 Long Ch﹗]: X鉧 thuy襫 r錸g th蕋 b筰")
	end
	--重置任务变量
	if nResult ~= 4 then
		SetTask(2927,0)
	end
end

function removeLiangshan()
	local tLSBuffInfo = {9922,9923,9924,9925,9926,9927,9908,9909,9910,9911}
	for i =1, getn(tLSBuffInfo) do
		RemoveState(tLSBuffInfo[i])
	end
	--龙舟技能
	local skill_id
	for skill_id = 30104,30120 do
		RemoveSkill(skill_id)
	end
	--气旋神功  ——梁山
	RemoveSkill(1424)
	--雪仗
	for skill_id = 30001,30009 do
		RemoveSkill(skill_id)
	end
end

function treasure_box()
	if gf_CheckEventDateEx(46) == 1 then
		if CreateTrigger(3,3005,3005*2) == 0 then
			return 0
		end
		if CreateTrigger(1,1516,1516*2) == 0 then
			return 0
		end
		ContinueTimer(GetTrigger(1516*2))
	end
end

--gtask支持NPC对话触发器 [发现触发器有异常]
function gtask_support()
	if IsNewTaskSystemOpen() ~= 1 then
		return 0;
	end
	if GetTrigger(4000) ~= 0 then
		RemoveTrigger(GetTrigger(4000));
	end;
	CreateTrigger(4, 3110, 4000);
end

function get_message_task()
	--功能是否打开
	if IsMissionTaskSystemOpen() ~= 1 then
		return 0;
	end
	--给信件74号任务
	--print("new_task_npc_create2 =",tGtTask:check_task_isfinish(74))
	if tGtTask:check_task_isfinish(74) == 0 then
		local nLevel = GetLevel();
		if nLevel < 80 or GetPlayerFaction() == 0 then
			--Msg2Player("玩家80级以上、已加入流派才可以获得神秘信件。")
			return 0;
		end
		if GetItemCount(2,0,30052) == 0 then
			if gf_Judge_Room_Weight(1,1) ~= 1 then
			--Msg2Player("背包空间不足，无法获得神秘信件。")
		    return 0
			end
			AddItem(2,0,30052,1);
			Msg2Player("C竎 h� nh薾 頲 th� b� 萵");
		end
	else
		if GetItemCount(2,0,30052) ~= 0 then
			DelItem(2,0,30052,GetItemCount(2,0,30052))
		end
	end
end

--给予八卦宝典
--function give_baguabaodian()
--	local nLevel = GetLevel();
--	if nLevel >= 80 then
--		if GetItemCount(2,1,2639) <= 0 then
--			AddItem(2,1,2639,1);
--		end
--	end
--end


--创建梁山掉落触发器
function LSB_Challenge_Trigger()
	if LSB_IsActivityOpen() == 1 then
		if GetTrigger(1275*2) == 0 then
			CreateTrigger(0,1275,1275*2);
		end
	else
		if GetTrigger(1275*2) ~= 0 then
			RemoveTrigger(GetTrigger(1275*2));
		end
		--删除过期任务
		DirectDeleteTask(89);
		DirectDeleteTask(90);
		DirectDeleteTask(91);
	end
end

--奥运活动掉落触发器
function oly_create_trigger()
	if oly_IsActivityOpen() == 1 then
		local nLevel = GetLevel();
		if nLevel < 70 or gf_Check55FullSkill() == 0 or GetPlayerFaction() == 0 then
			return 0;
		end
		if GetTrigger(1276*2) == 0 then
			CreateTrigger(0,1276,1276*2);
		end
	else
		if GetTrigger(1276*2) ~= 0 then
			RemoveTrigger(GetTrigger(1276*2));
		end
	end
end

--追回字帖大作战
function dzt_tmz_trigger()
	if dzt_activity_isopen() == 1 then
		if dzt_check_condition(1) ~= 1 then
			return 0;
		end
		if GetTrigger(1278*2) == 0 then
			CreateTrigger(0,1278,1278*2);
		end
	else
		if GetTrigger(1278*2) ~= 0 then
			RemoveTrigger(GetTrigger(1278*2));
		end
	end
end

function GetJingMai_Reset(bTag)

	MeridianRestore(-1);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function checkhieuboss()
	if GetItemCount(2,1,50008) == 1 then
		return 1
	end
	return 0
end