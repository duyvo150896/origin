--使用可传送至神兽看护者
Include("\\script\\missions\\tong_melee\\tm_head.lua")

function OnUse(nItem)
	if tm_IsTongMeleeOpen() ~= 1 then
		return 0;
	end
	local nMapId, nMapTemplteId = SubWorldIdx2ID(SubWorld);
	if nMapTemplteId ~= 6074 then
		Talk(1,"","B秐  n祔 kh玭g th� s� d鬾g");
		return 0;
	end
	local oldPlayerIdx = PlayerIndex;
	for i = 1, GetTeamSize() do
		PlayerIndex = GetTeamMember(i);
		if GetItemCount(2, 1, 30616) >= 1 then
			local nMapId, nX, nY = GetWorldPos();
			PlayerIndex = oldPlayerIdx;
			SetPos(nX, nY);
			Msg2Player("Ngi s� d鬾g T� Linh Th� мa Ph� truy襫 t鑞g n ch� Th莕 Th� Khan H� Gi�!");
			break;
		end
	end
	PlayerIndex = oldPlayerIdx;
	SetItemUseLapse(nItem, 30*18);
end