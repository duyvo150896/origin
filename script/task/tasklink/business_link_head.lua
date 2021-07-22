-- ===================================================================
-- Name		:	business_link_head.lua
-- Desc		:	新商会任务脚本，调整了任务形式和奖励模式
-- Date		:	Sep 1st, 2006
-- Creator	:	Tony(Jizheng)
--FixMod by thanhduongjokoe http://clbgameviet.net/--
-- ===================================================================
-- 表格文件类的支持以及地图跳转的支持
Include("\\script\\task\\random\\task_gotoworld.lua");
-- 辉煌之夜头文件
Include("\\script\\shinynight_head.lua");
--2006年圣诞节活动奖励支持
Include("\\script\\online\\zgc_temp_fun.lua")
Include("\\script\\online_activites\\award.lua")
Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\online_activites\\ipbonus\\ipbonus.lua")
Include("\\script\\vng\\nhiemvulamgiau\\nhiemvulamgiau.lua")
Include("\\script\\vng\\config\\vng_feature.lua")
Include("\\script\\vng\\nhiemvudonghanh\\donghanh_head.lua")	

-- 任务变量ID的定义
LAST_WEEKEND_DATE	= 353
LAST_DAY_DATE		= 354
CURWEEK_DONE_TIMES	= 355
CURDAY_DONE_TIMES	= 356

--=====================================================================
tbCheck_Award = {
	[1] = {5, 10000, 1},
	[2] = {8, 15000, 2},
	[3] = {9, 20000, 3},
}
-- 默认入口函数
function business_entrance()
	--等级检测	
	local nDate = tonumber(date("%Y%m%d"))
--====================== Nhiem Vu Thuong Hoi ==================	
	if CFG_NhiemVuThuongHoi == 1 then
		-- 获取是否正在做一个任务
		local nTaskState = GetChainTaskStatus(11)
		-- 获取当前做的任务的种类
		local nTaskCurType = GetTaskType(11)
		local strTalkTab = {}
		tinsert(strTalkTab,"Ho祅g thng v鮝 ban chi誹: Nh﹏ s?n祇 gi髉 s鴆 Tri襲 nh s?頲 tr鋘g thng! M鏸 ng祔 c?th?nh薾 t鑙 產 <color=yellow>60 l莕<color> nhi謒 v?")
		tinsert(strTalkTab,"Nhi謒 v?l莕 trc  ho祅 th祅h ch璦? Nh?l?trong ng祔 ph秈 ho祅 th祅h <color=green>60 nhi謒 v?color> nh? N誹 <color=green> h駓 1 l莕 s?b?tr?甶 1 l莕<color> tr猲 t鎛g s?nhi謒 v?")
		--if nDate >= 20110913 and nDate <= 20110922 then
			tinsert(strTalkTab,"V?tri襲 nh c鑞g hi課 s鴆 l鵦/no_accept_new_task")
		--else
			tinsert(strTalkTab,"V?tri襲 nh c鑞g hi課 s鴆 l鵦/accept_new_task")
		--end
		tinsert(strTalkTab,"Kh玭g c?h鴑g th?l祄 nhi謒 v?n祔/exit_dialog")
		tinsert(strTalkTab,"Nhi謒 v? ho祅 th祅h!/hand_up_task")
		tinsert(strTalkTab,"Nhi謒 v?v蒼 ch璦 ho祅 th祅h/exit_dialog")
		tinsert(strTalkTab,"Ta mu鑞 h駓 b?nhi謒 v?產ng l祄/cancel_cur_task")
		tinsert(strTalkTab,"Gi韎 thi謚 t?m?nhi謒 v?thng h閕/intro_new_task")
		tinsert(strTalkTab,"Xem t譶h h譶h nhi謒 v?thng h閕  ho祅 th祅h/query_cur_week_info")
		tinsert(strTalkTab,"Лa ta n n琲 l祄 nhi謒 v?goto_mission_pos")
		-- 正在任务中
		if (nTaskState == 1) then
			if (nTaskCurType == 2) then
				Say(strTalkTab[2], 5, strTalkTab[5], strTalkTab[10], strTalkTab[7], strTalkTab[9], strTalkTab[6])
			else
				Say(strTalkTab[2], 4, strTalkTab[5], strTalkTab[9], strTalkTab[6], strTalkTab[7])
			end
		-- 没有开始做或者已经做完了上一个了
		else
			Say(strTalkTab[1], 4, strTalkTab[3], strTalkTab[9], strTalkTab[8], strTalkTab[4])
		end
	end

