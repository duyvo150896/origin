
-- ====================== 文件信息 ======================

-- 剑侠情缘onlineII 城门卫兵脚本
-- Edited by peres
-- 2005/02/22 PM 18:03

-- ======================================================

Include("\\script\\task\\teach\\teach_main.lua");

Include("\\script\\global\\maphelp.lua")

function main()

	local nState = TE_GetTeachState()
	local nLevel = GetLevel()
	
	
	if (nState==8) then
		task_008_00();
		return
	else

		UWorld1503=GetTask(1503)
		UTask_world1504=GetTask(1504)
		
		if(UWorld1503 == 5 or UWorld1503 ==10) then
			if(UWorld1503 == 5) then
				Talk(1,"","T筰 h� ph鬾g l謓h Th鮝 tng Tri謚 Ph� n th骳 gi骳 chuy謓 chi猽 th�!")
				Talk(1,"","Ta v鮝 m韎 d竛 xong! Phi襫 b籲g h鱱 v� h錳 b萴 v韎 th鮝 tng!")
				SetTask(1503,10)
			end
				if(UWorld1503 == 10) then
				Talk(1,"","Sao ngi ch璦 th玭g b竜 cho ph� th鮝 tng?")
			end
		
		--汴京府 城门卫兵
		--汴京府新手任务：打击无赖
		-- By: 樊万松(2005.01.26)
		--Include("\\script\\global\\itemhead.lua")
		
		elseif (UTask_world1504 == 0 and GetLevel() > 7) then 		--任务启动
						Say("G莕 y b鋘 C玭  產ng ho祅h h祅h ngo礽 th祅h, qu蕐 nhi評 d﹏ ch髇g! H穣 甶 tr鮪g tr� ch髇g!",2,"Ta 甶 ngay!/W1504_get_yes","Sau n祔 h穣 t輓h/W1504_get_no")
		elseif (UTask_world1504 == 5  and  GetItemCount(2,1,11) >= 10 ) then		-- 任务完成
						DelItem(2,1,11,10)
						SetTask(1504,10)
						Talk(1,"","Qu� nhi猲 th﹏ th� b蕋 ph祄! Зy ch髏 l� v藅 xin nh薾 l蕐!")
						--AddNote("将10双绣花鞋交给城门守卫，任务完成。")
						TaskTip("Giao 10 i T� Hoa h礽 cho V� binh th祅h m玭, ho祅 th祅h nhi謒 v�!")
						--AddItem(2,1,1,1)
						Earn(400)
						GivePlayerExp(SkeyShiJieChongFu,"wulai")
						ModifyReputation(3,0)
		elseif (UTask_world1504 == 5  and  GetItemCount(2,1,11) < 10 ) then
						Talk(1,"","H穣 tr鮪g tr� b鋘 C玭  ngo礽 th祅h v� mang 10 i T� Hoa h礽 v� l祄 b籲g ch鴑g!")
		else
						Say("Ta ng y  h琻 10 n╩, t鮪g g苝 nhi襲 cao th� h祇 ki謙. Mu鑞 bi誸 khu v鵦 luy謓 c玭g, h穣 n t譵 ta! Ngi c� h鴑g th� kh玭g?",2,"Xin cho bi誸 khu v鵦 luy謓 c玭g th輈h h頿./yes","Ta kh玭g mu鑞 nghe./no")
		end

end;

end;

function yes()
	maphp()
end;

function no()
	i=random(1,3)
	if i==1 then 
		Talk(1,"","Kinh th祅h 產ng l﹎ nguy, m鋓 ngi h穣 g鉷 s鴆 t譵 阯g c鴘 v穘!")
	elseif i == 2 then  
		Talk(1,"","Mau 甶 qua! ng ng c秐 c鎛g th祅h!")
	else
		Talk(1,"","C萵 th薾! Ngo礽 quan 秈 產ng c� chi課 s�! ng b� s鉻 b鋘 gian t� Li猽 Qu鑓!")
	end
end;


function W1504_get_yes()
	SetTask(1504,5)
	Talk(1,"","H穣 tr鮪g tr� b鋘 C玭 , l蕐 v� 10 i T� Hoa h礽 c馻 c竎 d﹏ n� b� b鋘 C玭  cp b鉩!")
	Talk(1,"","Л頲! T筰 h� l藀 t鴆 l猲 阯g!")
	--AddNote("接到任务：收集10双“绣花鞋”，以做惩治无赖的凭证。")
	TaskTip("Nh薾 nhi謒 v�: Thu th藀 10 i T� Hoa h礽, tr鮪g tr� b鋘 C玭 !")
end;
