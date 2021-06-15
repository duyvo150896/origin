--Map PK--
dosat_map = 1;                --B�t ch�c n�ng 1 -- T�t ch�c n�ng 0
-------------------------------------------------------------------------------------------------------
function EnterMap()
	if dosat_map == 0 then
		return
	end
	tao_map_pk();
	if check_time() == 1 and check_place() == 1 then
		SetDeathPunish(0);
		SetPKFlag(2,1);    --B?t d? s�t
        ForbidChangePK(1);       ---kh�ng cho thay d?i tr?ng th�i pk
		Msg2Player("T� 15:00 ��n 16:00 v� 22: 00 ��n 23: 00  �� s�t th� ga - Kh�ng s� b� PK.");
	end;
end;
-------------------------------------------------------------------------------------------------------
function LeaveMap()
	SetDeathPunish(1);
	ForbidChangePK(0);    --Cho thay d?i tr?ng th�i PK
	if dosat_map == 0 then
		return
	end
	tao_map_pk();
end;
-------------------------------------------------------------------------------------------------------
function tao_map_pk()

	if GetTrigger(3003) == 0 then
		if CreateTrigger(2,3003,3003) == 0 then      --3024 l�i ra Map t�o trong settings/trigger/rect.txt
			WriteLog(g_LogTitle.."[Account: "..GetAccount().."][Role Name:"..GetName().."] CreateTrigger(2,3024,3024) Failed. ")
		end
	end;
	if GetTrigger(3004) == 0 then
		if CreateTrigger(2,3004,3004) == 0 then    --3025 l�i v�o Map t�o trong settings/trigger/rect.txt
			WriteLog(g_LogTitle.."[Account: "..GetAccount().."][Role Name:"..GetName().."] CreateTrigger(2,3025,3025) Failed. ")
		end
	end;
end;
-------------------------------------------------------------------------------------------------------
function check_time()
	local nHour = tonumber(date("%H"));
	if nHour >= 22 and nHour <= 23 then          -- T� 22 ��n 23 gi�
		return 1;
	elseif nHour >= 15 and nHour <= 16 then          -- T� 15 ��n 16 gi�
		return 1;
	else
		return 0;
	end;
end;
-------------------------------------------------------------------------------------------------------
function check_place()
	local nMapID = GetWorldPos();
	if nMapID == 202 then                           -- 404 : Th�y Y�n
		return 1;
	else
		return 0;
	end;
end;
