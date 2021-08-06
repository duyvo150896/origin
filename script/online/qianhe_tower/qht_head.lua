Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\online\\zgc_public_fun.lua")
Include("\\script\\lib\\missionfunctions.lua")
Include("\\settings\\static_script\\online\\qianhe_tower\\qht_define.lua")
Include("\\script\\online\\qianhe_tower\\qht_npc_table.lua")
Include("\\settings\\static_script\\online\\qianhe_tower\\qht_award_table.lua")
Include("\\settings\\static_script\\online\\general_award_group.lua")


--活动时间
QIANHE_START_TIME = 2014091200;
QIANHE_END_TIME = 2050092900;

--活动开始使用临时任务变量，再次开启要注意了
QHT_TASK_GROUP =  TaskManager:Create(7, 9);
QHT_TASK_GROUP.DaySeq = 1; --跨天
QHT_TASK_GROUP.DailyExp = 2; --每日获取经验
QHT_TASK_GROUP.DailyZhenQi = 3; --每日获取真气
QHT_TASK_GROUP.DailyXiuWei = 4; --每日修为
QHT_TASK_GROUP.DailyShengWang = 5; --每日声望
QHT_TASK_GROUP.DailyShiMen = 6; --每日师门
QHT_TASK_GROUP.InPosFlag = 7; --进入点记录
QHT_TASK_GROUP.NumJW = 8; --金文虎符获得数量
QHT_TASK_GROUP.BoxIndex = 9; --开启宝箱的index
QHT_TASK_GROUP.TongFlag = 10; --帮派战旗领奖,1,2

--活动是否开启
function qht_activity_isopen()
	return gf_CheckEventDateEx2(QIANHE_START_TIME, QIANHE_END_TIME);
end

--活动参与条件
function qht_check_condition(bTag)
	return gf_CheckBaseCondition(85,bTag);
end

--每日重置
function qht_DailyTaskReSet()
	if QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DaySeq) ~= zgc_pub_day_turn() then
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DaySeq,zgc_pub_day_turn());
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DailyExp,0);
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DailyZhenQi,0);
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DailyXiuWei,0);
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DailyShengWang,0);
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DailyShiMen,0);
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.NumJW,0);
		QHT_TASK_GROUP:SetTaskBit(QHT_TASK_GROUP.TongFlag, 1, 0);
		QHT_TASK_GROUP:SetTaskBit(QHT_TASK_GROUP.TongFlag, 2, 0);
	end
end

--给经验
function qht_add_exp(nExp)
	qht_DailyTaskReSet();
	local nRemainExp = QHT_EXP_MAX - QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DailyExp);
	if nRemainExp > 0 then
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DailyExp,QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DailyExp) + min(nExp,nRemainExp));
		gf_Modify("Exp",min(nExp,nRemainExp));
		HeadMsg2Player(format("C竎 h?nh薾 頲 %d 甶觤 kinh nghi謒",min(nExp, nRemainExp)));
	else
		Msg2Player(format("C竎 h?h玬 nay nh薾 頲 %s  t gi韎 h筺 %d, kh玭g th?nh薾 th猰 %s","Kinh nghi謒",QHT_EXP_MAX,"Kinh nghi謒"));
	end
end

--给真气
function qht_add_zhenqi(nZhenQi)
	qht_DailyTaskReSet();
	if MeridianGetLevel() < 1 then
			Msg2Player("C竎 h?ch璦 k輈h ho箃 Kinh M筩h, kh玭g th?nh薾 頲 Ch﹏ Kh?")
			return 0;
	end
	local nRemainZhenQi = QHT_ZHENQI_MAX - QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DailyZhenQi);
	if nRemainZhenQi > 0 then
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DailyZhenQi,QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DailyZhenQi) + min(nZhenQi,nRemainZhenQi));
		AwardGenuineQi(min(nZhenQi,nRemainZhenQi));
		HeadMsg2Player(format("C竎 h?nh薾 頲 %d 甶觤 ch﹏ kh?,min(nZhenQi,nRemainZhenQi)));
	else
		Msg2Player(format("C竎 h?h玬 nay nh薾 頲 %s  t gi韎 h筺 %d, kh玭g th?nh薾 th猰 %s","Ch﹏ kh?,QHT_ZHENQI_MAX,"Ch﹏ kh?));
	end
end

--给修为
function qht_add_xiuwei(nXiuWei)
	qht_DailyTaskReSet();
	local nRemainXiuWei = QHT_XIUWEI_MAX - QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DailyXiuWei);
	if nRemainXiuWei > 0 then
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DailyXiuWei,QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DailyXiuWei) + min(nXiuWei,nRemainXiuWei));
		gf_EventGiveCustomAward(26,min(nXiuWei,nRemainXiuWei),1,1);
		HeadMsg2Player(format("C竎 h?nh薾 頲 %d 甶觤 tu luy謓",min(nXiuWei,nRemainXiuWei)));
	else
		Msg2Player(format("C竎 h?h玬 nay nh薾 頲 %s  t gi韎 h筺 %d, kh玭g th?nh薾 th猰 %s","Luy謓",QHT_XIUWEI_MAX,"Luy謓"));
	end
end

--给声望
function qht_add_shengwang(nShengWang)
	qht_DailyTaskReSet();
	local nRemainShengWang = QHT_SHENGWANG_MAX - QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DailyShengWang);
	if nRemainShengWang > 0 then
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DailyShengWang,QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DailyShengWang) + min(nShengWang,nRemainShengWang));
		gf_EventGiveCustomAward(3,min(nShengWang,nRemainShengWang),1,1);
		HeadMsg2Player(format("C竎 h?nh薾 頲 %d 甶觤 danh v鋘g",min(nShengWang,nRemainShengWang)));
	else
		Msg2Player(format("C竎 h?h玬 nay nh薾 頲 %s  t gi韎 h筺 %d, kh玭g th?nh薾 th猰 %s","Danh v鋘g",QHT_SHENGWANG_MAX,"Danh v鋘g"));
	end
end

--给师门
function qht_add_shimen(nShiMen)
	qht_DailyTaskReSet();
	local nRemainShiMen = QHT_SHIMENGXD_MAX - QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DailyShiMen);
	if nRemainShiMen > 0 then
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.DailyShiMen,QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.DailyShiMen) + min(nShiMen,nRemainShiMen));
		gf_EventGiveCustomAward(4,min(nShiMen,nRemainShiMen),1,1);
		HeadMsg2Player(format("C竎 h?nh薾 頲 %d 甶觤 c鑞g hi課 s? m玭",min(nShiMen,nRemainShiMen)));
	else
		Msg2Player(format("C竎 h?h玬 nay nh薾 頲 %s  t gi韎 h筺 %d, kh玭g th?nh薾 th猰 %s","S?m玭",QHT_SHIMENGXD_MAX,"S?m玭"));
	end
end

--传出NPC创建
function qht_create_npc_ds()
	if qht_activity_isopen() ~= 1 then
		return 0;
	end
	local tPos = {
		{6021,1791,3532},
		{6022,1599,3004},
		{6023,1609,3376},
	}
	local tPosinfo
	for _,tPosinfo in tPos do
		local nNpcIndex = CreateNpc("V?L﹎ Minh Ch?","Чi S?ho箃 ng",tPosinfo[1],tPosinfo[2],tPosinfo[3]);
		SetNpcScript(nNpcIndex,"\\script\\online\\qianhe_tower\\npc\\activity_ds_jy.lua");
	end
end

--创建触发器
function qht_create_trigger()
	if qht_activity_isopen() ~= 1 then
		if GetTrigger(1277 * 2) ~= 0 then
			RemoveTrigger(GetTrigger(1277 * 2));
		end
	else
		if qht_check_condition(1)~= 0 and GetTrigger(1277 * 2) == 0 then
			CreateTrigger(0, 1277, 1277 * 2);
		end
	end
