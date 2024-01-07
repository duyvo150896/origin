Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\lib\\define.lua")
Include("\\script\\online_activites\\head\\activity_normal_head.lua")
--测试
DebugOutput = nothing

--是否为新服服务器
--Experience server Switch
CK_ES_SWITCH = 0;
EXT_CDKEY = 3	

function _ck_check_tong()
	if IsTongMember() <= 0 then
		--Say(CK_NPC_NAME.."不满足条件，不能完成任务！", 0);
		return 0;
	end
	return 1
end
function _ck_check_shili()
	local nCamp = GetTask(TASK_FIELD_PVP_CAMP);
	if nCamp > 0 and nCamp <= 3 then
		return 1
	end
	return 0
end
function _ck_check_yueka()
	if IsActivatedVipCard() ~= 1 then
		--Say(CK_NPC_NAME.."您还没有激活任何月卡，不能完成任务！", 0);
		return 0;
	end
	return 1
end
function _ck_del_300_ziguangjifen()
	--扣紫光积分
	local TSK_POINT = 652;			--记录玩家个人关卡积分
	if GetTask(TSK_POINT) < 300 then
		Say(CK_NPC_NAME..format("觤 t輈h l騳 t� quang kh玭g  <color=red>%d<color> 甶觤", 300), 0);
		return 0;
	end
	SetTask(TSK_POINT, GetTask(TSK_POINT) - 300);
	return 1
end
function _ck_check_300_ziguangjifen()
	local TSK_POINT = 652;			--记录玩家个人关卡积分
	if GetTask(TSK_POINT) < 300 then
		return 0;
	end
	return 1
end

--用一张表来记录所有任务 以前纯手工制作受不了
CK_EXT_AWARD = 0
T_CK_TASK_LIST = {
	--{enable, name,{condition,desc},{exp,score,exaward_func,ext_rate},{task_index,task_bit_get,task_bit_finish|func_check_finish,task_bit_award}}
	--百战不殆 三方势力任务
	[1101] = {0, "V薾 ti猽", {"Ho祅 th祅h 1 l莕 nhi謒 v� v薾 ti猽", "дn b秐  th� l鵦 ch� NPC Ti猽 u Tr蕁 Vi詎 Ti猽 C鬰  nh薾 nhi謒 v� v薾 ti猽"}, {5000000, 18, nil, CK_EXT_AWARD}, {8, 1, 2, 3}},
	[1102] = {0, "Cp ti猽", {"Ho祅 th祅h 1 l莕 nhi謒 v� cp ti猽", "дn b秐  th� l鵦 ch� NPC Ti猽 u Tr蕁 Vi詎 Ti猽 C鬰  nh薾 nhi謒 v� 畂箃 ti猽"}, {5000000, 18, nil, CK_EXT_AWARD}, {8, 4, 5, 6}},
	[1103] = {0, "Thu th藀 Ng鋍 Ph竎h", {"Thu th藀 1 Ng鋍 Ph竎h", "дn Th竔 H� C� Th� c馻 th� l鵦 tr錸g 1 h箃 gi鑞g, thu th藀 1 Ng鋍 Ph竎h"}, {5000000, 18, nil, CK_EXT_AWARD}, {8, 7, 8, 9}},
	[1104] = {0, "Tr閙 Ng鋍 Ph竎h", {"дn th� l鵦 kh竎 tr閙 1 Ng鋍 Ph竎h", "V祇 b秐  th� l鵦 kh竎  tr閙 1 Ng鋍 Ph竎h"}, {5000000, 18, nil, CK_EXT_AWARD}, {8, 10, 11, 12}},
	[1105] = {0, "T﹜ V鵦 Truy襫 Чo", {"Tham gia t輓h n╪g T﹜ V鵦 Truy襫 Чo, nh蕄 v祇 3 th竛h v藅  nh薾 thng", "V祇 b秐  th� l鵦 tham gia t輓h n╪g T﹜ V鵦 Truy襫 Чo, nh蕄 v祇 3 th竛h v藅  nh薾 thng"}, {5000000, 18, nil, CK_EXT_AWARD}, {8, 13, 14, 15}},
	[1106] = {0, "BOSS Th� L鵦", {"Nh薾 b秓 v� BOSS c馻 th� l鵦 v� ti猽 di謙 BOSS c馻 th� l鵦 phe ch  nh薾 頲 ph莕 thng", "Bu鎖 t鑙 s� xu蕋 hi謓 BOSS c馻 th� l鵦 phe ta ho芻 phe ch, b秓 v� BOSS c馻 phe ta v� ti猽 di謙 BOSS c馻 phe ch s� nh薾 頲 ph莕 thng"}, {5000000, 18, nil, CK_EXT_AWARD}, {8, 16, 17, 18}},
	[1107] = {0, "Th� S╪ Ti襫 Thng", {"Ho祅 th祅h 1 l莕 nhi謒 v� Th� S╪ Ti襫 Thng", "Ho祅 th祅h 1 l莕 nhi謒 v� Th� S╪ Ti襫 Thng"}, {5000000, 18, nil, CK_EXT_AWARD}, {8, 19, 20, 21}},
	[1108] = {0, "Nhi謒 v� Уo Kho B竨", {"Ho祅 th祅h 1 l莕 nhi謒 v� Уo Kho B竨", "V祇 th� l鵦 nh薾 1 T祅g B秓 у, ho祅 th祅h 1 l莕 nhi謒 v� Уo Kho B竨"}, {5000000, 18, nil, CK_EXT_AWARD}, {8, 22, 23, 24}},
	
	--百战不殆 副本任务
--	[1201] = {},
--	[1202] = {},
--	[1203] = {},
--	[1204] = {},
--	
--	--百战不殆 PvP任务
--	[1301] = {},
--	[1302] = {},
--	[1303] =  {0, "三方势力pk", {"打败其他势力的1位敌对玩家", "杀死敌对势力的1名玩家，证明你的能力！"}, {8000000, 24}, {8, 25, 26, 27}},
--	[1304] = {},
--	[1305] = {},
--	[1306] = {},
--	[1307] = {},
	
	--速战速决 帮会任务
	[2101] = {0, "Gia nh藀 bang h閕", {"Gia nh藀 m閠 bang h閕 b蕋 k�, tr� th祅h m閠 th祅h vi猲 trong bang", "Gia nh藀 bang h閕, c飊g v韎 th祅h vi猲 kh竎 c� g緉g  gi髉 bang h閕 ng祔 c祅g l韓 m筺h"}, {3000000, 100}, {9, 0, _ck_check_tong, 1}},
	[2102] = {0, "T竔 chi課 Th莕 Th�", {"N閜 300 甶觤 t輈h l騳 t� quang (Sau khi giao nhi謒 v� th� hai b猲 s� b� tr� 300 甶觤 t輈h l騳 t� quang)", "Ch� c� ngi m韎 c� th� thu莕 ph鬰 T� Quang Th莕 Th�!"}, {5000000, 100, _ck_del_300_ziguangjifen}, {9, 0, _ck_check_300_ziguangjifen, 2}},
	[2103] = {0, "N閜 甶觤 c鑞g hi課 bang h閕", {"Tham gia t輓h n╪g Bang H閕 Vinh Danh, giao n閜 10 甶觤 c鑞g hi課 bang h閕", "Tham gia t輓h n╪g Bang H閕 Vinh Danh, giao n閜 10 甶觤 c鑞g hi課 bang h閕"}, {8000000, 100}, {9, 0, 3, 4}},
	[2104] = {0, "Nh薾 ph莕 thng Bang H閕 Vinh Danh", {"Nh薾 ph莕 thng Bang H閕 Vinh Danh", "Tham gia t輓h n╪g Bang H閕 Vinh Danh v� nh薾 ph莕 thng"}, {10000000, 300}, {9, 0, 5, 6}},
	
	[2201] = {0, "Th� Th竛g", {"K輈h ho箃 1 th� th竛g", "K輈h ho箃 th� th竛g, ch琲 tr� ch琲 nh� nh祅g h琻"}, {5000000, 1200}, {10, 0, _ck_check_yueka, 1}},
	[2202] = {0, "Gia nh藀 th� l鵦", {"Gia nh藀 1 th� l鵦 trong ba phe", "Gia nh藀 1 th� l鵦 trong ba phe"}, {5000000, 300}, {10, 0, _ck_check_shili, 2}},
	[2203] = {0, "V薾 ti猽", {"Ho祅 th祅h 1 l莕 v薾 ti猽", "V祇 th� l鵦 nh薾 nhi謒 v� v薾 ti猽, ho祅 th祅h 1 l莕 v薾 ti猽"}, {5000000, 600}, {10, 0, 3, 4}},
	[2204] = {0, "Cp ti猽", {"Ho祅 th祅h 1 l莕 cp ti猽", "V祇 th� l鵦 nh薾 nhi謒 v� cp ti猽, ho祅 th祅h 1 l莕 cp ti猽"}, {5000000, 600}, {10, 0, 5, 6}},
	[2205] = {0, "Tr錸g c﹜", {"Ho祅 th祅h 1 l莕 nhi謒 v� tr錸g c﹜", "V祇 th� l鵦 ch� C﹜ Th竔 H� ho祅 th祅h 1 l莕 nhi謒 v� tr錸g c﹜"}, {5000000, 600}, {10, 0, 7, 8}},
	[2206] = {0, "Уo rng", {"Ho祅 th祅h 1 l莕 nhi謒 v� o rng", "Ho祅 th祅h 1 l莕 nhi謒 v� o rng"}, {5000000, 600}, {10, 0, 9, 10}},
	[2207] = {0, "Th� S╪ Ti襫 Thng", {"Ho祅 th祅h 1 l莕 nhi謒 v� Th� S╪ Ti襫 Thng", "Ho祅 th祅h 1 l莕 nhi謒 v� Th� S╪ Ti襫 Thng"}, {5000000, 600}, {10, 0, 11, 12}},
	[2208] = {0, "T﹜ V鵦 Truy襫 Чo", {"D飊g 1 o c� b蕋 k� sau y: Kim L╪g T鰑, T祅g Ki誱 B� Truy襫 T﹎ Kinh, B竎h Hi觰 Sinh B� Ph竝", "Tham gia t輓h n╪g T﹜ V鵦 Truy襫 Чo, s� d鬾g 1 o c� b蕋 k� sau y: Kim L╪g T鰑, T祅g Ki誱 B� Truy襫 T﹎ Kinh, B竎h Hi觰 Sinh B� Ph竝"}, {5000000, 600}, {10, 0, 13, 14}},
}

--任务组列表,用于生成任务对话
T_CK_TASK_GROUP_LIST = {
	--name, {type,desc}, {sub_list_group}
	[1] = {
		"Tr╩ Tr薾 Tr╩ Th緉g", {1, "H籲g ng祔 nh薾 ng蓇 nhi猲, nh薾 頲 nhi襲 EXP v�  n╪g ng!"},
		{
			--name, random_count, {task_index_list}
			[1] = {"Nhi謒 v� Th� L鵦 Ba Phe", 4, {1101,1102,1103,1104,1105,1106,1107,1108}}, --百战不殆-三方势力任务
		},
	},
	[2] = {
		"T鑓 Chi課 T鑓 Th緉g", {2, "Trong th阨 gian ho箃 ng ch� ho祅 th祅h 1 l莕, nh薾 頲 nhi襲 EXP v�  n╪g ng!"},
		{
			[1] = {"Nhi謒 v� bang h閕", 0, {2101,2102,2103,2104}}, --速战速决-帮会任务
			[2] = {"Nhi謒 v� hng d蒼", 0, {2201,2202,2203,2204,2205,2206,2207,2208}}, --速战速决-指引任务
		},
	},
}

function ck_task_daily_clear()--每日清理
	--百战不殆任务变量清理
	local t = T_CK_TASK_GROUP_LIST[1][3]
	for _,t1 in t do
		for _,task_index in t1[3] do
			local tBitSet = _ck_get_task_bitset(task_index)
			local nGroupTaskIndex = tBitSet[1]
			local nBitGet = tBitSet[2]
			local nBitFinish = tBitSet[3]
			local nBitAward = tBitSet[4]
			if gDebug:is_debug() == 1 then--调试模式
				print("ck_task_daily_clear", task_index, nGroupTaskIndex, nBitGet, nBitFinish, nBitAward)
			end
			CK_TASK_GROUP:SetTaskBit(nGroupTaskIndex, nBitGet, 0)
			CK_TASK_GROUP:SetTaskBit(nGroupTaskIndex, nBitFinish, 0)
			CK_TASK_GROUP:SetTaskBit(nGroupTaskIndex, nBitAward, 0)
		end
	end
end