--================ Nhiem Vu Lam Giau =========================
	if CFG_NhiemVuLamGiau == 1 then
		-- 获取是否正在做一个任务
		local nTaskState = GetChainTaskStatus(11)
		-- 获取当前做的任务的种类
		local nTaskCurType = GetTaskType(11)
		local strTalkTab = {}
		tinsert(strTalkTab,"Ho祅g thng v鮝 ban chi誹: Nh﹏ s?n祇 gi髉 s鴆 Tri襲 nh s?頲 tr鋘g thng! M鏸 ng祔 c?th?nh薾 t鑙 產 <color=yellow>60 l莕<color> nhi謒 v?")
		tinsert(strTalkTab,"Nhi謒 v?l莕 trc  ho祅 th祅h ch璦? Nh?l?trong ng祔 ph秈 ho祅 th祅h <color=green>60 nhi謒 v?color> nh? N誹 <color=green> h駓 1 l莕 s?b?tr?甶 1 l莕<color> tr猲 t鎛g s?nhi謒 v?")
		--if nDate >= 20110913 and nDate <= 20110922 then
			tinsert(strTalkTab,"V?tri襲 nh c鑞g hi課 s鴆 l鵦 (kh玭g)/no_accept_new_task") 
		--else
			tinsert(strTalkTab,"V?tri襲 nh c鑞g hi課 s鴆 l鵦 (nh薾)/accept_new_task")
		--end
		tinsert(strTalkTab,"Ch?d辮 kh竎/exit_dialog") --5
		tinsert(strTalkTab,"Nhi謒 v? ho祅 th祅h!/hand_up_task") --6
		tinsert(strTalkTab,"Nhi謒 v?v蒼 ch璦 ho祅 th祅h/exit_dialog") --7
		tinsert(strTalkTab,"Ta mu鑞 h駓 b?nhi謒 v?產ng l祄/cancel_cur_task") --8
		tinsert(strTalkTab,"Gi韎 thi謚 t?m?nhi謒 v?thng h閕/intro_new_task") --9
		tinsert(strTalkTab,"Xem t譶h h譶h nhi謒 v?thng h閕  ho祅 th祅h/query_cur_week_info")  --10
		tinsert(strTalkTab,"Лa ta n n琲 l祄 nhi謒 v?goto_mission_pos")
		-- 正在任务中
		if (nTaskState == 1) then
			if (nTaskCurType == 2) then
				Say(strTalkTab[2], 5, strTalkTab[6], strTalkTab[7], strTalkTab[8], strTalkTab[10], strTalkTab[11])
			else
				Say(strTalkTab[2], 4, strTalkTab[6], strTalkTab[7], strTalkTab[8], strTalkTab[10])
			end
		-- 没有开始做或者已经做完了上一个了
		else
			Say(strTalkTab[1], 4, strTalkTab[4], strTalkTab[10], strTalkTab[5])
		end

		--local nTaskCurType = GetTaskType(111)
		--local szSay = "Ch?c莕 c?m閠 輙 b秐 l躰h ho祅 th祅h c竎 th?th竎h c馻 ta, ngi s?nh薾 頲 v?v祅 t礽 l閏, s?kh玭g kh? tr?th祅h ph?h? Ngi c?mu鑞 th?kh玭g?"
		--local tbSay = {}
		--tinsert(tbSay, "Nh薾 nhi謒 v?l祄 gi祏 m鏸 ng祔 (ti猽 hao 99 xu v藅 ph萴)./NhiemVuLamGiau_Nhan")
		--tinsert(tbSay, "Xem ti課  th鵦 hi謓 nhi謒 v?/NhiemVuLamGiau_Xem")
		--tinsert(tbSay, "Nh薾 t礽 l閏./NhiemVuLamGiau_Thuong")
		--tinsert(tbSay, "Ta ch璦 mu鑞 gi祏 c?/gf_DoNothing")
		--Say(szSay, getn(tbSay), tbSay)
	end
end;

-- 退出对话的默认对话
function exit_dialog()
	Say("Ngi v?nc x?th﹏, v?d﹏ c鴘 n筺 th藅 l?i ﹏ i c!", 0)
end;

