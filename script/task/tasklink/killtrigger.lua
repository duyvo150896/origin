TASKVALUE_DIFFICULT_LEVEL_ID = 335	-- 当前选择的师门任务的难度等级

function killmonster()
	local task_id = 11
	local task_info = GetInfo(task_id, 4)					-- 任务NPC模板ID
			 	 
   	if (GetIfDoingTask(task_id, task_info) == 1) then
		FillTaskValue(task_id)
		TaskTip("Nhi謒 v� thng h閕: Truy s竧 "..task_info.."  ho祅 th祅h")
	end
end

function killmonster1()
	local task_id = GetTask(TASKVALUE_DIFFICULT_LEVEL_ID)
	local task_info = GetInfo(task_id, 4)					-- 任务NPC模板ID
			 	 
   	if (GetIfDoingTask(task_id, task_info) == 1) then
		FillTaskValue(task_id)
		TaskTip("Nhi謒 v� s� m玭 tu莕 ho祅: Truy s竧 "..task_info.."  ho祅 th祅h")
	end
end