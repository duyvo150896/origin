-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 西北区任务物品 西夏法王密函 Script
-- By StarryNight
-- 2007/08/03 AM 11:11

-- 幸福，其实就是那些不经意间被遗忘的片段。

-- ======================================================

-- 引用剧情任务头文件
Include("\\script\\task\\world\\task_head.lua");
Include("\\script\\task\\world\\xibei\\task_head.lua");

function OnUse()

local strTalk = {};
local nStep_XBTask_01 = GetTask(TASK_XB_ID_01);

	--判断任务步骤
	if nStep_XBTask_01 >= 24 and nStep_XBTask_01 <= 28 then
	
	strTalk = {
		"T﹜ H� ph竝 vng m藅 h祄: K誸 c蕌 t莕g 2 g莕 gi鑞g v韎 t莕g 1, ng t﹜ nam b綾 u c� b鑞 Tr蕁 M� tng qu﹏, nh b筰 ch髇g th� ph� 頲 phong th駓 t莕g 2, rng b竨 s� xu蕋 hi謓. Rng b竨 総 s� c� Tr蕁 M� linh th� tr蕁 gi�, n誹 n� l� Qu� tng qu﹏ th� ph秈 h誸 s鴆 c萵 th薾, ch� c� Phi Thng o ph� c馻 Phi Thng Чo Nh﹏ m韎  s鴆 tri謙 h�, b籲g kh玭g rng b竨 s� bi課 m蕋, c莕 ph秈 ph� h駓 Phong Th駓 tr薾 l莕 n鱝.",
		}
	
	else
		
		strTalk = {
			"M藅 h祄 n祔  kh玭g c遪 t竎 d鬾g n鱝.",
			}
			
		DelItem(2,0,716,1);--密函过期删掉
	
	end
	
	TalkEx("",strTalk);
	
end