-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 药王洞NPC药王Script
-- By StarryNight
-- 2007/08/06 PM 9:26

-- 其实药人只不过是小把戏而已，真正的戏玉是壮阳药！

-- ======================================================

-- 引用剧情任务头文件
Include("\\script\\task\\world\\xibei\\task_head.lua");
Include("\\script\\task\\world\\xibei\\task_main.lua");
Include("\\script\\task\\world\\task_head.lua");

function OnDeath(index)

local nPreservedPlayerIndex = PlayerIndex;
local nMemCount = GetTeamSize();
local nMapId, nX, nY = GetWorldPos();
local strTalk = {
	"Ta  chu萵 b� cho ngi 100 dc nh﹏. Dc Nh﹏ dc phng nghi謕  ph鑙 th祅h, u d飊g nguy猲 li猽 Dc Nh﹏ Th秓 trong dc vng ng.",
	"Kh玭g hay r錳, T﹜ H� mu鑞 t筼 ra i qu﹏ Dc Nh﹏, gi� phng thu鑓  n籱 trong tay ta, ph秈 v� g苝  Dng ti襫 b鑙.",
	}

	SetNpcLifeTime(index,15);--使得尸体消失
	
	if nMemCount == 0 then -- 玩家未组队
		if GetTask(TASK_XB_ID_01) == 47 then
			SetTask(CREAT_YAOWANG_TIME,0);--刷新药王时间清零
			AddItem(2,0,726,1,1);--打倒药王得到药人药方
			AddItem(2,0,727,1,1);--西夏法王书函
			DelItem(2,0,760,1);--删去药王易容装
			TalkEx("",strTalk);
			SetTask(TASK_XB_ID_01,48);
			TaskTip("H錳 b竜  Dng H鋋, T﹜ H� C鑓 t譵 phng thu鑓 Dc Vng t筼 ra i qu﹏ Dc Nh﹏, vi謈 n祔 v� c飊g c蕄 b竎h.");
			Msg2Player("H錳 b竜  Dng H鋋, T﹜ H� C鑓 t譵 phng thu鑓 Dc Vng t筼 ra i qu﹏ Dc Nh﹏, vi謈 n祔 v� c飊g c蕄 b竎h.");
		end;
	else	
		for i=1,nMemCount do
      PlayerIndex = GetTeamMember(i);
      local nTeamMapId, nTeamX, nTeamY = GetWorldPos();
      local nDist = DistanceBetweenPoints(nMapId, nX, nY, nTeamMapId, nTeamX, nTeamY);
			if GetTask(TASK_XB_ID_01) == 47 and nDist >= 0 and nDist <= 50 and IsPlayerDeath() == 0 then
				SetTask(CREAT_YAOWANG_TIME,0);--刷新药王时间清零
				AddItem(2,0,726,1,1);--打倒药王得到药人药方
				AddItem(2,0,727,1,1);--西夏法王书函
				TalkEx("",strTalk); 
				SetTask(TASK_XB_ID_01,48);
				TaskTip("H錳 b竜  Dng H鋋, T﹜ H� C鑓 t譵 phng thu鑓 Dc Vng t筼 ra i qu﹏ Dc Nh﹏, vi謈 n祔 v� c飊g c蕄 b竎h.");
				Msg2Player("H錳 b竜  Dng H鋋, T﹜ H� C鑓 t譵 phng thu鑓 Dc Vng t筼 ra i qu﹏ Dc Nh﹏, vi謈 n祔 v� c飊g c蕄 b竎h.");
			end;
		end;
	PlayerIndex = nPreservedPlayerIndex; -- 重置之前储存的玩家编号
  end;
end