end

--地图是否容许
function qht_map_allow(tbMapID, nMapID)
	return gf_MapIsAllow(tbMapID, nMapID);
end

--6021杀怪
function qht_kill_6021_monster()
	if gf_Judge_Room_Weight(1,1," ") ~= 1 then
		return 0;
	end
	gf_EventGiveRandAward(QHT_TRIGGER_6021_TABLE,gf_SumRandBase(QHT_TRIGGER_6021_TABLE),1);
end

--6022杀怪
function qht_kill_6022_monster()
	if gf_Judge_Room_Weight(1,1," ") ~= 1 then
		return 0;
	end
	gf_EventGiveRandAward(QHT_TRIGGER_6022_TABLE,gf_SumRandBase(QHT_TRIGGER_6022_TABLE),1);
end


--6023杀怪
function qht_kill_6023_monster()
	if gf_Judge_Room_Weight(1,1," ") ~= 1 then
		return 0;
	end
	gf_EventGiveRandAward(QHT_TRIGGER_6023_TABLE,gf_SumRandBase(QHT_TRIGGER_6023_TABLE),1);
end

--蓝怪创建
function qht_create_languai()
	local nMapID, nX, nY = GetWorldPos();
	if qht_boss_max(nMapID) ~= 1 then
		return 0;
	end
	local nMapID,nX,nY = GetWorldPos();
	SetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_BOSS_MAX,GetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_BOSS_MAX) + 1);
	local nRandIndex = random(getn(QHT_LANGUAI_TABLE));
	local npcIndex = CreateNpc(QHT_LANGUAI_TABLE[nRandIndex][1],QHT_LANGUAI_TABLE[nRandIndex][2],GetWorldPos());
	SetNpcDeathScript(npcIndex,QHT_NPC_SCRIPT_LANGUAI);
	AddRuntimeStat(22, 5, 0, 1);
end

--小boss
function qht_create_xiaoboss()
	local nMapID, nX, nY = GetWorldPos();
	if qht_boss_max(nMapID) ~= 1 then
		return 0;
	end
	local nMapID,nX,nY = GetWorldPos();
	SetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_BOSS_MAX,GetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_BOSS_MAX) + 1);
	local nRandIndex = random(getn(QHT_XIAOBOSS_TABLE));
	local npcIndex = CreateNpc(QHT_XIAOBOSS_TABLE[nRandIndex][1],QHT_XIAOBOSS_TABLE[nRandIndex][2],GetWorldPos());
	SetNpcDeathScript(npcIndex,QHT_NPC_SCRIPT_XIAOGUAI);
	AddRuntimeStat(22, 7, 0, 1);
end

--中boss
function qht_create_zhongboss()
	local nMapID, nX, nY = GetWorldPos();
	if qht_boss_max(nMapID) ~= 1 then
		return 0;
	end
	local nMapID,nX,nY = GetWorldPos();
	SetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_BOSS_MAX,GetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_BOSS_MAX) + 1);
	local nRandIndex = random(getn(QHT_ZHONGBOSS_TABLE));
	local npcIndex = CreateNpc(QHT_ZHONGBOSS_TABLE[nRandIndex][1],QHT_ZHONGBOSS_TABLE[nRandIndex][2],GetWorldPos());
	SetNpcDeathScript(npcIndex,QHT_NPC_SCRIPT_ZHONGGUAI);
	AddRuntimeStat(22, 9, 0, 1);
end

--大boss
function qht_create_daboss()
	local nMapID, nX, nY = GetWorldPos();
	if qht_boss_max(nMapID) ~= 1 then
		return 0;
	end
	local nMapID,nX,nY = GetWorldPos();
	SetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_BOSS_MAX,GetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_BOSS_MAX) + 1);
	local nRandIndex = random(getn(QHT_DABOSS_TABLE));
	local npcIndex = CreateNpc(QHT_DABOSS_TABLE[nRandIndex][1],QHT_DABOSS_TABLE[nRandIndex][2],GetWorldPos());
	SetNpcDeathScript(npcIndex,QHT_NPC_SCRIPT_DAGUAI);
	AddRuntimeStat(22, 11, 0, 1);
end

--黄金boss
function qht_create_goldboss()
--	local nMapID, nX, nY = GetWorldPos();
--	if qht_boss_max(nMapID) ~= 1 then
--		return 0;
--	end
--	local nMapID,nX,nY = GetWorldPos();
--	local nNum = GetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_GOLDBOSS_MAX);
--	if nNum < 3 then
--		SetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_GOLDBOSS_MAX,nNum + 1);
--		SetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_BOSS_MAX,GetMapTaskTemp(nMapID,QHT_MAPTEMPTASK_BOSS_MAX) + 1);
--		local nRandIndex = random(getn(QHT_GOLDBOSS_TABLE));
--		local npcIndex = CreateNpc(QHT_GOLDBOSS_TABLE[nRandIndex][1],QHT_GOLDBOSS_TABLE[nRandIndex][2],GetWorldPos());
--		SetNpcDeathScript(npcIndex,QHT_NPC_SCRIPT_GOLDBOSS);
--		Msg2Global(format("黄金BOSS%s出现了，各位大侠可以前往千寻塔三层挑战。",QHT_GOLDBOSS_TABLE[nRandIndex][2]));
--	else
--		qht_create_daboss();
--	end
end

--低级宝箱
function qht_create_diji_box()
	local npcIndex = CreateNpc(QHT_BOX_TABLE[1][1],QHT_BOX_TABLE[1][2],GetWorldPos());
	SetNpcScript(npcIndex, QHT_NPC_SCRIPT_DIJIBOX);
end

--中级宝箱
function qht_create_zhongji_box()
	local npcIndex = CreateNpc(QHT_BOX_TABLE[2][1],QHT_BOX_TABLE[2][2],GetWorldPos());
	SetNpcScript(npcIndex, QHT_NPC_SCRIPT_ZHONGJIBOX);
end

--高级宝箱
function qht_create_gaoji_box()
	local npcIndex = CreateNpc(QHT_BOX_TABLE[3][1],QHT_BOX_TABLE[3][2],GetWorldPos());
	SetNpcScript(npcIndex, QHT_NPC_SCRIPT_GAOJIBOX);
end

--最大boss数判断
function qht_boss_max(nMapID)
	local tbTemp = {
		[6021] = {QHT_MAPTEMPTASK_BOSS_MAX,QHT_BOSS_6021_MAX},
		[6022] = {QHT_MAPTEMPTASK_BOSS_MAX,QHT_BOSS_6022_MAX},
		[6023] = {QHT_MAPTEMPTASK_BOSS_MAX,QHT_BOSS_6023_MAX},
	};
	if tbTemp[nMapID] ~= nil and GetMapTaskTemp(nMapID,tbTemp[nMapID][1]) < tbTemp[nMapID][2] then
		return 1;
	end
	return 0;
end

--奖励组1
function qht_award_one(targetNpcIdx)
	--给队伍奖励
	gf_TeamOperateEX(function ()
		local nMapID,nX,nY = GetWorldPos();
		if gf_Judge_Room_Weight(1,1," ") == 1 and qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
			qht_add_exp(100000);
			gf_AddItemEx2({2,1,30435,1}, "M秐h H?ph?, "C玭g chi課 Thi猲 T莔 Th竝", "Nh鉳 ph莕 thng 1 ", 0, 1);
		end
	end)
	if gf_Judge_Room_Weight(2,10," ") ~= 1 then
		return 0;
	end
	--给个人奖励
	gf_EventGiveRandAward(QHT_AWARD_PERSONAL_1, gf_SumRandBase(QHT_AWARD_PERSONAL_1), 1);
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE1,targetNpcIdx);
end

