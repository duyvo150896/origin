
-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 少林门派任务香客脚本文件
-- Edited by peres
-- 2005/02/17 PM 18:03

-- ======================================================

Include("\\script\\task\\faction\\faction_main_sl.lua");

function main()

local nTaskValue = FN_GetTaskState(FN_SL);

	if (nTaskValue==4) then
		task_008();
		return
	elseif (nTaskValue==5) then
		task_010();
		return
	else
		Say("K輓h ph藅 l� ph秈 th祅h t﹎, ch衝 ch竜 l筽 b竧 n祔 ta ph秈 ╪ th玦.",0);
	end
	
end;