-- 介绍新的商会任务的对话
function intro_new_task()
--	Say("当今圣上英明，早在开战之前就收集了足够多的战略物资，才有了几个大胜的保障啊！为了感谢江湖侠士们的大力协助，圣上特命朝廷拿出战利品犒赏大家，只要完成一些传信和清除各地危害百姓的猛兽或者匪帮，就能得到丰厚的报偿。不过机会有限，每人每日只有一百次机会，大家可要抓住机会啊。若是今日无法完成，第二日也不会再保留前日功绩，而是重新开始计数。", 0)
	Say("Ho祅g thng v鮝 ban chi誹: Nh﹏ s?n祇 gi髉 s鴆 Tri襲 nh s?頲 tr鋘g thng! M鏸 ng祔 c?th?nh薾 t鑙 產 60 l莕 nhi謒 v? N誹 trong ng祔 kh玭g ho祅 th祅h th?h玬 sau s?頲 t輓h l筰 t?u!", 0)
end;
--可以接任务的时间段
--13：00-14：30
--16：00-17：00
--21：00-22：00
--function check_accept_task_time()
--	local nTime = tonumber(date("%H%M"));
--	if (nTime >= 1300 and nTime <= 1430) or
--		(nTime >= 1600 and nTime <= 1700) or 
--		(nTime >= 2100 and nTime <= 2200) then
--		return 1;
--	else
--		return 0;
--	end;
--end;

-- 接取一个新任务
function accept_new_task()

--	if check_accept_task_time() == 0 then
--		Talk(1,"","<color=green>商会老板<color>：最近生意甚为繁忙，人手实在是不够，忙不过来啊，现在只在每日的<color=red>13：00-14：30，16：00-17：00，21：00-22：00<color>我这里才做各位的生意，要来请看好时间啊！");
--		return 0;
--	end;
	local nReput, nFaction = 0,0
--	if GetCreateTime() < 1306861186 then --ch豱h l筰 th阨 gian l?done
--		Say("Nh﹏ v藅 頲 t筼 sau ng祔 01/06/2011 m韎 tham gia 頲.", 0)
--		return
--	end
	nReput = 3000
	nFaction = 4000	

	if GetLevel() < 73 or GetReputation() < nReput or GetTask(336) < nFaction or GetPlayerRoute() == 0 then
		Say("N╪g l鵦 c馻 ngi c遪 k衜 l緈, i n <color=yellow>c蕄 73, gia nh藀 h?ph竔, c? 甶觤 danh v鋘g v?s?m玭 <color>h穣 quay l筰 c鑞g hi課 s鴆 l鵦 c騨g ch璦 mu閚.", 0)
		return
	end
	local nDate = tonumber(date("%y%m%d"))
	--local nLastGetDate = floor(GetTask(TSK_CHECK_BAOHAP) / 100)	
	--if nLastGetDate ~= nDate then
	--   SetTask(TSK_CHECK_BAOHAP, nDate * 100)
    ----end

	local nType = check_type()
	--if GetItemCount(2,1,30154) < tbCheck_Award[nType][1] and mod(GetTask(TSK_CHECK_BAOHAP),100) == 0 then
	--    Talk(1,"","Чi hi謕 kh玭g mang theo  s?lng N?Oa B秓 H筽  nh薾 nhi謒 v?!!!")
	----    	return
	--end
    
	local bCanAccept = can_accept_task()
	if (bCanAccept == 1) then		-- 判断是否能够接任务
		SelectRandomTask(11)
		-------------------------------------
		DelItem(2,1,30154,tbCheck_Award[nType][1])
		SetTask(TSK_CHECK_BAOHAP, GetTask(TSK_CHECK_BAOHAP) + 1)
		
		-- 提示任务
		--local myText1,myText2,myText3,myText4 = "","","",""
		--myText1 = GetInfo(11, 1)
		--myText2 = GetInfo(11, 2)
		--myText3 = GetInfo(11, 3)
		--myText4 = GetInfo(11, 4)
		local myText = ""
		myText = GetInfo(11, 2)

		-- 获取当前做的任务的种类
		local nTaskCurType = GetTaskType(11)
		gf_WriteLogEx("Nhiem vu Thuong Hoi", "tham gia")
		if (nTaskCurType == 2) then
			Say("<color=green>Ch?thng h閕<color>:"..myText.."\n C?c莕 ta a n n琲 l祄 nhi謒 v?kh玭g?",
				2,
				"Phi襫 a ta 甶 m閠 chuy課/goto_mission_pos",
				"Kh玭g c莕 u/exit_dialog")
		else
			Say("<color=green>Ch?thng h閕<color>:"..myText.."\n", 0)
		end
	else
		Say("H玬 nay ngi  l祄  nhi謒 v?r錳, ng祔 mai l筰 n nh?", 0)
	end
