--面对设计文档有种对生活失去了信心的赶脚，不要费力气改了，重写一个把
Include("\\script\\function\\cdkey\\ck_define.lua")
Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\lib\\talktmp.lua")
Include("\\script\\lib\\date.lua")
Include("\\script\\misc\\taskmanager.lua")
Include("\\script\\task\\global_task\\gtask_data.lua")
Include("\\script\\online_activites\\activity_head.lua")
Include("\\script\\online\\chuyen_sinh\\translife_head.lua")

CK_TASK_GROUP = TaskManager:Create(CK_TASK_GROUP[1], CK_TASK_GROUP[2]);
CK_TASK_GROUP.Task1 = 1 --1,2,3位分别表示武林新秀，老战友，活跃着,4-11位勇往直前任务，百战杀怪任务12-16记录,17-21完成,百战副本任务22-26记录，27-31接取
CK_TASK_GROUP.Task2 = 2 --百战副本任务1-5可交，6-10完成，--百战PVP任务11-17记录，18-24接取，25-31可交
CK_TASK_GROUP.Task3 = 3 --百战PVP任务1-7完成,8-10杀怪加成，11-13副本加成，14-16pvp加成, 17+是速战速决任务
CK_TASK_GROUP.Task4 = 4 --任务标记
CK_TASK_GROUP.Task5 = 5 --大富翁消费任务计数
CK_TASK_GROUP.Score = 6 --活跃度
CK_TASK_GROUP.Award = 7 --按位标记奖励

CK_NPC_NAME = "<color=green> Чi S?ho箃 ng: <color>";
CK_NPC_TITLE = "H穣 nhanh ch鉵g m阨 b筺 b?n c飊g ch琲 tr?ch琲 n祇! B筺 b?c祅g nhi襲 th?s?c?th猰 nhi襲 ni襪 vui!";

CK_NPC_DIALOG = {
	"Gi韎 thi謚 ho箃 ng/ck_ActInfo",
	"K輈h ho箃 danh hi謚/ck_ActTilte",
	"Nhi謒 v?D騨g C秏 Ti課 T韎/ck_TaskForward",
	"Nhi謒 v?Tr╩ Tr薾 Tr╩ Th緉g/ck_BaiZhanBuDai",
	"Nhi謒 v?T鑓 Chi課 T鑓 Th緉g/ck_FastTask",
	"Nhi謒 v?Чi Ph?g/ck_ZiloTask",
	"Xem 甶觤 n╪g ng/ck_QueryScore",
	"Ki觤 tra thi猲 ki猽 l謓h/cdk_QueryUseTianJiaoLingNum",
	"觤 n╪g ng i ph莕 thng/ck_ScoreAward",
}

function cdk_QueryUseTianJiaoLingNum()
	Say(CK_NPC_NAME..format("%s t鎛g s?thi猲 ki猽 l謓h  s?d鬾g<color=gold>%d<color>!", gf_GetPlayerSexName(), ck_GetCostIB()), 0);	
end

--活动是否开启
function ck_IsOpen()
	return gf_CheckDuration(CK_START_TIME, CK_END_TIME);		
end

function ck_IsStatus()
		local nExtPoint = GetExtPoint(EXT_CDKEY)
		if GetBit(nExtPoint,2) == 1 or GetBit(nExtPoint,4) == 1 or GetBit(nExtPoint,6) == 1 then
			--Talk(1, "", "Hi謓 t筰 kh玭g c?ho箃 ng n祇")
			return 0
		end
		return 1
end
--每日清理
function ck_DailyReset()
	if ck_IsOpen() ~= 1 then
		return 0;
	end
	if ck_GetTitleType() == 0 then
		return 0;
	end
	--重置百战不殆任务
	for i = 12, 31 do
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, i, 0);
	end
	CK_TASK_GROUP:SetTask(CK_TASK_GROUP.Task2, 0); 
	for i = 1, 16 do
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, i, 0);
	end
	--删除百战不殆的任务
	for i = 234, 238 do
		DirectDeleteTask(i)
	end
end

--获得当天索引
function ck_GetRandIndex(nMax)
	local today = Date();
	local wDay = today:week();
	if wDay == 0 then wDay = 7 end
	return mod(wDay, nMax) + 1;	
end

--获取类型
function ck_GetTitleType()
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 1) == 1 then
		return 1;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 2) == 1 then
		return 2;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 3) == 1 then
		return 3;
	end
	return 0;
end

--获得贡献度
function ck_GetCkScore()
	return CK_TASK_GROUP:GetTask(CK_TASK_GROUP.Score);
end

--增加积分
function ck_AddCkScore(nAdd)
	if not nAdd or nAdd < 0 then
		return 0;
	end
	CK_TASK_GROUP:SetTask(CK_TASK_GROUP.Score, CK_TASK_GROUP:GetTask(CK_TASK_GROUP.Score) + nAdd);
	Msg2Player(format("觤 n╪g ng t╪g %d, t鎛g 甶觤 l?%d", nAdd, CK_TASK_GROUP:GetTask(CK_TASK_GROUP.Score)));
end