--外部调用 设置某一个任务为完成状态
function ck_global_set_task_finish(nTaskIndex)
	--gf_TeamOperateEX(function()
		local t = _ck_get_task_cfg(nTaskIndex)
		if ck_IsOpen() ~= 1 then
			if gDebug:is_debug() == 1 then--调试模式
				print("ck_global_set_task_finish not open", nTaskIndex)
			end
			return 0;
		end
		if ck_GetTitleType() == 0 then
			if gDebug:is_debug() == 1 then--调试模式
				print("ck_global_set_task_finish title error", nTaskIndex)
			end
			return 0;
		end
		if _ck_check_task_enable(nTaskIndex)==0 then
			if gDebug:is_debug() == 1 then--调试模式
				print("ck_global_set_task_finish not enable", nTaskIndex)
			end
			return 0
		end
		if _ck_check_task_getflag(nTaskIndex)~=1 then
			if gDebug:is_debug() == 1 then--调试模式
				print("ck_global_set_task_finish not get", nTaskIndex)
			end
			return 0
		end
		local tBitSet = _ck_get_task_bitset(nTaskIndex)
		local nGroupTaskIndex = tBitSet[1]
		local nBitFinish = tBitSet[3]
		local szTaskName = t[2]
		if type(nBitFinish)=="number" and nBitFinish > 0 then
			if CK_TASK_GROUP:GetTaskBit(nGroupTaskIndex, nBitFinish) ~= 1 then
    		--ck_BZBD_SetType(14, 15, 16);
    		CK_TASK_GROUP:SetTaskBit(nGroupTaskIndex, nBitFinish, 1);
    		Msg2Player(format("B筺  ho祅 th祅h CD Key nhi謒 v� [%s]", szTaskName));
    	end
    else
    	if gDebug:is_debug() == 1 then--调试模式
				print("ck_global_set_task_finish bit error", nTaskIndex, nGroupTaskIndex, nBitFinish, szTaskName)
			end
    	--error(format("CDKey: no need to set finish of task %d", %nTaskIndex))
		end
	--end);
end

function ck_task_group_talk1(nMainIndex)
	if ck_CheckCondition() ~= 1 then
		return 0;
	end
	
	local t = T_CK_TASK_GROUP_LIST[nMainIndex]
	local tSay = {}
	local szTitle = format("<color=gold>%s<color>%s, %s", t[1], "Nhi謒 v�", t[2][2])
	for i, tTaskGroup in T_CK_TASK_GROUP_LIST[nMainIndex][3] do
		tinsert(tSay, format("%s/#ck_task_group_talk2(%d, %d)", tTaskGroup[1], nMainIndex, i))
	end
	tinsert(tSay, format("%s/nothing", "T筰 h� ch� xem qua th玦"))
	Say(CK_NPC_NAME..szTitle, getn(tSay), tSay)
end

function ck_task_group_talk2(nMainIndex, nSubIndex)
	if ck_CheckCondition() ~= 1 then
		return 0;
	end
	
	local t = T_CK_TASK_GROUP_LIST[nMainIndex]
	local tt = t[3][nSubIndex]
	local nRandCnt = tt[2]
	local tTaskList = tt[3]
	if nRandCnt > 0 then --没有领取任务的话随机生成
		_ck_rand_task_list(tTaskList, nRandCnt)
	end
	
	local tSay = {}
	local szTitle = format("<color=gold>%s<color>%s", t[1], tt[1])
	for _, nTaskIndex in tTaskList do
		local szStatus = _ck_get_task_status(nTaskIndex)
		if _ck_check_task_getflag(nTaskIndex)==1 then
			local t = _ck_get_task_cfg(nTaskIndex)
			tinsert(tSay, format("%s(%s)/#ck_task_talk(%d)", t[2] , szStatus, nTaskIndex))
		end
	end
	if gDebug:is_debug() == 1 then--调试模式
		tinsert(tSay, format("%s/ck_DailyReset", "dailyclear"))
	end
	tinsert(tSay, format("%s/nothing", "T筰 h� ch� xem qua th玦"))
	Say(CK_NPC_NAME..szTitle, getn(tSay), tSay)
end

--任务对话
function ck_task_talk(nTaskIndex)
	if ck_CheckCondition() ~= 1 then
		return 0;
	end
	if _ck_check_task_enable(nTaskIndex)==0 then
		return 0
	end
	local t = _ck_get_task_cfg(nTaskIndex)
	local tSay = {}
	tinsert(tSay, format("\n%s/#_ck_task_award(%d)", "Ho祅 th祅h nhi謒 v�", nTaskIndex))
	if gDebug:is_debug() == 1 then--调试模式
		tinsert(tSay, format("\n%s/#ck_global_set_task_finish(%d)", "debugfinish", nTaskIndex))
	end
	tinsert(tSay, format("\n%s/nothing", "T筰 h� ch� xem qua th玦"))
	local szStatus = _ck_get_task_status(nTaskIndex)
	local Msg = format("T猲 nhi謒 v�: <color=gold>%s(%s)<color>\n襲 ki謓:\n  %s\nHng d蒼:\n  %s\nPh莕 thng:\n  EXP: %d,  n╪g ng: %d",
		t[2], szStatus, t[3][1], t[3][2], t[4][1], t[4][2])
	Say(CK_NPC_NAME..Msg, getn(tSay), tSay)
end

function _ck_get_task_bitset(nTaskIndex)
	local t = _ck_get_task_cfg(nTaskIndex)
	return t[5]
end

--获取随机任务
function _ck_rand_task_list(tTaskList, nCount)
	if nCount <= 0 then
		return
	end
	local nPass = 0
	local nMaxPass = 0
	local nGet = 0
	if ck_GetTitleType()==3 then--活跃者少一个任务
		nMaxPass = 1
	end
	
	for i = 1,getn(tTaskList) do --先检查有没有任务
		local nTaskIndex = tTaskList[i]
		if _ck_check_task_getflag(nTaskIndex) == 1 then --已经有任务就不用随机了
			return
		end
		if _ck_check_task_enable(nTaskIndex)==2 then
			if nPass<nMaxPass then
				nPass = nPass + 1
			else
				_ck_set_task_getflag(nTaskIndex)
				nGet = nGet + 1
			end
		end
	end
	
	if nGet>0 then
		return
	end
	
	local tGet = {}
	local nRand = min(nCount,getn(tTaskList))
	if gDebug:is_debug() == 1 then--调试模式
		print("_ck_rand_task_list", nCount, nRand)
	end
	for i=1,nRand do
		for j=1,5 do --最多冲突5次
			local nR = random(1,getn(tTaskList))
			if not tGet[nR] then
				local nTaskIndex = tTaskList[nR]
				tGet[nR] = 1
				if nPass<nMaxPass then
  				nPass = nPass + 1
  			else
  				_ck_set_task_getflag(nTaskIndex)
  				nGet = nGet + 1
  			end
				_ck_set_task_enable(nTaskIndex, 2)
				break
			end
		end
	end
end

function _ck_task_award(nTaskIndex)
	if ck_CheckCondition() ~= 1 then
		if gDebug:is_debug() == 1 then--调试模式
			print("condition false")
		end
		return 0;
	end
	if _ck_check_task_enable(nTaskIndex)==0 then
		if gDebug:is_debug() == 1 then--调试模式
			print(format("disable task %d", nTaskIndex))
		end
		return 0
	end
	if _ck_check_task_getflag(nTaskIndex)~=1 then
		Talk(1, "", "Kh玭g c� nhi謒 v� n祔")
		return 0
	end
	if _ck_check_task_awardflag(nTaskIndex)==1 then
		Talk(1, "", "B筺  nh薾 ph莕 thng nhi謒 v� n祔 r錳!")
		return 0
	end
	if _ck_check_task_finishflag(nTaskIndex)~=1 then
		Talk(1, "", "Nhi謒 v� n祔 v蒼 ch璦 ho祅 th祅h!")
		return 0
	end
	
	local t = _ck_get_task_cfg(nTaskIndex)
	if t[4][3] and (t[4][3]() ~= 1) then--额外的奖励函数
		return 0
	end
	
	local tBitSet = _ck_get_task_bitset(nTaskIndex)
	local nGroupTaskIndex = tBitSet[1]
	local nBitAward = tBitSet[4]
	CK_TASK_GROUP:SetTaskBit(nGroupTaskIndex, nBitAward, 1)
	local ext = t[4][4] or 0
	gf_ModifyExp(floor(t[4][1]*(1+ext)))
	ck_AddCkScore(floor(t[4][2]*(1+ext)))
	Msg2Player(format("Ch骳 m鮪g ho祅 th祅h nhi謒 v� [%s]", t[2]))
end

function _ck_get_task_cfg(nTaskIndex)
	local t = T_CK_TASK_LIST[nTaskIndex]
	if not t then
		error(format("CDKey: not find task %d", nTaskIndex))
	end
	return t
end

function _ck_get_task_status(nTaskIndex)
	local nType = 0
	local tType = {"Ch璦 ho祅 th祅h", "Ch璦 nh薾", "Ch璦 ho祅 th祅h", "C� th� giao", "Х ho祅 th祅h"}
	if _ck_check_task_enable(nTaskIndex)==0 then
		nType = 1
	elseif _ck_check_task_getflag(nTaskIndex)~=1 then
		nType = 2
	elseif _ck_check_task_finishflag(nTaskIndex)~=1 then
		nType = 3
	elseif _ck_check_task_awardflag(nTaskIndex)~=1 then
		nType = 4
	else
		nType = 5
	end
	return tType[nType] or ""
end

function _ck_set_task_getflag(nTaskIndex)--设置已接受标志
	if gDebug:is_debug() == 1 then--调试模式
		print("_ck_set_task_getflag", nTaskIndex)
	end
	if _ck_check_task_enable(nTaskIndex)==0 then--未开启任务不能接
		return 0
	end
	local tBitSet = _ck_get_task_bitset(nTaskIndex)
	local nGroupTaskIndex = tBitSet[1]
	local nBit = tBitSet[2]
	if nBit and nBit > 0 then
		return CK_TASK_GROUP:SetTaskBit(nGroupTaskIndex, nBit, 1)
	end
	return 1 --不需要接受
end

function _ck_check_task_getflag(nTaskIndex)--检查是否已接受任务
	if _ck_check_task_enable(nTaskIndex)==0 then--未开启任务不能接
		return 0
	end
	local tBitSet = _ck_get_task_bitset(nTaskIndex)
	local nGroupTaskIndex = tBitSet[1]
	local nBit = tBitSet[2]
	if nBit and nBit > 0 then
		local nRet = CK_TASK_GROUP:GetTaskBit(nGroupTaskIndex, nBit)
		if gDebug:is_debug() == 1 then--调试模式
			print("task_getflag", nTaskIndex, nGroupTaskIndex, nBit, nRet)
		end
		return nRet
	end
	return 1 --不需要接受
end
function _ck_check_task_enable(nTaskIndex)--检查是否开启
	if not nTaskIndex or not T_CK_TASK_LIST[nTaskIndex] then--任务未定义
		return 0
	end
	local t = _ck_get_task_cfg(nTaskIndex)
	return t[1]
end
function _ck_check_task_finishflag(nTaskIndex)--检查是否已完成
	if _ck_check_task_enable(nTaskIndex)==0 then--未开启任务不能接
		return 0
	end
	local tBitSet = _ck_get_task_bitset(nTaskIndex)
	local nGroupTaskIndex = tBitSet[1]
	local nBit = tBitSet[3]
	if nBit then
		if type(nBit) == "function" then
			return nBit()
    	elseif nBit and nBit > 0 then
    		return CK_TASK_GROUP:GetTaskBit(nGroupTaskIndex, nBit)
    	else
    		return 1
    	end
	end
	return 0
end
function _ck_check_task_awardflag(nTaskIndex)--检查是否已领取奖励
	if _ck_check_task_enable(nTaskIndex)==0 then--未开启任务不能接
		return 1
	end
	local tBitSet = _ck_get_task_bitset(nTaskIndex)
	local nGroupTaskIndex = tBitSet[1]
	local nBit = tBitSet[4]
	if nBit and nBit > 0 then
		return CK_TASK_GROUP:GetTaskBit(nGroupTaskIndex, nBit)
	end
	error(format("CDKey: award bit error %d", nTaskIndex))
	return 1 --奖励bit必须存在
end

function _ck_set_task_enable(nTaskIndex, nFlag)
	local t = _ck_get_task_cfg(nTaskIndex)
	t[1] = nFlag or 1
--	if gDebug:is_debug() == 1 then--调试模式
--		print("set_task_enable", nTaskIndex)
--	end
end
function _ck_auto_set_task_enable()
	for _,t1 in T_CK_TASK_GROUP_LIST do
		for _,t2 in t1[3] do
			for _,task_index in t2[3] do
				_ck_set_task_enable(task_index)
			end
		end
	end
	--_ck_set_task_enable(1303)
