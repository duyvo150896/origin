Include("\\script\\function\\world_boss\\wb_define.lua")
Include("\\script\\lib\\date.lua")
Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\task_access_code_def.lua")
Include("\\script\\lib\\define.lua")
Include("\\script\\online_activites\\award.lua")

function wb_RelayCallCreateBoss(nRandSeed)
	--是否关闭
	local ret =1
	if ret == 1 then
		return
	end
	if not WB_SWITCH or WB_SWITCH ~= 1 then
		return
	end
	--每周六周日刷新
	local today = Date();
	local wDay = today:week();
	if wDay ~= 6 and wDay ~= 0 then
		return
	end
	if not nRandSeed then
		return
	end
	randomseed(nRandSeed)
	local nIndex = random(getn(WB_WORLD_BOSS));
	--广播
	local msg = format("Theo t譶h b竜, %s hi謓 產ng xu蕋 hi謓 ?b秐  %s, c竎 hi謕 s?h穣 n  xem th?", WB_WORLD_BOSS[nIndex][2], WB_WORLD_BOSS_MAP[nIndex]);
	Msg2Global(msg);
	AddLocalNews(msg);
	Msg2Global(WB_WORLD_BOSS_INFO[nIndex]);
	AddLocalNews(WB_WORLD_BOSS_INFO[nIndex]);
	--地图在哪个GS上
	if SubWorldID2Idx(WB_WORLD_BOSS_POS[nIndex][1][1]) == -1 then
		return
	end
	--开刷
	local nPosIndex = random(getn(WB_WORLD_BOSS_POS[nIndex]));
	local tPos = WB_WORLD_BOSS_POS[nIndex][nPosIndex];
	if not tPos or getn(tPos) ~= 3 then return end
	local npcIndex = CreateNpc(WB_WORLD_BOSS[nIndex][1], WB_WORLD_BOSS[nIndex][2], tPos[1], tPos[2], tPos[3]);
	if npcIndex > 0 then
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");
		SetNpcLifeTime(npcIndex, 40 * 60);
	end
end

function wb_MatchNpc(szName)
	for k, v in WB_WORLD_BOSS do
		if getn(v) == 2 and v[2] == szName then
			return k;
		end
	end
	return -1;
end

function wb_GetBossName()
	for k, v in WB_WORLD_BOSS do
		if type(v) == "table" and getn(v) == 2 then
			if GetToNpcDamageByName(v[2]) > 0 then
				return v[2];
			end
		end		
	end	
	return nil
end

function wb_GetBossMapId()
	for i = 1, getn(WB_WORLD_BOSS) do
		if type(WB_WORLD_BOSS[i]) == "table" and getn(WB_WORLD_BOSS[i]) == 2 then
			if GetToNpcDamageByName(WB_WORLD_BOSS[i][2]) > 0 then
				return WB_WORLD_BOSS_POS[i][1][1];
			end
		end		
	end	
	return 0;
end

function wb_GetSmallBoxFlag()
	return gf_GetTaskBit(TASKID_WORLD_BOSS_USE, 1);
end

function wb_SetSmallBoxFlag()
	gf_SetTaskBit(TASKID_WORLD_BOSS_USE, 1, 1, TASK_ACCESS_CODE_WORLD_BOSS);
end

function wb_GetSmallBoxFlag1()
	return gf_GetTaskBit(TASKID_WORLD_BOSS_USE, 2);
end

function wb_SetSmallBoxFlag1()
	gf_SetTaskBit(TASKID_WORLD_BOSS_USE, 2, 1, TASK_ACCESS_CODE_WORLD_BOSS);
end

function wb_GetBigBoxFlag()
	return gf_GetTaskBit(TASKID_WORLD_BOSS_USE, 3);
end

function wb_SetBigBoxFlag()
	gf_SetTaskBit(TASKID_WORLD_BOSS_USE, 3, 1, TASK_ACCESS_CODE_WORLD_BOSS);
end

function wb_GetBigBoxIndex()
	return gf_GetMyTaskBit(TASKID_WORLD_BOSS_USE, 4, 31)
end

function wb_SetBigBoxIndex(index)
	gf_SetMyTaskBit(TASKID_WORLD_BOSS_USE, 4, 31, index, TASK_ACCESS_CODE_WORLD_BOSS)
end

function wb_DailyClear()
	SetTask(TASKID_WORLD_BOSS_USE, 0, TASK_ACCESS_CODE_WORLD_BOSS);
end