--活动介绍
function ck_ActInfo(nIndex)
	local strTitle = 	{
		"Trong th阨 gian ho箃 ng, ngi ch琲 s?nh薾 頲 danh hi謚 ph?h頿 v韎 甶襲 ki謓 c馻 b秐 th﹏. T蕋 c?danh hi謚 u c?hi謚 l鵦 l?2 th竛g, v?khi nh﹏ v藅 th緋 s竛g danh hi謚 th?kh竛g t蕋 c?s?t╪g 10 甶觤. Ngi ch琲 ph秈 k輈h ho箃 danh hi謚 m韎 c?th?nh薾 nhi謒 v? Nhi謒 v?Tr╩ Tr薾 Tr╩ Th緉g, m鏸 ng祔 ch?頲 l祄 1 l莕. Nhi謒 v?T鑓 Chi課 T鑓 Th緉g v?Чi Ph?g th?trong th阨 gian ho箃 ng ch?頲 ho祅 th祅h 1 l莕. Nhi謒 v?Tr╩ Tr薾 Tr╩ Th緉g c?th?ho祅 th祅h theo c?nh﹏ v?t?i, n誹 t?i th?ph莕 thng s?cao h琻. Ho祅 th祅h c竎 m鬰 nhi謒 v?s?nh薾 頲 甶觤 kinh nghi謒 v? n╪g ng. T輈h l騳  n╪g ng c?th?i ph莕 thng phong ph?",
		"L穙 Chi課 H鱱 v?Ngi N╪g чng t?i tham gia nhi謒 v?Tr╩ Tr薾 Tr╩ Th緉g s?頲 gi秈 cao nh蕋.",
		"Nhi謒 v?D騨g C秏 Ti課 T韎 ch?xu蕋 hi謓 t筰 server m韎,trong server m韎 gamer c蕄 10 v? k輈h ho箃 danh hi謚 V?L﹎ T﹏ T?m韎 頲 nh薾 nhi謒 v?Ho祅 th祅h xong nhi謒 v?n祔 v?t n c蕄 90, gamer V?L﹎ T﹏ T?m韎 頲 ti誴 nh薾 nhi謒 v?Tr╩ Tr薾 Tr╩ Th緉g,T鑓 Chi課 T鑓 Th緉g v?Чi Ph?g.",
	}
	local tbSay = {};
	nIndex = nIndex or 1;
	local Msg = strTitle[nIndex]; 
	if Msg then
		tbSay.msg = CK_NPC_NAME..Msg;
		tbSay.sel = {
			{"\n r髏 lui", "nothing"},
		};
		if strTitle[nIndex + 1] then
			tinsert(tbSay.sel, 1, {"Trang k?, format("#ck_ActInfo(%d)", nIndex + 1)})
		end
		temp_Talk(tbSay);
	end
end

--激活称号
function ck_ActTilte()
	local tSay = {}
	local nCheckServer = GetGlbValue(GLB_TSK_SERVER_ID)
	 if nCheckServer == 92 then	-- or nCheckServer == 91
		tinsert(tSay,"V?L﹎ T﹏ T?ck_ActTilte_1");
	 else
		tinsert(tSay,"L穙 Chi課 H鱱/ck_ActTilte_2");
		tinsert(tSay,"Ngi N╪g чng/ck_ActTilte_3");
	 end
	tinsert(tSay,"T玦 ch?xem xem th玦/nothing");
	local msg = format("Th阨 gian k誸 th骳 k輈h ho箃 l?%d/%d/%d", CK_START_ACT[3], CK_START_ACT[2], CK_START_ACT[1]);
	Say(CK_NPC_NAME..format("%s mu鑞 k輈h ho箃 danh hi謚 n祇?<color=red>%s<color>", gf_GetPlayerSexName(), msg), getn(tSay), tSay);
end

function ck_CanAct()
	return gf_CheckDuration(CK_START_TIME, CK_START_ACT);		
end

function ck_ActTilte_1()
	local nExtPoint = GetExtPoint(EXT_CDKEY)
	if GetBit(nExtPoint,9) == 1 then
		Talk(1,"",CK_NPC_NAME .."T礽 kho秐 c竎 h? 頲 k輈h ho箃 r錳.")
		return 0
	end
	if ck_CanAct() ~= 1 then
		Say(CK_NPC_NAME.."Th阨 gian k輈h ho箃  k誸 th骳,kh玭g th?k輈h ho箃 danh hi謚 n鱝", 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 1) ~= 0 then
		Say(CK_NPC_NAME..format("Х nh薾 danh hi謚 <color=gold>[%s]<color> r錳", "V?L﹎ T﹏ T?), 0)
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 2) ~= 0 then
		Say(CK_NPC_NAME..format("Х nh薾 danh hi謚 <color=gold>[%s]<color> r錳", "L穙 Chi課 H鱱"), 0)
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 3) ~= 0 then
		Say(CK_NPC_NAME..format("Х nh薾 danh hi謚 <color=gold>[%s]<color> r錳", "Ngi N╪g чng"), 0)
		return 0;
	end
	DebugOutput(GetExtPoint(1), GetExtPoint(2))
--	local nExtPoint = GetExtPoint(EXT_CDKEY)
	--if GetExtPoint(1) == 1 and GetExtPoint(2) ~= 1 then
	if GetBit(nExtPoint,5) == 1 and GetBit(nExtPoint,6) ~= 1 then
		if CK_ES_SWITCH == 0 then
			Say(CK_NPC_NAME.."M竬 ch?n祔 t筸 th阨 kh玭g m?nh薾 danh hi謚 <color=gold>V?L﹎ T﹏ T?color>!", 0);
			return 0;
		end
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, 1, 1);
--		PayExtPoint(1, 1);
		AddTitle(68, 1);
		SetTitleTime(68, 1, GetTime() + (60 * 24 * 3600));
		Msg2Player(format("Nh薾 頲 danh hi謚 [%s]", "V?L﹎ T﹏ T?))
		Say(CK_NPC_NAME..format("Nh薾 頲 danh hi謚 <color=gold>[%s]<color>", "V?L﹎ T﹏ T?), 0)
		gf_WriteLogEx("CDKEY", "ck_ActTilte", "AddTitle(68, 1)");
		CDKEY_SetExtBit(EXT_CDKEY,9,1)
		return 1;
	end
	Say(CK_NPC_NAME.."Nh﹏ v藅 n祔 kh玭g  甶襲 ki謓, kh玭g th?nh薾 danh hi謚!", 0);
end

function ck_ActTilte_2()
	local nExtPoint = GetExtPoint(EXT_CDKEY)
	if GetBit(nExtPoint,7) == 1 then
		Talk(1,"",CK_NPC_NAME .."T礽 kho秐 c竎 h? 頲 k輈h ho箃 r錳.")
		return 0
	end
	if ck_CanAct() ~= 1 then
		Say(CK_NPC_NAME.."Th阨 gian k輈h ho箃  k誸 th骳,kh玭g th?k輈h ho箃 danh hi謚 n鱝", 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 1) ~= 0 then
		Say(CK_NPC_NAME..format("Х nh薾 danh hi謚 <color=gold>[%s]<color> r錳", "V?L﹎ T﹏ T?), 0)
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 2) ~= 0 then
		Say(CK_NPC_NAME..format("Х nh薾 danh hi謚 <color=gold>[%s]<color> r錳", "L穙 Chi課 H鱱"), 0)
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 3) ~= 0 then
		Say(CK_NPC_NAME..format("Х nh薾 danh hi謚 <color=gold>[%s]<color> r錳", "Ngi N╪g чng"), 0)
		return 0;
	end
	DebugOutput(GetExtPoint(3), GetExtPoint(4))
--	local nExtPoint = GetExtPoint(EXT_CDKEY)
	--if GetExtPoint(1) == 1 and GetExtPoint(2) ~= 1 then
	 if GetBit(nExtPoint,1) == 1 and GetBit(nExtPoint,2) ~= 1 then
-- if GetLevel() >= 90 then
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, 2, 1);
--		PayExtPoint(3, 1);
		AddTitle(68, 2);
		SetTitleTime(68, 2, GetTime() + (60 * 24 * 3600));
		Msg2Player(format("Nh薾 頲 danh hi謚 [%s]", "L穙 Chi課 H鱱"))
		Say(CK_NPC_NAME..format("Nh薾 頲 danh hi謚 <color=gold>[%s]<color>", "L穙 Chi課 H鱱"), 0)
		gf_WriteLogEx("CDKEY", "ck_ActTilte", "AddTitle(68, 2)");
		CDKEY_SetExtBit(EXT_CDKEY,7,1)
		return 1;
	end
	Say(CK_NPC_NAME.."Nh﹏ v藅 n祔 kh玭g  甶襲 ki謓, kh玭g th?nh薾 danh hi謚!", 0);
end

function ck_ActTilte_3()
	local nExtPoint = GetExtPoint(EXT_CDKEY)
	if GetBit(nExtPoint,8) == 1 then
		Talk(1,"",CK_NPC_NAME .."T礽 kho秐 c竎 h? 頲 k輈h ho箃 r錳.")
		return 0
	end
	if ck_CanAct() ~= 1 then
		Say(CK_NPC_NAME.."Th阨 gian k輈h ho箃  k誸 th骳,kh玭g th?k輈h ho箃 danh hi謚 n鱝", 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 1) ~= 0 then
		Say(CK_NPC_NAME..format("Х nh薾 danh hi謚 <color=gold>[%s]<color> r錳", "V?L﹎ T﹏ T?), 0)
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 2) ~= 0 then
		Say(CK_NPC_NAME..format("Х nh薾 danh hi謚 <color=gold>[%s]<color> r錳", "L穙 Chi課 H鱱"), 0)
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 3) ~= 0 then
		Say(CK_NPC_NAME..format("Х nh薾 danh hi謚 <color=gold>[%s]<color> r錳", "Ngi N╪g чng"), 0)
		return 0;
	end
	DebugOutput(GetExtPoint(5), GetExtPoint(6))
--	local nExtPoint = GetExtPoint(EXT_CDKEY)
	--if GetExtPoint(1) == 1 and GetExtPoint(2) ~= 1 then
	 if GetBit(nExtPoint,3) == 1 and GetBit(nExtPoint,4) ~= 1 then
-- if GetLevel() < 90 then
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, 3, 1);
--		PayExtPoint(5, 1);
		AddTitle(68, 3);
		SetTitleTime(68, 3, GetTime() + (60 * 24 * 3600));
		Msg2Player(format("Nh薾 頲 danh hi謚 [%s]", "Ngi N╪g чng"))
		Say(CK_NPC_NAME..format("Nh薾 頲 danh hi謚 <color=gold>[%s]<color>", "Ngi N╪g чng"), 0)
		gf_WriteLogEx("CDKEY", "ck_ActTilte", "AddTitle(68, 3)");
		CDKEY_SetExtBit(EXT_CDKEY,8,1)
		return 1;
	end
	Say(CK_NPC_NAME.."Nh﹏ v藅 n祔 kh玭g  甶襲 ki謓, kh玭g th?nh薾 danh hi謚!", 0);
end

--Task1:4-11位勇往直前任务
function ck_TaskForward()
	if CK_ES_SWITCH == 0 then
		Say(CK_NPC_NAME.."M竬 ch?n祔 t筸 th阨 kh玭g m?chu鏸 nhi謒 v?<color=red>D騨g C秏 Ti課 T韎<color>", 0)
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 1) ~= 1 then
		Say(CK_NPC_NAME..format("Ch?c?<color=gold>[%s]<color> m韎 頲 nh薾 nhi謒 v?n祔", "V?L﹎ T﹏ T?), 0)
		return 0;
	end
	 if GetLevel() >= 90 or gf_GetPlayerRebornCount() > 0 then
		 Say(CK_NPC_NAME.."Gamer 90 c蕄 tr?l猲 ho芻  chuy觧 sinh kh玭g th?tham gia nhi謒 v?n祔!",0);
		return 0;
	 end
	local tSay = {}
	local tMsg = {"Ch璦 nh薾", "Ch璦 ho祅 th祅h", "C?th?giao", "Х ho祅 th祅h"}
	for i = 1, getn(CK_TASK_FORWARD) do
		local nType = 0;
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, i + 3) == 1 then
			nType = 4;
		else
			if tGtTask:check_cur_task(CK_TASK_FORWARD[i][2]) == 0 then
				nType = 1;
			else
				if DirectIsTaskFinish(CK_TASK_FORWARD[i][2]) then
					nType = 3;
				else
					nType = 2;
				end
			end
		end
		if tMsg[nType] then
			tinsert(tSay, CK_TASK_FORWARD[i][1]..format("(%s)/#ck_TaskFoward_do(%d, %d)", tMsg[nType], CK_TASK_FORWARD[i][2], i + 3));
		end
	end
	tinsert(tSay, "\nT玦 ch?xem xem th玦/nothing");
	Say(CK_NPC_NAME.."Nhi謒 v?D騨g C秏 Ti課 T韎 c?th?gi髉 ngi nhanh ch鉵g t╪g c蕄!",getn(tSay), tSay);
end

function ck_TaskFoward_do(nTaskID, nTaskIndex)
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, nTaskIndex) ~= 0 then
		Say(CK_NPC_NAME.."Nhi謒 v?n祔  ho祅 th祅h!", 0);
		return 0;
	end
	if nTaskIndex > 4 and CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, nTaskIndex - 1) ~= 1 then
		Say(CK_NPC_NAME.."Ch璦 ho祅 th祅h nhi謒 v?trc ", 0);
		return 0;
	end
	if tGtTask:check_cur_task(nTaskID) == 0 then
		DirectGetGTask(nTaskID, 1)
	else
		if DirectIsTaskFinish(nTaskID) then
			if 1 == DirectFinishGTask(nTaskID, 2) then
				CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, nTaskIndex, 1);
				Msg2Player("Х ho祅 th祅h nhi謒 v?")
			else
				Msg2Player("Nhi謒 v?kh竎 thng, kh玭g th?ho祅 th祅h!");
			end
		else
			Say(CK_NPC_NAME.."Nhi謒 v?v蒼 ch璦 ho祅 th祅h!", 0);
		end
	end
end

--勇往直前奖励(对外)
function ck_TaskForward_Award()
	if ck_IsOpen() ~= 1 then
		return 0;
	end
	if ck_GetTitleType() == 0 then
		return 0;
	end
	if GetLevel() < 90 and gf_GetPlayerRebornCount() <= 0 then
		local nExp = GetExp()
		ModifyExp(-nExp)
		SetLevel(90, 1);
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
		Say(CK_NPC_NAME..format("Ъng c蕄 nh﹏ v藅  n﹏g cao n %d c蕄, xin ng nh藀 l筰!", 90), 1, "Жng nh藀 l筰/ExitGame");
	end
end

function ck_CheckCondition()
	local nKind = ck_GetTitleType();
	if nKind == 0 then
		Say(CK_NPC_NAME.."V蒼 ch璦 nh薾 v?k輈h ho箃 danh hi謚 n祇, kh玭g th?tham gia nhi謒 v?", 0);
		return 0;
	end
	if GetLevel() < 90 and gf_GetPlayerRebornCount() <= 0 then
		Say(CK_NPC_NAME..format("Щng c蕄 nh﹏ v藅 kh玭g  %d c蕄, kh玭g th?tham gia nhi謒 v?!", 90), 0);
		return 0;
	end
	return 1;
end

function ck_BaiZhanBuDai()
	if ck_CheckCondition() ~= 1 then
		return 0;
	end
	local tSay = {
		"\nNhi謒 v?nh qu竔/ck_BZBD_Kill",
		"\nNhi謒 v?ph?b秐/ck_BZBD_Raid",
		"\nNhi謒 v?PVP/ck_BZBD_PVP",
		"\nT玦 ch?xem xem th玦/nothing",	
	}
	Say(CK_NPC_NAME.."Nhi謒 v?<color=gold>Tr╩ Tr薾 Tr╩ Th緉g<color>, nh薾 ng蓇 nhi猲 h籲g ng祔, nh薾 頲 nhi襲 kinh nghi謒 v? n╪g ng!", getn(tSay), tSay);	
end

--Task3：加成
function ck_BZBD_GetType(nIndex1, nIndex2, nIndex3)
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, nIndex3) == 1 then
		return 0.8;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, nIndex2) == 1 then
		return 0.8;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, nIndex1) == 1 then
		return 0.2;
	end
	return 0;
end

function ck_BZBD_SetType(nIndex1, nIndex2, nIndex3)
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, nIndex1, 0)
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, nIndex2, 0)
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, nIndex3, 0)
	local nSize = gf_GetTeamSize();
	if nSize <= 1 then
		return 0;
	end
	--print("nSize =", nSize)
	local oldPlayerIndex = PlayerIndex;
	local nSelfType = ck_GetTitleType();
	if nSelfType == 0 then
		return 0;
	end
	--print("nSelfType =", nSelfType)
	if nSelfType == 1 then
		for i = 1, nSize do
			PlayerIndex = GetTeamMember(i);
			if PlayerIndex ~= oldPlayerIndex then
				if ck_GetTitleType() == 1 then
					PlayerIndex = oldPlayerIndex
					CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, nIndex3, 1)
					return 1;
				end
			end
		end
	end
	if nSelfType == 2 then
		for i = 1, nSize do
			PlayerIndex = GetTeamMember(i);
			if PlayerIndex ~= oldPlayerIndex then
				if ck_GetTitleType() == 3 then
					PlayerIndex = oldPlayerIndex
					CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, nIndex2, 1)
					return 1;
				end
			end
		end
	end	
	if nSelfType == 3 then
		for i = 1, nSize do
			PlayerIndex = GetTeamMember(i);
			if PlayerIndex ~= oldPlayerIndex then
				if ck_GetTitleType() == 3 then
					PlayerIndex = oldPlayerIndex
					CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, nIndex1, 1)
				end
				if ck_GetTitleType() == 2 then
					PlayerIndex = oldPlayerIndex
					CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, nIndex2, 1)
				end
			end
		end
	end
	PlayerIndex = oldPlayerIndex;		
	--print("nIndex1 =", CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, nIndex1))
	--print("nIndex2 =", CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, nIndex2))
	--print("nIndex3 =", CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, nIndex3))	