--奖励组2
function qht_award_two(targetNpcIdx)
	--给队伍奖励
	gf_TeamOperateEX(function ()
		local nMapID,nX,nY = GetWorldPos();
		if gf_Judge_Room_Weight(1,1," ") == 1 and qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
			qht_add_exp(200000);
			gf_AddItemEx2({2,1,30435,2}, "M秐h H?ph?, "C玭g chi課 Thi猲 T莔 Th竝", "Nh鉳 ph莕 thng 2 ", 0, 1);
		end
	end)
	if gf_Judge_Room_Weight(2,10," ") ~= 1 then
		return 0;
	end
	--给个人奖励
	gf_EventGiveRandAward(QHT_AWARD_PERSONAL_2, gf_SumRandBase(QHT_AWARD_PERSONAL_2), 1);
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE2,targetNpcIdx);
end

--奖励组3
function qht_award_three(targetNpcIdx)
	--给队伍奖励
	gf_TeamOperateEX(function ()
		local nMapID,nX,nY = GetWorldPos();
		if gf_Judge_Room_Weight(1,1," ") == 1 and qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
			qht_add_exp(600000);
			gf_AddItemEx2({2,1,30435,3}, "M秐h H?ph?, "C玭g chi課 Thi猲 T莔 Th竝", "Nh鉳 ph莕 thng 3 ", 0, 1);
		end
	end)
	if gf_Judge_Room_Weight(2,10," ") ~= 1 then
		return 0;
	end
	--给个人奖励
	gf_EventGiveRandAward(QHT_AWARD_PERSONAL_3, gf_SumRandBase(QHT_AWARD_PERSONAL_3), 1);
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE3,targetNpcIdx);
end

--奖励组4
function qht_award_four(targetNpcIdx)
	--队伍奖励
	gf_TeamOperateEX(function ()
		local nMapID,nX,nY = GetWorldPos();
		if gf_Judge_Room_Weight(2,1," ") == 1 and qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
			qht_add_exp(2000000);
			gf_AddItemEx2({2,1,30435,4}, "M秐h H?ph?, "C玭g chi課 Thi猲 T莔 Th竝", "Nh鉳 ph莕 thng 3 ", 0, 1);
			--给金纹虎符
			qht_award_jinwenhufu(1,100,100);
		end
	end)
	if gf_Judge_Room_Weight(4,10," ") ~= 1 then
		return 0;
	end
	--给个人奖励
	gf_EventGiveRandAward(QHT_AWARD_PERSONAL_4, gf_SumRandBase(QHT_AWARD_PERSONAL_4), 1);
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE4_1,targetNpcIdx);
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE4_2,targetNpcIdx);
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE4_3,targetNpcIdx);
end

--奖励组5
function qht_award_five(targetNpcIdx)
--	--队伍奖励
--	gf_TeamOperateEX(function ()
--		local nMapID,nX,nY = GetWorldPos();
--		if gf_Judge_Room_Weight(2,1," ") == 1 and qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
--			qht_add_exp(4000000);
--			gf_AddItemEx2({2,1,30435,5}, "虎符碎片", "激战千寻塔", "奖励组3 ", 0, 1);
--			qht_add_zhenqi(50);
--			qht_add_xiuwei(100);
--			qht_add_shengwang(50);
--			qht_add_shimen(50);
--			--给金纹虎符
--			qht_award_jinwenhufu(1,40,100);
--		end
--	end)
--	if gf_Judge_Room_Weight(3,10," ") ~= 1 then
--		return 0;
--	end
--	--投点奖励
--	qht_award_throwdice(QHT_AWARD_THROW_DICE5_1,targetNpcIdx);
--	--投点奖励
--	qht_award_throwdice(QHT_AWARD_THROW_DICE5_2,targetNpcIdx);
--	--投点奖励
--	local tbTemp = qht_award_resettable(QHT_AWARD_THROW_DICE5_3);
--	if tbTemp ~= nil then
--		qht_award_throwdice(tbTemp,targetNpcIdx);
--	end
end

--奖励组6
function qht_award_six(targetNpcIdx)
	local szNpcName = GetNpcName(targetNpcIdx);
	--队伍奖励
	gf_TeamOperateEX(function ()
		local nMapID,nX,nY = GetWorldPos();
		if gf_Judge_Room_Weight(2,1," ") == 1 and qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
			qht_add_exp(6000000);
			gf_AddItemEx2({2,1,30435,5}, "M秐h H?ph?, "C玭g chi課 Thi猲 T莔 Th竝", "Nh鉳 ph莕 thng 3 ", 0, 1);
			qht_add_zhenqi(200);
			qht_add_xiuwei(100);
			qht_add_shengwang(50);
			qht_add_shimen(50);
			--给金纹虎符
			qht_award_jinwenhufu(1,100,100);
		end
	end)
	if gf_Judge_Room_Weight(3,10," ") ~= 1 then
		return 0;
	end
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE6_1,targetNpcIdx);
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE6_2,targetNpcIdx);
	--投点奖励
	local tbTemp = qht_award_resettable(QHT_AWARD_THROW_DICE6_3);
	if tbTemp ~= nil then
		qht_award_throwdice(tbTemp,targetNpcIdx);
	end
	--公告
	local strMsg = ""
	if gf_GetTeamSize() > 2 then
		strMsg = format("Ch骳 m鮪g %s d蒼 d総 i ng?t筰 Thi猲 T莔 Th竝 nh b筰 Ho祅g Kim boss %s", GetCaptainName(), szNpcName);
	else
		strMsg = format("Ch骳 m鮪g %s t筰 Thi猲 T莔 Th竝 nh b筰 Ho祅g Kim boss %s", GetName(), szNpcName);
	end
	Msg2Global(strMsg);
	AddLocalNews(strMsg);
end

--奖励组7
function qht_award_seven(targetNpcIdx)
	local szNpcName = GetNpcName(targetNpcIdx);
	--队伍奖励
	gf_TeamOperateEX(function ()
		local nMapID,nX,nY = GetWorldPos();
		if gf_Judge_Room_Weight(2,1," ") == 1 and qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
			qht_add_exp(9000000);
			gf_AddItemEx2({2,1,30435,5}, "M秐h H?ph?, "C玭g chi課 Thi猲 T莔 Th竝", "Nh鉳 ph莕 thng 3 ", 0, 1);
			qht_add_zhenqi(400);
			qht_add_xiuwei(100);
			qht_add_shengwang(50);
			qht_add_shimen(50);
			--给金纹虎符
			qht_award_jinwenhufu(1,100,100);
		end
	end)
	if gf_Judge_Room_Weight(3,10," ") ~= 1 then
		return 0;
	end
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE7_1,targetNpcIdx);
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE7_2,targetNpcIdx);
	--投点奖励
	local tbTemp = qht_award_resettable(QHT_AWARD_THROW_DICE7_3);
	if tbTemp ~= nil then
		qht_award_throwdice(tbTemp,targetNpcIdx);
	end
	--公告
	local strMsg = ""
	if gf_GetTeamSize() > 2 then
		strMsg = format("Ch骳 m鮪g %s d蒼 d総 i ng?t筰 Thi猲 T莔 Th竝 nh b筰 Ho祅g Kim boss %s", GetCaptainName(), szNpcName);
	else
		strMsg = format("Ch骳 m鮪g %s t筰 Thi猲 T莔 Th竝 nh b筰 Ho祅g Kim boss %s", GetName(), szNpcName);
	end
	Msg2Global(strMsg);
	AddLocalNews(strMsg);
end

