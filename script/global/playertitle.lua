-- ÉèÖÃ³ÆºÅºÍÈ¡ÏûÉèÖÃÉùÍûÊ±Ö´ÐÐ

-- type = 0x1, equip;  type = 0x2, have;

function Equip(nGeren, nDetail, nType)
	--WriteLog("Equip::geren: "..nGeren..", detai: "..nDetail..", type: "..nType);
	local nStateID = nGeren * 10000 + nDetail * 100
	if check_battle_rank(nGeren, nDetail) == 0 then
		if nType == 2 then
			RemoveState(nStateID)
			return 0;
		end;
		SetCurTitle(0,0);
		return 0;
	end;
	if check_new_battle_rank(nGeren, nDetail) == 0 then
		if nType == 2 then
			RemoveState(nStateID)
			return 0;
		end;
		SetCurTitle(0,0);
		return 0;
	end;
	local szfunc = format("_%.2d_%.2d_(%d, %d)", nGeren, nDetail, nType, nStateID)
	dostring(szfunc)
	if nType == 1 then
		local nYear, nMonth, nDay, nHour, nMin, nSec = AddTitleTime(nGeren, nDetail, 0)
		--WriteLog("year: "..nYear..", month: "..nMonth..", day: "..nDay..", hour: "..nHour..", minute: "..nMin..", second: "..nSec);
		if nYear ~= 1970 then
			Msg2Player("X­ng hiÖu cña b¹n hÕt h¹n vµo"..nYear.."niªn"..nMonth.."NguyÖt"..nDay.."NhËt"..nHour.." gi?"..nMin.." Phót "..nSec.." gi©y")
		end
	end
end

function UnEquip(nGeren, nDetail, nType)
	local nStateID = nGeren * 10000 + nDetail * 100
	RemoveState(nStateID)
	RemoveState(nStateID+1)	--Õë¶Ô×éºÏÊôÐÔ
	RemoveState(nStateID+2)
	RemoveState(nStateID+3)
end

function _22_07_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 1, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 0, -1, 1, nStateID)
	end
end

function _22_08_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 3, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 0, -1, 1, nStateID)
	end
end

function _22_09_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 5, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 0, -1, 1, nStateID)
	end
end

function _22_10_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 5, -1, 1, nStateID)
	end
end

function _22_11_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 8, -1, 1, nStateID)
	end
end

function _22_12_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 15, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
	end
end

function _22_13_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 20, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
	end
end

function _22_14_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 25, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 0, -1, 1, nStateID)
	end
end

function _22_15_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 30, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 0, -1, 1, nStateID)
	end
end

function _22_16_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 40, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 0, -1, 1, nStateID)
	end
end

-- ³õ¼¶
function _23_01_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_vitality", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? G©n cèt + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_vitality", 3, -1, 1, nStateID);
		Msg2Player("§­îc hiÖu qu? G©n cèt + 3 ®iÓm");
	end;
end

function _23_02_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_energy", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Néi c«ng + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_energy", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Néi c«ng + 3 ®iÓm");
	end;
end

function _23_03_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_energy", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Néi c«ng + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_energy", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Néi c«ng + 3 ®iÓm");
	end;
end

function _23_04_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_dexterity", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Th©n ph¸p + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_dexterity", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Th©n ph¸p + 3 ®iÓm");
	end;
end

function _23_05_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_energy", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Néi c«ng + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_energy", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Néi c«ng + 3 ®iÓm");
	end;
end

function _23_06_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_dexterity", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Th©n ph¸p + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_dexterity", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Th©n ph¸p + 3 ®iÓm");
	end;
end

function _23_07_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_strength", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Søc m¹nh + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_strength", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Søc m¹nh + 3 ®iÓm");
	end;
end

function _23_08_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_dexterity", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Th©n ph¸p + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_dexterity", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Th©n ph¸p + 3 ®iÓm");
	end;
end

function _23_09_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_energy", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Néi c«ng + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_energy", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Néi c«ng + 3 ®iÓm");
	end;
end

function _23_10_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_observe", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Linh ho¹t + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_observe", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Linh ho¹t + 3 ®iÓm");
	end;
end

function _23_11_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_strength", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Søc m¹nh + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_strength", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Søc m¹nh + 3 ®iÓm");
	end;
end

function _23_12_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_dexterity", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Th©n ph¸p + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_dexterity", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Th©n ph¸p + 3 ®iÓm");
	end;
end

function _23_13_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_dexterity", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Th©n ph¸p + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_dexterity", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Th©n ph¸p + 3 ®iÓm");
	end;
end

function _23_14_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_observe", 5, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Linh ho¹t + 5 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_observe", 3, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Linh ho¹t + 3 ®iÓm");
	end;
end

-- ÖÐ¼¶
function _24_01_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_02_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_03_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_04_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_05_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_06_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_07_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_08_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_09_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_10_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_11_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID);
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_12_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_13_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