end

--百战不殆杀怪任务
--Task1:12-16记录,17-21完成
function ck_BZBD_Kill()
	--没有任务就随机分配两个任务
	local nCount = 0;
	local nTaskIndex1 = 0;
	local nTaskIndex2 = 0;
	for i = 12, 16 do
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, i) == 1 then
			if nTaskIndex1 == 0 then
				nTaskIndex1 = i - 11;
			elseif nTaskIndex2 == 0 then
				nTaskIndex2 = i - 11;
			end
			nCount = nCount + 1;
		end
	end
	if nCount ~= 2 then
		for i = 12, 21 do
			CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, i, 0)
		end
		nCount = ck_GetRandIndex(getn(CK_TASK_BZ_KILL));
		nTaskIndex1 = nCount;
		if 0 ~= mod(nCount + 3, 5) then
			nTaskIndex2 = mod(nCount + 3, 5);
		else
			nTaskIndex2 = 5;
		end
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, 11 + nTaskIndex1, 1);
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, 11 + nTaskIndex2, 1);
	end
	DebugOutput("nTaskIndex1, nTaskIndex2 =", nTaskIndex1, nTaskIndex2);
	--给对话
	local tSay = {}
	local tMsg = {"Ch璦 nh薾", "Ch璦 ho祅 th祅h", "C?th?giao", "Х ho祅 th祅h"}
	local tTask = {nTaskIndex1, nTaskIndex2};
	for i = 1, getn(tTask) do
		local nType = 0;
		DebugOutput("tTask[i] =", tTask[i])
		local nType = 0;
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 16 + tTask[i]) == 1 then
			nType = 4;
		else
			if tGtTask:check_cur_task(CK_TASK_BZ_KILL[tTask[i]][2]) == 0 then
				nType = 1;
			else
				if DirectIsTaskFinish(CK_TASK_BZ_KILL[tTask[i]][2]) then
					nType = 3;
				else
					nType = 2;
				end
			end
		end
		if tMsg[nType] then
			tinsert(tSay, format("\n%s(%s)/#ck_BZBD_Kill_do(%d, %d)", CK_TASK_BZ_KILL[tTask[i]][1], tMsg[nType], CK_TASK_BZ_KILL[tTask[i]][2], 16 + tTask[i]));
		end
	end
	tinsert(tSay, "\nT玦 ch?xem xem th玦/nothing");
	Say(CK_NPC_NAME.."Tr╩ Tr薾 Tr╩ Th緉g-Nhi謒 v?nh qu竔!",getn(tSay), tSay);
end

function ck_BZBD_Kill_do(nTaskID, nTaskIndex)
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, nTaskIndex) ~= 0 then
		Say(CK_NPC_NAME.."Nhi謒 v?n祔  ho祅 th祅h!", 0);
		return 0;
	end
	if tGtTask:check_cur_task(nTaskID) == 0 then
		DirectGetGTask(nTaskID, 1)
	else
		DebugOutput(nTaskID, DirectIsTaskFinish(nTaskID))
		if DirectIsTaskFinish(nTaskID) then
			if 1 == DirectFinishGTask(nTaskID, 2) then
				CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, nTaskIndex, 1);
				Msg2Player("Х ho祅 th祅h nhi謒 v?")
			else
				Msg2Player("Nhi謒 v?kh竎 thng, kh玭g th?ho祅 th祅h!");
			end
		else
			Say(CK_NPC_NAME.."Nhi謒 v?v蒼 ch璦 ho祅 th祅h!", 0);
		end
	end
end

--杀怪任务奖励(对外)
function ck_BZBD_Kill_Award()
	if ck_IsOpen() ~= 1 then
		return 0;
	end
	if ck_GetTitleType() == 0 then
		return 0;
	end
	local nParam = ck_BZBD_GetType(8, 9, 10);
	gf_ModifyExp(floor(3000000*(1 + nParam)));
	ck_AddCkScore(floor(10 * (1 + nParam)));
end

--杀怪任务对外接口
--仅设置加成系数
function _ck_BZBD_Kill_Set()
	--print("_ck_BZBD_Kill_Set()")
	gf_TeamOperateEX(function()
		if ck_IsOpen() ~= 1 then
			return 0;
		end
		if ck_GetTitleType() == 0 then
			return 0;
		end
		local nCount = 0;
		local nTaskIndex = 0;
		for i = 12, 16 do 
			--print(i, CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, i))
			if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, i) ~= 0 then
				nCount = nCount + 1;
				nTaskIndex = i - 11;
			end
		end
		--print("nCount =", nCount)
		if nCount ~= 2 then
			return 0;
		end
		ck_BZBD_SetType(8, 9, 10);
	end);
end

--百战不殆副本任务
--Task1:22-26记录，27-31接取
--Task2:1-5可交，6-10完成
function ck_BZBD_Raid()
	local nCount = 0;
	local nTaskIndex = 0;
	for i = 22, 26 do 
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, i) ~= 0 then
			nCount = nCount + 1;
			nTaskIndex = i - 21;
		end
	end
	if nCount ~= 1 then
		for i = 22, 31 do 
			CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, i, 0);
		end
		for i = 1, 10 do 
			CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task2, i, 0);
		end
		nTaskIndex = ck_GetRandIndex(getn(CK_TASK_BZ_RAID));
--		--关闭太一塔任务-------
--		if nTaskIndex == 5 then
--			nTaskIndex = 3;
--		end
--		-----------------------
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, 21 + nTaskIndex, 1);
	end
	local tMsg = {"Ch璦 nh薾", "Ch璦 ho祅 th祅h", "C?th?giao", "Х ho祅 th祅h"}
	local nType = 0;
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 26 + nTaskIndex) == 0 then
		nType = 1;
	else
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, nTaskIndex) == 0 then
			nType = 2;
		else
			if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, 5 + nTaskIndex) == 0 then
				nType = 3;
			else
				nType = 4;
			end
		end
	end
	DebugOutput(CK_TASK_BZ_RAID[nTaskIndex], tMsg[nType], nTaskIndex)
	local tSay = {
		format("%s(%s)/#ck_BZBD_Raid_do(%d)",	CK_TASK_BZ_RAID[nTaskIndex], tMsg[nType], nTaskIndex),
		"\nT玦 ch?xem xem th玦/nothing",
	}
	Say(CK_NPC_NAME.."Tr╩ Tr薾 Tr╩ Th緉g-Nhi謒 v?ph?b秐!", getn(tSay), tSay);
end

function ck_BZBD_Raid_do(nTaskIndex)
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, 26 + nTaskIndex) == 0 then
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task1, 26 + nTaskIndex, 1);
		Say(CK_NPC_NAME..format("Х nh薾 nhi謒 v?<color=gold>%s<color>", CK_TASK_BZ_RAID[nTaskIndex]), 0);
	else
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, nTaskIndex) == 0 then
			Say(CK_NPC_NAME..format("Ch璦 ho祅 th祅h nhi謒 v?<color=gold>%s<color>", CK_TASK_BZ_RAID[nTaskIndex]), 0);
		else
			if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, 5 + nTaskIndex) == 0 then
				CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task2, 5 + nTaskIndex, 1);
				--给奖励
				ck_BZBD_Raid_Award();
			else
				Say(CK_NPC_NAME..format("Х ho祅 th祅h nhi謒 v?<color=gold>%s<color>", CK_TASK_BZ_RAID[nTaskIndex]), 0);
			end
		end
	end	
end

--百战不殆副本任务奖励
function ck_BZBD_Raid_Award()
	local nParam = ck_BZBD_GetType(11, 12, 13);
	gf_ModifyExp(floor(5000000*(1 + nParam)));
	ck_AddCkScore(floor(15 * (1 + nParam)));
end

--副本任务对外接口
function _ck_BZBD_Raid_Set(nCurIndex)
	gf_TeamOperateEX(function()
		if ck_IsOpen() ~= 1 then
			return 0;
		end
		if ck_GetTitleType() == 0 then
			return 0;
		end
		local nCount = 0;
		local nTaskIndex = 0;
		for i = 22, 26 do 
			if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task1, i) ~= 0 then
				nCount = nCount + 1;
				nTaskIndex = i - 21;
			end
		end
		if nCount ~= 1 then
			return 0;
		end
		if tonumber(%nCurIndex) ~= nTaskIndex then
			return 0;
		end
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, nTaskIndex) ~= 1 then
			ck_BZBD_SetType(11, 12, 13);
			CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task2, nTaskIndex, 1);
			Msg2Player(format("Х ho祅 th祅h nhi謒 v?%s", CK_TASK_BZ_RAID[nTaskIndex]));
		end
	end);
end

--百战不殆PVP任务
--Task2:11-17记录，18-24接取，25-31可交
--Task3:1-7完成
function ck_BZBD_PVP()
	
--	if GetGlbValue(1023) == 92 then
--		local tSay = {
--			"Ta mu鑞 nh薾 thng nhi謒 v?PVP/ck_BZBD_PVP_Award",
--			"\nT玦 ch?xem xem th玦/nothing",
--		}
--		Say(CK_NPC_NAME.."Tr╩ Tr薾 Tr╩ Th緉g-Nhi謒 v?PVP!", getn(tSay), tSay);
--		return
--	end	
	
	local nCount = 0;
	local nTaskIndex = 0;
	for i = 11, 17 do 
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, i) ~= 0 then
			nCount = nCount + 1;
			nTaskIndex = i - 10;
		end
	end
	if nCount ~= 1 then
		for i = 18, 31 do 
			CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task2, i, 0);
		end
		for i = 1, 7 do 
			CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, i, 0);
		end
		nTaskIndex = random(7);
		--屏蔽3v3-------------
--		if nTaskIndex == 2 then
--			nTaskIndex = nTaskIndex + 1;
--		elseif nTaskIndex == 7 then
--			nTaskIndex = nTaskIndex - 1;
--		end
		----------------------
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task2, 10 + nTaskIndex, 1);
	end
	local tMsg = {"Ch璦 nh薾", "Ch璦 ho祅 th祅h", "C?th?giao", "Х ho祅 th祅h"}
	local nType = 0;
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, 17 + nTaskIndex) == 0 then
		nType = 1;
	else
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, 24 + nTaskIndex) == 0 then
			nType = 2;
		else
			if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, nTaskIndex) == 0 then
				nType = 3;
			else
				nType = 4;
			end
		end
	end
	local tSay = {
		format("%s(%s)/#ck_BZBD_PVP_do(%d)",	CK_TASK_BZ_PVP[nTaskIndex], tMsg[nType], nTaskIndex),
		"\nT玦 ch?xem xem th玦/nothing",
	}
	Say(CK_NPC_NAME.."Tr╩ Tr薾 Tr╩ Th緉g-Nhi謒 v?PVP!", getn(tSay), tSay);
end