--奖励组8
function qht_award_eight(targetNpcIdx)
	local szNpcName = GetNpcName(targetNpcIdx);
	--队伍奖励
	gf_TeamOperateEX(function ()
		local nMapID,nX,nY = GetWorldPos();
		if gf_Judge_Room_Weight(2,1," ") == 1 and qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
			qht_add_exp(12000000);
			gf_AddItemEx2({2,1,30435,5}, "M秐h H?ph?, "C玭g chi課 Thi猲 T莔 Th竝", "Nh鉳 ph莕 thng 3 ", 0, 1);
			qht_add_zhenqi(1000);
			qht_add_xiuwei(100);
			qht_add_shengwang(50);
			qht_add_shimen(50);
			--给金纹虎符
			qht_award_jinwenhufu(1,100,100);
		end
	end)
	if gf_Judge_Room_Weight(3,10," ") ~= 1 then
		return 0;
	end
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE8_1,targetNpcIdx);
	--投点奖励
	qht_award_throwdice(QHT_AWARD_THROW_DICE8_2,targetNpcIdx);
	--投点奖励
	local tbTemp = qht_award_resettable(QHT_AWARD_THROW_DICE8_3);
	if tbTemp ~= nil then
		qht_award_throwdice(tbTemp,targetNpcIdx);
	end
	--公告
	local strMsg = ""
	if gf_GetTeamSize() > 2 then
		strMsg = format("Ch骳 m鮪g %s d蒼 d総 i ng?t筰 Thi猲 T莔 Th竝 nh b筰 Ho祅g Kim boss %s", GetCaptainName(), szNpcName);
	else
		strMsg = format("Ch骳 m鮪g %s t筰 Thi猲 T莔 Th竝 nh b筰 Ho祅g Kim boss %s", GetName(), szNpcName);
	end
	Msg2Global(strMsg);
	AddLocalNews(strMsg);
end

--星刻投点
function qht_award_xingke(targetNpcIdx)
	local tbTemp = {
		_XINGKE_WEAPON_TABLE,
		_XINGKE_CAP_TABLE,
		_XINGKE_CLOTH_TABLE,
		_XINGKE_SHOE_TABLE,
		_XINGKE_RING_TABLE,
	}
	local nIndex = random(getn(tbTemp));
	local nIdx = gf_GetRandItemByTable(tbTemp[nIndex], gf_SumRandBase(tbTemp[nIndex]), 1);
	if tbTemp[nIndex][nIdx] and tbTemp[nIndex][nIdx][4] then
		qht_itmedice_roll(tbTemp[nIndex][nIdx][4], QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx);
	else
		print("ERROE:qht_award_xingke()");
	end
end

--天仪投点
function qht_award_tianyi(targetNpcIdx)
	local tbTemp = {
		_TIANYI_WEAPON_TABLE,
		_TIANYI_CAP_TABLE,
		_TIANYI_CLOTH_TABLE,
		_TIANYI_SHOE_TABLE,
		_TIANYI_RING_TABLE,
	}
	local nIndex = random(getn(tbTemp));
	local nIdx = gf_GetRandItemByTable(tbTemp[nIndex], gf_SumRandBase(tbTemp[nIndex]), 1);
	if tbTemp[nIndex][nIdx] and tbTemp[nIndex][nIdx][4] then
		qht_itmedice_roll(tbTemp[nIndex][nIdx][4], QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx);
	else
		print("ERROE:qht_award_tianyi()");
	end
end

--紫炎
function qht_award_ziyan(targetNpcIdx)
	local tbTemp = {
		_ZIGUANG_WEAPON_TABLE,
		_ZIGUANG_CAP_TABLE,
		_ZIGUANG_CLOTH_TABLE,
		_ZIGUANG_SHOE_TABLE,
		_ZIGUANG_RING_TABLE,
	}
	local nIndex = random(getn(tbTemp));
	local nIdx = gf_GetRandItemByTable(tbTemp[nIndex], gf_SumRandBase(tbTemp[nIndex]), 1);
	if tbTemp[nIndex][nIdx] and tbTemp[nIndex][nIdx][4] then
		qht_itmedice_roll(tbTemp[nIndex][nIdx][4], QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx);
	else
		print("ERROE:qht_award_tianyi()");
	end
end

--皓月投点
function qht_award_haoyue(targetNpcIdx)
	local tbTemp = {
		_HAOYUE_WEAPON_TABLE,
		_HAOYUE_CAP_TABLE,
		_HAOYUE_CLOTH_TABLE,
		_HAOYUE_SHOE_TABLE,
		_HAOYUE_RING_TABLE,
	}
	local nIndex = random(getn(tbTemp));
	local nIdx = gf_GetRandItemByTable(tbTemp[nIndex], gf_SumRandBase(tbTemp[nIndex]), 1);
	if tbTemp[nIndex][nIdx] and tbTemp[nIndex][nIdx][4] then
		qht_itmedice_roll(tbTemp[nIndex][nIdx][4], QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx);
	else
		print("ERROE:qht_award_haoyue()");
	end
end

--1级蕴灵投点
function qht_award_1_yunling(targetNpcIdx)
	local nIdx = gf_GetRandItemByTable(_YUNLING_1_TABLE, gf_SumRandBase(_YUNLING_1_TABLE), 1);
	if _YUNLING_1_TABLE[nIdx] and _YUNLING_1_TABLE[nIdx][4] then
		qht_itmedice_roll(_YUNLING_1_TABLE[nIdx][4], QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx, 7 * 24 * 3600);
	else
		print("ERROE:qht_award_1_yunling()");
	end
end

--2级蕴灵投点
function qht_award_2_yunling(targetNpcIdx)
	local nIdx = gf_GetRandItemByTable(_YUNLING_2_TABLE, gf_SumRandBase(_YUNLING_2_TABLE), 1);
	if _YUNLING_2_TABLE[nIdx] and _YUNLING_2_TABLE[nIdx][4] then
		qht_itmedice_roll(_YUNLING_2_TABLE[nIdx][4], QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx, 7 * 24 * 3600);
	else
		print("ERROE:qht_award_2_yunling()");
	end
end

--3级蕴灵投点
function qht_award_3_yunling(targetNpcIdx)
	local nIdx = gf_GetRandItemByTable(_YUNLING_3_TABLE, gf_SumRandBase(_YUNLING_3_TABLE), 1);
	if _YUNLING_3_TABLE[nIdx] and _YUNLING_3_TABLE[nIdx][4] then
		qht_itmedice_roll(_YUNLING_3_TABLE[nIdx][4], QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx, 7 * 24 * 3600);
	else
		print("ERROE:qht_award_3_yunling()");
	end
end

--永久坐骑投点--控制
function qht_award_zuoji(targetNpcIdx)
	local nCount = GetMapTaskTemp(6023,QHT_MAPTEMPTASK_YJZUOJI_MAX);
	if nCount > 0 then
		return 0;
	end
	local nIdx = gf_GetRandItemByTable(QHT_AWARD_HORSE, gf_SumRandBase(QHT_AWARD_HORSE), 1);
	if QHT_AWARD_HORSE[nIdx] and QHT_AWARD_HORSE[nIdx][4] then
		qht_itmedice_roll(QHT_AWARD_HORSE[nIdx][4], QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx);
		SetMapTaskTemp(6023,QHT_MAPTEMPTASK_YJZUOJI_MAX, nCount + 1);
	else
		print("ERROE:qht_award_zuoji()");
	end	
end

--天罡令投点--控制
function qht_award_tiangang(targetNpcIdx)
	local nCount = GetMapTaskTemp(6023, QHT_MAPTEMPTASK_TIANGANG_MAX);
	if nCount > 0 then
		return 0;
	end
	qht_itmedice_roll({2,95,204,1}, QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx);
	SetMapTaskTemp(6023,QHT_MAPTEMPTASK_TIANGANG_MAX, nCount + 1);
