--马厩看守\大名府演武官
Include("\\script\\lib\\define.lua")
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\global_task\\gtask_head.lua")
function nothing()
end

function give_horse()
	local nFollowIdx = GetFollower();
	if nFollowIdx == 0 then
		Talk(1,"","Чi hi謕 kh玭g c� Chi課 M� Ch箉 Xa.");
		return 0;
	end
	local sName, sTemplateName = GetNpcName(nFollowIdx);
	if sName == "Chi課 M� Ch箉 Xa" and sTemplateName == "Chi課 M� Ch箉 Xa" then
		KillFollower();
		SetTask(TASKID_SW_USE_ANTIDOTE,GetTask(TASKID_SW_USE_ANTIDOTE) + 1);
		Talk(1,"","Ngi Canh Chu錸g:  t�, i hi謕  gi髉 ta t譵 頲 chi課 m�.");
	else
		Talk(1,"","Чi hi謕 kh玭g c� Chi課 M� Ch箉 Xa.");
		return 0;
	end
end

function OnDeath()
	SetFightState(0);
	SetPos(1529,3339);
	SetTask(TASKID_SW_TASK1013,0);
	SetDeathScript("");
	return 1;
end

function go_to_exercise()
	local nRet =  NewWorld(5077,1574,3297);
	SetTask(TASKID_SW_TASK1013,1);
	if nRet == 0 then return 0; end
	SetFightState(1);
	RemvoeTempEffect();
	SetDeathScript("\\script\\pop\\2012\\horse_watcher_npc.lua");
	Restore();
	CastState("state_block_left_skill",1,7*24*60*60);
	CastState("state_block_qinggong",2,7*24*60*60);
	CastState("state_lock",3,7*24*60*60);
end

function leave_dmf()
	SetFightState(0);
	SetDeathScript("");
	SetTask(TASKID_SW_TASK1013,0);
	SetPos(1529,3339);
	RemvoeTempEffect();
end

function go_to_execution_ground()
	NewWorld(5078,1783,3324);
	RemvoeTempEffect();
	Restore();
--	LearnSkill(1781);
end

function leave_execution_ground()
	NewWorld(5078,1823,3264);
	RemvoeTempEffect();
--	RemoveSkill(1781)
end




	
tInfo = {
	["Ngi Canh Chu錸g"]			= {{945},		"Ta mu鑞 giao n閜 Chi課 M� Ch箉 Xa/give_horse",},
	["Чi Danh Ph� Di詎 V� Quan"]	= {{76},	"Ta mu鑞 ti課 h祅h luy謓 t藀 di詎 v�!/go_to_exercise","Ta ch� ti謓 阯g gh� ngang/nothing",},
	["V� Binh Di詎 V� Trng"]		= {nil,		"Ta mu鑞 r阨 kh醝 di詎 v� trng!/leave_dmf","Ta ch� ti謓 阯g gh� ngang/nothing",},
	["V� Tng T玭g-Ph竝 Trng Kh竛 Th�"] = {{78},	"Ta mu鑞 v祇 Ph竝 Trng V� Tng T玭g!/go_to_execution_ground","Ta ch� ti謓 阯g gh� ngang/nothing",},
	["o Ph� Ph竝 Trng"]		= {nil,		"Ta mu鑞 r阨 kh醝 Ph竝 Trng V� Tng T玭g!/leave_execution_ground","Ta ch� ti謓 阯g gh� ngang/nothing",},
--	["道童颖"]				= {{930,1014},	"我要进入紫罗山修道场！/goto_ziluoshan","我要离开紫罗山修道场！/leave_ziluoshan"},
	}

function main()
	local nNpcIdx = GetTargetNpc();
	local nNpcName = GetNpcName(nNpcIdx);
	if not tInfo[nNpcName] then
		return 0;
	end
	local bIfTask = 0;
	if type(tInfo[nNpcName][1]) == "table" then
		for i = 1,getn(tInfo[nNpcName][1]) do
			if type(tInfo[nNpcName][1][i]) == "number" and 1 == tGtTask:check_cur_task(tInfo[nNpcName][1][i]) then
				bIfTask = 1
				break;
			end
		end
	else
		bIfTask = 1;
	end
	
	if bIfTask ~= 1 then
		return 0;
	end
	
	local strtab = {}
	for i = 2,getn(tInfo[nNpcName]) do
		if type(tInfo[nNpcName][i]) == "string" then
			tinsert(strtab,tInfo[nNpcName][i])
		end
	end
	Say(nNpcName .. ":",
		getn(strtab),
		strtab)
end