function _24_14_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	elseif nType == 2 then
		CastState("state_add_allability", 10, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 10 ®iÓm");
	end;
end

-- ¸ß¼¶
function _25_01_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

-- function _25_02_(nType, nStateID)
	-- if nType == 1 then
		-- CastState("state_add_allability", 12, -1, 1, nStateID)
		-- Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		-- CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		-- Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	-- elseif nType == 2 then
		-- CastState("state_add_allability", 12, -1, 1, nStateID)
		-- Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		-- CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		-- Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	-- end;
-- end

function _25_03_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_04_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_05_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_06_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_07_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_08_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_09_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_10_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_11_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_12_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_13_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

function _25_14_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	elseif nType == 2 then
		CastState("state_add_allability", 12, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 12 ®iÓm");
		CastState("state_medicine_time_increase", 4, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 4%");
	end;
end

-- ×î¸ß
function _26_01_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_02_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_03_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_04_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_05_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_06_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_07_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_08_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_09_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_10_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_11_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_12_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_13_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end

function _26_14_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");		
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	elseif nType == 2 then
		CastState("state_add_allability", 14, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 14 ®iÓm");
		CastState("state_medicine_time_increase", 6, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 6%");
		CastState("state_add_book_attribute_value", 1, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 1%");
	end;
end
--Ê¦ÃÅµÚ4³ÆºÅ
function _27_01_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_02_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_03_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_04_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_05_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_06_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_07_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_08_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_09_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_10_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_11_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_12_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_13_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end

function _27_14_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	elseif nType == 2 then
		CastState("state_add_allability", 16, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 16 ®iÓm");
		CastState("state_medicine_time_increase", 8, -1, 1, nStateID + 1)
		Msg2Player("§­îc hiÖu qu? t¨ng thªm hiÖu qu?cña th­¬ng d­îc 8%");		
		CastState("state_add_book_attribute_value", 2, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 2%");
	end;
end
--Ê¦ÃÅµÚ5³ÆºÅ
function _28_01_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3% ");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3% ");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_02_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3% ");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_03_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_04_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_05_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_06_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_07_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_08_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_09_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_10_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_11_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_12_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_13_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end

function _28_14_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	elseif nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID)
		Msg2Player("§­îc hiÖu qu? Kh¸ng TÊt C?+ 18 ®iÓm");
		CastState("state_life_restore_per10s", 300, -1, 1, nStateID + 2)
		Msg2Player("§­îc hiÖu qu? Mçi 10 gi©y sinh lùc phôc håi 3%");
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 3)
		Msg2Player("§­îc hiÖu qu? h?tr?mËt tÞch t¨ng 3%");
	end;
end
--ËÎ·½Ê¿±ø
function _30_01_(nType, nStateID)

end;
--ËÎ¾üÎäÓÂÐ£Î¾
function _30_02_(nType, nStateID)
	if nType == 1 then
		CastState("state_life_max_percent_add", 5, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_life_max_percent_add", 5, -1, 1, nStateID)
	end;
end;
--ËÎ¾ü³£Ê¤¶¼Í³
function _30_03_(nType, nStateID)
	if nType == 1 then
		CastState("state_life_max_percent_add", 8, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_life_max_percent_add", 8, -1, 1, nStateID)
	end;
end;
--ËÎ¾ü¶¨±±´óÏÈ·æ
function _30_04_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 20, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 20, -1, 1, nStateID)
	end;
end;
--´óËÎÎÞË«´ó½«¾ü
function _30_05_(nType, nStateID)
	if nType == 1 then
		CastState("state_p_attack_percent_add", 10, -1, 1, nStateID+1)
		CastState("state_m_attack_percent_add", 10, -1, 1, nStateID+2)
	elseif nType == 2 then
		CastState("state_p_attack_percent_add", 10, -1, 1, nStateID+1)
		CastState("state_m_attack_percent_add", 10, -1, 1, nStateID+2)
	end;
end;
--´óËÎ»¤¹ú´óÔªË§
function _30_06_(nType, nStateID)
	if nType == 1 then
		CastState("state_burst_enhance_rate", 25, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_burst_enhance_rate", 25, -1, 1, nStateID)
	end;
end;
--ÁÉ·½Ê¿±ø
function _30_07_(nType, nStateID)

end;
--ÁÉ¾üæçÓÂÐ£Î¾
function _30_08_(nType, nStateID)
	if nType == 1 then
		CastState("state_life_max_percent_add", 5, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_life_max_percent_add", 5, -1, 1, nStateID)
	end;
end;
--ÁÉ¾ü¾ø³¾¶¼Í³
function _30_09_(nType, nStateID)
	if nType == 1 then
		CastState("state_life_max_percent_add", 8, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_life_max_percent_add", 8, -1, 1, nStateID)
	end;
end;
--ÁÉ¾üÆ½ÄÏ´óÏÈ·æ
function _30_10_(nType, nStateID)
	if nType == 1 then
		CastState("state_add_allability", 20, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 20, -1, 1, nStateID)
	end;
end;
--´óÁÉÍ¨Ìì´ó½«¾ü
function _30_11_(nType, nStateID)
	if nType == 1 then
		CastState("state_p_attack_percent_add", 10, -1, 1, nStateID+1)
		CastState("state_m_attack_percent_add", 10, -1, 1, nStateID+2)
	elseif nType == 2 then
		CastState("state_p_attack_percent_add", 10, -1, 1, nStateID+1)
		CastState("state_m_attack_percent_add", 10, -1, 1, nStateID+2)
	end;
end;
--ÄÏÔº´óÍõ
function _30_12_(nType, nStateID)
	if nType == 1 then
		CastState("state_burst_enhance_rate", 25, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_burst_enhance_rate", 25, -1, 1, nStateID)
	end;
end;
--´óËÎÆÆÕó¶½»¤
function _30_13_(nType, nStateID)
	if nType == 1 then	--Ôö¼ÓÄÚÍâ¹¥15%
		CastState("state_p_attack_percent_add", 15, -1, 1, nStateID+1)
		CastState("state_m_attack_percent_add", 15, -1, 1, nStateID+2)
	elseif nType == 2 then	
		CastState("state_p_attack_percent_add", 15, -1, 1, nStateID+1)
		CastState("state_m_attack_percent_add", 15, -1, 1, nStateID+2)
	end;
end;
--´óÁÉÆÆÕó¶½»¤
function _30_14_(nType, nStateID)
	if nType == 1 then	--Ôö¼ÓÄÚÍâ¹¥15%
		CastState("state_p_attack_percent_add", 15, -1, 1, nStateID+1)
		CastState("state_m_attack_percent_add", 15, -1, 1, nStateID+2)
	elseif nType == 2 then
		CastState("state_p_attack_percent_add", 15, -1, 1, nStateID+1)
		CastState("state_m_attack_percent_add", 15, -1, 1, nStateID+2)
	end;
end;
--´óËÎÆÆÕó¶½»¤
function _30_15_(nType, nStateID)
	if nType == 1 then	--Ôö¼ÓÉËº¦100µã
		CastState("state_damage_point", 100, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_damage_point", 100, -1, 1, nStateID)
	end;
end;
--´óÁÉÆÆÕó¶½»¤
function _30_16_(nType, nStateID)
	if nType == 1 then	--Ôö¼ÓÉËº¦100µã
		CastState("state_damage_point", 100, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_damage_point", 100, -1, 1, nStateID)
	end;
end;
--ËÎÕò¾ü»¢Æï
function _30_17_(nType, nStateID)
	if nType == 1 then	--ÉËº¦¼õ°ë¸ÅÂÊ25%
		CastState("state_receive_half_damage", 25, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_receive_half_damage", 25, -1, 1, nStateID)
	end;
end;
--ÁÉÕò¾ü»¢Æï
function _30_18_(nType, nStateID)
	if nType == 1 then	--ÉËº¦¼õ°ë¸ÅÂÊ25%
		CastState("state_receive_half_damage", 25, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_receive_half_damage", 25, -1, 1, nStateID)
	end;
end;
--´óËÎÌú¹ÇÁúÎÀ
function _30_19_(nType, nStateID)
	if nType == 1 then	--ËùÓÐÊôÐÔ60µã
		CastState("state_add_allability", 60, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 60, -1, 1, nStateID)
	end;
end;
--´óÁÉÌú¹ÇÁúÎÀ
function _30_20_(nType, nStateID)
	if nType == 1 then	--ËùÓÐÊôÐÔ60µã
		CastState("state_add_allability", 60, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 60, -1, 1, nStateID)
	end;
end;
--´óËÎÎÞË«·É½«
function _30_21_(nType, nStateID)
	if nType == 1 then	--ÉúÃüÉÏÏÞÔö¼Ó10000µã
		CastState("state_life_max_point_add", 10000, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_life_max_point_add", 10000, -1, 1, nStateID)
	end;
end;
--´óÁÉÎÞË«·É½«
function _30_22_(nType, nStateID)
	if nType == 1 then	--ÉúÃüÉÏÏÞÔö¼Ó10000µã
		CastState("state_life_max_point_add", 10000, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_life_max_point_add", 10000, -1, 1, nStateID)
	end;
end;
--´óËÎÓùµÐÃÍÊ¿
function _30_23_(nType, nStateID)
	if nType == 1 then	--ËùÓÐÊôÐÔ40µã
		CastState("state_add_allability", 40, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 40, -1, 1, nStateID)
	end;
end;
--´óÁÉÓùµÐÃÍÊ¿
function _30_24_(nType, nStateID)
	if nType == 1 then	--ËùÓÐÊôÐÔ40µã
		CastState("state_add_allability", 40, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 40, -1, 1, nStateID)
	end;
end;

function _63_01_(nType, nStateID)
    if nType == 1 then	--ËùÓÐÊôÐÔ8µã
		CastState("state_add_allability", 8, -1, 1, nStateID)
	elseif nType == 2 then
		CastState("state_add_allability", 8, -1, 1, nStateID)
	end;
end

function _64_01_(type, stateID)
	if 1 == type then
		CastState("state_add_energy", 20, -1, 1, stateID)
		Msg2Player("§­îc hiÖu qu? Néi c«ng + 20 ®iÓm");
	end
end

function _64_02_(type, stateID)
	if 1 == type then
		CastState("state_add_strength", 20, -1, 1, stateID)
		Msg2Player("§­îc hiÖu qu? Søc m¹nh + 20 ®iÓm");	
	end
end

--function _64_03_(type, stateID)
--	if 1 == type then
--		CastState("state_add_dexterity", 20, -1, 1, stateID)
--		Msg2Player("»ñµÃÐ§¹û£ºÉí·¨Ôö¼Ó20µã");
--	end
--end
--
--function _64_04_(type, stateID)
--	if 1 == type then
--		CastState("state_add_vitality", 20, -1, 1, stateID)
--		Msg2Player("»ñµÃÐ§¹û£º¸ù¹ÇÔö¼Ó20µã");
--	end
--end
--
--function _64_05_(type, stateID)
--	if 1 == type then
--		CastState("state_add_observe", 20, -1, 1, stateID)
--		Msg2Player("»ñµÃÐ§¹û£º¶´²ìÔö¼Ó20µã");
--	end
--end

function PT_AddAllWhenEquip(type, stateID, number1, number2)
	if 1 == type then
		CastState("state_burst_enhance_rate", number1, -1, 1, stateID+1);
		CastState("state_add_allability", number2, -1, 1, stateID+2);
		CastState("state_accuracy_point_increase", 3000, -1, 1, stateID+ 3);
		CastState("state_life_max_point_add", 10000, -1, 1, stateID+ 3);
		Msg2Player(format("%s%d%%s%d%s%d","HiÖu qu¶ nhËn ®­îc: T¨ng tèc ®é thi triÓn", number1, ",T¨ng Sinh lùc", number2, " ®iÓm", "T¨ng Sinh lùc", 10000));
	end
end

function _65_01_(type, stateID)
	PT_AddAllWhenEquip(type, stateID, 10, 10);
end

function _65_02_(type, stateID)
	PT_AddAllWhenEquip(type, stateID, 12, 12);
end

function _65_03_(type, stateID)
	PT_AddAllWhenEquip_duyvo_2(type, stateID, 10, 15,7000);
end

--function _65_04_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_05_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_06_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_07_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_08_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_09_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_10_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_11_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_12_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_13_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_14_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_15_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_16_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_17_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_18_(type, stateID)
--	PT_AddAllWhenEquip(type, stateID, 10);
--end
--
--function _65_19_(type, stateID)
--	if 2 == type then
--		CastState("state_life_max_percent_add", -15, -1, 1, stateID);
--		Msg2Player("»ñµÃÐ§¹û£ºÉúÃüÖµÏÂ½µ15%");		
--	end
--end
--
--function _65_20_(type, stateID)
--	if 2 == type then
--		CastState("state_neili_max_percent_add", -15, -1, 1, stateID);
--		Msg2Player("»ñµÃÐ§¹û£ºÄÚÁ¦ÖµÏÂ½µ15%");		
--	end
--end
--
--function _65_21_(type, stateID)
--	if 2 == type then
--		CastState("state_life_max_percent_add", -15, -1, 1, stateID);
--		Msg2Player("»ñµÃÐ§¹û£ºÉúÃüÖµÏÂ½µ15%");		
--	end
--end
--
--function _65_22_(type, stateID)
--	if 2 == type then
--		CastState("state_life_max_percent_add", -15, -1, 1, stateID);
--		Msg2Player("»ñµÃÐ§¹û£ºÉúÃüÖµÏÂ½µ15%");		
--	end
--end
--
--function _65_23_(type, stateID)
--	if 2 == type then
--		CastState("state_neili_max_percent_add", -15, -1, 1, stateID);
--		Msg2Player("»ñµÃÐ§¹û£ºÄÚÁ¦ÖµÏÂ½µ15%");		
--	end
--end
--
--function _65_24_(type, stateID)
--	if 2 == type then
--		CastState("state_neili_max_percent_add", -15, -1, 1, stateID);
--		Msg2Player("»ñµÃÐ§¹û£ºÄÚÁ¦ÖµÏÂ½µ15%");		
--	end
--end
--
--function _65_25_(type, stateID)
--	if 2 == type then
--		CastState("state_slow", 10, -1, 1, stateID);
--		Msg2Player("»ñµÃÐ§¹û£ºÒÆ¶¯ËÙ¶ÈÏÂ½µ10%");		
--	end
--end
--
--function _65_26_(type, stateID)
--	if 2 == type then
--		CastState("state_add_allability", 8, -1, 1, stateID);
--		Msg2Player("»ñµÃÐ§¹û£ºÈ«ÊôÐÔÔö¼Ó8µã");
--	end
--end
--
--function _65_27_(type, stateID)
--	if 2 == type then
--		CastState("state_add_allability", 8, -1, 1, stateID);
--		Msg2Player("»ñµÃÐ§¹û£ºÈ«ÊôÐÔÔö¼Ó8µã");
--	end
--end

--------------------------------------------------------------------------------------
-- ¹¥³ÇÕ½³ÆºÅ

function CityWarEquip(nGeren, nDetail, nType)
	local szfunc = format("_%.2d_%.2d_(%d)", nGeren, nDetail, nType)
	dostring(szfunc)
	if nType == 1 then
		local nYear, nMonth, nDay, nHour, nMin, nSec = AddTitleTime(nGeren, nDetail, 0)
		if nYear ~= 1970 then
			Msg2Player("X­ng hiÖu cña b¹n hÕt h¹n vµo"..nYear.."niªn"..nMonth.."NguyÖt"..nDay.."NhËt"..nHour.." gi?"..nMin.." Phót "..nSec.." gi©y")
		end
	end
end

function CityWarUnEquip(nGeren, nDetail, nType)
	SetCityWarDutyFlag(0, 0)
	VerifyEquip()
end

function _51_01_(nType)		-- ³É¶¼³ÇÖ÷
	SetCityWarDutyFlag(300, 0)
end

function _51_02_(nType)		-- ³É¶¼¿¤Ö÷
	SetCityWarDutyFlag(300, 0)
end

function _51_03_(nType)		-- ³É¶¼¾üÊ¦
	SetCityWarDutyFlag(300, 1)
end

function _51_04_(nType)		-- ³É¶¼Ãû²¶
	if nType == 1 then
		SetCityWarDutyFlag(300, 2)
	elseif nType == 2 then
		SetCityWarDutyFlag(0, 0)
	end
end

function _51_05_(nType)		-- ÈªÖÝ³ÇÖ÷
	SetCityWarDutyFlag(100, 0)
end

function _51_06_(nType)		-- ÈªÖÝ¿¤Ö÷
	SetCityWarDutyFlag(100, 0)
end

function _51_07_(nType)		-- ÈªÖÝ¾üÊ¦
	SetCityWarDutyFlag(100, 1)
end

function _51_08_(nType)		-- ÈªÖÝÃû²¶
	if nType == 1 then
		SetCityWarDutyFlag(100, 2)
	elseif nType == 2 then
		SetCityWarDutyFlag(0, 0)
	end
end

function _51_09_(nType)		-- ÏåÑô³ÇÖ÷
	SetCityWarDutyFlag(350, 0)
end

function _51_10_(nType)		-- ÏåÑô¿¤Ö÷
	SetCityWarDutyFlag(350, 0)
end

function _51_11_(nType)		-- ÏåÑô¾üÊ¦
	SetCityWarDutyFlag(350, 1)
end

function _51_12_(nType)		-- ÏåÑôÃû²¶
	if nType == 1 then
		SetCityWarDutyFlag(350, 2)
	elseif nType == 2 then
		SetCityWarDutyFlag(0, 0)
	end
end

--Î÷±±¹Ø¿¨³ÆºÅ
--×ÝºáÎ÷ÏÄ£¨»÷°ÜÀîÔªÇì»ñµÃµÄ³ÆºÅ£©
function _60_08_(nType, nStateID)
	if nType == 1 then	--¾­Ñé»ñµÃÔö¼Ó5%
		CastState("state_inc_exp_gain", 5, -1, 1, nStateID)
	elseif nType == 2 then  --¾­Ñé»ñµÃÔö¼Ó5%
		CastState("state_inc_exp_gain", 0, -1, 1, nStateID)
	end;
end;

-- ¹¥³ÇÕ½³ÆºÅ½áÊø

--==========ÅÐ¶ÏÕ½³¡³ÆºÅµÄ============================================================
tTitleTab =
{
--³ÆºÅÃû³Æ£¬¶ÔÓ¦³ÆºÅ±íÄÚµÄ´óÀà£¬¸±Àà£¬ËùÐè¾üÏÎ
	{"Tèng_V?Dòng HiÖu óy",	30, 2, 2},
	{"Liªu_Kiªu Dòng §« óy",	30, 8,-2},
	{"Tèng_Th­êng Th¾ng §« thèng",	30, 3, 3},
	{"Liªu_TuyÖt trÇn §« thèng",	30, 9,-3},
	{"Tèng_§Þnh B¾c ®¹i Tiªn phong",	30, 4, 4},
	{"Liªu_B×nh Nam ®¹i Tiªn phong",	30,10,-4},	
	{"Tèng_V?Song §¹i t­íng qu©n",	30, 5, 5},	
	{"Liªu_Th«ng Thiªn §¹i t­íng qu©n",	30,11,-5},	
	{"Tèng_H?Quèc §¹i nguyªn so¸i",	30, 6, 6},	
	{"Nam ViÖn ®¹i V­¬ng",		30,12,-6},	
} 

tNewTitleTab =
{
--³ÆºÅÃû³Æ£¬¶ÔÓ¦³ÆºÅ±íÄÚµÄ´óÀà£¬¸±Àà£¬ËùÐè¾ü¹¦£¬ÊÇ·ñÖ§³ÖÓÀ¾ÃÔªË§¾üÏÎ
	{"Tèng -Ph?TrËn §èc h?",	30,	13,		300000,		1}, 
	{"Liªu-Ph?TrËn §èc h?",	30,	14,		-300000,	1},
	{"Tèng -Ph?TrËn §èc h?",	30,	15,		300000,		1}, 
	{"Liªu-Ph?TrËn §èc h?",	30,	16,		-300000,	1},
	{"Tèng-TrÊn Qu©n H?k?",	30,	17,		450000,		0}, 
	{"Liªu-TrÊn Qu©n H?k?",	30,	18,		-450000,	0},	
	{"Tèng -ThiÕt C?Long V?",	30,	19,		400000,		0}, 
	{"Liªu- ThiÕt C?Long V?",	30,	20,		-400000,	0},
	{"Tèng- V?Song Phi T­íng",	30,	21,		500000,		0}, 
	{"Liªu-V?Song Phi T­íng",	30,	22,		-500000,	0},
	{"Tèng- Ng?§Þch M·nh S?",	30,	23,		250000,		1}, 
	{"Liªu- Ng?§Þch M·nh S?",	30,	24,		-250000,	1},
}
--¼ì²éµ±Ç°ÊÇ²»ÊÇÕ½³¡³ÆºÅ²¢ÇÒ·ûºÏ¶¥Õâ¸ö³ÆºÅµÄ×Ê¸ñ
function check_battle_rank(nGeren, nDetail)
	local nTitleIdx = 0;
	for i,v in tTitleTab do
		if tTitleTab[i][2] == nGeren and tTitleTab[i][3] == nDetail then
			nTitleIdx = i;
		end;
	end;
	if nTitleIdx == 0 then	--²»ÊÇÕ½³¡³ÆºÅ
		return 1;
	end;
	local nCurRank = GetTask(704);
	local nNeedRank = tTitleTab[nTitleIdx][4];	
	if nCurRank > 0 then
		if nNeedRank < 0 then
			Msg2Player("B¹n hiÖn thuéc phe Tèng, kh«ng th?dïng danh hiÖu cña phe Liªu");
			return 0
		end
	elseif nCurRank < 0 then
		if nNeedRank > 0 then
			Msg2Player("B¹n hiÖn thuéc phe Liªu kh«ng th?dïng danh hiÖu cña phe Tèng");
			return 0
		end;
	end;

	local nEverRank = 0
	if GetTask(765) >= 15 then
		nEverRank = 6
	elseif GetTask(766) + GetTask(765) >= 10 then
		nEverRank = 5
	elseif GetTask(767) + GetTask(766) + GetTask(765) >= 10 then
		nEverRank = 4
	end
	
	nCurRank = abs(nCurRank)
	nNeedRank = abs(nNeedRank)
	if nCurRank < nEverRank then
		nCurRank = nEverRank
	end
	-- if nCurRank < nNeedRank then
		-- Msg2Player("Qu©n hµm cña b¹n qu?thÊp kh«ng th?s?dông danh hiÖu nµy.")
		-- return 0
	-- end
	return 1
end;
--µÚ¶þÅúÕ½³¡³ÆºÅ¼ì²é
function check_new_battle_rank(nGeren, nDetail)
	local tCampNameZ =					--ÕóÓªÃû×Ö£¨ÖÐÎÄ£©£¬ÏÔÊ¾¶Ô»°µÄÊ±ºòÓÃµÄ
	{
		[0] = "",
		[1] = "Tèng",
		[2] = "Liªu",
	}
	local nTitleIdx = 0;
	for i,v in tNewTitleTab do
		if tNewTitleTab[i][2] == nGeren and tNewTitleTab[i][3] == nDetail then
			nTitleIdx = i;
		end;
	end;
	if nTitleIdx == 0 then	--²»ÊÇÕ½³¡³ÆºÅ
		return 1;
	end;
	local nCurCamp = 0;
	local nNeedJunGong = tNewTitleTab[nTitleIdx][4];
	local nNeedEverRank = tNewTitleTab[nTitleIdx][5];
	local nCurJunGong = GetTask(701);
	local bEverMarshal = 0;
	local nTitleCamp = 0;
	if nNeedJunGong > 0 then
		nTitleCamp = 1;
	else
		nTitleCamp = 2;
	end;
	if nCurJunGong >= 0 then
		nCurCamp = 1;
	else
		nCurCamp = 2;
	end;
	if GetTask(765) >= 15 then
		bEverMarshal = 1;	--ÊÇÓÀ¾ÃÔªË§
	end;
	if nCurCamp == 1 then	--µ±Ç°ÎªËÎ·½
		if nNeedEverRank == 1 then
			if (bEverMarshal == 0 and nCurJunGong < nNeedJunGong) or nCurCamp ~= nTitleCamp then
				Msg2Player("B¹n ph¶i ®¹t ®­îc "..tCampNameZ[nTitleCamp].."Ph­¬ng "..abs(nNeedJunGong).." chiÕn c«ng hoÆc c?"..tCampNameZ[nTitleCamp].." Qu©n hµm Ph­¬ng VÜnh cöu Nguyªn So¸i míi c?th?s?dông x­ng hiÖu nµy");				
				return 0;
			end;
		else
			if nCurJunGong < nNeedJunGong or nCurCamp ~= nTitleCamp then
				Msg2Player("B¹n ph¶i ®¹t ®­îc "..tCampNameZ[nTitleCamp].."Ph­¬ng "..abs(nNeedJunGong).." Qu©n c«ng míi ®­îc s?dông x­ng hiÖu nµy");				
				return 0;
			end;
		end;
	else
		if nNeedEverRank == 1 then
			if (bEverMarshal == 0 and nCurJunGong > nNeedJunGong) or nCurCamp ~= nTitleCamp then
				Msg2Player("B¹n ph¶i ®¹t ®­îc "..tCampNameZ[nTitleCamp].."Ph­¬ng "..abs(nNeedJunGong).." chiÕn c«ng hoÆc c?"..tCampNameZ[nTitleCamp].." Qu©n hµm Ph­¬ng VÜnh cöu Nguyªn So¸i míi c?th?s?dông x­ng hiÖu nµy");				
				return 0;
			end;
		else
			if nCurJunGong > nNeedJunGong or nCurCamp ~= nTitleCamp then
				Msg2Player("B¹n ph¶i ®¹t ®­îc "..tCampNameZ[nTitleCamp].."Ph­¬ng "..abs(nNeedJunGong).." Qu©n c«ng míi ®­îc s?dông x­ng hiÖu nµy");				
				return 0;
			end;
		end;		
	end;
	return 1;
end;
--===================================================================================

function ZhenzaiEquip(nGeren, nDetail, nType)
	RemoveTrigger(GetTrigger(2021))
end

function ZhenzaiUnEquip(nGeren, nDetail, nType)
	RemoveTrigger(GetTrigger(2021))
end

--ÕÙ»ØÀÏÍæ¼Ò»î¶¯ ÎäÁÖ³ÆºÅ
function CallbackEquip(nGeren, nDetail, nType)
	if nType == 1 then
		local n = CreateTrigger(1, 51, 2022)
		ContinueTimer(n)
	elseif nType == 2 then
		RemoveTrigger(GetTrigger(2022))
	end
end

function CallbackUnEquip(nGeren, nDetail, nType)
	RemoveTrigger(GetTrigger(2022))
end

--¶þÊ®ÖÜÄê³ÆºÅ
function YearsEquip(nGeren, nDetail, nType)
	if nType == 1 then
		local n = CreateTrigger(1, 52, 2023)
		ContinueTimer(n)
	elseif nType == 2 then
		RemoveTrigger(GetTrigger(2023))
	end
end

function YearsUnEquip(nGeren, nDetail, nType)
	RemoveTrigger(GetTrigger(2023))
end

--ËÄÁé×ªÉí³ÆºÅÊôÐÔ
function _61_05_(nType, nStateID)
--	print(nType, nStateID)
--	print(GetPlayerRebornParam(1))
	if nType == 2 then
		CastState("state_add_allability", 18, -1, 1, nStateID);
		CastState("state_medicine_time_increase", 10, -1, 1, nStateID + 1);
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 2);
	end
end

--ËÄÁé×ªÉí2³ÆºÅÊôÐÔ
function _61_06_(nType, nStateID)
--	print(nType, nStateID)
--	print(GetPlayerRebornParam(1))
	if nType == 2 then
		CastState("state_add_allability", 21, -1, 1, nStateID);
		CastState("state_medicine_time_increase", 10, -1, 1, nStateID + 1);
		CastState("state_add_book_attribute_value", 3, -1, 1, nStateID + 2);
		CastState("state_life_max_point_add", 5000, -1, 1, nStateID + 3);
	end
end

function _66_01_(nType, nStateID)
	PT_AddAllWhenEquip_duyvo(nType, nStateID, 40, 12,85000)
end

function _66_02_(nType, nStateID)
	PT_AddAllWhenEquip_duyvo(nType, nStateID, 40, 12,85000)
end

function _66_03_(nType, nStateID)
	PT_AddAllWhenEquip_duyvo(nType, nStateID, 40, 12,85000)
end

function _66_04_(nType, nStateID)
	PT_AddAllWhenEquip_duyvo(nType, nStateID, 40, 12,85000)
end

function _67_01_(nType, nStateID)
	newbattle_season_titile(nType, nStateID,1)
end
function _67_02_(nType, nStateID)
	newbattle_season_titile(nType, nStateID,2)
end
function _67_03_(nType, nStateID)
	newbattle_season_titile(nType, nStateID,3)
end
function _67_11_(nType, nStateID)
	newbattle_season_titile(nType, nStateID,1)
end
function _67_12_(nType, nStateID)
	newbattle_season_titile(nType, nStateID,2)
end
function _67_13_(nType, nStateID)
	newbattle_season_titile(nType, nStateID,3)
end
T_NEW_BATTLE_ATTR = {
    [2] = {"state_add_strength", "Søc m¹nh",}, --ÉÙÁÖË×¼Ò
    [3] = {"state_add_energy", "Néi c«ng ",}, --ÉÙÁÖìø×Ú
    [4] = {"state_add_energy", "Néi c«ng ",}, --ÉÙÁÖÎä×Ú
    [6] = {"state_add_dexterity", "Th©n ph¸p",}, --ÌÆÃÅ
    [8] = {"state_add_energy", "Néi c«ng ",}, --¶ðáÒ·ð¼Ò
    [9] = {"state_add_dexterity", "Th©n ph¸p",}, --¶ðáÒË×¼Ò
    [11] = {"state_add_strength", "Søc m¹nh",}, --Ø¤°ï¾»ÒÂ
    [12] = {"state_add_dexterity", "Th©n ph¸p",}, --Ø¤°ïÎÛÒÂ
    [14] = {"state_add_energy", "Néi c«ng ",}, --Îäµ±µÀ¼Ò
    [15] = {"state_add_observe", "Linh ho¹t",}, --Îäµ±Ë×¼Ò
    [17] = {"state_add_strength", "Søc m¹nh",}, --ÑîÃÅÇ¹Æï
    [18] = {"state_add_dexterity", "Th©n ph¸p",}, --ÑîÃÅ¹­Æï
    [20] = {"state_add_dexterity", "Th©n ph¸p",}, --Îå¶¾Ð°ÏÀ
    [21] = {"state_add_observe", "Linh ho¹t",}, --Îå¶¾¹ÆÊ¦
    [23] = {"state_add_energy", "Néi c«ng ",}, --À¥ÂØ
    [29] = {"state_add_strength", "Søc m¹nh",}, --´äÑÌÎèÏÉ
    [30] = {"state_add_observe", "Linh ho¹t",}, --´äÑÌÁéÅ®
}
T_NEW_BATTLE_TYPE = {100, 60, 40}


function newbattle_season_titile(nType, nStateID, nSubId)
	if nType == 2 then
		local tAttr = T_NEW_BATTLE_ATTR[GetPlayerRoute()]
		local nVal = T_NEW_BATTLE_TYPE[nSubId]
		if tAttr and nVal then
			CastState(tAttr[1], nVal, -1, 1, nStateID);
		end
	end
end

function _68_01_(nType, nStateID)
	if 1 == nType then
		PT_AddAllWhenEquip_duyvo(nType, nStateID, 40, 12,85000);
	end
end

function _68_02_(nType, nStateID)
	if 1 == nType then
		PT_AddAllWhenEquip_duyvo(nType, nStateID, 40, 12,85000);
	end
end

function _68_03_(nType, nStateID)
	if 1 == nType then
		PT_AddAllWhenEquip_duyvo(nType, nStateID, 40, 12,85000);
	end
end

function _68_04_(nType, nStateID)
	if 1 == nType then
		PT_AddAllWhenEquip_duyvo(nType, nStateID, 40, 12,85000);
	end
end
function _25_02_(nType, nStateID)
	-- if 1 == nType then
		-- PT_AddAllWhenEquip_duyvo(nType, nStateID, 40, 12,85000);
	-- end
end
function _70_02_(nType, nStateID)
	end
function _70_03_(nType, nStateID)
	end
function _70_04_(nType, nStateID)
	end
function _70_05_(nType, nStateID)
	end
function _70_06_(nType, nStateID)
	end
function _70_07_(nType, nStateID)

	if 1 == nType then
		PT_AddAllWhenEquip_duyvo(nType, nStateID, 40, 12,85000);
		-- SetCurrentNpcSFX(PIdx2NpcIdx(),978,1,1)
	end

end
function _70_08_(nType, nStateID)
	end
function _71_02_(nType, nStateID)
	end
function _71_03_(nType, nStateID)
	end

function PT_AddAllWhenEquip_duyvo(type, stateID, number1, number2, number3)
	if 1 == type then
		CastState("state_add_allability", number1, -1, 1, stateID);
		CastState("imme_life_percent_add", number2, -1, 1, stateID + 1);
		CastState("state_life_max_point_add", number3, -1, 1, stateID + 2);
		CastState("state_m_attack_percent_add", 15, -1, 1, stateID+ 3);
		CastState("state_p_attack_percent_add", 15, -1, 1, stateID+ 4);
		-- CastState("state_magic_parmor_per_add",5, -1, 1, stateID + 3);
		-- CastState("state_physical_parmor_per_add",15, -1, 1, stateID + 4);
		-- Msg2Player(format("%s%d%s%d%s%d","HiÖu qu¶ : KTC", number1, "  t¨ng sinh lùc : ", number2, "  Sinh lùc t¨ng: ", number3));
	end
end

function PT_AddAllWhenEquip_duyvo_2(type, stateID, number1, number2, number3)
	if 1 == type then
		-- CastState("state_magic_parmor_per_add",5, -1, 1, stateID);
		CastState("state_burst_enhance_rate", number1, -1, 1, stateID);
		CastState("state_add_allability", number2, -1, 1, stateID+1);
		CastState("state_life_max_point_add", number3, -1, 1, stateID+ 2);
		CastState("state_m_attack_percent_add", 15, -1, 1, stateID+ 3);
		CastState("state_p_attack_percent_add", 15, -1, 1, stateID+ 4);
		-- Msg2Player(format("%s%d%%s%d%s%s%d","HiÖu qu¶ nhËn ®­îc: T¨ng tèc ®é thi triÓn", number1, ",T¨ng Sinh lùc", number2, " ®iÓm", "T¨ng Sinh lùc", number3));
	end
end