end

--天门金令投点--控制
function qht_award_tianmen(targetNpcIdx)
	local nCount = GetMapTaskTemp(6023, QHT_MAPTEMPTASK_TIANMEN_MAX);
	if nCount > 0 then
		return 0;
	end
	qht_itmedice_roll({2,1,30370,1}, QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx);
	SetMapTaskTemp(6023,QHT_MAPTEMPTASK_TIANMEN_MAX, nCount + 1);
end

--根据产出限制调整table
function qht_award_resettable(tbTemlate)
	--产出数量判断
	if not tbTemlate then
		return 0;
	end
	local tbTemp = {};
	for i = 1, getn(tbTemlate) do
		tinsert(tbTemp, tbTemlate[i]);
	end
	local nNum = 0;
	--坐寄
	nNum = GetMapTaskTemp(6023,QHT_MAPTEMPTASK_YJZUOJI_MAX);
	if nNum >= QHT_YJZUOJI_MAX then
		for i=1,getn(tbTemp) do
			if tbTemp[i][3] == "qht_award_zuoji()" then
				tremove(tbTemp,i);
			end
		end
	end
	--天罡
	nNum = GetMapTaskTemp(6023,QHT_MAPTEMPTASK_TIANGANG_MAX);
	if nNum >= QHT_TIANGANG_MAX then
		for i=1,getn(tbTemp) do
			if tbTemp[i][3] == "qht_award_tiangang()" then
				tremove(tbTemp,i);
			end
		end
	end
	--天门
	nNum = GetMapTaskTemp(6023,QHT_MAPTEMPTASK_TIANMEN_MAX);
	if nNum >= QHT_TIANMEN_MAX then
		for i=1,getn(tbTemp) do
			if tbTemp[i][3] == "qht_award_tianmen()" then
				tremove(tbTemp,i);
			end
		end
	end
	return tbTemp;
end

--奖励投点组
function qht_award_throwdice(tbAward,targetNpcIdx)
	local nRandIndex = gf_GetRandItemByTable(tbAward, gf_SumRandBase(tbAward), 1);
--	for i = 1, getn(tbAward[nRandIndex]) do
--		print(tbAward[nRandIndex][i])
--	end
	if tbAward[nRandIndex] then
		if tbAward[nRandIndex][1] == 1 then
				qht_itmedice_roll(tbAward[nRandIndex][4], QHT_THROWDICE_CBFILE, "qht_throwdice_callback", 100, 60, qht_get_teamsize(),targetNpcIdx, tbAward[nRandIndex][5]);
		elseif tbAward[nRandIndex][1] == 31 then
				dostring(format(tbAward[nRandIndex][3],targetNpcIdx));
		end
	else
		print("ERROR:qht_award_throwdice()");
	end
end

--给金文虎符
function qht_award_jinwenhufu(nNum, nProbability, nBaseMax, bBind)
	qht_DailyTaskReSet();
	if QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.NumJW) >= QHT_JWHF_MAX then
		return 0;
	end
	if random(nBaseMax) <= nProbability then
		gf_AddItemEx2({2,1,30438,nNum,(bBind or 4)}, "Kim H?ph?, "C玭g chi課 Thi猲 T莔 Th竝", "Kim H?ph?, 0, 1);
		QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.NumJW,QHT_TASK_GROUP:GetTask(QHT_TASK_GROUP.NumJW) + nNum);
		AddRuntimeStat(22, 1, 0, nNum or 1);
	end 
end

--roll界面
function qht_itmedice_roll(tbItem, sFilePath, cbFunc, nMax, nTime, nTeamSize,targetNpcIdx,nLimitTime)
	if type(tbItem) ~= "table" then return end
	if not sFilePath then return end
	if not cbFunc then return end
	if not nMax then return end
	if not nTime then return end
	if not nTeamSize or nTeamSize < 1 then return end
	local diceId;
	if targetNpcIdx and targetNpcIdx ~= 0 then
		--是否主动传递目标NPCIndex
		diceId = ApplyItemDice(1, nMax, nTime, sFilePath, cbFunc, nTeamSize,targetNpcIdx);
	else
		diceId = ApplyItemDice(1, nMax, nTime, sFilePath, cbFunc, nTeamSize);
	end
	if not diceId then
		print("ERROR:ApplyItemDice return nil");
		return 0;
	end
	local nItemIndex = AddDiceItemInfo(diceId, gf_UnPack(tbItem))
	if nLimitTime and nItemIndex and type(nLimitTime) == "number" and nLimitTime > 0 then
		SetItemExpireTime(nItemIndex, nLimitTime);
	end
	if nTeamSize > 1 then
		local nPlayerOld = PlayerIndex
		for i=1, nTeamSize do
			PlayerIndex = GetTeamMember(i);
			local nMapID,nX,nY = GetWorldPos();
			if qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
				RollItem(diceId);
			end
		end
		PlayerIndex = nPlayerOld;	
	else
		local nMapID,nX,nY = GetWorldPos();
		if qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
			RollItem(diceId);
		end
	end
end

--投点回调函数
function qht_throwdice_callback(dwID)
	local t, nSize, szItem = GetItemDiceRollInfo(dwID)
	local bNotice = qht_award_isnotice(szItem);
	local bAllGiveUp = 1;
	local tbTemp = {};
	if type(t) ~= "table" then return end
	for index, value in t do
		bFlag = 0;
		local str = value[1].."N衜"..value[2].." 甶觤"
		if value[3] == 0 then
			str = value[1].."Ph鉵g"
		elseif value[3] == 1 then
			str = str.." (Tuy誸 c莡)"
			if value[4] == 1 then
				str = str.." -Х nh苩 頲"..szItem
				tbTemp[value[1]] = szItem;
				gf_WriteLogEx("C玭g chi課 Thi猲 T莔 Th竝", "qht_throwdice_callback", nil, szItem, nil, GetTongName());
			end
			bAllGiveUp = 0
		elseif value[3] == 2 then
			str = str.." (Tham lam)"
			if value[4] == 1 then
				str = str.." -Х nh苩 頲"..szItem
				tbTemp[value[1]] = szItem;
				gf_WriteLogEx("C玭g chi課 Thi猲 T莔 Th竝", "qht_throwdice_callback", nil, szItem, nil, GetTongName());
			end
			bAllGiveUp = 0
		end
		Msg2Player(str)
	end
	--公告
	if bNotice == 1 then
		for index, value in tbTemp do
			if GetName() == index then
				Msg2Global(format("Ngi ch琲 %s c玭g chi課 Thi猲 T莔 Th竝 may m緉 nh薾 頲 ph莕 thng %s",index,value));
			end
		end
	end
	if bAllGiveUp == 1 then
		Msg2Player("T蕋 c?ngi ch琲  b?cu閏")
	elseif nSize ~= getn(t) then
		Msg2Player("Nh鱪g ngi ch琲 kh竎  vt qu?th阨 gian, xem nh?b?cu閏")
	end
end

