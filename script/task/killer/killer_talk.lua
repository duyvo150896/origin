-- ====================== 文件信息 ====================== 
                                                          
-- 剑侠情缘onlineII 通缉任务杀手对话脚本                  
-- Edited by starry night                                 
-- 2005/09/05 PM 16:21                                    
                                                          
-- ======================================================

--引用通缉任务头文件
Include("\\script\\task\\killer\\killer_head.lua");

function main()

local npcName = GetTargetNpcName();

	if npcName==nil or npcName=="" then npcName = "S竧 th� "; end;	

	Say("<color=green>"..npcName.."<color>: Ngi l祄 g� v藋? C� 甶 qua 甶 l筰 trc m苩 ta, l� kinh ng n Mao i gia ngi c� g竛h n鎖 kh玭g!",
		2,
		"Ta tr� h筰 cho d﹏/Killer_Fight",
		"Xin l鏸! Nh譶 l莔 ngi./Killer_Exit");
	
end;


function Killer_Fight()

local npcName = GetTargetNpcName();
local npcID = GetTargetNpc();
local nKillerID = GetTask(TASK_KILLER_NPCINDEX_ID);
local nTask_State = GetTask(TASK_KILLER_STATE_ID);
local nPlayerName = GetPlayerSex();
		
	if npcID == nKillerID and nTask_State == 1 then
		
		--10%几率不战而胜
		if random(1,100)>90 then
			Say("<color=green>"..npcName.."<color>:"..nPlayerName.."Xin tha m筺g! Ti觰 nh﹏ xin theo ngi v� quy 竛.",0);
			
			SetTask(TASK_KILLER_STATE_ID,2);--完成任务设置变量值为2
			TaskTip("Nhi謒 v� ho祅 th祅h! Xin n g苝 B� u l穘h thng!");
			--移除时间触发器
			RemoveTrigger(GetTrigger(500));
			SetNpcScript(npcID,"");--撤销该Npc所挂脚本
			SetNpcLifeTime(npcID,0);
				if random(1,100) > 94 then
					AddItem(2,1,195,1,1);
				end;
		else
			Say("<color=green>"..npcName.."<color>: Hay l緈!",0);
		
			SetNpcScript(npcID, "\\script\\task\\killer\\killer_fight.lua");
			ChangeNpcToFight(npcID);
		end;
		
	else
		Say("<color=green>"..npcName.."<color>: T猲 ti觰 t� n祔 tr竛h sang m閠 b猲! ng l祄 phi襫 b鎛 i gia!",0);
	end;
	
end;


function Killer_Exit()

end;
	