function ck_BZBD_PVP_do(nTaskIndex)
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, 17 + nTaskIndex) == 0 then
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task2, 17 + nTaskIndex, 1);
		Say(CK_NPC_NAME..format("Х nh薾 <color=gold>%s<color>", CK_TASK_BZ_PVP[nTaskIndex]), 0);
	else
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, 24 + nTaskIndex) == 0 then
			Say(CK_NPC_NAME..format("Ch璦 ho祅 th祅h <color=gold>%s<color>", CK_TASK_BZ_PVP[nTaskIndex]), 0);
		else
			if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, nTaskIndex) == 0 then
				CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, nTaskIndex, 1);
				--给奖励
				ck_BZBD_PVP_Award();
			else
				Say(CK_NPC_NAME..format("Х ho祅 th祅h <color=gold>%s<color>", CK_TASK_BZ_PVP[nTaskIndex]), 0);
			end
		end
	end	
	--===========
	if nTaskIndex == 1 or nTaskIndex == 2 or nTaskIndex == 7 then
		local nTaskIndex = 0;
		for i = 11, 17 do 
			if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, i) ~= 0 then
--				nCount = nCount + 1;
				nTaskIndex = i - 10;
			end
		end
--		if nCount ~= 1 then
--			return 0;
--		end
--		if tonumber(%nCurIndex) ~= nTaskIndex then
--			return 0;
--		end
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, 24 + nTaskIndex) ~= 1 then
			--ck_BZBD_SetType(14, 15, 16);
			CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task2, 24 + nTaskIndex, 1);
			Msg2Player(format("Х ho祅 th祅h nhi謒 v?%s", CK_TASK_BZ_PVP[nTaskIndex]));
		end	
	end
	--===========
end

function ck_BZBD_PVP_Award()
	if GetGlbValue(1023) == 92 then
		if gf_GetTaskByte(TSK_NHIEMVUCDKEY,1) == 1 then
			Talk(1,"","C竎 h? nh薾 ph莕 thng ng祔 h玬 nay r錳. Xin vui l遪g quay l筰 ng祔 h玬 sau!")
			return
		end
		gf_ModifyExp(14400000);
		ck_AddCkScore(36);
	
		--Set nh薾 thng m鏸 ng祔
		gf_SetTaskByte(TSK_NHIEMVUCDKEY,1,1)
		return
	end
	
	local nParam = 0.8; --ck_BZBD_GetType(14, 15, 16);
	gf_ModifyExp(floor(8000000*(1 + nParam)));
	ck_AddCkScore(floor(20 * (1 + nParam)));
end

--PVP任务对外接口
function _ck_BZBD_PVP_Set(nCurIndex)
	gf_TeamOperateEX(function()
		if ck_IsOpen() ~= 1 then
			return 0;
		end
		if ck_GetTitleType() == 0 then
			return 0;
		end
		local nCount = 0;
		local nTaskIndex = 0;
		for i = 11, 17 do 
			if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, i) ~= 0 then
				nCount = nCount + 1;
				nTaskIndex = i - 10;
			end
		end
		if nCount ~= 1 then
			return 0;
		end
		if tonumber(%nCurIndex) ~= nTaskIndex then
			return 0;
		end
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task2, 24 + nTaskIndex) ~= 1 then
			--ck_BZBD_SetType(14, 15, 16);
			CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task2, 24 + nTaskIndex, 1);
			Msg2Player(format("Х ho祅 th祅h nhi謒 v?%s", CK_TASK_BZ_PVP[nTaskIndex]));
		end
	end);
end

function ck_FastTask()
	if ck_CheckCondition() ~= 1 then
		return 0;
	end
	local tSay = {
		"\nNhi謒 v?bang h閕/ck_FastTask_Tong",
		"\nNhi謒 v?hng d蒼/ck_FastTask_Guide",
		"\nT玦 ch?xem xem th玦/nothing",	
	}
	Say(CK_NPC_NAME.."Nhi謒 v?<color=gold>T鑓 Chi課 T鑓 Th緉g<color>, trong th阨 gian ho箃 ng ch?頲 ho祅 th祅h 1 l莕, nh薾 頲 nhi襲 kinh nghi謒 v? n╪g ng!", getn(tSay), tSay);		
end

function ck_FastTask_Tong()
	local tSay = {
		"\nGia nh藀 bang h閕/ck_FastTask_Tong_1",
		"\nT竔 chi課 Th莕 Th?ck_FastTask_Tong_2",
		"\nNng th辴 bang ph竔/ck_FastTask_Tong_3",
		"\nT玦 ch?xem xem th玦/nothing",	
	}
	Say(CK_NPC_NAME.."<color=gold>T鑓 Chi課 T鑓 Th緉g<color>-Nhi謒 v?bang h閕!", getn(tSay), tSay);		
end

--Task3：17位是否完成
function ck_FastTask_Tong_1(nFlag)
	if not nFlag then
		local tSay = {
			"\nHo祅 th祅h nhi謒 v?#ck_FastTask_Tong_1(1)",
			"\nT玦 ch?xem xem th玦/nothing",	
		}
		local Msg = format("T猲 nhi謒 v? <color=gold>%s<color>\n襲 ki謓 nhi謒 v?\n  %s\nHng d蒼 nhi謒 v?\n  %s\nPh莕 thng nhi謒 v?\n觤 kinh nghi謒: %d,  n╪g ng: %d",
			"Gia nh藀 bang h閕", "Gia nh藀 m閠 bang h閕 b蕋 k? tr?th祅h m閠 th祅h vi猲 trong bang", "Gia nh藀 bang h閕, c飊g v韎 th祅h vi猲 kh竎 c?g緉g  gi髉 bang h閕 ng祔 c祅g l韓 m筺h", 3000000, 100);
		Say(CK_NPC_NAME..Msg, getn(tSay), tSay);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 17) ~= 0 then
		Say(CK_NPC_NAME.."Х ho祅 th祅h nhi謒 v?n祔!", 0);
		return 0;
	end
	if IsTongMember() <= 0 then
		Say(CK_NPC_NAME.."Kh玭g th醓 甶襲 ki謓, kh玭g th?ho祅 th祅h nhi謒 v?", 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 17, 1);
	--奖励
	gf_ModifyExp(3000000);
	ck_AddCkScore(100);	
	Msg2Player("Nhi謒 v?ho祅 th祅h!");
end

--Task3：18位是否完成
function ck_FastTask_Tong_2(nFlag)
	if not nFlag then
		local tSay = {
			"\nHo祅 th祅h nhi謒 v?#ck_FastTask_Tong_2(1)",
			"\nT玦 ch?xem xem th玦/nothing",	
		}
		local Msg = format("T猲 nhi謒 v? <color=gold>%s<color>\n襲 ki謓 nhi謒 v?\n  %s\nHng d蒼 nhi謒 v?\n  %s\nPh莕 thng nhi謒 v?\n觤 kinh nghi謒: %d,  n╪g ng: %d",
			"T竔 chi課 Th莕 Th?, "N閜 300 甶觤 t輈h l騳 t?quang", "Tham gia T?Quang C竎 nh b筰 T?Quang Th莕 Th?s?nh薾 頲 甶觤 t輈h l騳 t?quang", 5000000, 200);
		Say(CK_NPC_NAME..Msg, getn(tSay), tSay);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 18) ~= 0 then
		Say(CK_NPC_NAME.."Х ho祅 th祅h nhi謒 v?n祔!", 0);
		return 0;
	end
	--扣紫光积分
	local TSK_POINT = 652;			--记录玩家个人关卡积分
	if GetTask(TSK_POINT) < 300 then
		Say(CK_NPC_NAME..format("觤 t輈h l騳 t?quang kh玭g  <color=red>%d<color> 甶觤", 300), 0);
		return 0;
	end
	SetTask(TSK_POINT, GetTask(TSK_POINT) - 300);
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 18, 1);
	--奖励
	gf_ModifyExp(5000000);
	ck_AddCkScore(200);
	Msg2Player("Nhi謒 v?ho祅 th祅h!");
end

--Task3：19位是否完成
function ck_FastTask_Tong_3(nFlag)
	if not nFlag then
		local tSay = {
			"\nHo祅 th祅h nhi謒 v?#ck_FastTask_Tong_3(1)",
			"\nT玦 ch?xem xem th玦/nothing",	
		}
		local Msg = format("T猲 nhi謒 v? <color=gold>%s<color>\n襲 ki謓 nhi謒 v?\n  %s\nHng d蒼 nhi謒 v?\n  %s\nPh莕 thng nhi謒 v?\n觤 kinh nghi謒: %d,  n╪g ng: %d",
			"Nng th辴 bang ph竔", "Tham d?t輓h n╪g Nng th辴 bang ph竔 n閜 10 M秐h L謓h B礽 Bang Ph竔", "Ho箃 ng Nng th辴 bang ph竔 v?c飊g th?v? mau 甶 thu th藀 M秐h L謓h B礽 Bang Ph竔 n祇!", 8000000, 300);
		Say(CK_NPC_NAME..Msg, getn(tSay), tSay);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 19) ~= 0 then
		Say(CK_NPC_NAME.."Х ho祅 th祅h nhi謒 v?n祔!", 0);
		return 0;
	end
	--扣碎片
	if DelItem(2, 1, 30588, 10) ~= 1 then
		Say(CK_NPC_NAME..format("<color=red>%s<color> trong t骾 kh玭g  <color=red>%d<color> c竔", "M秐h L謓h B礽 Bang H閕", 10), 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 19, 1);
	--奖励
	gf_ModifyExp(8000000);
	ck_AddCkScore(300);
	Msg2Player("Nhi謒 v?ho祅 th祅h!");
end

function ck_FastTask_Guide()
	local tSay = {
		"\nTh?th竛g/ck_FastTask_Guide_1",
		"\nThu鑓 vi猲/ck_FastTask_Guide_2",
		"\nC﹜ B竧 Nh?Nh?ck_FastTask_Guide_3",
		"\nN?Oa B秓 H筽 v?Ng玦 Sao May M緉/ck_FastTask_Guide_4",
		"\nT玦 ch?xem xem th玦/nothing",	
	}
	Say(CK_NPC_NAME.."<color=gold>T鑓 Chi課 T鑓 Th緉g<color>-Nhi謒 v?hng d蒼!", getn(tSay), tSay);	
end

--Task3：20位是否完成
function ck_FastTask_Guide_1(nFlag)
	if not nFlag then
		local tSay = {
			"\nHo祅 th祅h nhi謒 v?#ck_FastTask_Guide_1(1)",
			"\nT玦 ch?xem xem th玦/nothing",	
		}
		local Msg = format("T猲 nhi謒 v? <color=gold>%s<color>\n襲 ki謓 nhi謒 v?\n  %s\nHng d蒼 nhi謒 v?\n  %s\nPh莕 thng nhi謒 v?\n觤 kinh nghi謒: %d,  n╪g ng: %d",
			"Th?Th竛g", "K輈h ho箃 th?th竛g VIP v?l﹎", "K輈h ho箃 th?th竛g, ch琲 tr?ch琲 nh?nh祅g h琻", 8000000, 1200);
		Say(CK_NPC_NAME..Msg, getn(tSay), tSay);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 20) ~= 0 then
		Say(CK_NPC_NAME.."Х ho祅 th祅h nhi謒 v?n祔!", 0);
		return 0;
	end
	if IsActivatedVipCard() ~= 1 then
		Say(CK_NPC_NAME.."V蒼 ch璦 k輈h ho箃 th?th竛g, kh玭g th?ho祅 th祅h nhi謒 v?", 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 20, 1);
	--奖励
	gf_ModifyExp(8000000);
	ck_AddCkScore(1200);
	Msg2Player("Nhi謒 v?ho祅 th祅h!");
