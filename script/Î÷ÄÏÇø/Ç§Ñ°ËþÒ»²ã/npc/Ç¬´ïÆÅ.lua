-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 大理任务NPC乾达婆Script
-- By StarryNight
-- 2006/01/13 PM 20:37

--爱情在岁月流转中逐渐腿色，剩下的会是什么……

-- ======================================================

Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\大理\\task_head.lua")

function OnDeath()
    local nPreservedPlayerIndex = PlayerIndex;
    local nMemCount = GetTeamSize();
    local nMapId, nX, nY = GetWorldPos();

    if nMemCount == 0 then -- 玩家未组队
        if GetTask(TASK_DL_LV80_ID) == 4 then
        	SetTask(TASK_DL_LV80_ID, 5);
        	SetTask(TASK_DL_LV80_TIME_ID,2);--改变任务面板
        	AddItem(2,0,382,1);--得到任务物品号炮
        	Msg2Player("Х nh b筰 C祅 Чt B�, h穣 mau v� Чi L� giao ph竜 hi謚 cho qu鑓 s�!");
        	TaskTip("Х nh b筰 C祅 Чt B�, h穣 mau v� Чi L� giao ph竜 hi謚 cho qu鑓 s�!");
        end;
    else
        for i=1,nMemCount do
           PlayerIndex = GetTeamMember(i);
           local nTeamMapId, nTeamX, nTeamY = GetWorldPos();
           local nDist = DistanceBetweenPoints(nMapId, nX, nY, nTeamMapId, nTeamX, nTeamY);
           if GetTask(TASK_DL_LV80_ID) == 4 and nDist >= 0 and nDist <= 50 then
           	SetTask(TASK_DL_LV80_TIME_ID,2);--改变任务面板
           	SetTask(TASK_DL_LV80_ID, 5);
           	AddItem(2,0,382,1);--得到任务物品号炮
           	Msg2Player("Х nh b筰 C祅 Чt B�, h穣 mau v� Чi L� giao ph竜 hi謚 cho qu鑓 s�!");
           	TaskTip("Х nh b筰 C祅 Чt B�, h穣 mau v� Чi L� giao ph竜 hi謚 cho qu鑓 s�!");
           end;
				end;
		PlayerIndex = nPreservedPlayerIndex; -- 重置之前储存的玩家编号
    end;
end
