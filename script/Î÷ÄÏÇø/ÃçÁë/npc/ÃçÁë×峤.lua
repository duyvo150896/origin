-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 大理任务NPC苗岭族长Script
-- By StarryNight
-- 2006/01/06 PM 17:29

--乙酉年 戊子月 戊子日 
--宜: 合帐 裁衣 教牛马 馀事勿取 
--忌: 入宅 动土 破土 嫁娶 作灶 造船 
--吉神宜趋: 官日 敬安 金匮  
--凶神宜忌: 月建 小时 土府 月厌 地火  
--五行: 霹雳火  建执位  
--彭祖百忌: 戊不受田田主不祥 子不问卜自惹祸殃 

-- ======================================================

Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\大理\\task_head.lua")
Include("\\script\\task\\world\\大理\\lv40\\task_main.lua");

function main()
local nTask_DL_State_40 = GetTask(TASK_DL_LV40_ID);
local nTask_DL_State_50 = GetTask(TASK_DL_LV50_ID);
--print("nTask_DL_State_40:"..nTask_DL_State_40);
--print("nTask_DL_State_50:"..nTask_DL_State_50);
	--未与族长对话
	if nTask_DL_State_40 == 2 then
		task_000_00();
		return
	end
	--未打倒苗岭勇士
	if nTask_DL_State_40 == 3 then
		task_001_00();
		return
	end
	--已经打倒苗岭勇士
	if nTask_DL_State_40 == 4 then
		task_002_00();
		return
	end
	--尚未向赵延年汇报
	if nTask_DL_State_40 == 5 then
		task_003_00();
		return
	end
	
	--已经和陈立衡对话
	if nTask_DL_State_50 == 3 then
		task_004_00();
		return
	end
	
	--未打倒苗岭首领和苗岭族长对话
	if nTask_DL_State_50 == 4 then
		task_005_00();
		return
	end
	
	--打倒苗岭首领
	if nTask_DL_State_50 == 5 then
		task_006_00();
		return
	end
	
	--未与郑贯之对话
	if nTask_DL_State_50 == 6 then
		task_007_00();
		return
	end

	--一般情况下对话
	local strTalk = {
		"T閏 trng Mi猽 L躰h: <sex> mu鑞 th� Si H醓 Ch﹏ Th莕 kh玭g?"
	}
	
	TalkEx("",strTalk);
	return
end