end;


-- 送玩家去任务地点
function goto_mission_pos()
	-- 获取该任务的地图 ID
	local nMapIndex = tonumber(GetCurTaskLinkMapIndex(11))
	if (nMapIndex ~= 0 and nMapIndex ~= nil) then
		gotoWorld(nMapIndex)
	end
end;


-- 判断是否能够接任务
-- 现在改为，每天上限100次，没有累加，过一天就清空一天的数据 - Oct 28, 2006 Jeep tag
function can_accept_task()
	local nRet = 0
	-- 更新日期信息
	refresh_time_records()
	
	--local nWeekDay = tonumber(date("%w"))
	--if (nWeekDay == 0) then
	--	nWeekDay = 7
	--end
	
	-- 本周还能做多少次
	--local nWeekCanDoTimes = nWeekDay * 20
	--local nHaveDoneCurWeek = GetTask(CURWEEK_DONE_TIMES)
	--nWeekCanDoTimes = nWeekCanDoTimes - nHaveDoneCurWeek
	
	-- 今天还能做多少次
	--local nDayCanDoTimes = 3 * 20
--	local nDayCanDoTimes = 100
	local nDayCanDoTimes = 60
	local nHaveDoneCurDay = GetTask(CURDAY_DONE_TIMES)
	nDayCanDoTimes = nDayCanDoTimes - nHaveDoneCurDay
	
	--if (nWeekCanDoTimes < nDayCanDoTimes) then
	--	nDayCanDoTimes = nWeekCanDoTimes
	--end
	
	if (nDayCanDoTimes > 0) then
		nRet = 1
	end
	
	local nCurrTime = {date("%y"), date("%m"), date("%d")}
	local nCurDay = tonumber(nCurrTime[1]..nCurrTime[2]..nCurrTime[3])
	
	-- 如果跨回到以前的服务器，就做不了商会任务
	if (nCurDay < GetTask(LAST_DAY_DATE)) then
		nRet = 0
	end
	
	return nRet
end;