--是否需要公告
function qht_award_isnotice(sItemName)
	--需要公告的Item名
	local tbItem = {
		"Linh Th筩h Nguy猲 Th筩h c蕄 7",
		"Cng h鉧 quy觧 15",
		"Cng h鉧 quy觧 14",
		"Thi猲 Cang L謓h",
		"Thi猲 M玭 Kim L謓h",
		"B竜 Tr緉g B秓 B秓",
		"B竜 n B秓 B秓",
		"B竜 V祅g B秓 B秓",
		"T?Ngh躠 L謓h",
		"Th玭g Thi猲 L謓h",
		"Chi課 H礽 Kim Ch?ng?h祅h",
		"Chi課 H礽 M閏 Ch?ng?h祅h",
		"Chi課 H礽 Th駓 Ch?ng?h祅h",
		"Chi課 H礽 H醓 Ch?ng?h祅h",
		"Chi課 H礽 Th?Ch?ng?h祅h",
		"Chi課 H礽  Ch?ng?h祅h",
		"Huy Chng Kim Ch?ng?h祅h",
		"Huy Chng M閏 Ch?ng?h祅h",
		"Huy Chng Th駓 Ch?ng?h祅h",
		"Huy Chng H醓 Ch?ng?h祅h",
		"Huy Chng Th?Ch?ng?h祅h",
		"Huy Chng  Ch?ng?h祅h", 
		"Huy誸Tr輈hTh筩h Lv4",
		"Nguy謙B筩hTh筩h Lv4",
		"H?Ph竎h Th筩h C蕄 4",
		"H綾 Di謚 Th筩h C蕄 4",
		"Bao Thi猲 Ki猽 L謓h L韓",
		"Bao Thi猲 Ki猽 L謓h Nh?,
	};
	for i=1, getn(tbItem) do
		if tbItem[i] == sItemName then
			return 1;
		end
	end
	return 0;
end

--需要gs跨天清理的
function qht_gs_daily_clean()
	SetMapTaskTemp(6021, QHT_MAPTEMPTASK_BOSS_MAX, 0);
	SetMapTaskTemp(6022, QHT_MAPTEMPTASK_BOSS_MAX, 0);
	SetMapTaskTemp(6023, QHT_MAPTEMPTASK_BOSS_MAX, 0);
	
	SetMapTaskTemp(6023, QHT_MAPTEMPTASK_GOLDBOSS_MAX, 0);
	SetMapTaskTemp(6023, QHT_MAPTEMPTASK_TIANGANG_MAX, 0);
	SetMapTaskTemp(6023, QHT_MAPTEMPTASK_YJZUOJI_MAX, 0);
	SetMapTaskTemp(6023, QHT_MAPTEMPTASK_TIANMEN_MAX, 0);
end

function qht_get_teamsize()
	local nCount = 0;
	local oldPlayerIndex = PlayerIndex;
	if GetTeamSize() > 1 then
		for i=1, GetTeamSize() do
			PlayerIndex = GetTeamMember(i);
			local nMapID,nX,nY = GetWorldPos();
			if qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
				nCount = nCount + 1;
			end
		end
		PlayerIndex = oldPlayerIndex;
	else
		local nMapID,nX,nY = GetWorldPos();
		if qht_map_allow(QHT_MAP_TABLE,nMapID) == 1 then
			nCount = nCount + 1;
		end
	end
	return nCount;
end

--关卡个人产出
function qht_raid_award(tbAward)
	if not tbAward then return end
	if qht_activity_isopen() ~= 1 then
		return 0;
	end
	if qht_check_condition(1) ~= 1 then
		return 0;
	end
	gf_EventGiveRandAward(tbAward, gf_SumRandBase(tbAward), 1, "C玭g chi課 Thi猲 T莔 Th竝", "R琲 ra trong 秈");
end

function qht_raid_ls_14()
	qht_raid_award(QHT_RAID_AWARD_LS_14);
end

function qht_raid_ls_58()
	qht_raid_award(QHT_RAID_AWARD_LS_58);
end

function qht_raid_wj_13()
	qht_raid_award(QHT_RAID_AWARD_WJ_13);
end

function qht_raid_wj_4()
	qht_raid_award(QHT_RAID_AWARD_WJ_4);
end

function qht_raid_ttd_13()
	qht_raid_award(QHT_RAID_AWARD_TTD_13);
end

function qht_raid_ttd_47()
	qht_raid_award(QHT_RAID_AWARD_TTD_47);
end

function qht_raid_dxg_13()
	qht_raid_award(QHT_RAID_AWARD_DXG_13);
end

function qht_raid_dxg_47()
	qht_raid_award(QHT_RAID_AWARD_DXG_47);
end

function qht_raid_tyt_13()
	qht_raid_award(QHT_RAID_AWARD_TYT_13);
end

function qht_raid_tyt_46()
	qht_raid_award(QHT_RAID_AWARD_TYT_46);
end

----给某个魔法状态
--function qht_magic_attrib(tbMagic)
--	if qht_activity_isopen() ~= 1 then
--		return 0;
--	end
--	if not tbMagic then return 0 end
--	local tState = tbMagic.tState;
--	local tInfo = tbMagic.tInfo;
--	if tInfo and tState then
----		for i=1, getn(tState) do
----			RemoveState(tState[i][1]);
----		end
--		local nRandIndex = gf_GetRandItemByTable(tState,100,1);
--		CastState(tState[nRandIndex][3], tState[nRandIndex][4], tState[nRandIndex][6] * 60 * 18, 1, tState[nRandIndex][1], 0);
--		SyncCustomState(1, tState[nRandIndex][1], 1, format(tInfo[1],tInfo[2],tState[nRandIndex][6]));
--		Talk(1,"",format("你获得%s效果",tState[nRandIndex][5]));
--	end
--end

--刷NPC
--返回索引的table
function qht_random_flash(nMapID, tbPoint)
	if qht_activity_isopen() ~= 1 then
		return nil,nil,nil;
	end
	if not tbPoint then 
		return nil,nil,nil; 
	end
	if qht_map_allow(QHT_MAP_TABLE,nMapID) ~= 1 then return 0; end
	local nSize = QHT_MAP_FLASH_POINT[nMapID][1] + QHT_MAP_FLASH_POINT[nMapID][2] + QHT_MAP_FLASH_POINT[nMapID][3];
	if nSize ~= getn(tbPoint) then
		return nil,nil,nil;
	end
	local tBuffTempPoint = {};
	local tBoxTempPoint = {};
	local tBossTempPoint = {};
	--并没有找到好的办法实现
	local tSeedRand = random(nSize);
	local n = 1;
	for i = tSeedRand, tSeedRand + QHT_MAP_FLASH_POINT[nMapID][1] - 1 do
		n = mod(i, nSize);
		if n == 0 then n = nSize; end
		tBuffTempPoint[i - tSeedRand + 1] = n;
	end
	n = n + 1;
	n = mod(n, nSize);
	if n == 0 then n = nSize; end
	tSeedRand = n;
	for i = tSeedRand, tSeedRand + QHT_MAP_FLASH_POINT[nMapID][2] - 1 do
		n = mod(i, nSize);
		if n == 0 then n = nSize; end
		tBoxTempPoint[i - tSeedRand + 1] = n;
	end
	n = n + 1;
	n = mod(n, nSize);
	if n == 0 then n = nSize; end
	tSeedRand = n;
	for i = tSeedRand, tSeedRand + QHT_MAP_FLASH_POINT[nMapID][3] - 1 do
		n = mod(i, nSize);
		if n == 0 then n = nSize; end
		tBossTempPoint[i - tSeedRand + 1] = n;
	end
	return tBuffTempPoint, tBoxTempPoint, tBossTempPoint;
end

--gs启动的时候创建mission
function qht_create_mission()
	if qht_activity_isopen() ~= 1 then
		return 0;
	end
	for i = 1, getn(QHT_MAP_TABLE) do
		if SubWorldID2Idx(QHT_MAP_TABLE[i]) ~= -1 then
			mf_OpenMission(QHT_MISSION_ID[i],QHT_MAP_TABLE[i]);
		end
	end
end