--击杀boss奖励
function wb_KillAward()
	if GetWorldPos() == 202 then
		AddItem(2,1,30072,1);
	else
		gf_Modify("Exp", 50000000);
		-- gf_AddItemEx2({2,1,30370, 5}, "TMKL", "BOSS Th? giíi", "Tiau di?t BOSS", 0, 1)
		-- gf_AddItemEx2({2,95,204, 5}, "TCL", "BOSS Th? giíi", "Tiau di?t  BOSS", 0, 1)
		-- gf_AddItemEx2({2,1,30458, 2}, "T� Linh Ho祅", "BOSS Th� g韎", "Ti猽 di謙 BOSS Th� gi韎", 0, 1)
		 -- gf_AddItemEx2({2,1,30668, 5}, "THUL 6", "BOSS Th� g韎", "Ti猽 di謙 BOSS Th� gi韎", 0, 1)
		gf_AddItemEx2({2,1,30424, 5}, "B颽 Cng H鉧 12", "BOSS Th� g韎", "Ti猽 di謙 BOSS Th� gi韎", 0, 1)
		-- gf_AddItemEx2({2,1,30425, 10}, "B颽 Cng H鉧 13", "BOSS Th� g韎", "Ti猽 di謙 BOSS Th� gi韎", 0, 1)
		-- gf_AddItemEx2({2,1,30426, 20}, "B颽 Cng H鉧 14", "BOSS Th� g韎", "Ti猽 di謙 BOSS Th� gi韎", 0, 1)
		-- gf_AddItemEx2({2,1,30499, 20}, "HCAH", "BOSS Th� g韎", "Ti猽 di謙 BOSS Th� gi韎", 0, 1)
		-- gf_AddItemEx2({2,1,30402, 30}, "Ng� Th竔 Th竛h H醓", "BOSS Th� g韎", "Ti猽 di謙 BOSS Th� gi韎", 0, 1)
		local nRetCode, nIndex = gf_AddItemEx2({2,1,50008, 1}, "Tr飉 di謙 Boss hi謚", "BOSS Th� g韎", "Ti猽 di謙 BOSS Th� gi韎", 0, 1)
		if nRetCode == 1 then
				SetItemExpireTime(nIndex,24 * 3600);
		end
		local msg = format("Ch骳 m鮪g [%s]  ho祅 th祅h n k誸 li評 %s, nh薾 頲 %d kinh nghi謒, %s*%d, %s", GetName(), wb_GetBossName() or "BOSS", 10000000, "B颽 Cng H鉧", 10, "Tr飉 di謙 Boss hi謚");
		Msg2Global(msg);
		AddLocalNews(msg);
	end
end

function wb_SmallBoxAward()
	if gf_Judge_Room_Weight(1, 10," ") ~= 1 then
		return 0;
	end
	--奖励
	gf_Modify("Exp", 14000000);
	local tAward = {
		-- {1, 50000, "M?nh thian m?n", {2, 1, 30410, 100, 4}, 0},
		-- --{1, 0, "高级师门秘籍包裹", {2, 1, 30627, 1, 4}, 0},
		-- --{1, 0, "师门真卷包裹", {2, 1, 30665, 1, 4}, 0},
		-- --{1, 0, "修真要诀残页", {2, 1, 30315, 1, 4}, 0},
		-- {1, 9999, "Чi Nh﹏ s﹎", {2, 0, 553, 1, 4}, 0},
		-- {1, 15000, "Ti觰 Nh﹏ s﹎ qu?", {2, 0, 552, 1, 4}, 0},
		-- {1, 25000, "m?ng thian cang", {2, 1, 30390, 500, 4}, 0},
		-- {1, 1, "M藅 T辌h Ti猽 Dao", {2, 1, 30410, 100}, 0, 0, 0, 1},
			-- {1, 25000, "S竎h pet 4", {2, 150, 4, 1, 4}, 0},
			-- {1, 25000, "S竎h pet 4", {2, 150, 8, 1, 4}, 0},
			-- {1, 3000, "S竎h pet 4", {2, 150, 12, 1, 4}, 0},
			-- {1, 25000, "S竎h pet 4", {2, 150, 16, 1, 4}, 0},
			-- {1, 3000, "S竎h pet 4", {2, 150, 20, 1, 4}, 0},
			-- {1, 25000, "S竎h pet 4", {2, 150, 24, 1, 4}, 0},
			-- {1, 25000, "S竎h pet 4", {2, 150, 28, 1, 4}, 0},
			-- {1, 25000, "S竎h pet 4", {2, 150, 32, 1, 4}, 0},
			-- {1, 25000, "S竎h pet 4", {2, 150, 36, 1, 4}, 0},
			-- {1, 25000, "S竎h pet 4", {2, 150, 40, 1, 4}, 0},
			-- {1, 25000, "S竎h pet 4", {2, 150, 44, 1, 4}, 0},
			-- {1, 3000, "S竎h pet 4", {2, 150, 48, 1, 4}, 0},
			-- {1, 25000, "S竎h pet 4", {2, 150, 52, 1, 4}, 0},
			-- {1, 3000, "S竎h pet 4", {2, 150, 56, 1, 4}, 0},
			-- {1, 25000, "S竎h pet 4", {2, 150, 60, 1, 4}, 0},
			
	}
	-- gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "BOSS Th� gi韎", "Чi Chi課 B秓 H筽")
	-- gf_AddItemEx2({2,1,30668, 2}, "THUL 6", "BOSS Th� g韎", "Чi Chi課 B秓 H筽", 0, 1);
	-- gf_AddItemEx2({2,1,30499, 30}, "HCAH", "BOSS Th� g韎", "Чi Chi課 B秓 H筽", 0, 1);
	-- gf_AddItemEx2({2,1,30458, 1}, "T� Linh Ho祅", "BOSS Th� g韎", "Чi Chi課 B秓 H筽", 0, 1);
	-- gf_AddItemEx2({2,1,30402, 30}, "Ng� Th竔 Th竛h H醓", "BOSS Th� g韎", "Чi Chi課 B秓 H筽", 0, 1);
	--活�
	local rand =random(1,3)
	if rand == 1 then
		UL3_non();
	end
	if rand == 2 then
		UL3_ao();
	end
	if rand == 3 then
		UL3_quan();
	end
	
	vaf_get_prize_item_30709(5, 1);
	AddRuntimeStat(23, 2, 0, 1);
	return 1;