end

--Task3：21,22,23,24位
function ck_FastTask_Guide_2(nFlag)
	if not nFlag then
		local tSay = {
			"\nHo祅 th祅h nhi謒 v?#ck_FastTask_Guide_2(1)",
			"\nT玦 ch?xem xem th玦/nothing",	
		}
		local Msg = format("T猲 nhi謒 v? <color=gold>%s<color>\n襲 ki謓 nhi謒 v?\n  %s\nHng d蒼 nhi謒 v?\n  %s\nPh莕 thng nhi謒 v?\n觤 kinh nghi謒: %d,  n╪g ng: %d",
			"Thu鑓 vi猲", "Ph﹏ bi謙 s?d鬾g 1 l莕 B筩h C莡 Ho祅, Tam Thanh Ho祅 v?L鬰 Th莕 Ho祅", "S?d鬾g c竎 lo筰 thu鑓 s?gi髉 b筺 m閠 tay", 5000000, 300);
		Say(CK_NPC_NAME..Msg, getn(tSay), tSay);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 24) ~= 0 then
		Say(CK_NPC_NAME.."Х ho祅 th祅h nhi謒 v?n祔!", 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 21) ~= 1 then
		Say(CK_NPC_NAME..format("V蒼 ch璦 s?d鬾g b蕋 k?<color=red>%s<color>", "B筩h C﹗ Ho祅"), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 22) ~= 1 then
		Say(CK_NPC_NAME..format("V蒼 ch璦 s?d鬾g b蕋 k?<color=red>%s<color>", "Tam Thanh ho祅"), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 23) ~= 1 then
		Say(CK_NPC_NAME..format("V蒼 ch璦 s?d鬾g b蕋 k?<color=red>%s<color>", "L鬰 Th莕 ho祅"), 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 24, 1);
	--奖励
	gf_ModifyExp(5000000);
	ck_AddCkScore(300);
	Msg2Player("Nhi謒 v?ho祅 th祅h!");
end

--使用白驹丸
function _ck_UseItemBaiJu()
	if ck_IsOpen() ~= 1 then
		return 0;
	end
	if ck_GetTitleType() == 0 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 21, 1);
end

--使用三清丸
function _ck_UseItemSanQing()
	if ck_IsOpen() ~= 1 then
		return 0;
	end
	if ck_GetTitleType() == 0 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 22, 1);
end

--使用六神丸
function _ck_UseItemLiuShen()
	if ck_IsOpen() ~= 1 then
		return 0;
	end
	if ck_GetTitleType() == 0 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 23, 1);
end

--Task3：25,26位
function ck_FastTask_Guide_3(nFlag)
	if not nFlag then
		local tSay = {
			"\nHo祅 th祅h nhi謒 v?#ck_FastTask_Guide_3(1)",
			"\nT玦 ch?xem xem th玦/nothing",	
		}
		local Msg = format("T猲 nhi謒 v? <color=gold>%s<color>\n襲 ki謓 nhi謒 v?\n  %s\nHng d蒼 nhi謒 v?\n  %s\nPh莕 thng nhi謒 v?\n觤 kinh nghi謒: %d,  n╪g ng: %d",
			"C﹜ B竧 Nh?nh?, "Tr錸g 1 C﹜ B竧 Nh?Nh?, "Tr錸g C﹜ B竧 Nh?Nh? nh薾 頲 ph莕 thng kinh nghi謒", 5000000, 600);
		Say(CK_NPC_NAME..Msg, getn(tSay), tSay);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 26) ~= 0 then
		Say(CK_NPC_NAME.."Х ho祅 th祅h nhi謒 v?n祔!", 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 25) ~= 1 then
		Say(CK_NPC_NAME..format("V蒼 ch璦 tr錸g <color=red>%s<color>", "C﹜ B竧 Nh?nh?), 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 26, 1);
	--奖励
	gf_ModifyExp(5000000);
	ck_AddCkScore(600);
	Msg2Player("Nhi謒 v?ho祅 th祅h!");
end

--种植小般若树种
function _ck_PlantSmallBanRuo()
	if ck_IsOpen() ~= 1 then
		return 0;
	end
	if ck_GetTitleType() == 0 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 25, 1);	
end

--Task3：27,28,29位
function ck_FastTask_Guide_4(nFlag)
	if not nFlag then
		local tSay = {
			"\nHo祅 th祅h nhi謒 v?#ck_FastTask_Guide_4(1)",
			"\nT玦 ch?xem xem th玦/nothing",	
		}
		local Msg = format("T猲 nhi謒 v? <color=gold>%s<color>\n襲 ki謓 nhi謒 v?\n  %s\nHng d蒼 nhi謒 v?\n  %s\nPh莕 thng nhi謒 v?\n觤 kinh nghi謒: %d,  n╪g ng: %d",
			"N?Oa B秓 H筽 v?Ng玦 Sao May M緉", "S?d鬾g 1 l莕 N?Oa B秓 H筽 v?Ng玦 Sao May M緉", "N?Oa B秓 H筽 v?Ng玦 Sao May M緉 l?b秓 v藅, m?ra xem th?b猲 trong c?ph莕 thng kh玭g", 5000000, 900);
		Say(CK_NPC_NAME..Msg, getn(tSay), tSay);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 29) ~= 0 then
		Say(CK_NPC_NAME.."Х ho祅 th祅h nhi謒 v?n祔!", 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 27) ~= 1 then
		Say(CK_NPC_NAME..format("V蒼 ch璦 s?d鬾g b蕋 k?<color=red>%s<color>", "N?Oa B秓 H筽"), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task3, 28) ~= 1 then
		Say(CK_NPC_NAME..format("V蒼 ch璦 s?d鬾g b蕋 k?<color=red>%s<color>", "Ng玦 sao may m緉"), 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 29, 1);
	--奖励
	gf_ModifyExp(5000000);
	ck_AddCkScore(900);
	Msg2Player("Nhi謒 v?ho祅 th祅h!");
end

--使用女娲宝盒
function _ck_UseItemNvWa()
	if ck_IsOpen() ~= 1 then
		return 0;
	end
	if ck_GetTitleType() == 0 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 27, 1);	
end

--使用幸运星
function _ck_UseItemLuckyStart()
	if ck_IsOpen() ~= 1 then
		return 0;
	end
	if ck_GetTitleType() == 0 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task3, 28, 1);		
end

function ck_ZiloTask()
	if ck_CheckCondition() ~= 1 then
		return 0;
	end
	local tSay = {
		"\nNhi謒 v?t輈h l騳 thu閏 t輓h/ck_ZiloTask_1",
		"\nNhi謒 v?ti猽 ph?秈/ck_ZiloTask_2",
		"\nT玦 ch?xem xem th玦/nothing",	
	}
	Say(CK_NPC_NAME.."Nhi謒 v?<color=gold>Чi Ph?g<color>, trong th阨 gian ho箃 ng ch?頲 ho祅 th祅h 1 l莕, c?th?nh薾 頲 nhi襲 kinh nghi謒 v? n╪g ng!", getn(tSay), tSay);		
end

