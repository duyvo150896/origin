--汴京府南to汴京
--GGH

--修改：yanjun 05-12-27
--修改目的：元旦夺旗比赛不让有旗子的玩家走TRAP点出地图

Include("\\script\\online\\元旦活动\\yuandan_head.lua")

function main(sel)
	if GetTaskTemp(TASK_FLAG_FOLLOW) == 1 then
		Say("B筺 產ng tham gia thi u 畂箃 c� T誸 Nguy猲 Цn, gi鱝 阯g ng r阨 kh醝 khu v鵦 thi u!",0)
		return 0
	end
	if(GetPKValue() <= 3 ) then
		NewWorld(200, 1203 ,3044)
		SetFightState(0);
	else
		Msg2Player("Ngi l祄 vi謈 竎 c蕀 ra v祇 th玭 tr蕁.")
	end	
end;