-- 世界任务
-- 成都-峨嵋 主线任务
-- 任务起始

-- wq : World Quest
-- id : 4, 51, 61

-- Danexx
-- 2005.5.30
------------------------------------------------------------
Include("\\script\\task\\world\\ox_common\\common.lua");

quest_giver = cf_ox_SetColor("Th玭 d﹏", "green")..":"
quest_title = cf_ox_SetColor("N筺 Heo r鮪g", "yellow").."\n"
quest_detail = cf_ox_SetColor(" v� hng t﹜ nam t譵 t骾 h祅g cho th玭 d﹏.", "gray").."\n\n"
quest_description_1 = quest_giver.."A! Чi hi謕! \n s竛g nay l骳 ho秐g lo筺 ta  l祄 m蕋 t骾 h祅g, bao nhi猽 v鑞 li課g u � trong ."
quest_confirm = ""
quest_cancel = ""

function wq_ox_obt_001_001()
	-- 以下是触发控制部分
	RemoveTrigger(GetRunningTrigger())		-- 删除当前触发器
	CreateTrigger(0, 51, 61)
	SetTask(111, 2)

	-- 以下是任务奖励部分
	
	-- 以下是文字显示部分
	TaskTip(" v� hng t﹜ nam t譵 t骾 h祅g cho th玭 d﹏.")
	Say(quest_title..quest_detail..quest_description_1, 0)
end