end
_ck_auto_set_task_enable();--auto execute to reset tasks enabled flags

--勇往直前系列任务
CK_TASK_FORWARD = {
	[1] = {"Ti猽 di謙 竎 Lang", 226},
	[2] = {"Ti猽 di謙 H� Ly", 227},
	[3] = {"Ti猽 di謙 Xi H醓 X輈h Gi竜 у", 228},
	[4] = {"Ti猽 di謙 Thng Vi猲", 229},
	[5] = {"Ti猽 di謙 Mi猽 L躰h Th� Ty", 230},
	[6] = {"Ti猽 di謙 Ba T� Y猽 C�", 231},
	[7] = {"Ti猽 di謙 Oa Qu鑓 o Kh竎h", 232},
	[8] = {"Ti猽 di謙 T� B� Ti猲 T�", 233},
}

--百战不殆杀怪任务
CK_TASK_BZ_KILL = {
	[1] = {"Quay V� Ch鑞 C�", 234},
	[2] = {"Quay V� Ch鑞 C�", 235},
	[3] = {"Quay V� Ch鑞 C�", 236},
	[4] = {"Quay V� Ch鑞 C�", 237},
	[5] = {"Quay V� Ch鑞 C�", 238},
}

--百战不殆副本任务(最多5个)
CK_TASK_BZ_RAID = {
	[1] = "Tham gia 1 l莕 秈 Th竔 H�",
	[2] = "Tham gia 1 l莕 秈 Lng S琻 ",
	[3] = "Tham gia 1 l莕 秈 V筺 Ki誱 Tr騨g",
	[4] = "Tham gia 1 l莕 秈 мa Huy襫 Cung",
	[5] = "Tham gia 1 l莕 秈 Th竔 Nh蕋 Th竝",
}

--百战不殆PVP任务
CK_TASK_BZ_PVP = {
	[1] = "Tham gia 3 l莕 thi u 1v1",
	[2] = "Tham gia 3 l莕 thi u 3v3",
	[3] = "Цnh b筰 1 ngi ch琲 phe ch c馻 th� l鵦 kh竎",	--"参与一次天门阵战场",
	[4] = "Tham gia 1 l莕 Th玭 l祅g chi課",
	[5] = "Tham gia 1 l莕 Th秓 c鑓 chi課",
	[6] = "Tham gia 1 l莕 Ph竜 i chi課",
	[7] = "Tham gia 1 l莕 Chi課 d辌h ch輓h Nh筺 M玭",	
	[8] = "Цnh b筰 1 ngi ch琲 phe ch c馻 th� l鵦 kh竎",	
}

--数值累计任务
CK_TASK_ZILON_ATRR = {
	[1] = {"Gia nh藀 giang h�", {0, 90, 2000, 2000, 10000}, {5000000, 100}},
	[2] = {"Ti觰 H鱱 S� Th祅h", {0, 99, 3000, 3000, 20000}, {8000000, 200}},
	[3] = {"S� xu蕋 mao l�", {1, 90, 6000, 6000, 40000}, {11000000, 300}},
	[4] = {"S� Xu蕋 Mao L�", {2, 90, 8000, 8000, 80000}, {14000000, 400}},
	[5] = {"Чi Lang Уo Sa", {3, 90, 10000, 10000, 120000}, {17000000, 500}},
	[6] = {"Ti觰 H鱱 Danh Kh�", {4, 90, 12000, 12000, 180000}, {20000000, 600}},
	[7] = {"Tr竛g Ch� L╪g V﹏", {5, 90, 15000, 15000, 250000}, {23000000, 1200}},
	[8] = {"Kh� tr竛g h� s琻", {6, 90, 16000, 16000, 280000}, {32000000, 1600}},
}
CK_TASK_ZILON_ATRR_BEGIN = 1

--天骄令消费任务
CK_TASK_IB_COST = {
	--[1] = {"财源滚滚", 5,   {12500000, 150}},
	--[2] = {"金玉满堂", 25,   {25000000, 300}},
	[1] = {"Phong Y T骳 Th鵦", 5,   {12500000, 150}},
	[2] = {"Uy Phong B竧 Di謓", 25,  {25000000, 300}},
	[3] = {"Kinh t� gia nh", 50,  {37500000, 450}},	
	[4] = {"Чi Ph� Чi Qu�", 100, {50000000, 900}},
	[5] = {"T礽 Чi Kh� Th�", 200, {62500000, 1100}},
	[6] = {"Gia T礽 V筺 Qu竛", 300, {75000000, 1300}},
	[7] = {"Gi祏 c� thi猲 h�", 400, {100000000, 1500}},
	[8] = {"Ph� Kh� мch Qu鑓", 500, {125000000, 1800}},
}
CK_TASK_IB_COST_BEGIN = getn(CK_TASK_ZILON_ATRR)+1


CK_JS_GUAIYI = {
	{"竜 Cho祅g Ng� H祅h Kim Ch�", {0, 152, 4, 1, 4}},
	{"竜 Cho祅g Ng� H祅h M閏 Ch�", {0, 152, 5, 1, 4}},
	{"竜 Cho祅g Ng� H祅h Th駓 Ch�", {0, 152, 6, 1, 4}},
	{"竜 Cho祅g Ng� H祅h H醓 Ch�", {0, 152, 7, 1, 4}},
	{"竜 Cho祅g Ng� H祅h Th� Ch�", {0, 152, 8, 1, 4}},
	{"竜 Cho祅g Ng� H祅h  Ch�", {0, 152, 9, 1, 4}},
}
CK_JS_HUIZHANG = { 
	{"Huy Chng Kim Ch� ng� h祅h", {0, 153, 4, 1, 4}},
	{"Huy Chng M閏 Ch� ng� h祅h", {0, 153, 5, 1, 4}},
	{"Huy Chng Th駓 Ch� ng� h祅h", {0, 153, 6, 1, 4}},
	{"Huy Chng H醓 Ch� ng� h祅h", {0, 153, 7, 1, 4}},
	{"Huy Chng Th� Ch� ng� h祅h", {0, 153, 8, 1, 4}},
	{"Huy Chng  Ch� ng� h祅h", {0, 153, 9, 1, 4}},
}
CK_JS_SHOE = {
	{"Chi課 H礽 Kim Ch� ng� h祅h", {0, 154, 4, 1, 4}},
	{"Chi課 H礽 M閏 Ch� ng� h祅h", {0, 154, 5, 1, 4}},
	{"Chi課 H礽 Th駓 Ch� ng� h祅h", {0, 154, 6, 1, 4}},
	{"Chi課 H礽 H醓 Ch� ng� h祅h", {0, 154, 7, 1, 4}},
	{"Chi課 H礽 Th� Ch� ng� h祅h", {0, 154, 8, 1, 4}},
	{"Chi課 H礽  Ch� ng� h祅h", {0, 154, 9, 1, 4}},
}

