-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 古阳洞一层NPC非常道人Script
-- By StarryNight
-- 2007/06/21 PM 3:27

-- 爱一个人就不要伤害她

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
	"C� 1 b鴆 \'M藅 th� T﹜ H筡', xem th� n閕 dung g讌",
	"M藅 th� T﹜ H�: C遪 3 ng祔 n鱝 l� ngi s� thu ph鬰 頲 C� Dng d� th�, l骳  T﹜ H� s� gi髉 ngi ph秐 c玭g C玭 L玭, n誹 ngi c� 頲 ch鴆 trng m玭 C玭 L玭, T﹜ H� ch� l蕐 phng ph竝 luy謓 Trng Sinh B蕋 L穙 n, th� n祔 l祄 ch鴑g, g鰅 Phi Thng Чo Nh﹏.",
	"Kh玭g ng� Phi Thng Чo Nh﹏ l筰 c� quan h� v韎 Nh蕋 Ph萴 阯g, 甧m M秐h H醓 Luy謓 Kim Кn v� giao cho Di謕 T� Thu c� l� s� hi觰 頲 n閕 t譶h."
	}

	--SetNpcLifeTime(index,15);--使得尸体消失
	
	if nMemCount == 0 then -- 玩家未组队
		if GetTask(TASK_XB_ID_02) == 14 then
			AddItem(2,0,700,1,1);--打倒非常道人得到火炼金丹碎片
			AddItem(2,0,701,1,1);--打倒非常道人得到西夏密信
			TalkEx("",strTalk);
			SetTask(TASK_XB_ID_02,15);
			TaskTip("Х nh b筰 Phi Thng Чo Nh﹏, tr� v� C玭 L玭 t譵 Di謕 T� Thu.");
			Msg2Player("Х nh b筰 Phi Thng Чo Nh﹏, tr� v� C玭 L玭 t譵 Di謕 T� Thu.");
		end;
	else	
		for i=1,nMemCount do
      PlayerIndex = GetTeamMember(i);
      local nTeamMapId, nTeamX, nTeamY = GetWorldPos();
      local nDist = DistanceBetweenPoints(nMapId, nX, nY, nTeamMapId, nTeamX, nTeamY);
			if GetTask(TASK_XB_ID_02) == 14 and nDist >= 0 and nDist <= 50 and IsPlayerDeath() == 0 then
				AddItem(2,0,700,1,1);--打倒非常道人得到火炼金丹碎片
				AddItem(2,0,701,1,1);--打倒非常道人得到西夏密信
				TalkEx("",strTalk); 
				SetTask(TASK_XB_ID_02,15);
				TaskTip("Х nh b筰 Phi Thng Чo Nh﹏, tr� v� C玭 L玭 t譵 Di謕 T� Thu.");
				Msg2Player("Х nh b筰 Phi Thng Чo Nh﹏, tr� v� C玭 L玭 t譵 Di謕 T� Thu.");
			end;
		end;
	PlayerIndex = nPreservedPlayerIndex; -- 重置之前储存的玩家编号
  end;
end
