Import("\\script\\missions\\yp\\ywz\\mission_head.lua")

function main()
	local nCamp = ywzm_GetCamp()
	if 1 == nCamp then
		SetPos(1817, 3967);
		return 1;
	end
	local nIndex = ywzm_GetIndex()
	if nIndex ~= 2 then
		SetPos(1817, 3967);
		return 1;
	end
	if ywzm_GetMissionState() ~= 1 then
		SetPos(1882, 4030);
		Talk(1,"","Hi�n �ang l� giai �o�n chu�n b�, xin vui l�ng ��i.");
		return 1;
	end
	SetFightState(1);
	RestoreAll();
end