--Task4：1-7完成情况
function ck_ZiloTask_1(bTalk)
	local nTaskIndex = 0;
	for i = CK_TASK_ZILON_ATRR_BEGIN, getn(CK_TASK_ZILON_ATRR) do
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task4, i) ~= 1 then
			nTaskIndex = i;
			break;
		end
	end
	if nTaskIndex == 0 then
		Say(CK_NPC_NAME..format("Ch骳 m鮪g %s  ho祅 th祅h to祅 b?<color=gold>nhi謒 v?t輈h l騳 thu閏 t輓h<color>!", gf_GetPlayerSexName()), 0)
		return 0;
	end
	local tCell = CK_TASK_ZILON_ATRR[nTaskIndex];
	if not tCell then  return 0; end
	if not bTalk then
		local tSay = {
			"\nTa mu鑞 ho祅 th祅h/#ck_ZiloTask_1(1)",
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Str = format("Nh﹏ v藅  t chuy觧 sinh %d c蕄 %d, t輈h l騳 %d 甶觤 danh v鋘g, %d 甶觤 s?m玭, %d 甶觤 c玭g tr筺g", tCell[2][1], tCell[2][2], tCell[2][3], tCell[2][4], tCell[2][5]);
		local Msg = format("T猲 nhi謒 v? <color=gold>%s<color>\n襲 ki謓 nhi謒 v?\n  %s\nHng d蒼 nhi謒 v?\n  %s\nPh莕 thng nhi謒 v?\n觤 kinh nghi謒: %d,  n╪g ng: %d",	tCell[1], Str, "N?l鵦 t輈h l騳 s?gi髉 b秐 th﹏ ng祔 c祅g l韓 m筺h", tCell[3][1], tCell[3][2]);
		Say(CK_NPC_NAME..Msg, getn(tSay), tSay);
		return 0;
	end
	if gf_GetPlayerRebornCount() < tCell[2][1] then
		Say(CK_NPC_NAME..format("C蕄 chuy觧 sinh c馻 %s kh玭g  <color=red>%d<color>", gf_GetPlayerSexName(), tCell[2][1]), 0);
		return 0;
	end
	if GetLevel() < tCell[2][2] and gf_GetPlayerRebornCount() <= tCell[2][1] then
		Say(CK_NPC_NAME..format("Ъng c蕄 c馻 %s kh玭g  <color=red>%d<color>", gf_GetPlayerSexName(), tCell[2][2]), 0);
		return 0;
	end
	if GetReputation() < tCell[2][3] then
		Say(CK_NPC_NAME..format("觤 t輈h l騳 danh v鋘g c馻 %s kh玭g  <color=red>%d<color> 甶觤", gf_GetPlayerSexName(), tCell[2][3]), 0);
		return 0;
	end
	if GetTask(336) < tCell[2][4] then
		Say(CK_NPC_NAME..format("觤 t輈h l騳 s?m玭 c馻 %s kh玭g  <color=red>%d<color> 甶觤", gf_GetPlayerSexName(), tCell[2][4]), 0);
		return 0;
	end
	if abs(GetTask(701)) < tCell[2][5] then
		Say(CK_NPC_NAME..format("觤 t輈h l騳 c玭g tr筺g c馻 %s kh玭g  <color=red>%d<color> 甶觤", gf_GetPlayerSexName(), tCell[2][5]), 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task4, nTaskIndex, 1);
	--奖励
	gf_ModifyExp(tCell[3][1]);
	ck_AddCkScore(tCell[3][2]);
	Msg2Player("Nhi謒 v?ho祅 th祅h!")
	ck_ZiloTask_1();
end

--Task4：8-12完成情况
function ck_ZiloTask_2(bTalk)
	local nTaskIndex = 0;
	for i = CK_TASK_IB_COST_BEGIN, CK_TASK_IB_COST_BEGIN+getn(CK_TASK_IB_COST)-1 do
		if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Task4, i) ~= 1 then
			nTaskIndex = i - CK_TASK_IB_COST_BEGIN + 1;
			break;
		end
	end
	if nTaskIndex == 0 then
		Say(CK_NPC_NAME..format("Ch骳 m鮪g %s  ho祅 th祅h to祅 b?<color=gold>nhi謒 v?ti猽 ph?color>!", gf_GetPlayerSexName()), 0)
		return 0;
	end
	local tCell = CK_TASK_IB_COST[nTaskIndex];
	if not tCell then  return 0; end
	if not bTalk then
		local tSay = {
			"\nTa mu鑞 ho祅 th祅h/#ck_ZiloTask_2(1)",
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Str = format("Trong 秈 b蕋 k?c馻 мa Huy襫 Cung, V筺 Ki誱 Tr騨g, Lng S琻 v?Th竔 Nh蕋 Th竝 t輈h l騳 s?d鬾g %d Thi猲 Ki猽 L謓h  m?rng", tCell[2]);
		local Msg = format("T猲 nhi謒 v? <color=gold>%s<color>\n襲 ki謓 nhi謒 v?\n  %s\nHng d蒼 nhi謒 v?\n  %s\nPh莕 thng nhi謒 v?\n觤 kinh nghi謒: %d,  n╪g ng: %d", tCell[1], Str, "D飊g Thi猲 Ki猽 L謓h  m?rng s?nh薾 頲 ph莕 thng phong ph?, tCell[3][1], tCell[3][2]);
		Say(CK_NPC_NAME..Msg, getn(tSay), tSay);
		return 0;
	end
	if ck_GetCostIB() < tCell[2] then
		Say(CK_NPC_NAME..format("?秈 hi謓 t筰, s?lng Thi猲 Ki猽 L謓h do %s ti猽 ph?kh玭g  <color=red>%d<color> c竔", gf_GetPlayerSexName(), tCell[2]), 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Task4, CK_TASK_IB_COST_BEGIN + nTaskIndex - 1, 1);
	--奖励
	gf_ModifyExp(tCell[3][1]);
	ck_AddCkScore(tCell[3][2]);
	Msg2Player("Nhi謒 v?ho祅 th祅h!")
	ck_ZiloTask_2();
end

--关卡消费天骄令Task5
function ck_GetCostIB()
	return CK_TASK_GROUP:GetTask(CK_TASK_GROUP.Task5);
end

--关卡消费对外接口Task5
function _ck_SetCostIB(nNum)
	if ck_IsOpen() ~= 1 then
		--print("SetCostIB",nNum,"not open")
		return 0;
	end
	if ck_GetTitleType() == 0 then
		--print("SetCostIB",nNum,"no titile")
		return 0;
	end
	nNum = nNum or 1;
	--print("GetCostIB",ck_GetCostIB(),CK_TASK_GROUP.Task5)
	CK_TASK_GROUP:SetTask(CK_TASK_GROUP.Task5, ck_GetCostIB() + tonumber(nNum));
end

function ck_QueryScore()
	Say(CK_NPC_NAME..format("%s b﹜ gi?甶觤 n╪g ng l?<color=gold>%d<color>!", gf_GetPlayerSexName(), ck_GetCkScore()), 0);	
end

function ck_ScoreAward()
	cd_tbRoute = {[2] = 1, [4] = 1, [3] = 1, [6] = 1, [8] = 1, [9] = 1, [11] = 1, [12] = 1, [14] = 1, [15] = 1, [17] = 1, [18] = 1, [20] = 1, [21] = 1, [23] = 1, [29] = 1,[30] = 1,}
	local nRoute = GetPlayerRoute()
	if cd_tbRoute [nRoute] ~= 1 then
		Talk(1, "", CK_NPC_NAME.." Ch璦 gia nh藀 h?ph竔, kh玭g th?nh薾 thng.");
		return 0
	end
	local nScore = ck_GetCkScore();
	local tMsg = {
		[0] = "Ch璦 ho祅 th祅h",
		[1] = "Х ho祅 th祅h",
	}
	local tSay = {};
	for i = 1, getn(CK_SCROE_AWARD_TABLE) do
		local nType = CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, i);
		tinsert(tSay, format("%d gi秈 thng 甶觤 n╪g ng (%s)/#ck_ScoreAward_func_%d(%d, %d)", CK_SCROE_AWARD_TABLE[i], tMsg[nType], i, nScore, CK_SCROE_AWARD_TABLE[i]));
	end
	tinsert(tSay, "T筰 h?ch?xem qua th玦/nothing");
	Say(CK_NPC_NAME..format("%s b﹜ gi?甶觤 n╪g ng l?<color=gold>%d<color>,h穣 nh薾 gi秈 thng!", gf_GetPlayerSexName(), nScore), getn(tSay), tSay);
end

function ck_ScoreAward_func_1(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_1(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 1000000, 100, 100, 1000, 10000)..",".."Ф th玭g c秐h gi韎 V?Hi襫"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 1) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	if GetLevel() < 90 then
		Say(CK_NPC_NAME..format("Ъng c蕄 ngi kh玭g  %d c蕄, kh玭g 頲 nh薾 thng!", 90), 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 1, 1);
	gf_Modify("Exp", 1000000);
	gf_Modify("Rep", 100);
	gf_Modify("ShiMen", 100);
	gf_Modify("JunGong", 1000);
	local nLevel = MeridianGetLevel()
	if nLevel < 1 then
		for i = nLevel + 1, 1 do
			MeridianUpdateLevel()
		end
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	else
		gf_Modify("Exp", 1000000);
	end
	gf_Modify("ZhenQi", 10000);
end

function ck_ScoreAward_func_2(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_2(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 2000000, 160, 160, 1400, 0)..",".."N鉵 Di謚 Dng (Theo ki觰 h譶h, l璾 ph竔)"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 2) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 2, 1);
	gf_Modify("Exp", 2000000);
	gf_Modify("Rep", 160);
	gf_Modify("ShiMen", 160);
	gf_Modify("JunGong", 1400);
--==============
--	if gf_GetPlayerRebornCount() < 1 then
--		gf_SetTaskByte(1538, 1, 1); 			--1转
--		SetLevel(90, 1);								  --90级
--		Msg2Player("Th╪g c蕄 chuy觧 sinh th祅h c玭g!");
--		PlaySound("\\sound\\sound_i016.wav");
--		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
--	else
--		gf_Modify("Exp", 2000000);
--	end
--===============
	ahf_GetYaoYangByRouteBody(VET_YAOYANG_CAP);
end

function ck_ScoreAward_func_3(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_3(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 3000000, 220, 220, 1800, 15000)..",".."Ф th玭g c秐h gi韎 V?Tng"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 3) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	if GetLevel() < 90 then
		Say(CK_NPC_NAME..format("Ъng c蕄 ngi kh玭g  %d c蕄, kh玭g 頲 nh薾 thng!", 90), 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 3, 1);
	gf_Modify("Exp", 3000000);
	gf_Modify("Rep", 220);
	gf_Modify("ShiMen", 220);
	gf_Modify("JunGong", 1800);
	local nLevel = MeridianGetLevel()
	if nLevel < 2 then
		for i = nLevel + 1, 2 do
			MeridianUpdateLevel()
		end
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	else
		gf_Modify("Exp", 3000000);
	end	
	gf_Modify("ZhenQi", 15000);
end

function ck_ScoreAward_func_4(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_4(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 4000000, 280, 280, 2200, 0)..",".."竜 Di謚 Dng (Theo ki觰 h譶h, l璾 ph竔)"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 4) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 4, 1);
	gf_Modify("Exp", 4000000);
	gf_Modify("Rep", 280);
	gf_Modify("ShiMen", 280);
	gf_Modify("JunGong", 2200);
--	if gf_GetPlayerRebornCount() < 2 then
--		gf_SetTaskByte(1538, 1, 2); 			--1转
--		SetLevel(90, 1);								  --90级
--		Msg2Player("Th╪g c蕄 chuy觧 sinh th祅h c玭g!");
--		PlaySound("\\sound\\sound_i016.wav");
--		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
--	else
--		gf_Modify("Exp", 4000000);
--	end
	ahf_GetYaoYangByRouteBody(VET_YAOYANG_CLOTH);
end

function ck_ScoreAward_func_5(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_5(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 5000000, 340, 340, 2600, 25000)..",".."Ф th玭g c秐h gi韎 V?Vng"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 5) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	if GetLevel() < 90 then
		Say(CK_NPC_NAME..format("Ъng c蕄 ngi kh玭g  %d c蕄, kh玭g 頲 nh薾 thng!", 90), 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 5, 1);
	gf_Modify("Exp", 5000000);
	gf_Modify("Rep", 340);
	gf_Modify("ShiMen", 340);
	gf_Modify("JunGong", 2600);
	local nLevel = MeridianGetLevel()
	if nLevel < 3 then
		for i = nLevel + 1, 3 do
			MeridianUpdateLevel()
		end
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	else
		gf_Modify("Exp", 5000000);
	end	
	gf_Modify("ZhenQi", 25000);
end

function ck_ScoreAward_func_6(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_6(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 6000000, 400, 400, 3000, 0)..",".."Qu莕 Di謚 Dng (Theo ki觰 h譶h, l璾 ph竔)"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 6) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 6, 1);
	gf_Modify("Exp", 6000000);
	gf_Modify("Rep", 400);
	gf_Modify("ShiMen", 400);
	gf_Modify("JunGong", 3000);
--	if gf_GetPlayerRebornCount() < 3 then
--		gf_SetTaskByte(1538, 1, 3); 			--1转
--		SetLevel(90, 1);								  --90级
--		Msg2Player("Th╪g c蕄 chuy觧 sinh th祅h c玭g!");
--		PlaySound("\\sound\\sound_i016.wav");
--		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
--	else
--		gf_Modify("Exp", 6000000);
--	end
	ahf_GetYaoYangByRouteBody(VET_YAOYANG_SHOE);
end

function ck_ScoreAward_func_7(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_7(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 7000000, 460, 460, 3400, 30000)..",".."Huy Chng Ng?H祅h (T?ch鋘)"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 7) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	local tDialog = {}
	for i = 1, getn(CK_JS_HUIZHANG) do
		DebugOutput(CK_JS_HUIZHANG[i][1], i)
		tinsert(tDialog, format("%s/#ck_ScoreAward_func_7_Do(%d)", CK_JS_HUIZHANG[i][1], i));
	end
	tinsert(tDialog, "\nT玦 ch?xem xem th玦/nothing");
	Say(CK_NPC_NAME.."H穣 ch鋘 lo筰 c莕:", getn(tDialog), tDialog);	
end

function  ck_ScoreAward_func_7_Do(nIndex)
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 7, 1);
	gf_Modify("Exp", 7000000);
	gf_Modify("Rep", 460);
	gf_Modify("ShiMen", 460);
	gf_Modify("JunGong", 3400);
	gf_Modify("ZhenQi", 30000);
	gf_AddItemEx2(CK_JS_HUIZHANG[nIndex][2], CK_JS_HUIZHANG[nIndex][1], "CDKEY", "CDKEY", 0, 1);
end

function ck_ScoreAward_func_8(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_8(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 8000000, 520, 520, 3800, 0)..",".."U萵 Linh C蕄 4"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 8) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	ck_ScoreAward_func_8_Do()
--	local tDialog = {}
--	for i = 1, getn(CK_YAOYANG_JIEZI_1) do
--		tinsert(tDialog, format("%s/#ck_ScoreAward_func_8_Do(%d)", CK_YAOYANG_JIEZI_1[i][1], i));
--	end
--	tinsert(tDialog, "\n我只是看看而已/nothing");
--	Say(CK_NPC_NAME.."请选择你需要的类型：", getn(tDialog), tDialog);		
end

