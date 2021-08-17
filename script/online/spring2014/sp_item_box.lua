--���ޱ���
Include("\\script\\online\\spring2014\\sp_head.lua")

function OnUse(nItem)
	if sp_IsOpenActivity() ~= 1 then
		return 0;
	end
	if gf_Judge_Room_Weight(1, 10, " ") ~= 1 then
		return 0;
	end
	if DelItemByIndex(nItem, 1) ~= 1 then
		return 0;
	end
	gf_ModifyExp(1000000);
                -- SetTask(707, GetTask(707) + 1000)
	if SP_TASK_GROUP:GetMyTaskByte(SP_TASK_GROUP.UseTimes, 3, 4) >= 15 then
		SP_TASK_GROUP:SetMyTaskByte(SP_TASK_GROUP.UseTimes, 3, 4, 0);
		Add_ShiMenZhenJuan();
		return 1;
	end
	local tAward = {
		-- {1, 200, "Tinh Hoa U�n Linh 6 ", {2, 1, 30668, 16, 1}, 0},
		{1, 100, "T� Quang Li�t Di�m C�m", {2, 0, 735, 10, 1}, 0},
		{1, 100, "T� Quang K� L�n V�", {2, 0, 736, 10, 1}, 0},
		{1, 100, "T� Quang kim Thi�n Ti", {2, 0, 737, 10, 1}, 0},
		{1, 100, "T� Quang Ti�t Ho�nh Th�", {2, 0, 738, 10, 1}, 0},
		{1, 100, "T� Quang K� L�n Huy�t", {2, 0, 739, 10, 1}, 0},
		-- {1, 200, "C�p 4 T�y T�m Th�ch", {2, 1, 30524, 10, 1}, 0},
		-- {1, 200, "C�p 4 Luy�n L� Thi�t", {2, 1, 30530, 10, 1}, 0},
		-- {1, 100, "T� Quang L�nh", {2, 0, 763, 3, 1}, 0},
	};
	gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "Event T�t Kingsoft", "Ho�t ��ng ��nh Ni�n Th�")
end

function Add_ShiMenZhenJuan()
	local tBook = {
		[2] = {0,107,30018,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Kim Cang B�t Nh� Ch�n Quy�n "},
		[3] = {0,107,30020,1,1,-1,-1,-1,-1,-1,-1,-1,0, "V� Tr�n B� �� Ch�n Quy�n"},
		[4] = {0,107,30019,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Ti�m Long T�c Di�t Ch�n Quy�n"},
		[6] = {0,107,30021,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Thi�n La Li�n Ch�u Ch�n Quy�n"},
		[8] = {0,107,30022,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Nh� � Kim ��nh Ch�n Quy�n"},
		[9] = {0,107,30023,1,1,-1,-1,-1,-1,-1,-1,-1,0, "B�ch H�i Tuy�t �m Ch�n Quy�n"},
		[11] = {0,107,30024,1,1,-1,-1,-1,-1,-1,-1,-1,0, "H�n ��n Tr�n Nh�c Ch�n Quy�n"},
		[12] = {0,107,30025,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Qu� Thi�n Du Long Ch�n Quy�n"},
		[14] = {0,107,30026,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Huy�n �nh M� T�ng Ch�n Quy�n"},
		[15] = {0,107,30027,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Qu�n T� ��i Phong Ch�n Quy�n"},
		[17] = {0,107,30028,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Tr�n Qu�n Phi Long Th��ng Ch�n Quy�n"},
		[18] = {0,107,30029,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Xuy�n V�n L�c H�ng Ch�n Quy�n"},
		[20] = {0,107,30030,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Huy�n Minh Phong Ma Ch�n Quy�n"},
		[21] = {0,107,30031,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Linh C� Huy�n T� Ch�n Quy�n"},
		[23] = {0,107,30032,1,1,-1,-1,-1,-1,-1,-1,-1,0, "C�u Thi�n Phong L�i Ch�n Quy�n"},
		[29] = {0,107,30033,1,1,-1,-1,-1,-1,-1,-1,-1,0, "H�ng Tr�n T�y M�ng Ch�n Quy�n"},
		[30] = {0,107,30034,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Phong Hoa Thi�n Di�p Ch�n Quy�n"},	
	}
	local nRoute = GetPlayerRoute();
	if tBook[nRoute] then
		gf_AddItemEx2({tBook[nRoute][1],tBook[nRoute][2],tBook[nRoute][3],tBook[nRoute][4],4}, tBook[nRoute][5], "Event T�t Kingsoft", "Ho�t ��ng ��nh Ni�n Th�", 0, 1);
	end
end

function Add_WuXing_Equip()
	local tEquip = {
		{1, 12, "Ni�n Th�",	 {0,105,33,1,1,-1,-1,-1,-1,-1,-1,-1}, 0},
	}
	gf_EventGiveRandAward(tEquip, gf_SumRandBase(tEquip), 1, "Event T�t Kingsoft", "Ho�t ��ng ��nh Ni�n Th�");
end
