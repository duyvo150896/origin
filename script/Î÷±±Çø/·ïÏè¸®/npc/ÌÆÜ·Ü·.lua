-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 凤翔府NPC波斯商人Script
-- By StarryNight
-- 2007/06/27 AM 10:16

-- 贩卖你的感情吧，但它一文不值。

-- ======================================================

-- 引用剧情任务头文件
Include("\\script\\task\\world\\xibei\\task_head.lua");
Include("\\script\\task\\world\\xibei\\task_main.lua");
Include("\\script\\task\\world\\task_head.lua");

function main()

local nStep_XBTask_01 = GetTask(TASK_XB_ID_01);

	---------------------------------- 西北任务分支1——09光明左使----------------------------------
	
	--与唐芊芊对话请求帮忙制作易容装
	if nStep_XBTask_01 == 45 then
		task_019_04_0();
		return
	end
	
	--带回或没有带回冷虫丝等物品给唐芊芊
	if nStep_XBTask_01 == 46 then
		task_019_05_0();
		return
	end
	
	--已经取得易容装(补发易容装)
	if nStep_XBTask_01 == 47 then
		task_019_05_1();
		return
	end
	
	
	--一般情况下的对话
	strTalk = {
		{"M鋓 v藅 u c� th阨, ngi p v� th阨 gian c祅g kh� gi�."},
		{"xu﹏ m閚g tu� v﹏ t竛, phi hoa tr鬰 thu� l璾, ti猲 kh骳 ph祄 ﹎ t� giao nhu�"},
		{"M鋓 vi謈 tr猲 i u do tr阨 nh s絥."},
		}
	local i = random(1,getn(strTalk));

	TalkEx("",strTalk[i]);
	return
	
end;