function ck_ScoreAward_func_8_Do(nIndex)
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 8, 1);
	gf_Modify("Exp", 8000000);
	gf_Modify("Rep", 520);
	gf_Modify("ShiMen", 520);
	gf_Modify("JunGong", 3800);
--	if gf_GetPlayerRebornCount() < 4 then
--		gf_SetTaskByte(1538, 1, 4); 			--1转
--		SetLevel(90, 1);								  --90级
--		Msg2Player("Th╪g c蕄 chuy觧 sinh th祅h c玭g!");
--		PlaySound("\\sound\\sound_i016.wav");
--		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
--	else
--		gf_Modify("Exp", 10000000);
--	end
	gf_AddItemEx2({2, 1, 30614, 1, 1}, "L玦 H?Tinh Ph竎h", "CDKEY", "CDKEY", 0, 1);
	--gf_AddItemEx2(CK_YAOYANG_JIEZI_1[nIndex][2], CK_YAOYANG_JIEZI_1[nIndex][1], "CDKEY", "CDKEY", 0, 1);
	--4级蕴灵
	local nRandIndex = random(getn(CK_4_LEVEL_YUNLING));
	gf_AddItemEx2(CK_4_LEVEL_YUNLING[nRandIndex][2], CK_4_LEVEL_YUNLING[nRandIndex][1], "CDKEY", "CDKEY", 0, 1)
end

function ck_ScoreAward_func_9(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_9(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 9000000, 580, 580, 4200, 0)..",".."Chuy觧 sinh 5 c蕄 90"..",".."V?Kh?Di謚 Dng (Theo ki觰 h譶h, l璾 ph竔)"..",".."L玦 H?Tinh Ph竎h*1"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 9) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	if GetPlayerRoute() == 0 then
		Talk(1, "", CK_NPC_NAME.." Ch璦 gia nh藀 h?ph竔, kh玭g th?nh薾 thng.");
		return 0
	end
--	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 9, 1);
--	gf_Modify("Exp", 9000000);
--	gf_Modify("Rep", 580);
--	gf_Modify("ShiMen", 580);
--	gf_Modify("JunGong", 4200);
	if gf_GetPlayerRebornCount() < 5 or (gf_GetPlayerRebornCount() == 5 and GetLevel() < 90) then
--		gf_SetTaskByte(1538, 1, 5); 			--1转
--		SetLevel(90, 1);								  --90级
--		Msg2Player("Th╪g c蕄 chuy觧 sinh th祅h c玭g!");
--		PlaySound("\\sound\\sound_i016.wav");
--		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
		ck_chuyensinh()
	else
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 9, 1);
		gf_Modify("Exp", 13000000); --exp bonus n誹  CS r錳
		gf_Modify("Exp", 9000000);
		gf_Modify("Rep", 580);
		gf_Modify("ShiMen", 580);
		gf_Modify("JunGong", 4200);		
		ahf_GetYaoYangWeaponRand(1);
		gf_AddItemEx2({2, 1, 30614, 1}, "L玦 H?Tinh Ph竎h", "CDKEY", "CDKEY", 0, 1);
	end
--	ahf_GetYaoYangWeaponRand(1);
--	gf_AddItemEx2({2, 1, 30614, 1}, "L玦 H?Tinh Ph竎h", "CDKEY", "CDKEY", 0, 1);
end

function ck_ScoreAward_func_10(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_10(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 10000000, 580, 580, 4200, 0)..",".."N鉵 Chi課 Cu錸g (Theo ki觰 h譶h, l璾 ph竔)"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 10) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 10, 1);
	gf_Modify("Exp", 10000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);
	--战狂头部
	ahf_GetEquipByRouteBody(VET_ZHANKUANG_CAP);
end

function ck_ScoreAward_func_11(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_11(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 11000000, 580, 580, 4200, 0)..",".."竜 Kho竎 Ng?H祅h (T?ch鋘)"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 11) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	local tDialog = {}
	for i = 1, getn(CK_JS_GUAIYI) do
		tinsert(tDialog, format("%s/#ck_ScoreAward_func_11_Do(%d)", CK_JS_GUAIYI[i][1], i));
	end
	tinsert(tDialog, "\nT玦 ch?xem xem th玦/nothing");
	Say(CK_NPC_NAME.."H穣 ch鋘 lo筰 c莕:", getn(tDialog), tDialog);	
end

function ck_ScoreAward_func_11_Do(nIndex)
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 11, 1);
	gf_Modify("Exp", 11000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);
	gf_AddItemEx2(CK_JS_GUAIYI[nIndex][2], CK_JS_GUAIYI[nIndex][1], "CDKEY", "CDKEY", 0, 1);
end

function ck_ScoreAward_func_12(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_12(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 12000000, 580, 580, 4200, 0)..",".."Chi課 H礽 Ng?H祅h (T?ch鋘)"..",".."T?ch鋘  trang s鴆 c蕄 2 Di謚 Dng"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 12) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	local tDialog = {}
	for i = 1, getn(CK_JS_SHOE) do
		tinsert(tDialog, format("%s/#ck_ScoreAward_func_12_Do(%d)", CK_JS_SHOE[i][1], i));
	end
	tinsert(tDialog, "\nT玦 ch?xem xem th玦/nothing");
	Say(CK_NPC_NAME.."H穣 ch鋘 lo筰 c莕:", getn(tDialog), tDialog);	
end

function ck_ScoreAward_func_12_Do(nIndex)
	local tDialog = {}
	for i = 1, getn(CK_YAOYANG_JIEZI_2) do
		tinsert(tDialog, format("%s/#ck_ScoreAward_func_12_Do2(%d,%d)", CK_YAOYANG_JIEZI_2[i][1], nIndex,i));
	end
	tinsert(tDialog, "\nT玦 ch?xem xem th玦/nothing");
	Say(CK_NPC_NAME.."H穣 ch鋘 lo筰 c莕:", getn(tDialog), tDialog);
end

function ck_ScoreAward_func_12_Do2(nIndex1,nIndex2)
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 12, 1);
	gf_Modify("Exp", 12000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);
	gf_AddItemEx2(CK_JS_SHOE[nIndex1][2], CK_JS_SHOE[nIndex1][1], "CDKEY", "CDKEY", 0, 1)
	gf_AddItemEx2(CK_YAOYANG_JIEZI_2[nIndex2][2], CK_YAOYANG_JIEZI_2[nIndex2][1], "CDKEY", "CDKEY", 0, 1)
end

function ck_ScoreAward_func_13(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_13(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 18000000, 580, 580, 4200, 0)..",".."U萵 Linh C蕄 5"..",".."竜 Chi課 Cu錸g (Theo ki觰 h譶h, l璾 ph竔)"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 13) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	
    if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 13, 1);
	gf_Modify("Exp", 18000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);
	--5级蕴灵
	local nRandIndex = random(getn(CK_5_LEVEL_YUNLING));
	gf_AddItemEx2(CK_5_LEVEL_YUNLING[nRandIndex][2], CK_5_LEVEL_YUNLING[nRandIndex][1], "CDKEY", "CDKEY", 0, 1)
	
	ahf_GetEquipByRouteBody(VET_ZHANKUANG_CLOTH);
end

--function ck_ScoreAward_func_13_Do(nIndex)

--end

function ck_ScoreAward_func_14(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_14(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 28000000, 580, 580, 4200, 0)..",".."T?ch鋘  trang s鴆 c蕄 2 Di謚 Dng"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 14) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	local tDialog = {}
	for i = 1, getn(CK_YAOYANG_JIEZI_2) do
		tinsert(tDialog, format("%s/#ck_ScoreAward_func_14_Do(%d)", CK_YAOYANG_JIEZI_2[i][1], i));
	end
	tinsert(tDialog, "\nT玦 ch?xem xem th玦/nothing");
	Say(CK_NPC_NAME.."H穣 ch鋘 lo筰 c莕:", getn(tDialog), tDialog);	
	
end

function ck_ScoreAward_func_14_Do(nIndex)
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 14, 1);
	gf_Modify("Exp", 28000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);
	
	gf_AddItemEx2(CK_YAOYANG_JIEZI_2[nIndex][2], CK_YAOYANG_JIEZI_2[nIndex][1], "CDKEY", "CDKEY", 0, 1)
	
end

function ck_ScoreAward_func_15(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_15(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 32000000, 580, 580, 4200, 0)..",".."Qu莕 Chi課 Cu錸g  (Theo ki觰 h譶h, l璾 ph竔)"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 15) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 15, 1);
	gf_Modify("Exp", 32000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);
	--战狂裤子
	ahf_GetEquipByRouteBody(VET_ZHANKUANG_SHOE);
end

function ck_ScoreAward_func_16(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_16(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 36000000, 580, 580, 4200, 0)..",".."6 chuy觧 90 c蕄"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 16) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	-----------------
--	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 16, 1);
--	gf_Modify("Exp", 36000000);
--	gf_Modify("Rep", 580);
--	gf_Modify("ShiMen", 580);
--	gf_Modify("JunGong", 4200);
	local nChuyenSinh = (GetTranslifeCount() + GetPlayerRebornParam(0)) * 100 + GetLevel()			
	if nChuyenSinh < 690 then
--		gf_SetTaskByte(1538, 1, 5); 			--1转
--		PlayerReborn(1,random(1,4))
--		SetLevel(90, 1);								  --90级
--		Msg2Player("Th╪g c蕄 chuy觧 sinh th祅h c玭g!");
--		PlaySound("\\sound\\sound_i016.wav");
--		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
		ck_phucsinh1()
	else
		gf_Modify("Exp", 30000000);
		gf_Modify("Exp", 36000000);
		gf_Modify("Rep", 580);
		gf_Modify("ShiMen", 580);
		gf_Modify("JunGong", 4200);
		CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 16, 1);
	end
end

function ck_ScoreAward_func_17(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_17(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 40000000, 580, 580, 4200, 0)..",".."V?kh?Chi課 Cu錸g(theo d竛g ngi l璾 ph竔)"..",".."Tr鴑g Linh Th?Trung"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 17) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	if gf_Judge_Room_Weight(3, 100, " ") ~= 1 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 17, 1);
	gf_Modify("Exp", 40000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);
	gf_AddItemEx2({2, 1, 30727, 1, 4}, "Tr鴑g Linh Th?Trung", "CDKEY", "CDKEY", 0, 1)
	ahf_GetEquipByRouteBody(VET_ZHANKUANG_WEAPON)
end

function ck_ScoreAward_func_18(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_18(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 44000000, 580, 580, 4200, 0)..",".."Ng蓇 nhi猲  qu?c蕄 4~6"..",".."Tr鴑g Linh Th?Trung"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 18) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	if gf_Judge_Room_Weight(3, 200, " ") ~= 1 then
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 18, 1);
	gf_Modify("Exp", 44000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);
	gf_AddItemEx2({2, 1, 30727, 1, 4}, "Tr鴑g Linh Th?Trung", "CDKEY", "CDKEY", 0, 1)
	ck_GiveRandGem456()
end

