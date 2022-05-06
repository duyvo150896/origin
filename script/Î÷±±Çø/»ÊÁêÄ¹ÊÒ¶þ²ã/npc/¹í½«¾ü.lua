-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 皇陵墓室二层NPC鬼将军Script
-- By StarryNight
-- 2007/08/03 PM 08:15

-- 与古墓同眠……

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
	"Ch糿g l� y l� M芻 u Ki誱? Ng鋍 b閕 n祔 l� g�? Sao kh玭g th蕐 m藅  Thi猲 H� X� T綾? Tr秓 Vng  n t閕, kh玭g ai c馻 Nh蕋 Ph萴 Л阯g v祇 t莕g 2. Nh鱪g v藅 n祔 nh蕋 nh c� li猲 quan t韎 v� c馻 T� M� ti襫 b鑙, t鑤 nh蕋 n猲 h醝 玭g ta trc."
	};

	SetNpcLifeTime(index,15);--使得尸体消失
	
	if nMemCount == 0 then -- 玩家未组队
		if GetTask(TASK_XB_ID_01) == 27 then
			DelItem(2,0,717,1);--删去非常道符
			AddItem(2,0,718,1,1);--获得墨斗
			AddItem(2,0,719,1,1);--获得玉佩
			TalkEx("",strTalk);
			SetTask(TASK_XB_ID_01,28);
			SetTask(CREAT_GUIJIANGJUN_TIME,0);--清除鬼将军刷新时间变量
			TaskTip("Mang cho T� M� Minh Phong nh鱪g v藅 c� trong b秓 rng.");
			Msg2Player("Mang cho T� M� Minh Phong nh鱪g v藅 c� trong b秓 rng.");
		end;
	else	
		for i=1,nMemCount do
      PlayerIndex = GetTeamMember(i);
      local nTeamMapId, nTeamX, nTeamY = GetWorldPos();
      local nDist = DistanceBetweenPoints(nMapId, nX, nY, nTeamMapId, nTeamX, nTeamY);
			if GetTask(TASK_XB_ID_01) == 27 and nDist >= 0 and nDist <= 50 and IsPlayerDeath() == 0 then
				DelItem(2,0,717,1);--删去非常道符
				AddItem(2,0,718,1,1);--获得墨斗
				AddItem(2,0,719,1,1);--获得玉佩
				TalkEx("",strTalk); 
				SetTask(TASK_XB_ID_01,28);
				SetTask(CREAT_GUIJIANGJUN_TIME,0);--清除鬼将军刷新时间变量
				TaskTip("Mang cho T� M� Minh Phong nh鱪g v藅 c� trong b秓 rng.");
				Msg2Player("Mang cho T� M� Minh Phong nh鱪g v藅 c� trong b秓 rng.");
			end;
		end;
	PlayerIndex = nPreservedPlayerIndex; -- 重置之前储存的玩家编号
  end;
end