end

function wb_BigBoxAward()
	local npcIndex = wb_GetBigBoxIndex();
	if GetNpcName(npcIndex) ~= "Rng V祅g Чi Chi課" then
		Msg2Player("чng t竎 qu� ch薽, b秓 rng  b� ngi kh竎 nh苩 m蕋");
		return 0;
	end
	if IsNpcDeath(npcIndex) ~= 0 then
		Msg2Player("чng t竎 qu� ch薽, b秓 rng  b� ngi kh竎 nh苩 m蕋");
		return 0;
	end
--	local nMapId = GetWorldPos();
--	if nMapId ~= wb_GetBossMapId() then
--		Talk(1,"","B秐  hi謓 t筰 kh玭g th?m?b秓 rng")
--		return 0;
--	end
	if IsPlayerDeath() == 1 then
		return 0;
	end
	if gf_Judge_Room_Weight(3, 10," ") ~= 1 then
		return 0;
	end
	SetNpcLifeTime(npcIndex, 0);
	wb_SetBigBoxFlag();
	--奖励
	gf_Modify("Exp", 5000000);
--	gf_AddItemEx2({2, 1, 30669, 40}, "M秐h M藅 T辌h", "BOSS Th� g韎", "Rng V祅g Чi Chi課", 0, 1);
	-- local tAward = {
		-- -- {1, 14, "L╪g Ba Vi B?", {0, 112, 78, 1}, 0},
		-- -- --{1, 0, "师门真卷包裹", {2, 1, 30665, 1}, 0},
		-- -- {1, 15, "M藅 T辌h Ti猽 Dao T祅 Quy觧", {0, 112, 225, 1}, 0},
		-- -- {1, 50, "Tu Ch﹏ Y誹 Quy誸", {2, 0, 554, 3}, 0},
		-- {1, 10, "B颽 Cng H鉧  14", {2,1,30426, 30}, 0},
		-- {1, 10, "B颽 Cng H鉧 14", {2,1,30426, 30}, 0},		
		-- {1, 10, "B颽 Cng H鉧 14", {2,1,30426, 30}, 0, 0, 0, 1},
	-- }
	-- gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "BOSS Th? giíi", "R-?ng Vμng §1i Chi?n");	
	 -- gf_AddItemEx2({2,1,30668, 5}, "THUL 6", "BOSS Th� gi韎", "Ti猽 di謙  BOSS", 0, 1);
	 gf_AddItemEx2({2,1,30424, 10}, "B颽 Cng H鉧 12", "BOSS Th� gi韎", "Ti猽 di謙  BOSS", 0, 1);
	 Earn(5000000);
	 local msg = format("Ch骳 m鮪g [%s]  gi祅h 頲 rng V祅g Чi Chi課 thu 頲  %d B颽 cng h鉧 12", GetName(), 10);
	Msg2Global(msg);
	AddLocalNews(msg);
	--活动
	vaf_get_prize_item_30709(10, 1);
	AddRuntimeStat(23, 3, 0, 1);
	return 1;
end

function UL3_non()
	local non = random(35,51)
	AddItem(0, 148, non, 1, 1);
end
function UL3_ao()
	local non = random(35,51)
	AddItem(0, 149, non, 1, 1);
end
function UL3_quan()
	local non = random(35,51)
	AddItem(0, 150, non, 1, 1);
end