--Npc名字匹配
function qht_npc_name_cmp(strName)
	for i = 1, getn(QHT_LANGUAI_TABLE) do
		if strName == QHT_LANGUAI_TABLE[i][2] then
			return 1;
		end
	end
	for i = 1, getn(QHT_XIAOBOSS_TABLE) do
		if strName == QHT_XIAOBOSS_TABLE[i][2] then
			return 1;
		end
	end
	for i = 1, getn(QHT_ZHONGBOSS_TABLE) do
		if strName == QHT_ZHONGBOSS_TABLE[i][2] then
			return 1;
		end
	end
	for i = 1, getn(QHT_DABOSS_TABLE) do
		if strName == QHT_DABOSS_TABLE[i][2] then
			return 1;
		end
	end
	for i = 1, getn(QHT_GOLDBOSS_TABLE) do
		if strName == QHT_GOLDBOSS_TABLE[i][2] then
			return 1;
		end
	end
	for i = 1, getn(QHT_BOX_TABLE) do
		if strName == QHT_BOX_TABLE[i][2] then
			return 1;
		end
	end
	for i = 1, getn(QHT_SHENTAN_TABLE_6021) do
		if strName == QHT_SHENTAN_TABLE_6021[i][3] then
			return 1;
		end
	end
	for i = 1, getn(QHT_SHENTAN_TABLE_6022) do
		if strName == QHT_SHENTAN_TABLE_6022[i][3] then
			return 1;
		end
	end
	for i = 1, getn(QHT_SHENTAN_TABLE_6023) do
		if strName == QHT_SHENTAN_TABLE_6023[i][3] then
			return 1;
		end
	end
	return 0;
end

--创建buff点
function qht_create_buff(tbBuff,tPoint)
	if not tbBuff or not tPoint then return end
	local nRand = gf_GetRandItemByTable(tbBuff, gf_SumRandBase(tbBuff), 1);
	local npcIndex = CreateNpc(tbBuff[nRand][1], tbBuff[nRand][3], tPoint[1], tPoint[2], tPoint[3]);
	SetNpcScript(npcIndex, tbBuff[nRand][4]);
	return npcIndex;
end

--创建box点
function qht_create_box(tbBox,tPoint)
	if not tbBox or not tPoint then return end
	local nRand = gf_GetRandItemByTable(tbBox, gf_SumRandBase(tbBox), 1);
	if tbBox[nRand][1] == "" then
		return 0;
	end 
	local npcIndex = CreateNpc(tbBox[nRand][1], tbBox[nRand][3], tPoint[1], tPoint[2], tPoint[3]);
	SetNpcScript(npcIndex, tbBox[nRand][4]);
	return npcIndex;
end

--创建boss点
function qht_create_boss(tbBoss,tPoint)
	if not tbBoss or not tPoint then return end
	local nRand = gf_GetRandItemByTable(tbBoss, gf_SumRandBase(tbBoss), 1);
	local nNum = GetMapTaskTemp(6023,QHT_MAPTEMPTASK_GOLDBOSS_MAX);
	if tbBoss[nRand][1] == 5 then
		if nNum >= 3 then
			--tbBoss表不能改动
			nRand = nRand - 1;
		end
	end
	if nRand < 1 or nRand > getn(tbBoss) then return nil; end
	if not tbBoss[nRand][3] then return nil; end
	local tbTemp = tbBoss[nRand][3];
	local nRandIndex = random(getn(tbTemp));
	local npcIndex = CreateNpc(tbTemp[nRandIndex][1], tbTemp[nRandIndex][2], tPoint[1], tPoint[2], tPoint[3]);
	if tbBoss[nRand][1] == 5 then
		SetMapTaskTemp(6023,QHT_MAPTEMPTASK_GOLDBOSS_MAX, GetMapTaskTemp(6023, QHT_MAPTEMPTASK_GOLDBOSS_MAX) + 1);
		Msg2Global(format("Boss Ho祅g Kim %s  xu蕋 hi謓, c竎 v?i hi謕 mau 甶 Thi猲 T莔 Th竝 t莕g 3 khi猽 chi課.",tbTemp[nRandIndex][2]));
	end
	SetNpcDeathScript(npcIndex, tbBoss[nRand][4]);
	return npcIndex;
end


--杀普通怪触发圣坛
function qht_create_shengtan(nMapID,nKind)
	local tbTemp = {
		[6021] = QHT_SHENTAN_TABLE_6021,
		[6022] = QHT_SHENTAN_TABLE_6022,
		[6023] = QHT_SHENTAN_TABLE_6023,
	};
	if not tbTemp[nMapID] then  return 0; end
	if nKind < 1 or nKind > getn(tbTemp[nMapID]) then return 0; end
	local npcIndex = CreateNpc(tbTemp[nMapID][nKind][1],tbTemp[nMapID][nKind][3],GetWorldPos());
	SetNpcScript(npcIndex, tbTemp[nMapID][nKind][4]);
end

function qht_ds_goto_check()
	local oldPlayerIndex = PlayerIndex;
	if GetName() ~= gf_GetCaptainName() then
		Talk(1,"","Ch?c?i trng m韎 c?th?ti課 h祅h thao th竎 n祔");
		return 0;
	end
	local msg = "Ngi ch琲 kh玭g c??b秐  n祔: \n";
	local nNum = 0;
	local nMapID_Cap = GetWorldPos();
	for i = 1, gf_GetTeamSize() do
		PlayerIndex = gf_GetTeamMember(i);
		local nMapID,nX,nY = GetWorldPos();
		if nMapID ~= nMapID_Cap then
			msg = msg.."<color=red>"..GetName().."<color>\n";
			nNum = nNum + 1;
		end
	end
	PlayerIndex = oldPlayerIndex;
	if gf_GetTeamSize() > 1 and nNum > 0 then
		Talk(1,"",msg);
		return 0;
	end
	
	local msg = "Ngi ch琲 di y kh玭g  甶襲 ki謓 k?n╪g v?c蕄 :\n"
	local nNum = 0;
	for i = 1, gf_GetTeamSize() do
		PlayerIndex = gf_GetTeamMember(i);
		if gf_CheckBaseCondition(80,1) ~= 1 then
			msg = msg.."<color=red>"..GetName().."<color>\n";
			nNum = nNum + 1;
		end
	end
	PlayerIndex = oldPlayerIndex;
	if nNum > 0 then
		Talk(1,"",msg);
		return 0;
	end
	
	return 1;
end

