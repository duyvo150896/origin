--ÄêÊÞ±¦Ïä
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
		-- {1, 200, "Tinh Hoa UÈn Linh 6 ", {2, 1, 30668, 16, 1}, 0},
		{1, 100, "Tö Quang LiÖt DiÖm CÈm", {2, 0, 735, 10, 1}, 0},
		{1, 100, "Tö Quang Kó L©n Vß", {2, 0, 736, 10, 1}, 0},
		{1, 100, "Tö Quang kim ThiÒn Ti", {2, 0, 737, 10, 1}, 0},
		{1, 100, "Tö Quang TiÖt Hoµnh Thã", {2, 0, 738, 10, 1}, 0},
		{1, 100, "Tö Quang Kó L©n HuyÕt", {2, 0, 739, 10, 1}, 0},
		-- {1, 200, "CÊp 4 TÈy T©m Th¹ch", {2, 1, 30524, 10, 1}, 0},
		-- {1, 200, "CÊp 4 LuyÖn L« ThiÕt", {2, 1, 30530, 10, 1}, 0},
		-- {1, 100, "Tö Quang LÖnh", {2, 0, 763, 3, 1}, 0},
	};
	gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "Event TÕt Kingsoft", "Ho¹t ®éng §¸nh Niªn Thó")
end

function Add_ShiMenZhenJuan()
	local tBook = {
		[2] = {0,107,30018,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Kim Cang B¸t Nh· Ch©n QuyÓn "},
		[3] = {0,107,30020,1,1,-1,-1,-1,-1,-1,-1,-1,0, "V« TrÇn Bå §Ò Ch©n QuyÓn"},
		[4] = {0,107,30019,1,1,-1,-1,-1,-1,-1,-1,-1,0, "TiÒm Long Tóc DiÖt Ch©n QuyÓn"},
		[6] = {0,107,30021,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Thiªn La Liªn Ch©u Ch©n QuyÓn"},
		[8] = {0,107,30022,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Nh­ ý Kim §Ønh Ch©n QuyÓn"},
		[9] = {0,107,30023,1,1,-1,-1,-1,-1,-1,-1,-1,0, "BÝch H¶i TuyÖt ¢m Ch©n QuyÓn"},
		[11] = {0,107,30024,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Hçn §én TrÊn Nh¹c Ch©n QuyÓn"},
		[12] = {0,107,30025,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Quú Thiªn Du Long Ch©n QuyÓn"},
		[14] = {0,107,30026,1,1,-1,-1,-1,-1,-1,-1,-1,0, "HuyÒn ¶nh Mª T«ng Ch©n QuyÓn"},
		[15] = {0,107,30027,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Qu©n Tö §íi Phong Ch©n QuyÓn"},
		[17] = {0,107,30028,1,1,-1,-1,-1,-1,-1,-1,-1,0, "TrÊn Qu©n Phi Long Th­¬ng Ch©n QuyÓn"},
		[18] = {0,107,30029,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Xuyªn V©n L¹c Hång Ch©n QuyÓn"},
		[20] = {0,107,30030,1,1,-1,-1,-1,-1,-1,-1,-1,0, "HuyÒn Minh Phong Ma Ch©n QuyÓn"},
		[21] = {0,107,30031,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Linh Cæ HuyÒn Tµ Ch©n QuyÓn"},
		[23] = {0,107,30032,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Cöu Thiªn Phong L«i Ch©n QuyÓn"},
		[29] = {0,107,30033,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Hång TrÇn Tóy Méng Ch©n QuyÓn"},
		[30] = {0,107,30034,1,1,-1,-1,-1,-1,-1,-1,-1,0, "Phong Hoa Thiªn DiÖp Ch©n QuyÓn"},	
	}
	local nRoute = GetPlayerRoute();
	if tBook[nRoute] then
		gf_AddItemEx2({tBook[nRoute][1],tBook[nRoute][2],tBook[nRoute][3],tBook[nRoute][4],4}, tBook[nRoute][5], "Event TÕt Kingsoft", "Ho¹t ®éng §¸nh Niªn Thó", 0, 1);
	end
end

function Add_WuXing_Equip()
	local tEquip = {
		{1, 12, "Niªn Thã",	 {0,105,33,1,1,-1,-1,-1,-1,-1,-1,-1}, 0},
	}
	gf_EventGiveRandAward(tEquip, gf_SumRandBase(tEquip), 1, "Event TÕt Kingsoft", "Ho¹t ®éng §¸nh Niªn Thó");
end
