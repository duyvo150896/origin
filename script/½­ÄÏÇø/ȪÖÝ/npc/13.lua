--地点：汴京 任务：天门阵任务，结点12
--策划：樊万松  2004.02.28

function main()
	UWorld1401 = GetTask(1401)
if ( UWorld1401 == 80  )  then
				Talk(2,"say1401_12","L祄 g� c� t猲 ngi H竛 n祇? Ph輆 trc l� <color=yellow>B� L筩 Vng K�<color> nh璶g ngi kh玭g d� d祅g v祇 頲  u!","Ta 頲 m閠 ngi 駓 th竎 n y t譵 ngi th﹏ v� b筺 b� c馻 h�.")

elseif ( UWorld1401  == 85 ) then
				Talk(1,"","N誹 v藋 th� ta c祅g ph秈 gi� ngi l筰.")
				
elseif ( UWorld1401  >= 100 ) then
				Talk(1,"","L祄 v藋 c� c遪 l� c玭g b籲g kh玭g?")
else
				Talk(1,"","Ph輆 trc l� <color=yellow>B� L筩 Vng K�<color>! Ngi H竛 kh玭g th� v祇  頲!")
end
end;

function  say1401_12()
	Say("Th� ra l� v藋!",2,"Quay v� g苝 Nhi猽 L﹏ ngh� c竎h/yes1401_12","D飊g 50 lng h鑙 l�./grease1401_12")
end;


function  grease1401_12()
	Say("B筺 quy誸 nh d飊g 50 lng h鑙 l� th� v� b� l筩?",2,"Л頲/grease1401_12yes","Ta suy ngh� l筰!/grease1401_12no")
end;

function  grease1401_12no()
	Talk(1,"","в ta ngh� l筰 !")
end;

function  grease1401_12yes()
			if ( GetCash() >= 500000  )  then
				    Talk(2,"","V蕋 v� cho c竎 huynh  qu�, ch髏 ti襫 tr� nc xin nh薾 cho!","Ngi H竛 c竎 ngi xem ra c騨g c� t譶h c� ngh躠! Sao ta n� t� ch鑙 頲, ngi mau n <color=yellow>B� L筩 Vng K�<color> h醝 th╩ tin t鴆 c馻 h�.")
						Pay(500000)
				    SetTask(1401,100)
    				AddNote("дn B� L筩 Vng K� h醝 th╩ tin t鴆 c馻 Ti猽 Y課 Y課 v� H祅 c Nhng.")
    				Msg2Player("дn B� L筩 Vng K� h醝 th╩ tin t鴆 c馻 Ti猽 Y課 Y課 v� H祅 c Nhng.")
			elseif ( GetCash() < 500000  ) then
						Talk(1,"","H醤g r錳, ta qu猲 甧m theo ng﹏ lng.")						
			end
end;

function  yes1401_12()
		Talk(1,"","в ta quay v� h醝 <color=red>Nhi猽 L﹏<color>, xem c� c竎h n祇 vt 秈 kh玭g.")
    SetTask(1401,85)
		AddNote("Quay l筰 h醝 Nhi猽 L﹏ t譵 c竎h vt 秈.")
		Msg2Player("Quay l筰 h醝 Nhi猽 L﹏ t譵 c竎h vt 秈.")
		
end;