function qht_ds_goto_qht(nNum)
	if qht_check_condition() ~= 1 then
		return 0;
	end
	if qht_ds_goto_check() ~= 1 then
		return 0;
	end
	local tbPos = {};
	local nMapId,nX,nY = GetWorldPos();
	local oldPlayerIndex = PlayerIndex;
	local nSize = GetTeamSize();
	local sMyName = GetName();
	local sCaptainName = GetCaptainName();
	if nNum == 1 then
		tbPos = {
			{1551,3314},
			{1601,3362},
			{1595,3248},
			{1651,3300},
		}
		local nIndex = random(4);
		if nSize == 0 or sCaptainName ~= sMyName then 
			QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.InPosFlag,nMapId);
			if nMapId ~= QHT_MAP_TABLE[1] and nMapId ~= QHT_MAP_TABLE[2] and nMapId ~= QHT_MAP_TABLE[3] then
				SetTempRevPos(nMapId, nX * 32, nY * 32);
				SetDeathScript("\\script\\online\\qianhe_tower\\qht_playerdeath.lua");
			end
			NewWorld(6021,tbPos[nIndex][1],tbPos[nIndex][2]);
			SetFightState(1); 
			SetDeathPunish(0);
			gf_WriteLogEx("THIEN TAM HUYEN CANH", "tham gia th祅h c玭g", 1, "T莕g 1")					
		elseif sCaptainName == sMyName then
			for i = 1, nSize do
				PlayerIndex = GetTeamMember(i)
				QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.InPosFlag,nMapId);
				if nMapId ~= QHT_MAP_TABLE[1] and nMapId ~= QHT_MAP_TABLE[2] and nMapId ~= QHT_MAP_TABLE[3] then
					SetTempRevPos(nMapId, nX * 32, nY * 32);
					SetDeathScript("\\script\\online\\qianhe_tower\\qht_playerdeath.lua");
				end
				NewWorld(6021,tbPos[nIndex][1],tbPos[nIndex][2]);
				SetFightState(1);
				SetDeathPunish(0);
				gf_WriteLogEx("THIEN TAM HUYEN CANH", "tham gia th祅h c玭g", 1, "T莕g 1")						
			end
			PlayerIndex = oldPlayerIndex;
		end
		return 1;
	end
	if nNum == 2 then
		tbPos = {
			{1489,2944},
			{1630,2827},
			{1885,3062},
			{1549,3285},
			{1657,3224},
			{1395,3094},
		}
		local nIndex = random(6);
		if nSize == 0 or sCaptainName ~= sMyName then 
			QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.InPosFlag,nMapId);
			if nMapId ~= QHT_MAP_TABLE[1] and nMapId ~= QHT_MAP_TABLE[2] and nMapId ~= QHT_MAP_TABLE[3] then
				SetTempRevPos(nMapId, nX * 32, nY * 32);
				SetDeathScript("\\script\\online\\qianhe_tower\\qht_playerdeath.lua");
			end
			NewWorld(6022,tbPos[nIndex][1],tbPos[nIndex][2]);
			SetFightState(1);
			SetDeathPunish(0);
			gf_WriteLogEx("THIEN TAM HUYEN CANH", "tham gia th祅h c玭g", 1, "T莕g 2")					
		elseif sCaptainName == sMyName then
			for i = 1, nSize do
				PlayerIndex = GetTeamMember(i)
				QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.InPosFlag,nMapId);
				if nMapId ~= QHT_MAP_TABLE[1] and nMapId ~= QHT_MAP_TABLE[2] and nMapId ~= QHT_MAP_TABLE[3] then
					SetTempRevPos(nMapId, nX * 32, nY * 32);
					SetDeathScript("\\script\\online\\qianhe_tower\\qht_playerdeath.lua");
				end
				NewWorld(6022,tbPos[nIndex][1],tbPos[nIndex][2]);
				SetFightState(1);
				SetDeathPunish(0);
				gf_WriteLogEx("THIEN TAM HUYEN CANH", "tham gia th祅h c玭g", 1, "T莕g 2")						
			end
			PlayerIndex = oldPlayerIndex;
		end
		return 1;
	end
	if nNum == 3 then
		tbPos = {
			{1609,3694},
			{1578,3238},
		}
		local nIndex = random(2);
		if nSize == 0 or sCaptainName ~= sMyName then 
			QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.InPosFlag,nMapId);
			if nMapId ~= QHT_MAP_TABLE[1] and nMapId ~= QHT_MAP_TABLE[2] and nMapId ~= QHT_MAP_TABLE[3] then
				SetTempRevPos(nMapId, nX * 32, nY * 32);
				SetDeathScript("\\script\\online\\qianhe_tower\\qht_playerdeath.lua");
			end
			NewWorld(6023,tbPos[nIndex][1],tbPos[nIndex][2]);
			SetFightState(1); 
			SetDeathPunish(0);
			gf_WriteLogEx("THIEN TAM HUYEN CANH", "tham gia th祅h c玭g", 1, "T莕g 3")					
		elseif sCaptainName == sMyName then
			for i = 1, nSize do
				PlayerIndex = GetTeamMember(i)
				QHT_TASK_GROUP:SetTask(QHT_TASK_GROUP.InPosFlag,nMapId);
				if nMapId ~= QHT_MAP_TABLE[1] and nMapId ~= QHT_MAP_TABLE[2] and nMapId ~= QHT_MAP_TABLE[3] then
					SetTempRevPos(nMapId, nX * 32, nY * 32);
					SetDeathScript("\\script\\online\\qianhe_tower\\qht_playerdeath.lua");
				end
				NewWorld(6023,tbPos[nIndex][1],tbPos[nIndex][2]);
				SetFightState(1);
				SetDeathPunish(0);
				gf_WriteLogEx("THIEN TAM HUYEN CANH", "tham gia th祅h c玭g", 1, "T莕g 3")						
			end
			PlayerIndex = oldPlayerIndex;
		end
		return 1;
	end
end

function qht_award_wuxing_foot_3()
	gf_EventGiveRandAward(QHT_AWARD_FOOT_3, gf_SumRandBase(QHT_AWARD_FOOT_3), 1, "C玭g chi課 Thi猲 T莔 Th竝", "Gi祔 Ng?H祅h c蕄 3")
end

function qht_award_wuxing_badge_3()
	gf_EventGiveRandAward(QHT_AWARD_BADGE_3, gf_SumRandBase(QHT_AWARD_BADGE_3), 1, "C玭g chi課 Thi猲 T莔 Th竝", "Huy Chng Ng?H祅h c蕄 3")
end

function qht_award_tong_fight_flag()
	QHT_TASK_GROUP:SetTaskBit(QHT_TASK_GROUP.TongFlag, 1, 1);
	qht_add_exp(12000000);
	qht_add_zhenqi(800);
	qht_add_shengwang(200);
	qht_add_shimen(300);
	qht_award_jinwenhufu(1,100,100);
	gf_WriteLogEx("C玭g chi課 Thi猲 T莔 Th竝", "Bang H閕 Chi課 K?);
end

function qht_award_tong_fight_flag_tiexue()
	QHT_TASK_GROUP:SetTaskBit(QHT_TASK_GROUP.TongFlag, 2, 1);
	qht_add_exp(15000000);
	qht_add_zhenqi(1000);
	qht_add_shengwang(300);
	qht_add_shimen(400);
	qht_award_jinwenhufu(3,100,100);
	gf_WriteLogEx("C玭g chi課 Thi猲 T莔 Th竝", "Thi誸 Huy誸 Bang H閕 Chi課 K?);
end

function qht_relay_create_gold_boss(nRandSeed)
	if qht_activity_isopen() ~= 1 then
		return 0;
	end
	
	--广播
	local strMsg = format("Thi猲 T莔 Huy詎 C秐h Ho祅g Kim  xu蕋 hi謓, nhanh ch﹏ n ");
	Msg2Global(strMsg);
	AddLocalNews(strMsg);
		
	local nPosTable = {
		QHT_RANDOM_POINT_6021,
		QHT_RANDOM_POINT_6022,
		QHT_RANDOM_POINT_6023,
	}
	for nIndex = 1, getn(nPosTable) do
		local nPosIndex = random(getn(nPosTable[nIndex]));
				
		--这个地图不在这个服务器就不刷
		if SubWorldID2Idx(nPosTable[nIndex][nPosIndex][1]) == -1 then
			return 0;
		end
		
		--刷NPC
		local npcIdx = CreateNpc(QHT_RELAY_CREATE_GOLD_BOSS[nIndex][1], QHT_RELAY_CREATE_GOLD_BOSS[nIndex][2], nPosTable[nIndex][nPosIndex][1], nPosTable[nIndex][nPosIndex][2], nPosTable[nIndex][nPosIndex][3]);
		if npcIdx > 0 then
			SetNpcDeathScript(npcIdx, QHT_RELAY_CREATE_GOLD_BOSS[nIndex][3]);
			SetNpcLifeTime(npcIdx, 60*30);
			AddRuntimeStat(22, 13, 0, 1);
		end
	end
end