function ck_ScoreAward_func_19(nCurScore, nNeedScore, bTalk)
	if not bTalk then
		local tSay = {
			format("\n Nh薾 ph莕 thng/#ck_ScoreAward_func_19(%d,%d,1)", nCurScore, nNeedScore),
			"\nT玦 ch?xem xem th玦/nothing",
		}
		local Msg = format("Kinh nghi謒 %s, danh v鋘g %d, 甶觤 s?m玭 %d, 甶觤 c玭g tr筺g %d, 甶觤 ch﹏ kh?%d", 48000000, 580, 580, 4200, 0)..",".."Danh hi謚 [Nhi謒 V?Чt Nh﹏]"
		Say(CK_NPC_NAME..format("Hi謓 t筰 c?th?nh薾 ph莕 thng:\n   <color=green>%s<color>\n<color=red>Khi kh玭g th?cho th猰 ph莕 thng th?s?d飊g 甶觤 kinh nghi謒  thay th?color>", Msg), getn(tSay), tSay);
		return 0;
	end
	if tonumber(nCurScore) < tonumber(nNeedScore) then
		Say(CK_NPC_NAME..format("觤 n╪g ng ch璦 t <color=red>%d<color>, kh玭g th?nh薾 thng!", tonumber(nNeedScore)), 0);
		return 0;
	end
	if CK_TASK_GROUP:GetTaskBit(CK_TASK_GROUP.Award, 19) ~= 0 then
		Say(CK_NPC_NAME.."Х nh薾 ph莕 thng n祔 r錳!", 0);
		return 0;
	end
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 19, 1);
	gf_Modify("Exp", 48000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);
	AddTitle(68, 4);
	SetTitleTime(68, 4, GetTime() + 60 * 24 * 3600);
	Msg2Player(format("Nh薾 頲 danh hi謚 [%s]", "Nhi謒 V?Чt Nh﹏"))
end


function ck_chuyensinh()
	local tSay = 	{
							"Tu luy謓 theo hng Long T?/#ck_select_translife(1)",
							"Tu luy謓 theo hng H?T?/#ck_select_translife(2)",
							"Tu luy謓 theo hng Ph鬾g T?/#ck_select_translife(4)",
							"Tu luy謓 theo hng g T?/#ck_select_translife(3)",
							"Ta suy ngh?l筰 /nothing",
						}
	Say("H鏽 Nguy猲 C玭g th鵦 ch蕋 c?4 hng tu luy謓, ngi mu鑞 theo hng n祇?",getn(tSay),tSay)
end

function ck_select_translife(nType)
	if  IsPlayerDeath() ~= 0 then
		Talk(1,"","Ngi ch琲 c遪 s鑞g m韎 頲 chuy觧 sinh")
		return
	end	
	local nRoute = GetPlayerRoute()
	if gf_GetPlayerRebornCount() < 5 and gf_GetPlayerRebornCount() > 0 then
		local nTransCount_1 = GetTranslifeCount()	
		RemoveTitle(ck_tb_translife_tittle[nTransCount_1][nRoute][2], ck_tb_translife_tittle[nTransCount_1][nRoute][3])
	end
	-- Set s?l莕 chuy觧 sinh
	gf_SetTaskByte(TRANSLIFE_TASK_ID, TRANSLIFE_BYTE_COUNT, 5) --5 l莕 chuy觧 sinh
	-- Set hng chuy觧 sinh
	gf_SetTaskByte(TRANSLIFE_TASK_ID, TRANSLIFE_BYTE_FACTION, nType)
	local nTransCount = GetTranslifeCount()	
--	for i=1,4 do	
--		RemoveTitle(ck_tb_translife_tittle[i][nRoute][2], ck_tb_translife_tittle[i][nRoute][3])
--	end
	AddTitle(ck_tb_translife_tittle[nTransCount][nRoute][2], ck_tb_translife_tittle[nTransCount][nRoute][3])	
--	SetTaskTrans()
	SetTask(TRANSLIFE_MISSION_ID,36)
	ResetProperty()
	SetLevel(90,0)
	Msg2Player("ng tu luy謓 H鏽 Nguy猲 C玭g chi猽 th鴆 th?nh蕋...")
	AddGlobalNews("Tin n ch蕁 ng giang h? nghe n鉯 Cao Th?V?L﹎ <color=green>"..GetName().."<color> tu luy謓 theo hng <color=yellow>"..tb_translife_seal[nType][3].."<color>  l躰h h閕 頲 2 th祅h <color=green>H鏽 Nguy猲 C玭g<color>!")	
	WriteLogEx("Chuyen Sinh","th祅h c玭g l莕 "..nTransCount.." theo hng "..tb_translife_seal[nType][3])	
	--====ph莕 thng c馻 c蕄 i thng ?tr猲
	gf_Modify("Exp", 9000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);
	ahf_GetYaoYangWeaponRand(1);
	gf_AddItemEx2({2, 1, 30614, 1}, "L玦 H?Tinh Ph竎h", "CDKEY", "CDKEY", 0, 1);	
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 9, 1);
	--========
	DoWait(15,15,10)		
end

function CDKEY_SetExtBit(nExtPoint, nBit, nBitValue)
	if nBit < 1 or nBit > 15 then
		gf_WriteLogEx("CHANGE EXT POINT "..nExtPoint, "fail", 1, "Out of range")
		return 0
	end
	local nValue = GetExtPoint(nExtPoint)
	local nNewValue = SetBit(nValue, nBit, nBitValue)
	PayExtPoint(nExtPoint, GetExtPoint(nExtPoint))
	AddExtPoint(nExtPoint, nNewValue)
	if GetExtPoint(nExtPoint) == nNewValue then
		gf_WriteLogEx("CHANGE EXT POINT "..nExtPoint, "success", 1, "From "..nValue.." to "..nNewValue)
		return 1
	else
		gf_WriteLogEx("CHANGE EXT POINT "..nExtPoint, "fail", 1, "From "..nValue.." to "..GetExtPoint(nExtPoint))
		return 0
	end
end

function ck_phucsinh1()
	local tSay = 	{
							"Tu luy謓 theo hng Long T?/#ck_select_translife_ps(1)",
							"Tu luy謓 theo hng H?T?/#ck_select_translife_ps(2)",
							"Tu luy謓 theo hng Ph鬾g T?/#ck_select_translife_ps(4)",
							"Tu luy謓 theo hng g T?/#ck_select_translife_ps(3)",
							"Ta suy ngh?l筰 /nothing",
						}
	Say("H鏽 Nguy猲 C玭g th鵦 ch蕋 c?4 hng tu luy謓, ngi mu鑞 theo hng n祇?",getn(tSay),tSay)
end

function ck_select_translife_ps(nType)
	local nChuyenSinh = (GetTranslifeCount() + GetPlayerRebornParam(0)) * 100 + GetLevel()
	local nRoute = GetPlayerRoute()
	local tbType = {"Long T?, "H?T?, "g T?, "Ph鬾g T?}
	if IsPlayerDeath() ~= 0 then 
		Talk(1, "", "Hi謓 t筰 kh玭g th?nh薾 thng!!!")
		return
	end	
--	if nChuyenSinh < 599 then -- b総 chuy觧 sinh 7
--		Talk(1,"","<color=green>L鬰 Tr骳 g: <color>Kinh nghi謒 chuy觧 sinh c馻 i hi謕 kh玭g , ta kh玭g th?gi髉 g?頲 c?!!!!")
--		return 0	
--	end	
	if nChuyenSinh >= 690 then -- b総 chuy觧 sinh 7
		Talk(1,"","<color=green>L鬰 Tr骳 g: <color>Kinh nghi謒 chuy觧 sinh c馻 i hi謕 qu?cao, ta kh玭g th?gi髉 g?頲 c?!!!!")
		return 0	
	end
--	if MeridianGetLevel() < 2 then	
--		Talk(1,"","Kinh m筩h c馻 i hi謕 ch璦 t c蕄  V?Tng !!!!")
--		return 0			
--	end
	DelItem(2,0,1083,2)
	DelItem(2,1,30345,2)

	BigDelItem(2,0,30002, BigGetItemCount(2,0,30002))
	BigDelItem(2,0,30003, BigGetItemCount(2,0,30003))
	BigDelItem(2,0,30005, BigGetItemCount(2,0,30005))
	BigDelItem(2,0,30006, BigGetItemCount(2,0,30006))	
	local nType_cs5 = GetTranslifeFaction()	
	local nTransCount = GetTranslifeCount()	
		for i=1, getn(tb_translife_cloth[nType_cs5][nTransCount]) do
			local G,D,P,nCount, _, lvatt1, att1, lvatt2, att2, lvatt3, att3  = gf_UnPack(tb_translife_cloth[nType_cs5][nTransCount][i][2])
			P = P + GetBody() - 1
			Pnew = 30000 + GetBody()
			Pnew1 = 561 + GetBody()			
			Pnew2 = 565 + GetBody()		
			lvatt3 = lvatt3 or 0
			att3 = att3 or 0
			BigDelItem(G,D,P,BigGetItemCount(G,D,P))
			BigDelItem(G,D,Pnew,BigGetItemCount(G,D,Pnew))
			BigDelItem(G,D,Pnew1,BigGetItemCount(G,D,Pnew1))			
			BigDelItem(G,D,Pnew2,BigGetItemCount(G,D,Pnew2))					
--			gf_AddItemEx2({G, D, (30000 + GetBody()), nCount,4, lvatt1, att1, lvatt2, att2, lvatt3, att3},"T?Linh Vi謙 Trang","Chuyen Sinh","nh薾 ngo筰 trang",120*24*3600,1)
		end

	RemoveTitle(tb_translife_tittle[nTransCount][nRoute][2], tb_translife_tittle[nTransCount][nRoute][3])	

	local tbVanSu = {"V╪ S?ngo筰 trang",0,108,570,188}
	local nPVanSu = tbVanSu[4]  + GetBody() - 1
	for i = 0, 2 do
		BigDelItem(0, 108 + i, nPVanSu, BigGetItemCount(0, 108 + i, nPVanSu))	
	end
	gf_AddItemEx(tb_translife_seal_cs6[nType][2], tb_translife_seal_cs6[nType][1])
	PlayerReborn(1,nType) -- Chuy觧 Sinh 6 th祅h c玭g		
	SetLevel(90,0)
	AddTitle(61,05)
--	SetTask(TSK_CS6_TULINH,5)		--ho祅 th祅h nh謒 v?chuy觧 sinh
--	VNG_SetTaskPos(TSK_THANGTIEN_PHUCSINH, 2, 1, 1)
 	gf_WriteLogEx("CD KEY", "chuy觧 sinh th祅h c玭g", 1, "CD KEY phan thuong 16")	
 	local nGetExp = GetExp()
	local nTime = floor(nGetExp/2000000000)
	if nTime >= 1 then
		for i = 1, nTime do
			ModifyExp(-2000000000)
		end
	end
	ModifyExp(-GetExp())
	--====ph莕 thng c馻 c蕄 i thng ?tr猲
	gf_Modify("Exp", 36000000);
	gf_Modify("Rep", 580);
	gf_Modify("ShiMen", 580);
	gf_Modify("JunGong", 4200);	
	CK_TASK_GROUP:SetTaskBit(CK_TASK_GROUP.Award, 16, 1);
	--
	Msg2Player("Ch骳 m鮪g i hi謕  Ph鬰 Sinh th祅h c玭g theo hng "..tbType[nType])
	Say("Ch骳 m鮪g i hi謕  l躰h ng?th祅h c玭g b?k輕 gia truy襫 T?Linh Ph鬰 Tinh! H穣 ng nh藀 l筰.",1,"Tho竧!/nothing")
end