--08三八节小金猪符脚本
--by vivi
--2008/03/03

TASK_SANBA_PETTIME = 2407; --跟宠时间

function OnUse()
	local nMapID = GetWorldPos()
	if nMapID >= 700 then
		Talk(1,"","N琲 n祔 hi謓 kh玭g th� s� d鬾g Ti觰 kim tr� ph�");
		return 0;
	end;
	local selTab = {
				"ng v藋!/confirm",
				"Sau n祔 s� d鬾g ti誴/nothing",
				}
	Say("Mu鑞 s� d鬾g Ti觰 kim tr� ph� kh玭g? Sau khi nh蕄 chu閠 x竎 nh薾, b筺 s� m蕋 th� nu玦 hi謓 t筰.",getn(selTab),selTab);
end;

function confirm()
	KillFollower();
	AskClientForString("create_pet","",1,14,"Xin nh藀 t猲 c馻 n� v祇:");
end;

function create_pet(sName)
	local nSex = GetSex();
	local sPetName = "";
	if nSex == 1 then
		sPetName = "Ti觰 Kim tr� (m�)";
	else
		sPetName = "Ti觰 Kim tr� (b�)";
	end
	
	if DelItem(2,0,625,1) == 1 then
		SetTask(TASK_SANBA_PETTIME,GetTime());
		SummonNpc(sPetName,sName);
		Say("Th阨 gian t錸 t筰 c馻 th� c璶g l� 24 gi� (bao g錷 th阨 gian r阨 m筺g), xin h穣 y猽 thng ch髇g!",0);
	end;
end;

function nothing()

end;