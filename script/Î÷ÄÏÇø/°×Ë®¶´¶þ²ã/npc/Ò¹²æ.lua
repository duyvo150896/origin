-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 大理任务NPC蚩火夜叉Script
-- By StarryNight
-- 2006/01/11 PM 15:44

--爱情在岁月流转中逐渐腿色，剩下的会是什么……

-- ======================================================

Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\大理\\task_head.lua")

function OnDeath(index)
    local nPreservedPlayerIndex = PlayerIndex;
    local nMemCount = GetTeamSize();
    local nMapId, nX, nY = GetWorldPos();

    if nMemCount == 0 then -- 玩家未组队
        if GetTask(TASK_DL_LV60_ID) == 6 then
        	SetTask(TASK_DL_LV60_ID, 7);
        	Msg2Player("Цnh b筰 D� Xoa, tr� v� g苝 фng Gi� La!");
        	TaskTip("Цnh b筰 D� Xoa, tr� v� g苝 фng Gi� La!");
        end;
    else
        for i=1,nMemCount do
           PlayerIndex = GetTeamMember(i);
           local nTeamMapId, nTeamX, nTeamY = GetWorldPos();
           local nDist = DistanceBetweenPoints(nMapId, nX, nY, nTeamMapId, nTeamX, nTeamY);
           if GetTask(TASK_DL_LV60_ID) == 6 and nDist >= 0 and nDist <= 50 then
           	SetTask(TASK_DL_LV60_ID, 7);
           	Msg2Player("Цnh b筰 D� Xoa, tr� v� g苝 фng Gi� La!");
           	TaskTip("Цnh b筰 D� Xoa, tr� v� g苝 фng Gi� La!");
           end;
				end;
		PlayerIndex = nPreservedPlayerIndex; -- 重置之前储存的玩家编号
    end;
end;