--任务
--地点：汴京 任务：天门关任务结点5
--策划：樊万松  2004.03.
Include("\\script\\task\\world\\task_award.lua");

function main()
UWorld1401 = GetTask(1401)
	if ( UWorld1401 == 30  )  then
		Talk(1,"say1401_5","Чi T鑞g i lo筺, Qu鑓 gia h璶g vong, th蕋 phu h鱱 tr竎h. Ti觰 nh﹏ c騨g xin n b竜 danh u qu﹏ gi誸 gi芻!")

			elseif ( UWorld1401  == 35 and GetItemCount(2,1,19) >= 1 ) then
						    Talk(6,"","Kh� kh祬Qu� nhi猲 l� nh﹏ t礽! Ngi  l� qu﹏ binh Чi T鑞g! Mong ngi t薾 t﹎ t薾 l鵦 b秓 v� Чi T鑞g. Thi猲 T� s� kh玭g qu猲 c玭g tr筺g c馻 ngi!","T鑤 l緈! T筰 h� s� n <color=red>Nh筺 M玭 quan<color> b竜 danh ngay!","Ngi n <color=red>Nh筺 M玭 quan<color> l祄 g�? H穣 mau n qu﹏ doanh <color=red>Lng S琻 B筩<color> b竜 tin!!","Kh玭g! Nh璶g ta mu鑞 n Nh筺 M玭 quan ch鑞g tr� Li猽 qu﹏!","Nh璶g ta kh玭g c� quy襫! Ch� c� <color=red>Xa Th竔 Qu﹏ � Thi猲 Ba Dng Ph�<color> m韎 c� quy襫 quy誸 nh chuy謓 c馻 Dng Gia qu﹏."," t�  ch� gi竜! T筰 h� 甶 ngay y!")
						    if  DelItem(2,1,19,1) == 1 then
										 SetTask(1401,40)
										 GivePlayerExp(SkeyTianmenzhen,"yangmen")
										 --Earn(1200)
										 ModifyReputation(12,0)
										 --Earn(150000);
										 --AddNote("去天波杨府的佘老太君处要求上雁门关前线")
										 Msg2Player("дn Thi猲 Ba Dng Ph� t譵 Xa Th竔 Qu﹏ xin v祇 ti襫 tuy課 Nh筺 M玭 quan!")

								else
										 Talk(1,"","Chuy觧 giao v藅 ph萴 kh玭g th祅h c玭g")
								end

					elseif ( UWorld1401  == 35 and GetItemCount(2,1,19) < 1 ) then
						Talk(1,"","в kh秓 nghi謒 n╪g l鵦 c馻 ngi, h穣 n ch﹏ n骾 <color=red>Thi誹 L﹎ t�<color> nh <color=red>H� d�<color> l蕐 v� <color=red>1 c竔 畊玦 h�<color>!")
					elseif ( UWorld1401  == 40 ) then
						Talk(1,"","C� vi謈 g� h穣 n <color=red>Thi猲 Ba Dng Ph�<color> g苝 <color=red>Xa Th竔 Qu﹏<color> m� h醝! H醝 ta c騨g v� 輈h!")
							else
									Talk(1,"","D筼 n祔 nhi襲 nh﹏ s� h╪g h竔 n b竜 danh u qu﹏! Th藅 ng m鮪g!")
	end
end;

function  say1401_5()
		Say("H╪g h竔 u qu﹏, ta r蕋 hoan ngh猲h nh璶g ngi c莕 mang n <color=red>1 c竔 畊玦 h�<color>  ch鴑g t� th鵦 l鵦 c馻 ngi!",2,"C� th�/yes1401_5","Kh玭g th�/no1401_5")
end;

function  yes1401_5()
		Talk(2,"","X� g� 1 c竔 畊玦 h�! Ta 甶 ngay y!","в kh秓 nghi謒 n╪g l鵦 c馻 ngi, h穣 n ch﹏ n骾 <color=red>Thi誹 L﹎ t�<color> nh <color=red>H� d�<color> l蕐 v� <color=red>1 c竔 畊玦 h�<color>!")
		SetTask(1401,35)
		--AddNote("去收集1根虎尾，才能参军。")
		Msg2Player(" thu th藀 1 c竔 畊玦 h� m韎 c� th� u qu﹏!")
end;

function  no1401_5()
	Talk(1,"","Цnh h� d� �? Th玦 甶! Ta s� l緈!")
end;
