--gtask功能脚本
--加入昆仑门派
--taskid 135

function JoinFaction()
	if GetLevel() < 10 then
		Talk(1,"","Ch璦 t c蕄 10, kh玭g th� gia nh藀 m玭 ph竔.");
		return 0;
	end
	
	if GetPlayerFaction() > 0 then
		Talk(1,"",format("Thi誹 hi謕  gia nh藀 v祇 m玭 ph竔 kh竎, kh玭g th� gia nh藀 %s r錳.", "C玭 L玭"));
		return 0;
	end
	
	--不是男号
	if GetSex() ~= 1 then
		return 0;
	end
	
	--加入昆仑门派
	SetPlayerFaction(8);
	SetCurrentNpcSFX(PIdx2NpcIdx(), 921, 1, 0, 18 *3);
	TaskTip(format("C竎 h�  gia nh藀 %s, hi謓 t筰 c� th� t譵 s� ph� b竔 s� h鋍 v� r錳!", "C玭 L玭"));
	Msg2Player(format("C竎 h�  gia nh藀 %s, hi謓 t筰 c� th� t譵 s� ph� b竔 s� h鋍 v� r錳!", "C玭 L玭"));
end

dostring("JoinFaction()");