CK_YAOYANG_JIEZI_1 = {
	{"Di謚 Dng-� L﹏ B秓 Gi韎", {0, 102, 3176, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"Di謚 Dng-T� Giao Ng鋍 B閕", {0, 102, 3178, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"Di謚 Dng-V﹏ H� L謓h", {0, 102, 3180, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"Di謚 Dng-X輈h Tc Ho祅", {0, 102, 3182, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"Di謚 Dng-B輈h Quy Li猲", {0, 102, 3184, 1, 4, -1, -1, -1, -1, -1, -1}},
}

CK_YAOYANG_JIEZI_2 = {
	{"Di謚 Dng-� L﹏ B秓 Gi韎", {0, 102, 3185, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"Di謚 Dng-T� Giao Ng鋍 B閕", {0, 102, 3186, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"Di謚 Dng-V﹏ H� L謓h", {0, 102, 3187, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"Di謚 Dng-X輈h Tc Ho祅", {0, 102, 3188, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"Di謚 Dng-B輈h Quy Li猲", {0, 102, 3189, 1, 4, -1, -1, -1, -1, -1, -1}},
}

CK_4_LEVEL_YUNLING = {
	{"H-Li謙 Nham-Lv4", {0, 148, 53, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Ph� Kh玭g-Lv4", {0, 148, 54, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-T髖 Ki誱-Lv4", {0, 148, 55, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-T藅 Phong-Lv4", {0, 148, 56, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-T蕁 V�-Lv4", {0, 148, 57, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-g T藀-Lv4", {0, 148, 58, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Linh T﹎-Lv4", {0, 148, 59, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Th莕 L鵦-Lv4", {0, 148, 60, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Ng璶g Th莕-Lv4", {0, 148, 61, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-V� Gian-Lv4", {0, 148, 62, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-V� C鵦-Lv4", {0, 148, 63, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Cu錸g Nh蒼-Lv4", {0, 148, 64, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-L╪g Nhu�-Lv4", {0, 148, 65, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Linh Vi猲-Lv4", {0, 148, 66, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-H秈 V薾-Lv4", {0, 148, 67, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-H秈 T﹎-Lv4", {0, 148, 68, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Li謙 Nham-Lv4", {0, 149, 53, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Ph� Kh玭g-Lv4", {0, 149, 54, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-T髖 Ki誱-Lv4", {0, 149, 55, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-T藅 Phong-Lv4", {0, 149, 56, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-T蕁 V�-Lv4", {0, 149, 57, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Qu竛 Th筩h-Lv4", {0, 149, 58, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-N� Ng﹎-Lv4", {0, 149, 59, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Xuy猲 V﹏-Lv4", {0, 149, 60, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Th莕 L鵦-Lv4", {0, 149, 61, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Ng璶g Th莕-Lv4", {0, 149, 62, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-V� Gian-Lv4", {0, 149, 63, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-V� C鵦-Lv4", {0, 149, 64, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Cu錸g Nh蒼-Lv4", {0, 149, 65, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-L╪g Nhu�-Lv4", {0, 149, 66, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Linh Vi猲-Lv4", {0, 149, 67, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-H秈 V薾-Lv4", {0, 149, 68, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-H秈 T﹎-Lv4", {0, 149, 69, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Li謙 Nham-Lv4", {0, 150, 53, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Ph� Kh玭g-Lv4", {0, 150, 54, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-T髖 Ki誱-Lv4", {0, 150, 55, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-T藅 Phong-Lv4", {0, 150, 56, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-T蕁 V�-Lv4", {0, 150, 57, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-V� Lng-Lv4", {0, 150, 58, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-M鬰 Minh-Lv4", {0, 150, 59, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Th莕 L鵦-Lv4", {0, 150, 60, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Ng璶g Th莕-Lv4", {0, 150, 61, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-V� Gian-Lv4", {0, 150, 62, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-V� C鵦-Lv4", {0, 150, 63, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Cu錸g Nh蒼-Lv4", {0, 150, 64, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-L╪g Nhu�-Lv4", {0, 150, 65, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Linh Vi猲-Lv4", {0, 150, 66, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-H秈 V薾-Lv4", {0, 150, 67, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-H秈 T﹎-Lv4", {0, 150, 68, 1, 4, -1, -1, -1, -1, -1, -1}},
}

CK_5_LEVEL_YUNLING = {
	{"H-Li謙 Nham-Lv5", {0, 148, 69, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Ph� Kh玭g-Lv5", {0, 148, 70, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-T髖 Ki誱-Lv5", {0, 148, 71, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-T藅 Phong-Lv5", {0, 148, 72, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-T蕁 V�-Lv5", {0, 148, 73, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-g T藀-Lv5", {0, 148, 74, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Linh T﹎-Lv5", {0, 148, 75, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Th莕 L鵦-Lv5", {0, 148, 76, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Ng璶g Th莕-Lv5", {0, 148, 77, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-V� Gian-Lv5", {0, 148, 78, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-V� C鵦-Lv5", {0, 148, 79, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Cu錸g Nh蒼-Lv5", {0, 148, 80, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-L╪g Nhu�-Lv5", {0, 148, 81, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-Linh Vi猲-Lv5", {0, 148, 82, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-H秈 V薾-Lv5", {0, 148, 83, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"H-H秈 T﹎-Lv5", {0, 148, 84, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Li謙 Nham-Lv5", {0, 149, 70, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Ph� Kh玭g-Lv5", {0, 149, 71, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-T髖 Ki誱-Lv5", {0, 149, 72, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-T藅 Phong-Lv5", {0, 149, 73, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-T蕁 V�-Lv5", {0, 149, 74, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Qu竛 Th筩h-Lv5", {0, 149, 75, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-N� Ng﹎-Lv5", {0, 149, 76, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Xuy猲 V﹏-Lv5", {0, 149, 77, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Th莕 L鵦-Lv5", {0, 149, 78, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Ng璶g Th莕-Lv5", {0, 149, 79, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-V� Gian-Lv5", {0, 149, 80, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-V� C鵦-Lv5", {0, 149, 81, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Cu錸g Nh蒼-Lv5", {0, 149, 82, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-L╪g Nhu�-Lv5", {0, 149, 83, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-Linh Vi猲-Lv5", {0, 149, 84, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-H秈 V薾-Lv5", {0, 149, 85, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"C-H秈 T﹎-Lv5", {0, 149, 86, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Li謙 Nham-Lv5", {0, 150, 69, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Ph� Kh玭g-Lv5", {0, 150, 70, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-T髖 Ki誱-Lv5", {0, 150, 71, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-T藅 Phong-Lv5", {0, 150, 72, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-T蕁 V�-Lv5", {0, 150, 73, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-V� Lng-Lv5", {0, 150, 74, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-M鬰 Minh-Lv5", {0, 150, 75, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Th莕 L鵦-Lv5", {0, 150, 76, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Ng璶g Th莕-Lv5", {0, 150, 77, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-V� Gian-Lv5", {0, 150, 78, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-V� C鵦-Lv5", {0, 150, 79, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Cu錸g Nh蒼-Lv5", {0, 150, 80, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-L╪g Nhu�-Lv5", {0, 150, 81, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Linh Vi猲-Lv5", {0, 150, 82, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-H秈 V薾-Lv5", {0, 150, 83, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-H秈 T﹎-Lv5", {0, 150, 84, 1, 4, -1, -1, -1, -1, -1, -1}},
}

CK_6_LEVEL_YUNLING = {
	{"T-Li謙 Nham-Lv6", {0, 150,	85, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Ph� Kh玭g-Lv6", {0, 150,	86, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-T髖 Ki誱-Lv6", {0, 150,	87, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-T藅 Phong-Lv6", {0, 150,	88, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-T蕁 V�-Lv6", {0, 150,	89, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-V� Lng-Lv6", {0, 150,	90, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-M鬰 Minh-Lv6", {0, 150,	91, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Th莕 L鵦-Lv6", {0, 150,	92, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Ng璶g Th莕-Lv6", {0, 150,	93, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-V� Gian-Lv6", {0, 150,	94, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-V� C鵦-Lv6", {0, 150,	95, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Cu錸g Nh蒼-Lv6", {0, 150,	96, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-L╪g Nhu�-Lv6", {0, 150,	97, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-Linh Vi猲-Lv6", {0, 150,	98, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-H秈 V薾-Lv6", {0, 150,	99, 1, 4, -1, -1, -1, -1, -1, -1}},
	{"T-H秈 T﹎-Lv6", {0, 150,100, 1, 4, -1, -1, -1, -1, -1, -1}},
}

function ck_GiveRandGem456()
	--Faction Cloth 9
	local VET_RandGem456 = {
        {1,20, "Huy誸Tr輈hTh筩h Lv4", {2,22,104,1},nil,nil,nil,nil},
        {1,20, "Nguy謙B筩hTh筩h Lv4", {2,22,204,1},nil,nil,nil,nil},
        {1,20, "H� Ph竎h Th筩h C蕄 4", {2,22,304,1},nil,nil,nil,nil},
        {1,20, "H綾 Di謚 Th筩h C蕄 4", {2,22,404,1},nil,nil,nil,nil},
        {1,4, "Huy誸Tr輈hTh筩h Lv5", {2,22,105,1},nil,nil,nil,1},
        {1,4, "Nguy謙B筩hTh筩h Lv5", {2,22,205,1},nil,nil,nil,1},
        {1,4, "H� Ph竎h Th筩h C蕄 5", {2,22,305,1},nil,nil,nil,1},
        {1,4, "H綾 Di謚 Th筩h C蕄 5", {2,22,405,1},nil,nil,nil,1},
        {1,1, "Huy誸Tr輈hTh筩h Lv6", {2,22,106,1},nil,nil,nil,1},
        {1,1, "Nguy謙B筩hTh筩h Lv6", {2,22,206,1},nil,nil,nil,1},
        {1,1, "H� Ph竎h Th筩h C蕄 6", {2,22,306,1},nil,nil,nil,1},
        {1,1, "H綾 Di謚 Th筩h C蕄 6", {2,22,406,1},nil,nil,nil,1},
	} 
	gf_EventGiveRandAward(VET_RandGem456,100,1, "CDKEY", "CDKEY")
end

function _award_jingjie(_nLevel, nExp)
	local nLevel = MeridianGetLevel()
	if nLevel < _nLevel then
		for i = nLevel + 1, _nLevel do
			MeridianUpdateLevel()
		end
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	else
		gf_Modify("Exp", nExp);
	end
end

function award_wuzhe()
	return _award_jingjie(1, 10000000)
end
function award_wujiang()
	return _award_jingjie(2, 30000000)
end
function award_wuwang()
	return _award_jingjie(3, 40000000)
end
function award_wuzun()
	return _award_jingjie(4, 200000000)
end
function award_5zhuan90()
	if gf_GetPlayerRebornCount() < 5 then
		gf_SetTaskByte(1538, 1, 5); 			--5转
		gf_SetTaskByte(1538, 2, random(1,4)); 			--huong cs
		SetLevel(90, 1);								  --90级
		Msg2Player("Th╪g c蕄 chuy觧 sinh th祅h c玭g!");
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
	else
		gf_Modify("Exp", 20000000);
	end
end
function award_6zhuan90()
	if gf_GetPlayerRebornCount() < 6 then
		gf_SetTaskByte(1538, 1, 5); 			--1转
		PlayerReborn(1,random(1,4))
		SetLevel(90, 1);								  --90级
		Msg2Player("Th╪g c蕄 chuy觧 sinh th祅h c玭g!");
		AddTitle(61,05)
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
	else
		gf_Modify("Exp", 50000000);
	end
end
	
function award_7zhuan73()
	if gf_GetTransLevel() >= 698 then
		if gf_GetPlayerRebornCount() < 7 then
			gf_SetTaskByte(1538, 1, 5); 			--1转
			PlayerReborn(2,random(1,4))
			SetLevel(73, 1);						--73级
			Msg2Player("Th╪g c蕄 chuy觧 sinh th祅h c玭g!");
			RemoveTitle(61,05)
			AddTitle(61,06)
			PlaySound("\\sound\\sound_i016.wav");
			SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
		else
			gf_Modify("Exp", 500000000);
		end
	end
end

function award_yunling4()
	local nRandIndex = random(getn(CK_4_LEVEL_YUNLING));
	gf_AddItemEx2(CK_4_LEVEL_YUNLING[nRandIndex][2], CK_4_LEVEL_YUNLING[nRandIndex][1], "CDKEY", "CDKEY", 0, 1)
end
function award_yunling5()
	local nRandIndex = random(getn(CK_5_LEVEL_YUNLING));
	gf_AddItemEx2(CK_5_LEVEL_YUNLING[nRandIndex][2], CK_5_LEVEL_YUNLING[nRandIndex][1], "CDKEY", "CDKEY", 0, 1)
end
T_ZHANKUANG = {
	tHead = {
        { "Chi課 Cu錸g Thi猲 мa M筼", {0, 103, 30143, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 2},
        { "Chi課 Cu錸g Thi猲 мa M筼", {0, 103, 30144, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 2},
        { "Chi課 Cu錸g Thi猲 T玭 M筼", {0, 103, 30145, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 4},
        { "Chi課 Cu錸g Thi猲 T玭 M筼", {0, 103, 30146, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 4},
        { "Chi課 Cu錸g Ph� T� M筼", {0, 103, 30147, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 3},
        { "Chi課 Cu錸g Ph� T� M筼", {0, 103, 30148, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 3},
        { "Chi課 Cu錸g Tuy謙 M謓h Qu竛", {0, 103, 30149, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 6},
        { "Chi課 Cu錸g Tuy謙 M謓h Qu竛", {0, 103, 30150, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 6},
        { "Chi課 Cu錸g Tuy謙 M謓h Qu竛", {0, 103, 30151, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 6},
        { "Chi課 Cu錸g Tuy謙 M謓h Qu竛", {0, 103, 30152, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 6},
        { "Chi課 Cu錸g B� T竧 Tr﹎", {0, 103, 30153, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 8},
        { "Chi課 Cu錸g B� T竧 Tr﹎", {0, 103, 30154, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 8},
        { "Chi課 Cu錸g L璾 Th駓 Tr﹎", {0, 103, 30155, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 9},
        { "Chi課 Cu錸g L璾 Th駓 Tr﹎", {0, 103, 30156, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 9},
        { "Chi課 Cu錸g Th莕 Du C﹏", {0, 103, 30157, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 11},
        { "Chi課 Cu錸g Th莕 Du C﹏", {0, 103, 30158, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 11},
        { "Chi課 Cu錸g Th莕 Du C﹏", {0, 103, 30159, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 11},
        { "Chi課 Cu錸g Th莕 Du C﹏", {0, 103, 30160, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 11},
        { "Chi課 Cu錸g Ti猽 Dao C﹏", {0, 103, 30161, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 12},
        { "Chi課 Cu錸g Ti猽 Dao C﹏", {0, 103, 30162, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 12},
        { "Chi課 Cu錸g Ti猽 Dao C﹏", {0, 103, 30163, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 12},
        { "Chi課 Cu錸g Ti猽 Dao C﹏", {0, 103, 30164, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 12},
        { "Chi課 Cu錸g V� Vi Qu竛", {0, 103, 30165, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 14},
        { "Chi課 Cu錸g V� Vi Qu竛", {0, 103, 30166, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 14},
        { "Chi課 Cu錸g V� Vi Qu竛", {0, 103, 30167, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 14},
        { "Chi課 Cu錸g V� Vi Qu竛", {0, 103, 30168, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 14},
        { "Chi課 Cu錸g C祅 Kh玭 Qu竛", {0, 103, 30169, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 15},
        { "Chi課 Cu錸g C祅 Kh玭 Qu竛", {0, 103, 30170, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 15},
        { "Chi課 Cu錸g C祅 Kh玭 Qu竛", {0, 103, 30171, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 15},
        { "Chi課 Cu錸g C祅 Kh玭 Qu竛", {0, 103, 30172, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 15},
        { "Chi課 Cu錸g Thi猲 Tinh  Kh玦", {0, 103, 30173, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 17},
        { "Chi課 Cu錸g Thi猲 Tinh  Kh玦", {0, 103, 30174, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 17},
        { "Chi課 Cu錸g Thi猲 Tinh  Kh玦", {0, 103, 30175, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 17},
        { "Chi課 Cu錸g Thi猲 Tinh  Kh玦", {0, 103, 30176, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 17},
        { "Chi課 Cu錸g Xuy猲 V﹏ Kh玦", {0, 103, 30177, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 18},
        { "Chi課 Cu錸g Xuy猲 V﹏ Kh玦", {0, 103, 30178, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 18},
        { "Chi課 Cu錸g Xuy猲 V﹏ Kh玦", {0, 103, 30179, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 18},
        { "Chi課 Cu錸g Xuy猲 V﹏ Kh玦", {0, 103, 30180, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 18},
        { "Chi課 Cu錸g Minh T玭 C﹏", {0, 103, 30181, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 20},
        { "Chi課 Cu錸g Minh T玭 C﹏", {0, 103, 30182, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 20},
        { "Chi課 Cu錸g Minh T玭 C﹏", {0, 103, 30183, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 20},
        { "Chi課 Cu錸g Minh T玭 C﹏", {0, 103, 30184, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 20},
        { "Chi課 Cu錸g C� T﹎ C﹏", {0, 103, 30185, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 21},
        { "Chi課 Cu錸g C� T﹎ C﹏", {0, 103, 30186, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 21},
        { "Chi課 Cu錸g C� T﹎ C﹏", {0, 103, 30187, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 21},
        { "Chi課 Cu錸g C� T﹎ C﹏", {0, 103, 30188, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 21},
        { "Chi課 Cu錸g Phong L玦 Qu竛", {0, 103, 30189, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 23},
        { "Chi課 Cu錸g Phong L玦 Qu竛", {0, 103, 30190, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 23},
        { "Chi課 Cu錸g Чi мa C﹏", {0, 103, 30191, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 25},
        { "Chi課 Cu錸g Чi мa C﹏", {0, 103, 30192, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 25},
        { "Chi課 Cu錸g Чi мa C﹏", {0, 103, 30193, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 25},
        { "Chi課 Cu錸g Чi мa C﹏", {0, 103, 30194, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 25},
        { "Chi課 Cu錸g T髖 M閚g Qu竛", {0, 103, 30195, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 26},
        { "Chi課 Cu錸g T髖 M閚g Qu竛", {0, 103, 30196, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 26},
        { "Chi課 Cu錸g T髖 M閚g Qu竛", {0, 103, 30197, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 26},
        { "Chi課 Cu錸g T髖 M閚g Qu竛", {0, 103, 30198, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 26},
        { "Chi課 Cu錸g Ma V鵦  Qu竛", {0, 103, 30199, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 27},
        { "Chi課 Cu錸g Ma V鵦  Qu竛", {0, 103, 30200, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 27},
        { "Chi課 Cu錸g Ma V鵦  Qu竛", {0, 103, 30201, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 27},
        { "Chi課 Cu錸g Ma V鵦  Qu竛", {0, 103, 30202, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 27},
        { "Chi課 Cu錸g Th竛h N�  Tr﹎", {0, 103, 30203, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 29},
        { "Chi課 Cu錸g Th竛h N�  Tr﹎", {0, 103, 30204, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 29},
        { "Chi課 Cu錸g Th竛h Linh Tr﹎", {0, 103, 30205, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 30},
        { "Chi課 Cu錸g Th竛h Linh Tr﹎", {0, 103, 30206, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 30},
	},
	tCloth = {
        { "Chi課 Cu錸g Thi猲 мa B祇", {0, 100, 30143, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 2},
        { "Chi課 Cu錸g Thi猲 мa B祇", {0, 100, 30144, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 2},
        { "Chi課 Cu錸g Thi猲 T玭 B祇", {0, 100, 30145, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 4},
        { "Chi課 Cu錸g Thi猲 T玭 B祇", {0, 100, 30146, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 4},
        { "Chi課 Cu錸g Ph� T� B祇", {0, 100, 30147, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 3},
        { "Chi課 Cu錸g Ph� T� B祇", {0, 100, 30148, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 3},
        { "Chi課 Cu錸g Tuy謙 M謓h Y", {0, 100, 30149, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 6},
        { "Chi課 Cu錸g Tuy謙 M謓h Y", {0, 100, 30150, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 6},
        { "Chi課 Cu錸g Tuy謙 M謓h Y", {0, 100, 30151, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 6},
        { "Chi課 Cu錸g Tuy謙 M謓h Y", {0, 100, 30152, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 6},
        { "Chi課 Cu錸g B� T竧 Y", {0, 100, 30153, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 8},
        { "Chi課 Cu錸g B� T竧 Y", {0, 100, 30154, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 8},
        { "Chi課 Cu錸g L璾 Th駓Y", {0, 100, 30155, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 9},
        { "Chi課 Cu錸g L璾 Th駓Y", {0, 100, 30156, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 9},
        { "Chi課 Cu錸g Th莕 Du Y", {0, 100, 30157, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 11},
        { "Chi課 Cu錸g Th莕 Du Y", {0, 100, 30158, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 11},
        { "Chi課 Cu錸g Th莕 Du Y", {0, 100, 30159, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 11},
        { "Chi課 Cu錸g Th莕 Du Y", {0, 100, 30160, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 11},
        { "Chi課 Cu錸g Ti猽 Dao Y", {0, 100, 30161, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 12},
        { "Chi課 Cu錸g Ti猽 Dao Y", {0, 100, 30162, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 12},
        { "Chi課 Cu錸g Ti猽 Dao Y", {0, 100, 30163, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 12},
        { "Chi課 Cu錸g Ti猽 Dao Y", {0, 100, 30164, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 12},
        { "Chi課 Cu錸g V� Vi B祇", {0, 100, 30165, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 14},
        { "Chi課 Cu錸g V� Vi B祇", {0, 100, 30166, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 14},
        { "Chi課 Cu錸g V� Vi B祇", {0, 100, 30167, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 14},
        { "Chi課 Cu錸g V� Vi B祇", {0, 100, 30168, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 14},
        { "Chi課 Cu錸g C祅 Kh玭 B祇", {0, 100, 30169, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 15},
        { "Chi課 Cu錸g C祅 Kh玭 B祇", {0, 100, 30170, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 15},
        { "Chi課 Cu錸g C祅 Kh玭 B祇", {0, 100, 30171, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 15},
        { "Chi課 Cu錸g C祅 Kh玭 B祇", {0, 100, 30172, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 15},
        { "Chi課 Cu錸g Thi猲 Tinh  Gi竝", {0, 100, 30173, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 17},
        { "Chi課 Cu錸g Thi猲 Tinh  Gi竝", {0, 100, 30174, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 17},
        { "Chi課 Cu錸g Thi猲 Tinh  Gi竝", {0, 100, 30175, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 17},
        { "Chi課 Cu錸g Thi猲 Tinh  Gi竝", {0, 100, 30176, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 17},
        { "Chi課 Cu錸g Xuy猲 V﹏ Gi竝", {0, 100, 30177, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 18},
        { "Chi課 Cu錸g Xuy猲 V﹏ Gi竝", {0, 100, 30178, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 18},
        { "Chi課 Cu錸g Xuy猲 V﹏ Gi竝", {0, 100, 30179, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 18},
        { "Chi課 Cu錸g Xuy猲 V﹏ Gi竝", {0, 100, 30180, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 18},
        { "Chi課 Cu錸g Minh T玭 Y", {0, 100, 30181, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 20},
        { "Chi課 Cu錸g Minh T玭 Y", {0, 100, 30182, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 20},
        { "Chi課 Cu錸g Minh T玭 Y", {0, 100, 30183, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 20},
        { "Chi課 Cu錸g Minh T玭 Y", {0, 100, 30184, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 20},
        { "Chi課 Cu錸g C� T﹎ Y", {0, 100, 30185, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 21},
        { "Chi課 Cu錸g C� T﹎ Y", {0, 100, 30186, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 21},
        { "Chi課 Cu錸g C� T﹎ Y", {0, 100, 30187, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 21},
        { "Chi課 Cu錸g C� T﹎ Y", {0, 100, 30188, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 21},
        { "Chi課 Cu錸g Phong L玦 B祇", {0, 100, 30189, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 23},
        { "Chi課 Cu錸g Phong L玦 B祇", {0, 100, 30190, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 23},
        { "Chi課 Cu錸g Чi мa Y", {0, 100, 30191, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 25},
        { "Chi課 Cu錸g Чi мa Y", {0, 100, 30192, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 25},
        { "Chi課 Cu錸g Чi мa Y", {0, 100, 30193, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 25},
        { "Chi課 Cu錸g Чi мa Y", {0, 100, 30194, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 25},
        { "Chi課 Cu錸g T髖 M閚g B祇", {0, 100, 30195, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 26},
        { "Chi課 Cu錸g T髖 M閚g B祇", {0, 100, 30196, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 26},
        { "Chi課 Cu錸g T髖 M閚g B祇", {0, 100, 30197, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 26},
        { "Chi課 Cu錸g T髖 M閚g B祇", {0, 100, 30198, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 26},
        { "Chi課 Cu錸g Ma V鵦  B祇", {0, 100, 30199, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 27},
        { "Chi課 Cu錸g Ma V鵦  B祇", {0, 100, 30200, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 27},
        { "Chi課 Cu錸g Ma V鵦  B祇", {0, 100, 30201, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 27},
        { "Chi課 Cu錸g Ma V鵦  B祇", {0, 100, 30202, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 27},
        { "Chi課 Cu錸g Th竛h N�  Y", {0, 100, 30203, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 29},
        { "Chi課 Cu錸g Th竛h N�  Y", {0, 100, 30204, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 29},
        { "Chi課 Cu錸g Th竛h Linh Y", {0, 100, 30205, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 30},
        { "Chi課 Cu錸g Th竛h Linh Y", {0, 100, 30206, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 30},
	},
	tShoe = {
        { "Chi課 Cu錸g Thi猲 мa Trang", {0, 101, 30143, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 2},
        { "Chi課 Cu錸g Thi猲 мa Trang", {0, 101, 30144, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 2},
        { "Chi課 Cu錸g Thi猲 T玭 Trang", {0, 101, 30145, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 4},
        { "Chi課 Cu錸g Thi猲 T玭 Trang", {0, 101, 30146, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 4},
        { "Chi課 Cu錸g Ph� T� Trang", {0, 101, 30147, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 3},
        { "Chi課 Cu錸g Ph� T� Trang", {0, 101, 30148, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 3},
        { "Chi課 Cu錸g Tuy謙 M謓h Trang", {0, 101, 30149, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 6},
        { "Chi課 Cu錸g Tuy謙 M謓h Trang", {0, 101, 30150, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 6},
        { "Chi課 Cu錸g Tuy謙 M謓h Trang", {0, 101, 30151, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 6},
        { "Chi課 Cu錸g Tuy謙 M謓h Trang", {0, 101, 30152, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 6},
        { "Chi課 Cu錸g B� T竧 Kh�", {0, 101, 30153, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 8},
        { "Chi課 Cu錸g B� T竧 Kh�", {0, 101, 30154, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 8},
        { "Chi課 Cu錸g L璾 Th駓Kh�", {0, 101, 30155, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 9},
        { "Chi課 Cu錸g L璾 Th駓Kh�", {0, 101, 30156, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 9},
        { "Chi課 Cu錸g Th莕 Du Trang", {0, 101, 30157, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 11},
        { "Chi課 Cu錸g Th莕 Du Trang", {0, 101, 30158, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 11},
        { "Chi課 Cu錸g Th莕 Du Trang", {0, 101, 30159, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 11},
        { "Chi課 Cu錸g Th莕 Du Trang", {0, 101, 30160, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 11},
        { "Chi課 Cu錸g Ti猽 Dao Trang", {0, 101, 30161, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 12},
        { "Chi課 Cu錸g Ti猽 Dao Trang", {0, 101, 30162, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 12},
        { "Chi課 Cu錸g Ti猽 Dao Trang", {0, 101, 30163, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 12},
        { "Chi課 Cu錸g Ti猽 Dao Trang", {0, 101, 30164, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 12},
        { "Chi課 Cu錸g V� Vi Trang", {0, 101, 30165, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 14},
        { "Chi課 Cu錸g V� Vi Trang", {0, 101, 30166, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 14},
        { "Chi課 Cu錸g V� Vi Trang", {0, 101, 30167, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 14},
        { "Chi課 Cu錸g V� Vi Trang", {0, 101, 30168, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 14},
        { "Chi課 Cu錸g C祅 Kh玭 Trang", {0, 101, 30169, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 15},
        { "Chi課 Cu錸g C祅 Kh玭 Trang", {0, 101, 30170, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 15},
        { "Chi課 Cu錸g C祅 Kh玭 Trang", {0, 101, 30171, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 15},
        { "Chi課 Cu錸g C祅 Kh玭 Trang", {0, 101, 30172, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 15},
        { "Chi課 Cu錸g Thi猲 Tinh  Trang", {0, 101, 30173, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 17},
        { "Chi課 Cu錸g Thi猲 Tinh  Trang", {0, 101, 30174, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 17},
        { "Chi課 Cu錸g Thi猲 Tinh  Trang", {0, 101, 30175, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 17},
        { "Chi課 Cu錸g Thi猲 Tinh  Trang", {0, 101, 30176, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 17},
        { "Chi課 Cu錸g Xuy猲 V﹏ Trang", {0, 101, 30177, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 18},
        { "Chi課 Cu錸g Xuy猲 V﹏ Trang", {0, 101, 30178, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 18},
        { "Chi課 Cu錸g Xuy猲 V﹏ Trang", {0, 101, 30179, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 18},
        { "Chi課 Cu錸g Xuy猲 V﹏ Trang", {0, 101, 30180, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 18},
        { "Chi課 Cu錸g Minh T玭 Trang", {0, 101, 30181, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 20},
        { "Chi課 Cu錸g Minh T玭 Trang", {0, 101, 30182, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 20},
        { "Chi課 Cu錸g Minh T玭 Trang", {0, 101, 30183, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 20},
        { "Chi課 Cu錸g Minh T玭 Trang", {0, 101, 30184, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 20},
        { "Chi課 Cu錸g C� T﹎ Trang", {0, 101, 30185, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 21},
        { "Chi課 Cu錸g C� T﹎ Trang", {0, 101, 30186, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 21},
        { "Chi課 Cu錸g C� T﹎ Trang", {0, 101, 30187, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 21},
        { "Chi課 Cu錸g C� T﹎ Trang", {0, 101, 30188, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 21},
        { "Chi課 Cu錸g Phong L玦 Trang", {0, 101, 30189, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 23},
        { "Chi課 Cu錸g Phong L玦 Trang", {0, 101, 30190, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 23},
        { "Chi課 Cu錸g Чi мa Trang", {0, 101, 30191, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 25},
        { "Chi課 Cu錸g Чi мa Trang", {0, 101, 30192, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 25},
        { "Chi課 Cu錸g Чi мa Trang", {0, 101, 30193, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 25},
        { "Chi課 Cu錸g Чi мa Trang", {0, 101, 30194, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 25},
        { "Chi課 Cu錸g T髖 M閚g Trang", {0, 101, 30195, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 26},
        { "Chi課 Cu錸g T髖 M閚g Trang", {0, 101, 30196, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 26},
        { "Chi課 Cu錸g T髖 M閚g Trang", {0, 101, 30197, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 26},
        { "Chi課 Cu錸g T髖 M閚g Trang", {0, 101, 30198, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 26},
        { "Chi課 Cu錸g Ma V鵦  Trang", {0, 101, 30199, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 27},
        { "Chi課 Cu錸g Ma V鵦  Trang", {0, 101, 30200, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 27},
        { "Chi課 Cu錸g Ma V鵦  Trang", {0, 101, 30201, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 27},
        { "Chi課 Cu錸g Ma V鵦  Trang", {0, 101, 30202, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 27},
        { "Chi課 Cu錸g Th竛h N�  Kh�", {0, 101, 30203, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 29},
        { "Chi課 Cu錸g Th竛h N�  Kh�", {0, 101, 30204, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 29},
        { "Chi課 Cu錸g Th竛h Linh Kh�", {0, 101, 30205, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 30},
        { "Chi課 Cu錸g Th竛h Linh Kh�", {0, 101, 30206, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 30},
	},
	tWeapon = {
        { "Chi課 Cu錸g B╪g Thi猲 o", {0, 3, 30143, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 2},
        { "Chi課 Cu錸g B╪g Thi猲 o", {0, 3, 30144, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 2},
        { "Chi課 Cu錸g Thi襫 мnh Trng", {0, 8, 30147, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 3},
        { "Chi課 Cu錸g Thi襫 мnh Trng", {0, 8, 30148, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 3},
        { "Chi課 Cu錸g Th竛h Chi課 Th�", {0, 0, 30145, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 4},
        { "Chi課 Cu錸g Th竛h Chi課 Th�", {0, 0, 30146, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 4},
        { "Chi課 Cu錸g 箃 H錸 Ch﹎", {0, 1, 30149, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 6},
        { "Chi課 Cu錸g 箃 H錸 Ch﹎", {0, 1, 30150, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 6},
        { "Chi課 Cu錸g 箃 H錸 Ch﹎", {0, 1, 30151, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 6},
        { "Chi課 Cu錸g 箃 H錸 Ch﹎", {0, 1, 30152, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 6},
        { "Chi課 Cu錸g Ph藅 Quang Ki誱", {0, 2, 30153, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 8},
        { "Chi課 Cu錸g Ph藅 Quang Ki誱", {0, 2, 30154, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 8},
        { "Chi課 Cu錸g H� Bang C莔", {0, 10, 30155, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 9},
        { "Chi課 Cu錸g H� Bang C莔", {0, 10, 30156, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 9},
        { "Chi課 Cu錸g Tr鮪g 竎 Th�", {0, 0, 30157, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 11},
        { "Chi課 Cu錸g Tr鮪g 竎 Th�", {0, 0, 30158, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 11},
        { "Chi課 Cu錸g Tr鮪g 竎 Th�", {0, 0, 30159, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 11},
        { "Chi課 Cu錸g Tr鮪g 竎 Th�", {0, 0, 30160, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 11},
        { "Chi課 Cu錸g V� C鵦 C玭", {0, 5, 30161, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 12},
        { "Chi課 Cu錸g V� C鵦 C玭", {0, 5, 30162, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 12},
        { "Chi課 Cu錸g V� C鵦 C玭", {0, 5, 30163, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 12},
        { "Chi課 Cu錸g V� C鵦 C玭", {0, 5, 30164, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 12},
        { "Chi課 Cu錸g Khu Ma Ki誱", {0, 2, 30165, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 14},
        { "Chi課 Cu錸g Khu Ma Ki誱", {0, 2, 30166, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 14},
        { "Chi課 Cu錸g Khu Ma Ki誱", {0, 2, 30167, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 14},
        { "Chi課 Cu錸g Khu Ma Ki誱", {0, 2, 30168, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 14},
        { "Chi課 Cu錸g Thng Khung B髏", {0, 9, 30169, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 15},
        { "Chi課 Cu錸g Thng Khung B髏", {0, 9, 30170, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 15},
        { "Chi課 Cu錸g Thng Khung B髏", {0, 9, 30171, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 15},
        { "Chi課 Cu錸g Thng Khung B髏", {0, 9, 30172, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 15},
        { "Chi課 Cu錸g Th莕 K輈h Thng", {0, 6, 30173, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 17},
        { "Chi課 Cu錸g Th莕 K輈h Thng", {0, 6, 30174, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 17},
        { "Chi課 Cu錸g Th莕 K輈h Thng", {0, 6, 30175, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 17},
        { "Chi課 Cu錸g Th莕 K輈h Thng", {0, 6, 30176, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 17},
        { "Chi課 Cu錸g Xung Thi猲 Cung", {0, 4, 30177, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 18},
        { "Chi課 Cu錸g Xung Thi猲 Cung", {0, 4, 30178, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 18},
        { "Chi課 Cu錸g Xung Thi猲 Cung", {0, 4, 30179, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 18},
        { "Chi課 Cu錸g Xung Thi猲 Cung", {0, 4, 30180, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 18},
        { "Chi課 Cu錸g Luy謓 Ng鬰 o", {0, 7, 30181, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 20},
        { "Chi課 Cu錸g Luy謓 Ng鬰 o", {0, 7, 30182, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 20},
        { "Chi課 Cu錸g Luy謓 Ng鬰 o", {0, 7, 30183, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 20},
        { "Chi課 Cu錸g Luy謓 Ng鬰 o", {0, 7, 30184, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 20},
        { "Chi課 Cu錸g Nhi誴 H錸 Tr秓", {0, 11, 30185, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 21},
        { "Chi課 Cu錸g Nhi誴 H錸 Tr秓", {0, 11, 30186, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 21},
        { "Chi課 Cu錸g Nhi誴 H錸 Tr秓", {0, 11, 30187, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 21},
        { "Chi課 Cu錸g Nhi誴 H錸 Tr秓", {0, 11, 30188, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 21},
        { "Chi課 Cu錸g Thi猲 Ph箃 Ki誱", {0, 2, 30189, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 23},
        { "Chi課 Cu錸g Thi猲 Ph箃 Ki誱", {0, 2, 30190, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 23},
        { "Chi課 Cu錸g Ch骳 Dung o", {0, 3, 30191, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 25},
        { "Chi課 Cu錸g Ch骳 Dung o", {0, 3, 30192, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 25},
        { "Chi課 Cu錸g Ch骳 Dung o", {0, 3, 30193, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 25},
        { "Chi課 Cu錸g Ch骳 Dung o", {0, 3, 30194, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 25},
        { "Chi課 Cu錸g T� M謓h B髏", {0, 9, 30195, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 26},
        { "Chi課 Cu錸g T� M謓h B髏", {0, 9, 30196, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 26},
        { "Chi課 Cu錸g T� M謓h B髏", {0, 9, 30197, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 26},
        { "Chi課 Cu錸g T� M謓h B髏", {0, 9, 30198, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 26},
        { "Chi課 Cu錸g Truy H錸 Tr秓", {0, 11, 30199, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 1, 27},
        { "Chi課 Cu錸g Truy H錸 Tr秓", {0, 11, 30200, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 2, 27},
        { "Chi課 Cu錸g Truy H錸 Tr秓", {0, 11, 30201, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 27},
        { "Chi課 Cu錸g Truy H錸 Tr秓", {0, 11, 30202, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 27},
        { "Chi課 Cu錸g Phong Linh Phi課", {0, 13, 30203, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 29},
        { "Chi課 Cu錸g Phong Linh Phi課", {0, 13, 30204, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 29},
        { "Chi課 Cu錸g Kh玭g Minh мch", {0, 12, 30205, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 3, 30},
        { "Chi課 Cu錸g Kh玭g Minh мch", {0, 12, 30206, 1, 4, -1, -1, -1, -1, -1, -1, -1, 9}, 4, 30},
	},
}
function _award_equip(tEquip)
	local nBodyType = GetBody()
	local nRoute = GetPlayerRoute()
	for i=1,getn(tEquip) do
		local t = tEquip[i]
		if nBodyType == t[3] and nRoute == t[4] then
			gf_AddItemEx2(t[2], t[1], "CDKEY", "CDKEY", 0, 1);
			return
		end
	end
end
function award_zhankuangku()
	return _award_equip(T_ZHANKUANG.tShoe)
end
function award_zhankuangyi()
	return _award_equip(T_ZHANKUANG.tCloth)
end
function award_zhankuangtou()
	return _award_equip(T_ZHANKUANG.tHead)
end
function award_zhankuangwuqi()
	return _award_equip(T_ZHANKUANG.tWeapon)
end
function award_fusheng2renwu() --完成宠物复生2任务，VNG功能？
	Event_PhucSinhPET(); --Vet_Complete_Revive_OnePartner_FirstStage();
	Vet_Complete_Revive_OnePartner_SecondStage();
end
function award_guayi()
	_award_3jiantao(152)
end
function award_huizhang()
	_award_3jiantao(153)
end
function award_xie()
	_award_3jiantao(154)
end
function _award_3jiantao(nD)
	local nRandP = random(26,28)
	gf_AddItemEx2({0,nD,nRandP,1,4, -1, -1, -1, -1, -1, -1}, GetItemName(0, nD, nRandP), "CDKEY", "CDKEY", 0, 1);
end

function award_gem345()
	--Faction Cloth 9
	local VET_RandGem345 = {
		{1,25, "Huy誸Tr輈hTh筩h Lv3", {2,22,103,1},nil,nil,nil,nil},
		{1,25, "Nguy謙B筩hTh筩h Lv3", {2,22,203,1},nil,nil,nil,nil},
		{1,25, "H� Ph竎h Th筩h C蕄 3", {2,22,303,1},nil,nil,nil,nil},
		{1,25, "H綾 Di謚 Th筩h C蕄 3", {2,22,403,1},nil,nil,nil,nil},
		{1,24, "Huy誸Tr輈hTh筩h Lv4", {2,22,104,1},nil,nil,nil,nil},
		{1,24, "Nguy謙B筩hTh筩h Lv4", {2,22,204,1},nil,nil,nil,nil},
		{1,24, "H� Ph竎h Th筩h C蕄 4", {2,22,304,1},nil,nil,nil,nil},
		{1,24, "H綾 Di謚 Th筩h C蕄 4", {2,22,404,1},nil,nil,nil,nil},
		{1,1, "Huy誸Tr輈hTh筩h Lv5", {2,22,105,1},nil,nil,nil,1},
		{1,1, "Nguy謙B筩hTh筩h Lv5", {2,22,205,1},nil,nil,nil,1},
		{1,1, "H� Ph竎h Th筩h C蕄 5", {2,22,305,1},nil,nil,nil,1},
		{1,1, "H綾 Di謚 Th筩h C蕄 5", {2,22,405,1},nil,nil,nil,1},
	} 
	gf_EventGiveRandAward(VET_RandGem345,200,1, "CDKEY", "CDKEY")
end
function award_gem345_2()
	award_gem345()
	award_gem345()
end
function award_gem345_3()
	award_gem345()
	award_gem345()
	award_gem345()
end
function award_gem345_5()
	award_gem345()
	award_gem345()
	award_gem345()
	award_gem345()
	award_gem345()
end
function award_title()
	AddTitle(68, 4);
	SetTitleTime(68, 4, GetTime() + 60 * 24 * 3600);
	Msg2Player(format("Nh薾 頲 danh hi謚 [%s]", "Nhi謒 V� Чt Nh﹏"))
end

function award_tong_title3()
	SendScript2VM("\\script\\isolate\\functions\\tong_title\\tong_title.lua", format("force_give_max_lv(%d)", 3))
	Msg2Player(format("Nh薾 頲 danh hi謚 [%s]", "Kim Lan"))
end

function award_random_gem1_1()
	local VET_RandGem = {
    {1,25, "Huy誸Tr輈hTh筩h Lv1", {2,22,101,10,4},nil,nil,nil,nil},
    {1,25, "Nguy謙B筩hTh筩h Lv1", {2,22,201,10,4},nil,nil,nil,nil},
    {1,25, "H� Ph竎h Th筩h C蕄 1", {2,22,301,10,4},nil,nil,nil,nil},
    {1,25, "H綾 Di謚 Th筩h C蕄 1", {2,22,401,10,4},nil,nil,nil,nil},
	} 
	gf_EventGiveRandAward(VET_RandGem,100,1, "CDKEY", "CDKEY")
end

function award_random_gem1_2()
	local VET_RandGem = {
    {1,25, "Huy誸Tr輈hTh筩h Lv1", {2,22,101,20,4},nil,nil,nil,nil},
    {1,25, "Nguy謙B筩hTh筩h Lv1", {2,22,201,20,4},nil,nil,nil,nil},
    {1,25, "H� Ph竎h Th筩h C蕄 1", {2,22,301,20,4},nil,nil,nil,nil},
    {1,25, "H綾 Di謚 Th筩h C蕄 1", {2,22,401,20,4},nil,nil,nil,nil},
	} 
	gf_EventGiveRandAward(VET_RandGem,100,1, "CDKEY", "CDKEY")
end

function award_random_gem2_1()
	local VET_RandGem = {
    {1,25, "Huy誸Tr輈hTh筩h Lv2", {2,22,102,8,4},nil,nil,nil,nil},
    {1,25, "Nguy謙B筩hTh筩h Lv2", {2,22,202,8,4},nil,nil,nil,nil},
    {1,25, "H� Ph竎h Th筩h C蕄 2", {2,22,302,8,4},nil,nil,nil,nil},
    {1,25, "H綾 Di謚 Th筩h C蕄 2", {2,22,402,8,4},nil,nil,nil,nil},
	} 
	gf_EventGiveRandAward(VET_RandGem,100,1, "CDKEY", "CDKEY")
end

function award_random_gem2_2()
	local VET_RandGem = {
    {1,25, "Huy誸Tr輈hTh筩h Lv2", {2,22,102,12,4},nil,nil,nil,nil},
    {1,25, "Nguy謙B筩hTh筩h Lv2", {2,22,202,12,4},nil,nil,nil,nil},
    {1,25, "H� Ph竎h Th筩h C蕄 2", {2,22,302,12,4},nil,nil,nil,nil},
    {1,25, "H綾 Di謚 Th筩h C蕄 2", {2,22,402,12,4},nil,nil,nil,nil},
	} 
	gf_EventGiveRandAward(VET_RandGem,100,1, "CDKEY", "CDKEY")
end

function award_random_gem3_4()
	local VET_RandGem = {
    {1,25, "Huy誸Tr輈hTh筩h Lv3", {2,22,103,4,4},nil,nil,nil,nil},
    {1,25, "Nguy謙B筩hTh筩h Lv3", {2,22,203,4,4},nil,nil,nil,nil},
    {1,25, "H� Ph竎h Th筩h C蕄 3", {2,22,303,4,4},nil,nil,nil,nil},
    {1,25, "H綾 Di謚 Th筩h C蕄 3", {2,22,403,4,4},nil,nil,nil,nil},
	} 
	gf_EventGiveRandAward(VET_RandGem,100,1, "CDKEY", "CDKEY")
end

function award_random_gem3_5()
	local VET_RandGem = {
    {1,25, "Huy誸Tr輈hTh筩h Lv3", {2,22,103,5,4},nil,nil,nil,nil},
    {1,25, "Nguy謙B筩hTh筩h Lv3", {2,22,203,5,4},nil,nil,nil,nil},
    {1,25, "H� Ph竎h Th筩h C蕄 3", {2,22,303,5,4},nil,nil,nil,nil},
    {1,25, "H綾 Di謚 Th筩h C蕄 3", {2,22,403,5,4},nil,nil,nil,nil},
	} 
	gf_EventGiveRandAward(VET_RandGem,100,1, "CDKEY", "CDKEY")
end

function award_random_gem3_7()
	local VET_RandGem = {
    {1,25, "Huy誸Tr輈hTh筩h Lv3", {2,22,103,7,4},nil,nil,nil,nil},
    {1,25, "Nguy謙B筩hTh筩h Lv3", {2,22,203,7,4},nil,nil,nil,nil},
    {1,25, "H� Ph竎h Th筩h C蕄 3", {2,22,303,7,4},nil,nil,nil,nil},
    {1,25, "H綾 Di謚 Th筩h C蕄 3", {2,22,403,7,4},nil,nil,nil,nil},
	} 
	gf_EventGiveRandAward(VET_RandGem,100,1, "CDKEY", "CDKEY")
end

function award_random_gem3_9()
	local VET_RandGem = {
    {1,25, "Huy誸Tr輈hTh筩h Lv3", {2,22,103,9,4},nil,nil,nil,nil},
    {1,25, "Nguy謙B筩hTh筩h Lv3", {2,22,203,9,4},nil,nil,nil,nil},
    {1,25, "H� Ph竎h Th筩h C蕄 3", {2,22,303,9,4},nil,nil,nil,nil},
    {1,25, "H綾 Di謚 Th筩h C蕄 3", {2,22,403,9,4},nil,nil,nil,nil},
	} 
	gf_EventGiveRandAward(VET_RandGem,100,1, "CDKEY", "CDKEY")
end

function award_random_gem4_3()
	local VET_RandGem = {
    {1,25, "Huy誸Tr輈hTh筩h Lv4", {2,22,104,3,4},nil,nil,nil,nil},
    {1,25, "Nguy謙B筩hTh筩h Lv4", {2,22,204,3,4},nil,nil,nil,nil},
    {1,25, "H� Ph竎h Th筩h C蕄 4", {2,22,304,3,4},nil,nil,nil,nil},
    {1,25, "H綾 Di謚 Th筩h C蕄 4", {2,22,404,3,4},nil,nil,nil,nil},
	} 
	gf_EventGiveRandAward(VET_RandGem,100,1, "CDKEY", "CDKEY")
end

function award_random_4pet()
	local tPet = {
		{16, 4500},
		{17, 4500},
		{18, 990},
		{19, 3},
		{20, 3},
		{21, 2},
		{22, 1},
		{23, 2},
	}
	local nID = gf_GetRandItemByTable(tPet, 10000, 1)
	AddPet(tPet[nID][1]);
	Msg2Player(GetPetName(tPet[nID][1]));
end

function award_tongscore(nScore)
	SendScript2VM("\\script\\isolate\\functions\\tong_title\\head.lua", format("add_tong_gxd(%d)", nScore))
end

CK_SCROE_AWARD_TABLE = {
	[1] = {
		--score, EXP 声望值 师门值 军功值 真气
		{900, 5000000, 100, 100, 1000, 10000},
		--{"select","英雄勋章", {2,1,30499,4}},
		--{"item", "英雄勋章", {2,1,30499,4}},
		{"func", "Ф th玭g c秐h gi韎 V� Hi襫", award_wuzhe},
	},
	[2] = {
		--score, EXP 声望值 师门值 军功值 真气
		{1000, 8000000, 160, 160, 1400, 0},
		{"item", "Ma Tinh", {2,1,30497,500,4}},
		{"func", "Chuy觧 sinh 5 c蕄 90", award_5zhuan90},
	},
	[3] = {
		--score, EXP 声望值 师门值 军功值 真气
		{1300, 12000000, 220, 220, 1800, 20000},
		{"func", "Ф th玭g c秐h gi韎 V� Tng", award_wujiang},
	},
	[4] = {
		--score, EXP 声望值 师门值 军功值 真气
		{1700, 15000000, 280, 280, 2200, 0},
		{"item", "Ma Tinh", {2,1,30497,500,4}},
		{"item", "L╪g Ba Vi B�", {0,112,78,1}},
	},
	[5] = {
		--score, EXP 声望值 师门值 军功值 真气
		{2000, 20000000, 340, 340, 2600, 30000},
		{"func", "Ф th玭g c秐h gi韎 V� Vng", award_wuwang},
	},
	[6] = {
		--score, EXP 声望值 师门值 军功值 真气
		{2400, 25000000, 400, 400, 3000, 0},
		{"item", "Ma Tinh", {2,1,30497,500,4}},
	},
	[7] = {
		--score, EXP 声望值 师门值 军功值 真气
		{2800, 28000000, 460, 460, 3400, 30000},
		{"func", "B秓 Th筩h c蕄 1*10", award_random_gem1_1},
	},
	[8] = {
		--score, EXP 声望值 师门值 军功值 真气
		{3100, 30000000, 520, 520, 3800, 0},
		{"func", "Ц qu� c蕄 1*20", award_random_gem1_2},
		{"func", "U萵 Linh C蕄 4", award_yunling4},
	},
	[9] = {
		--score, EXP 声望值 师门值 军功值 真气
		{3500, 32000000, 580, 580, 4200, 0},
		{"func", "Ц qu� c蕄 2*8", award_random_gem2_1},
	},
	[10] = {
		--score, EXP 声望值 师门值 军功值 真气
		{4000, 34000000, 580, 580, 4200, 0},
		{"func", "Non chi課 cu錸g+9", award_zhankuangtou},
		{"func", "觤 c鑞g hi課 bang", award_tongscore,{100}},
	},
	[11] = {
		--score, EXP 声望值 师门值 军功值 真气
		{5000, 36000000, 580, 580, 4200, 0},
		{"func", "竜 chi課 cu錸g+9", award_zhankuangyi},
		{"func", "Ц qu� c蕄 2 *12", award_random_gem2_2},
		{"func", "觤 c鑞g hi課 bang", award_tongscore,{200}},
	},
	[12] = {
		--score, EXP 声望值 师门值 军功值 真气
		{6000, 38000000, 580, 580, 4200, 0},
		{"func", "Qu莕 chi課 cu錸g+9", award_zhankuangku},
		{"func", "觤 c鑞g hi課 bang", award_tongscore,{300}},
	},
	[13] = {
		--score, EXP 声望值 师门值 军功值 真气
		{7000, 40000000, 580, 580, 4200, 0},
		{"item", "Hi謕 Ngh躠 Chi Ch鴑g", {2, 1, 30912, 400, 4}},
		{"item", "Linh у Gi韎 (tr竔)", {0, 102, 30221, 1, 4}},
		{"item", "Linh у Gi韎 (ph秈)", {0, 102, 30222, 1, 4}},
		{"func", "U萵 Linh C蕄 5", award_yunling5},
--		{"select", "合成材料（3选1）",
--			{
--				{"item", "魔狼皮", {2, 1, 30672, 50, 4}},
--				{"item", "地龙皮", {2, 1, 30673, 50, 4}},
--				{"item", "炎灵丝", {2, 1, 30671, 50, 4}},
--			},
--		},
	},
	[14] = {
		--score, EXP 声望值 师门值 军功值 真气
		{8500, 42000000, 580, 580, 4200, 0},
		{"func", "V� kh� chi課 cu錸g+9", award_zhankuangwuqi},
--		{"item", "1级帮会信物", {0, 155, 1, 1}},
		{"select", "Th� ci B秓 B秓(3 ch鋘 1)",
			{
				{"item", "B竜 n B秓 B秓", {0, 105, 30029, 1, 4,-1,-1,-1,-1,-1,-1,-1},15*24*3600},
				{"item", "B竜 V祅g B秓 B秓", {0, 105, 30030, 1, 4,-1,-1,-1,-1,-1,-1,-1},15*24*3600},
				{"item", "Kim Mao Ng璾 B秓 B秓", {0, 105, 30022, 1, 4,-1,-1,-1,-1,-1,-1,-1},15*24*3600},
			},
		},
		--{"func", "Danh hi謚 bang h閕 c蕄 3", award_tong_title3},
		{"item", "уng T� Chi Nguy謓", {2,1,30913,21,4}},
	},
	[15] = {
		--score, EXP 声望值 师门值 军功值 真气
		{9500, 44000000, 580, 580, 4200, 0},
		{"func", "6 chuy觧 90 c蕄", award_6zhuan90},
		{"item", "Tinh Hoa U萵 Linh C蕄 6", {2,1,30668,4, 4}},
		{"item", "Hi謕 Ngh躠 Chi Ch鴑g", {2, 1, 30912, 400, 4}},
--		{"select", "合成材料（3选1）",
--			{
--				{"item", "魔狼皮", {2, 1, 30672, 100, 4}},
--				{"item", "地龙皮", {2, 1, 30673, 100, 4}},
--				{"item", "炎灵丝", {2, 1, 30671, 100, 4}},
--			},
--		},
	},
	[16] = {
		--score, EXP 声望值 师门值 军功值 真气
		{11000, 46000000, 580, 580, 4200, 0},
		{"func", "Ц qu� c蕄 3*5", award_random_gem3_5},
		{"item", "Tinh Hoa U萵 Linh C蕄 6", {2,1,30668,6,4}},
		{"item", "Tr鴑g Linh Th�-Cao", {2,1,30728,1,4}},
		{"func", "觤 c鑞g hi課 bang", award_tongscore,{300}},
		{"item", "T輓 V藅 c蕄 3", {0,155,3,1,4}},
		{"select", "Trang b� H祇 hi謕(3 ch鋘 1)",
			{
				{"item", "H祇 Hi謕 u", {0, 103, 30568, 1, 4}},
				{"item", "H祇 Hi謕 y", {0, 100, 30568, 1, 4}},
				{"item", "H祇 Hi謕 Trang", {0, 101, 30568, 1, 4}},
			},
		},
	},
	[17] = {
		--score, EXP 声望值 师门值 军功值 真气
		{15000, 48000000, 580, 580, 4200, 0},
		{"func", "Ц qu� c蕄 3*7", award_random_gem3_7},
		{"item", "Tinh Hoa U萵 Linh C蕄 6", {2,1,30668,8,4}},
		{"item", "уng T� Chi Nguy謓", {2,1,30913,42,4}},
--		{"select", "合成材料（3选1）",
--			{
--				{"item", "魔狼皮", {2, 1, 30672, 150, 4}},
--				{"item", "地龙皮", {2, 1, 30673, 150, 4}},
--				{"item", "炎灵丝", {2, 1, 30671, 150, 4}},
--			},
--		},
	},
	[18] = {
		--score, EXP 声望值 师门值 军功值 真气
		{16000, 50000000, 580, 580, 4200, 0},
		{"func", "Ц qu� c蕄 3*9", award_random_gem3_9},
		--{"func", "随机挂衣", award_guayi},
		{"item", "Thi誸 tinh c蕄 4", {2, 1, 30612, 10, 4}},
		{"func", "觤 c鑞g hi課 bang", award_tongscore,{400}},
		{"select", "V﹏ Du, Thi誸 Huy猼, 竜 kho竎 Du Hi謕(ch鋘 1 trong 3)",
			{
				{"item", "竜 Cho祅g V﹏ Du", {0, 152, 28, 1, 4,-1,-1,-1,-1,-1,-1,-1,7}},
				{"item", "竜 Cho祅g Thi誸 Huy誸", {0, 152, 27, 1, 4,-1,-1,-1,-1,-1,-1,-1,7}},
				{"item", "竜 Cho祅g Du Hi謕", {0, 152, 26, 1, 4,-1,-1,-1,-1,-1,-1,-1,7}},
			},
		},
--		{"select", "合成材料（3选1）",
--			{
--				{"item", "魔狼皮", {2, 1, 30672, 170, 4}},
--				{"item", "地龙皮", {2, 1, 30673, 170, 4}},
--				{"item", "炎灵丝", {2, 1, 30671, 170, 4}},
--			},
--		},
	},
	[19] = {
		--score, EXP 声望值 师门值 军功值 真气
		{17000, 60000000, 580, 580, 4200, 0},
		{"func", "Ц qu� c蕄 4*3", award_random_gem4_3},
		--{"func", "随机徽章", award_huizhang},
		{"item", "Thi誸 tinh c蕄 4", {2, 1, 30612, 20, 4}},
		{"func", "觤 c鑞g hi課 bang", award_tongscore,{500}},
		{"select", "V﹏ Du, Thi誸 Huy誸, Huy chng Du Hi謕(ch鋘 1 trong 3)",
			{
				{"item", "Huy Chng V﹏ Du", {0, 153, 28, 1, 4,-1,-1,-1,-1,-1,-1,-1,7}},
				{"item", "Huy Chng Thi誸 Huy誸", {0, 153, 27, 1, 4,-1,-1,-1,-1,-1,-1,-1,7}},
				{"item", "Huy Chng Du Hi謕", {0, 153, 26, 1, 4,-1,-1,-1,-1,-1,-1,-1,7}},
			},
		},
--		{"select", "合成材料（3选1）",
--			{
--				{"item", "魔狼皮", {2, 1, 30672, 180, 4}},
--				{"item", "地龙皮", {2, 1, 30673, 180, 4}},
--				{"item", "炎灵丝", {2, 1, 30671, 180, 4}},
--			},
--		},
	},
	[20] = {
		--score, EXP 声望值 师门值 军功值 真气
		{20000, 80000000, 580, 580, 4200, 0},
		{"func", "Ц Qu� C蕄 3-5 (Ng蓇 nhi猲)", award_gem345_2},
		--{"func", "随机徽章", award_xie},
		{"item", "Thi誸 tinh c蕄 4", {2, 1, 30612, 30, 4}},
		{"func", "觤 c鑞g hi課 bang", award_tongscore,{600}},
		{"select", "V﹏ Du, Thi誸 Huy誸, Gi莥 Du Hi謕(ch鋘 1 trong 3)",
			{
				{"item", "Чo H礽 V﹏ Du", {0, 154, 28, 1, 4,-1,-1,-1,-1,-1,-1,-1,7}},
				{"item", "Chi課 H礽 Thi誸 Huy誸", {0, 154, 27, 1, 4,-1,-1,-1,-1,-1,-1,-1,7}},
				{"item", "Chi課 H礽 Du Hi謕", {0, 154, 26, 1, 4,-1,-1,-1,-1,-1,-1,-1,7}},
			},
		},
--		{"select", "合成材料（3选1）",
--			{
--				{"item", "魔狼皮", {2, 1, 30672, 200, 4}},
--				{"item", "地龙皮", {2, 1, 30673, 200, 4}},
--				{"item", "炎灵丝", {2, 1, 30671, 200, 4}},
--			},
--		},
	},
	[21] = {
		--score, EXP 声望值 师门值 军功值 真气
		{22000, 150000000, 580, 580, 4200, 0},
		{"func", "Chuy觧 sinh 7 c蕄 73", award_7zhuan73},
		{"func", "Ц Qu� C蕄 3-5 (Ng蓇 nhi猲)", award_gem345_3},
		{"item", "Ph鬰 Sinh Кn", {2, 1, 30814, 1, 4}},
		{"select", "Trang b� H祇 hi謕(3 ch鋘 1)",
			{
				{"item", "H祇 Hi謕 u", {0, 103, 30568, 1, 4}},
				{"item", "H祇 Hi謕 y", {0, 100, 30568, 1, 4}},
				{"item", "H祇 Hi謕 Trang", {0, 101, 30568, 1, 4}},
			},
		},
	},
	[22] = {
		--score, EXP 声望值 师门值 军功值 真气
		{24000, 250000000, 580, 580, 4200, 0},
		{"item", "Hi謕 Ngh躠 Chi Ch鴑g", {2, 1, 30912, 400, 4}},
		{"func", "Ф th玭g c秐h gi韎 V� T玭", award_wuzun},
		{"func", "Ц Qu� C蕄 3-5 (Ng蓇 nhi猲)", award_gem345_5},
--		{"item", "4级铁晶", {2, 1, 30612, 30, 4}},
		{"item", "Tinh Hoa U萵 Linh C蕄 6", {2,1,30668,12,4}},
		{"func", "觤 c鑞g hi課 bang", award_tongscore,{600}},
--		{"item", "和氏璧", {2, 1, 1001, 1, 4}},
		{"func", "Danh hi謚 Nhi謒 V� Чt Nh﹏", award_title},
		{"select", "Trang b� H祇 hi謕(3 ch鋘 1)",
			{
				{"item", "H祇 Hi謕 u", {0, 103, 30568, 1, 4}},
				{"item", "H祇 Hi謕 y", {0, 100, 30568, 1, 4}},
				{"item", "H祇 Hi謕 Trang", {0, 101, 30568, 1, 4}},
			},
		},
	},
}
function ck_view_score_award(nType)
	local tSay = {
		format("\n Nh薾 ph莕 thng/#ck_get_score_award(%d)", nType),
		"\nT玦 ch� xem xem th玦/nothing",
	}
	local tAward = CK_SCROE_AWARD_TABLE[nType]
	local tBase = tAward[1]
	local szMsg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s� m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh� %d", tBase[2], tBase[3], tBase[4], tBase[5], tBase[6])
	for i = 2,getn(tAward) do
		if tAward[i][1] == "item" then
			szMsg = format("%s,%s*%d", szMsg, tAward[i][2], tAward[i][3][4]);
		else
			szMsg = format("%s,%s", szMsg, tAward[i][2])
		end
	end
	Say(CK_NPC_NAME..format("Hi謓 t筰 c� th� nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th� cho th猰 ph莕 thng th� s� d飊g 甶觤 kinh nghi謒  thay th�<color>", szMsg), getn(tSay), tSay);
	return 0;
end
function ck_get_score_award(nType)
	tSelect = tSelect or {}
	local tAward = CK_SCROE_AWARD_TABLE[nType]
	if gf_Judge_Room_Weight(5, 100, " ") ~= 1 then
		return 0;
	end
	local nCurScore = ck_GetCkScore()
	local nNeedScore = tAward[1][1]
	if nCurScore < nNeedScore then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th� nh薾 thng!", nNeedScore), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, nType) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	if gf_CheckBaseCondition(73) ~= 1 then
		return 0;
	end
	for i = 1, getn(tAward) do
		local t = tAward[i];
		if "select" == t[1] then
			ck_get_score_award_select(nType, i);
			return
		end
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, nType, 1)
	for i= 1,getn(tAward) do
		local t = tAward[i]
		if type(t[1]) == "number" then
			gf_Modify("Exp", t[2])
			gf_Modify("Rep", t[3])
			gf_Modify("ShiMen", t[4])
			gf_Modify("JunGong", t[5])
			if t[6] > 0 then
				gf_Modify("ZhenQi", t[6])
			end
		elseif "func" == t[1] then
			t[3](unpack(t[4] or {}))
			if t[3] == award_tongscore then
				Msg2Player(format("B筺 nh薾 頲 %d 甶觤  c鑞g hi課 bang h閕", t[4][1]))
			end
		elseif "item" == t[1] then
			gf_AddItemEx2(t[3], t[2], "CDKEY", "Ph莕 thng 甶觤 t輈h l騳", (t[4] or 0), 1);
		end		
	end
end

function ck_get_score_award_select(nType, i, j)
	local tAward = CK_SCROE_AWARD_TABLE[nType][i];
	if tAward[1] == "select" then
		if not j then
			local tDialog = {}
		  local szTitle = format("%s: H穣 ch鋘 %s", CK_NPC_NAME, tAward[2])
		  local tSel = tAward[3]
		  for k = 1, getn(tSel) do
		  	if tSel[k][1] == "item" then
		  		tinsert(tDialog, format("%s*%d/#ck_get_score_award_select(%d, %d, %d)", tSel[k][2], tSel[k][3][4], nType, i, k));
		  	else
		  		tinsert(tDialog, format("%s/#ck_get_score_award_select(%d, %d, %d)", tSel[k][2], nType, i, k));
		  	end
		  end
		  tinsert(tDialog, "\nT玦 ch� xem xem th玦/ck_get_score_award_select_cancle")
		  Say(szTitle, getn(tDialog), tDialog)
			return 0;
		end
		if not g_RecordIndex then g_RecordIndex = {} end
		if not g_RecordIndex[PlayerIndex] then g_RecordIndex[PlayerIndex] = {} end
		g_RecordIndex[PlayerIndex][i] = j;
	end
	local tNext = CK_SCROE_AWARD_TABLE[nType][i+1];
	if tNext then
		ck_get_score_award_select(nType, i+1);
	else
		ck_get_score_award_select_final(nType);
	end
end

function ck_get_score_award_select_cancle()
	if g_RecordIndex then
		g_RecordIndex[PlayerIndex] = nil
	end
end

function ck_get_score_award_select_final(nType)
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, nType, 1)
	local tAward = CK_SCROE_AWARD_TABLE[nType]
	for i= 1,getn(tAward) do
		local t = tAward[i]
		if type(t[1]) == "number" then
			gf_Modify("Exp", t[2])
			gf_Modify("Rep", t[3])
			gf_Modify("ShiMen", t[4])
			gf_Modify("JunGong", t[5])
			if t[6] > 0 then
				gf_Modify("ZhenQi", t[6])
			end
		elseif "func" == t[1] then
			t[3](unpack(t[4] or {}))
		elseif "item" == t[1] then
			gf_AddItemEx2(t[3], t[2], "CDKEY", "Ph莕 thng 甶觤 t輈h l騳", (t[4] or 0), 1);
		elseif "select" == t[1] then
			local Index = g_RecordIndex[PlayerIndex][i];
			local tItem = t[3][Index];
			if "item" == tItem[1] then
				gf_AddItemEx2(tItem[3], tItem[2], "CDKEY", "Ph莕 thng 甶觤 t輈h l騳", (tItem[4] or 0), 1);
			elseif "func" == tItem[1] then
				tItem[3]()
			end	
		end
	end
	g_RecordIndex[PlayerIndex] = nil;
end