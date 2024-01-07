-- 世界任务
-- 成都-峨嵋 主线任务
-- 任务起始

-- wq : World Quest
-- ID : 4, 11, 53

-- Danexx
-- 2005.5.30
------------------------------------------------------------
Include("\\script\\task\\world\\ox_common\\common.lua");

quest_giver = cf_ox_SetColor("Binh s�", "green")..":"
quest_title = cf_ox_SetColor("Qu竔  kh竛g", "yellow").."\n"
quest_detail = cf_ox_SetColor("Gi誸 1 H� Thi", "gray").."\n\n"
quest_description_1 = quest_giver.."May m� l莕 n祔 c� b籲g h鱱 tng tr�, ch髏 thng dc n祔 xin nh薾 cho!"
quest_confirm = ""
quest_cancel = ""

function wq_ox_few_004_005()
	-- 以下是触发控制部分
	RemoveTrigger(GetRunningTrigger())		-- 删除当前触发器
	--CreateTrigger(4, 11, 53)				-- 创建下一个触发器·循环任务·未开放
	
	-- 以下是任务奖励部分
	AddItem(1, 0, 2, 4)						-- 给予玩家 4 瓶金创散
	AddItem(1, 0, 3, 1)						-- 给予玩家 1 瓶止血散
	AddItem(1, 0, 7, 4)						-- 给予玩家 4 瓶小还丹
	AddItem(1, 0, 8, 1)						-- 给予玩家 4 瓶还阳丹
	ModifyExp(200)							-- 给予玩家经验奖励
		
	-- 以下是文字显示部分
end