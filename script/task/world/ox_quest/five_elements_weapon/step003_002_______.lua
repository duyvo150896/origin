-- 世界任务
-- 成都-峨嵋 主线任务
-- 任务起始

-- wq : World Quest
-- id : 4, 7, 51

-- Danexx
-- 2005.5.30
------------------------------------------------------------
Include("\\script\\task\\world\\ox_common\\common.lua");

quest_giver = cf_ox_SetColor("B� u", "green")..":"
quest_title = cf_ox_SetColor("Ti猽 tr�", "yellow").."\n"
quest_detail = cf_ox_SetColor("Quay l筰 Th祅h Й g苝 B� u", "gray").."\n\n"
quest_description_1 = quest_giver.."Giang T﹏ th玭 ng祔 c祅g xu蕋 hi謓 nhi襲 Cng Thi, l� tr譶h n  u  b� b� quan."
quest_confirm = ""
quest_cancel = ""

function wq_ox_few_003_002()
	-- 以下是触发控制部分
	RemoveTrigger(GetRunningTrigger())		-- 删除当前触发器
	CreateTrigger(4, 8, 51)					-- 创建下一个触发器
	SetTask(101, 12)
	
	-- 以下是任务奖励部分
	AddItem(2, 0, 10, 1)					-- 给予玩家道具奖励 翡翠戒指
	ModifyExp(200)							-- 给予玩家经验奖励
	
	-- 以下是文字显示部分
	TaskTip("Quay l筰 Th祅h Й g苝 B� u")
	Say(quest_title..quest_detail..quest_description_1, 0)
end