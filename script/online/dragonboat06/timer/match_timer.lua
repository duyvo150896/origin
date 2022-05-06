--File name:match_timer.lua
--Describe:比赛过程计时器脚本
--Create Date:2006-4-20
--Author:yanjun
Include("\\script\\online\\dragonboat06\\dragonboat_head.lua");
Include("\\script\\online\\dragonboat06\\mission_head.lua");
function OnTimer()
	if GetMSPlayerCount(MISSION_ID,CAMP_PLAYER) >= LEASTPLAYER then
		local timeleft = GetMissionV(MV_TIMELEFT);
		local RankTab = {};
		if timeleft == 0 then
			StopMissionTimer(MISSION_ID,MATCH_TIMER_ID);
			Msg2MSAll(MISSION_ID,"Do trong th阨 gian quy nh kh玭g c� ngi ch琲 n祇 v� n ch, v� th� tr薾 u k誸 th骳.");
			StartMissionTimer(MISSION_ID,WAITOUT_TIMER_ID,WAITOUT_TIME);	--等待传送玩家离场
			SetMissionV(MV_ROOMSTATE,MS_STATE_WAITOUT);
		else
			StopMissionTimer(MISSION_ID,MATCH_TIMER_ID);
			StartMissionTimer(MISSION_ID,MATCH_TIMER_ID,MATCH_TIME);
			SetMissionV(MV_TIMELEFT,timeleft-1);
			if mod(timeleft,2) == 0 then
				Msg2MSAll(MISSION_ID,"Th阨 gian thi u c遪"..(timeleft/2).." ph髏 ");
			else
				Msg2MSAll(MISSION_ID,"Th阨 gian thi u c遪"..floor(timeleft/2).." ph髏 30 gi﹜.");
			end;
		end;
		RankTab = Get_Rank();
		if GetMSPlayerCount(MISSION_ID,CAMP_PLAYER) ~= getn(RankTab) then
			Write_Log("Ho箃 ng an Ng� sai s鉻","do khi th玭g b竜 th� h筺g, s� lng tuy觧 th� thi u trong mission kh玭g gi鑞g v韎 s� lng m� RankTab nh薾 頲.");
		end;
		Msg2MSAll(MISSION_ID,"Hi謓 t筰 x誴 h筺g:");
		for i=1,getn(RankTab) do
			PlayerIndex = RankTab[i];
			if PlayerIndex > 0 then
				Msg2MSAll(MISSION_ID,"th�"..NumTab[i]..":"..GetName());
			end;
		end;
	else
		Msg2MSAll(MISSION_ID,"Do s� ngi tham gia 輙 h琻 2, v� th� tr薾 u kh玭g th� ti課 h祅h. Sau 30 gi﹜ s� a b筺 ra kh醝 b秐  thi u.");
		StopMissionTimer(MISSION_ID,MATCH_TIMER_ID);
		StartMissionTimer(MISSION_ID,WAITOUT_TIMER_ID,WAITOUT_TIME);	--等待传送玩家离场
		SetMissionV(MV_ROOMSTATE,MS_STATE_WAITOUT);	
	end;
end;