-- 提交完成了的任务
function hand_up_task()
	local nTaskFinish = QueryTaskFinish(11)
	-- 更新日期信息
	refresh_time_records()
	local nType = check_type()	
	-- 奖励倍率
	--local nCount = prize_muti_by_time()
	--local multiple = 1		-- 暂时不鸟辉煌之夜的影响
	local nCount = 100		-- 也没有每天的双倍限制了
	local multiple = get_reward_multiple(SYS_COC)
	-- 奖励类型
	local nPrizeType = 1	-- 金钱

	-- 已经完成了任务
	if (nTaskFinish == 1) then

		-- 通知程序，完成了任务
		FinishTaskStep(11, nPrizeType, nCount * multiple) 
		--if GetTask(CURDAY_DONE_TIMES) < 40 then
			--ModifyReputation(- 3, 0)
		--else
			--ModifyReputation(- 5, 0)
		--end
		--- Modify 甶觤 danh v鋘g
		if GetTask(CURDAY_DONE_TIMES)  <= 24 then
			if  GetLevel() >= 73 and GetLevel() <= 79  then
				--ModifyReputation(- 1, 0)
				--Msg2Player("B筺  b?tr?1 甶觤 danh v鋘g")
			end
			if GetLevel() >= 80 and GetLevel() <= 89  then
				--ModifyReputation(- 2, 0)
				--Msg2Player("B筺  b?tr?2 甶觤 danh v鋘g")
			end 
		end
		----------------------------------------------- ph竧 thng theo m鴆 lev
		--ModifyReputation(- 3, 0)		
		ModifyJinJuan(tbCheck_Award[nType][2])	
		-- 更新当天和本周已经完成的任务
		local nCurDayDoneTimes = GetTask(CURDAY_DONE_TIMES)
		local nCurWeekDoneTimes = GetTask(CURWEEK_DONE_TIMES)
		SetTask(CURDAY_DONE_TIMES, nCurDayDoneTimes + 1)
		SetTask(CURWEEK_DONE_TIMES, nCurWeekDoneTimes + 1)
		--圣诞节活动--
			--Xmas_prize_get(3)
		--结束
		-- 活动call back
		-- Th猰 b筩 IPBonus
		--AddMoneyForIPBonus()
		-- Kh玭g s?d鬾g h祄 c馻 Kingsoft  vi誸 (H祄 n祔 s?d鬾g theo d筺g event 
--		Give_Business_Award();
		local nLastLoginIp,nCurrentLoginIp = GetLoginIP();	
		local nLIP1,nCIP1 = floor(nLastLoginIp/2^24),floor(nCurrentLoginIp/2^24);
		local nLIP2,nCIP2 = floor((nLastLoginIp-nLIP1*2^24)/2^16),floor((nCurrentLoginIp-(nCIP1*2^24))/2^16);
		local nLIP3,nCIP3 = floor((nLastLoginIp-nLIP1*2^24-nLIP2*2^16)/2^8),floor((nCurrentLoginIp-nCIP1*2^24-nCIP2*2^16)/2^8);
		local nLIP4,nCIP4 = nLastLoginIp-nLIP1*2^24-nLIP2*2^16-nLIP3*2^8,nCurrentLoginIp-nCIP1*2^24-nCIP2*2^16-nCIP3*2^8;
		local szLIP = tostring(nLIP1.."."..nLIP2.."."..nLIP3.."."..nLIP4);
		local szCIP = tostring(nCIP1.."."..nCIP2.."."..nCIP3.."."..nCIP4);
		
--		WriteLogEx("Nhiem vu Thuong Hoi", "ho祅 th祅h", tBonus[nLevel], "ng")
		gf_WriteLogEx("Nhiem Vu Thuong Hoi", "ho祅 th祅h 1 nhi謒 v?, 1, "Thng h閕 lo筰 "..tbCheck_Award[nType][3])
		if GetTask(CURDAY_DONE_TIMES)  == 60 then
			gf_WriteLogEx("Nhiem Vu Thuong Hoi", "ho祅 th祅h 60 nhi謒 v?, 1, "Ho祅 th祅h 60 nhi謒 v?)
		end
		-----------------------Chu鏸 nhi謒 v?уng H祅h
		if CFG_NhiemVuDongHanh == 1 then
			if DongHanh_GetStatus() == 0 and (DongHanh_GetMission() == 12 or DongHanh_GetMission() == 13 or DongHanh_GetMission() == 14 or DongHanh_GetMission() == 15) then
				if DongHanh_GetMissionPart() > 0 then
					DongHanh_SetMissionPart()
					if DongHanh_GetMissionPart() == 0 then
						DongHanh_SetStatus()
					end
				end
			end
		end
		--------------------------
		-- 师门任务 （商会）
		local nChance, nMaxChance = CustomDataRead("mp_shanghui")
		if nChance ~= nil then
			nChance = nChance + 1
			if nChance < nMaxChance then
				CustomDataSave("mp_shanghui", "dd", nChance, nMaxChance)
				Msg2Player("Nhi謒 v?S?-T譶h h譶h ho祅 th祅h Thng h閕-:"..nChance.."/"..nMaxChance)
			else
				PrenticeCompleteTask()
			end
		end
	else
		Say("Ngi ch璦 ho祅 th祅h nhi謒 v?ta giao! Ti誴 t鬰 c?g緉g nh?", 0)
	end
end;

function prize_muti_by_time()
	local nRet = 100
	local nCurrTime = {date("%w"), date("%H")}
	local nWeekday = tonumber(nCurrTime[1])
	local nHours = tonumber(nCurrTime[2])
	
	if (nWeekday == 0 or nWeekday == 6) then	-- 周末
		if (nHours == 18 or nHours == 19 or nHours == 20 or nHours == 21) then
			nRet = 200
		end
	else										-- 平时
		if (nHours == 20 or nHours == 21) then	
			nRet = 200
		end									
	end
	
	return nRet
end;

-- 取消正在做的任务
function cancel_cur_task()
--	Say("<color=green>商会老板<color>：<color=yellow>取消任务<color>将耗费一次领取任务奖励的机会，你确定要取消此次任务吗？",
	Say("<color=yellow>H駓 nhi謒 v?l莕 n祔<color> s?b?tr?甶 <color=yellow>5 甶觤 danh v鋘g<color>! B籲g h鱱 h穣 suy ngh?k?nh?",
		2,
		"H駓 b?nhi謒 v?confirm_cancel_task",
		"в ta suy ngh?l筰/exit_dialog")
end;

-- 确认取消正在做的任务
--function confirm_cancel_task()
--	-- 通知程序取消当前任务
--	CleanTask(11)
--	-- 更新日期信息
--	refresh_time_records()
--	
--	-- 更新当天和本周已经完成的任务
--	local nCurDayDoneTimes = GetTask(CURDAY_DONE_TIMES)
--	local nCurWeekDoneTimes = GetTask(CURWEEK_DONE_TIMES)
--	SetTask(CURDAY_DONE_TIMES, nCurDayDoneTimes + 1)
--	SetTask(CURWEEK_DONE_TIMES, nCurWeekDoneTimes + 1)
--	
--	-- 提示玩家
--	Say("<color=green>商会老板<color>：你已经成功的取消了本次任务，但是也耗费了一次领取任务奖励的机会！", 0)
--end;

-- 玩家确认取消任务
function confirm_cancel_task()
	
	local nNum = GetTask(390);
	local nRound = 0;

	if GetReputation() >=5 then
		ModifyReputation(-5,0);
		
		if nNum<=10 then
			nRound=0;
		else
			if mod(nNum, 10) == 0 then
				nRound = floor(nNum/10) - 1;
			else
				nRound = floor(nNum/10);
			end;
		end;

		do_cancel_task();  -- 清空任务

		Say("Xong r錳! b﹜ gi?b籲g h鱱 c?th?nh薾 nhi謒 v?m韎!",0);
		Msg2Player("B筺 b?tr?5 甶觤 danh v鋘g v?h駓 nhi謒 v?");
		TaskTip("B筺 b?tr?5 甶觤 danh v鋘g v?h駓 nhi謒 v?");
	else
		Say("<color=yellow>觤 danh v鋘g hi謓 t筰<color> c馻 ngi qu?th蕄, kh玭g th?h駓 nhi謒 v?l莕 n祔!",0);
		Msg2Player("觤 danh v鋘g qu?th蕄, kh玭g th?h駓 nhi謒 v?");
		TaskTip("觤 danh v鋘g qu?th蕄, kh玭g th?h駓 nhi謒 v?");
		return
	end;
	return
end

-- 确认取消正在做的任务
function do_cancel_task()
	-- 通知程序取消当前任务
	CleanTask(11);
	-- 更新日期信息
	refresh_time_records()
	
	-- 更新当天和本周已经完成的任务
	local nCurDayDoneTimes = GetTask(CURDAY_DONE_TIMES)
	local nCurWeekDoneTimes = GetTask(CURWEEK_DONE_TIMES)
	SetTask(CURDAY_DONE_TIMES, nCurDayDoneTimes + 1)
	SetTask(CURWEEK_DONE_TIMES, nCurWeekDoneTimes + 1)
	
end;

-- 查看本周我完成商会任务的情况
function query_cur_week_info()
	--local strDayDesc = {"一", "二", "三", "四", "五", "六", "日"}
	
	-- 先更新数据
	refresh_time_records()
	
	--local nWeekDay = tonumber(date("%w"))
	--if (nWeekDay == 0) then
	--	nWeekDay = 7
	--end
	
	-- 本周还能做多少次
	--local nWeekCanDoTimes = nWeekDay * 20
	--local nHaveDoneCurWeek = GetTask(CURWEEK_DONE_TIMES)
	--nWeekCanDoTimes = nWeekCanDoTimes - nHaveDoneCurWeek
	
	-- 今天还能做多少次
	--local nDayCanDoTimes = 3 * 20
--	local nDayCanDoTimes = 100
	local nDayCanDoTimes = 60
	local nHaveDoneCurDay = GetTask(CURDAY_DONE_TIMES)
	nDayCanDoTimes = nDayCanDoTimes - nHaveDoneCurDay
	--if (nWeekCanDoTimes < nDayCanDoTimes) then
	--	nDayCanDoTimes = nWeekCanDoTimes
	--end
	
	Say("H玬 nay  ho祅 th祅h <color=yellow>"..nHaveDoneCurDay.."<color> l莕 nhi謒 v? C遪 c?th?nh薾 <color=yellow>"..nDayCanDoTimes.."<color> l莕! ", 0)
end;

-- 刷新日期信息
function refresh_time_records()
	local nCurrTime = {date("%y"), date("%m"), date("%d"), date("%w")}
	local nCurDay = tonumber(nCurrTime[1]..nCurrTime[2]..nCurrTime[3])
	--local nCurWeekDay = tonumber(nCurrTime[4])
	
	-- 更新当天的日期
	if (nCurDay > GetTask(LAST_DAY_DATE)) then
		SetTask(LAST_DAY_DATE, nCurDay)		-- 更新上天的日期
		SetTask(CURDAY_DONE_TIMES, 0)		-- 更新本天做了的任务次数
	end
	
	-- 更新本周的信息
	--if (nCurDay > GetTask(LAST_WEEKEND_DATE)) then
	--	local nNextWeekEnd = refresh_last_week_end()
	--	SetTask(LAST_WEEKEND_DATE, nNextWeekEnd)		-- 更新下个周末的时间
	--	SetTask(CURWEEK_DONE_TIMES, 0)					-- 更新本周做了的任务次数
	--end
end;

-- 更新下个周末的时间
function refresh_last_week_end()
	local nCurrTime = {date("%y"), date("%m"), date("%d"), date("%w")}
	local nCurDate = tonumber(nCurrTime[1]..nCurrTime[2]..nCurrTime[3])		-- 当前的日期
	local nCurYear = tonumber(nCurrTime[1])			-- 当前年份
	local nCurMonth = tonumber(nCurrTime[2])		-- 当前月份
	local nCurDay = tonumber(nCurrTime[3])			-- 当前天
	local nCurWeekDay = tonumber(nCurrTime[4])		-- 当前周几
	
	-- 周日就直接返回当天日期
	if (nCurWeekDay == 0) then
		return nCurDate
	end
	
	local nPassDay = 31									-- 其它月份31天的处理
	if (nCurMonth == 2) then							-- 2月份的处理， 28天的处理
		nPassDay = 28
		if (nCurYear == 8 or nCurYear == 12) then		-- 闰年
			nPassDay = 29
		end
	elseif (nCurMonth == 4 or nCurMonth == 6 or
			nCurMonth == 9 or nCurMonth == 11) then		-- 4、6、9、11月的处理，30天的处理
		nPassDay = 30
	end
	
	-- 需要加的天数
	local nShouldPlus = 7 - nCurWeekDay
	nCurDay = nCurDay + nShouldPlus
	
	if (nCurDay > nPassDay) then
		nCurDay = nCurDay - nPassDay
		nCurMonth = nCurMonth + 1
		if (nCurMonth > 12) then
			nCurMonth = 1
			nCurYear = nCurYear + 1
		end
	end
	
	nCurDate = nCurYear * 10000 + nCurMonth * 100 + nCurDay
	return nCurDate
end;

-- 襲 ki謓 th猰 b筩 IPBonus ( trng h頿 2 b筩 v?20 b筩 )
function AddMoneyForIPBonus()
	if GetPlayerRoute() == 0 or VET_CheckIpBonus() == 0 then
		return
	end
	
	local tIpBonusReq =
	{
		[1] = {80, 10000, 10000, 2000},
		[2] = {73, 3000, 4000, 200},
	}
	
	-- T譵 m鴆 thu雗g ph?h頿 v韎 甶襲 ki謓 c馻 ngi ch琲
	local nCheck = 0
	for i = 1, getn(tIpBonusReq) do
		if GetLevel() >= tIpBonusReq[i][1] and GetReputation() > tIpBonusReq[i][2] and GetTask(336) > tIpBonusReq[i][3] then
			nCheck = i
			break
		end
	end
	
	if nCheck == 0 then 
		return
	end
	
	-- Thng ti襫 v?ghi log trong nh鉳 IPBonus
	local nBonusMoney = tIpBonusReq[nCheck][4]
	ModifyJinJuan(nBonusMoney)
	nBonusMoney = nBonusMoney / 100
	Msg2Player("B筺 nh薾 頲 "..nBonusMoney.." b筩")
	gf_WriteCustomLog(VET_STR_IPBONUS_LOG_TITLE, "nh薾 頲 "..nBonusMoney.." b筩")
end

	-- Kh玭g cho nh薾 nv Thng h閕
function no_accept_new_task()
	Talk(1,"","B筺  nh薾 nhi謒 v?r錳, h穣 ho祅 th祅h  nh薾 ph莕 thng!!!")
	return
end

function check_type()
	local nLev = GetLevel()
	local nType = 0
	if nLev >= 73 and nLev <= 76 then
		nType = 1
	elseif nLev >= 77 and nLev <= 95 then
		nType = 2
	else
		nType = 3
	end 
	return nType
end