--Map PK--
dosat_map = 1;                --BËt chøc n¨ng 1 -- T¾t chøc n¨ng 0
-------------------------------------------------------------------------------------------------------
function EnterMap()
	if dosat_map == 0 then
		return
	end
	tao_map_pk();
	if check_time() == 1 and check_place() == 1 then
		SetDeathPunish(0);
		SetPKFlag(2,1);    --B?t d? sát
        ForbidChangePK(1);       ---không cho thay d?i tr?ng thái pk
		Msg2Player("Tõ 15:00 ®Õn 16:00 vµ 22: 00 ®Õn 23: 00  §å s¸t th¶ ga - Kh«ng sî bÞ PK.");
	end;
end;
-------------------------------------------------------------------------------------------------------
function LeaveMap()
	SetDeathPunish(1);
	ForbidChangePK(0);    --Cho thay d?i tr?ng thái PK
	if dosat_map == 0 then
		return
	end
	tao_map_pk();
end;
-------------------------------------------------------------------------------------------------------
function tao_map_pk()

	if GetTrigger(3003) == 0 then
		if CreateTrigger(2,3003,3003) == 0 then      --3024 lèi ra Map t¹o trong settings/trigger/rect.txt
			WriteLog(g_LogTitle.."[Account: "..GetAccount().."][Role Name:"..GetName().."] CreateTrigger(2,3024,3024) Failed. ")
		end
	end;
	if GetTrigger(3004) == 0 then
		if CreateTrigger(2,3004,3004) == 0 then    --3025 lèi vµo Map t¹o trong settings/trigger/rect.txt
			WriteLog(g_LogTitle.."[Account: "..GetAccount().."][Role Name:"..GetName().."] CreateTrigger(2,3025,3025) Failed. ")
		end
	end;
end;
-------------------------------------------------------------------------------------------------------
function check_time()
	local nHour = tonumber(date("%H"));
	if nHour >= 22 and nHour <= 23 then          -- Tõ 22 ®Õn 23 giê
		return 1;
	elseif nHour >= 15 and nHour <= 16 then          -- Tõ 15 ®Õn 16 giê
		return 1;
	else
		return 0;
	end;
end;
-------------------------------------------------------------------------------------------------------
function check_place()
	local nMapID = GetWorldPos();
	if nMapID == 202 then                           -- 404 : Thóy Yªn
		return 1;
	else
		return 0;
	end;
end;
