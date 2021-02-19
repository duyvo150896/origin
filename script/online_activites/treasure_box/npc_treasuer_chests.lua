--by liubo
--宝箱商人脚本
Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\online_activites\\treasure_box\\string.lua")
Include("\\script\\online_activites\\task_values.lua")
Include("\\script\\vng\\config\\newserver.lua");
Include("\\script\\equip_feed\\feed_up_attr_recoup.lua")
Include("\\script\\vng\\weapon_upgrade\\trangbichiencuong.lua")
Include("\\script\\vng\\doinguyenlieu.lua")

FILE_NAME = "\\script\\online_activites\\treasure_box\\npc_treasuer_chests.lua";	
NANGCAPDIEUDUONG_F1 = "\\script\\vng\\weapon_upgrade\\dieuduongcongthuc1.lua";
NANGCAPDIEUDUONG_F2 = "\\script\\vng\\weapon_upgrade\\dieuduongcongthuc2.lua";
NANGCAPDIEUDUONG_NGOCBOI = "\\script\\vng\\weapon_upgrade\\dieuduong_nangcapngocboi.lua"
g_szNpcName = "<color=green>Thng Nh﹏ B秓 Rng: <color>";

TSK_TMP_CHANGE_BKVD = 206
function main()
	local nDate = tonumber(date("%Y%m%d"))
	local nNation = GetGlbValue(GLB_TSK_SERVER_ID)
	--是否开启判断
	if gf_CheckEventDateEx(46) ~= 1 then
		Talk(1,"",tSTRING_TREASUER_BOX[5])
		return 0
	end
	--判断是否已经转生
	--
	--
--	if GetTask(1538) == 0 then
--		Talk(1,"",tSTRING_TREASUER_NPC[1])
--		return 0
--	end
	local tbSay = {}
	if nDate < 20130904 then
		tinsert(tbSay,"Nh薾 h?tr?trang b?Kim X?_On_Repair")
	end
--	tinsert(tbSay, "Ta mu鑞 i nguy猲 li謚 l蕐 kinh nghi謒/Trade_Material2Exp_Menu")
	-- if tbGioiHanThanTaiBaoRuong[nNation] == nil or nDate >= tbGioiHanThanTaiBaoRuong[nNation] then
		-- tinsert(tbSay,tSTRING_TREASUER_NPC[3].."/get_wooden")
		-- tinsert(tbSay,"Ta mu鑞 i 1 B筩h Kim Rng (ti猽 hao 5 T祅g Rng)/get_BKR")
		-- tinsert(tbSay,"Ta mu鑞 i 1 Th莕 T礽 B秓 Rng (ti猽 hao 55 T祅g Rng)/get_TTBR")
	-- end
	-- tinsert(tbSay,"фi trang b?H筼 Nguy謙/get_haonguyet")
	-- tinsert(tbSay,"фi trang b?Di謚 Dng/NangCapDieuDuong")
	-- tinsert(tbSay,"N﹏g c蕄 ng鋍 b閕 Di謚 Dng 6% th祅h 8%/NangCapDieuDuong_NgocBoi")
--		"N﹏g c蕄 B筩h Kim Vi猰 д/get_BKVD",
--		tSTRING_TREASUER_NPC[4].."/get_treasure",
--	tinsert(tbSay, "фi trang b?Chi課 Cu錸g/TrangBiChienCuong_Form")
	tinsert(tbSay,"R阨 kh醝/do_nothing")
	
	Say(tSTRING_TREASUER_NPC[2], getn(tbSay), tbSay)
end

function get_wooden()
	local nNum = GetTask(VET_TREASURE_BOX_MNUM)
	local tNumWooden = {2,5,1}
	local nIndex = floor(nNum/20)+1
--	if nIndex < 3 then
--		Say(TREASURE_NPC_NMAE..format(tSTRING_TREASUER_NPC[5],tNumWooden[nIndex],nIndex*20-nNum),2,format("Ta mu鑞 mua/#pay_award(%d,0,%d)",nIndex*20-nNum,tNumWooden[nIndex]),"Kh玭g c莕 u/do_nothing")
--	else
		Say(TREASURE_NPC_NMAE..format(tSTRING_TREASUER_NPC[6],tNumWooden[3]),2,format("Ta mu鑞 mua/#pay_award(%d,0,%d)",999,tNumWooden[3]),"Kh玭g c莕 u/do_nothing")
--	end
end

function get_treasure()
	local nNum = GetTask(VET_TREASURE_BOX_CNUM)	
	local tNumTreasure = {66,135,300}
	
	local nIndex = 0
	if nNum < 5 then
		nIndex = 1
	elseif nNum >= 5 and nNum < 20 then
		nIndex = 2
	else
		nIndex = 3
	end
	
	local tboxremain = {5, 20}
	if nIndex < 3 then
		Say(TREASURE_NPC_NMAE..format(tSTRING_TREASUER_NPC[5],tNumTreasure[nIndex],tboxremain[nIndex] - nNum),2,format("Ta mu鑞 mua/#pay_award(%d,1,%d)",tboxremain[nIndex] - nNum,tNumTreasure[nIndex]),"Kh玭g c莕 u/do_nothing")
		print("So ruong con lai: "..tboxremain[nIndex] - nNum)
	else
		Say(TREASURE_NPC_NMAE..format(tSTRING_TREASUER_NPC[6],tNumTreasure[3]),2,format("Ta mu鑞 mua/#pay_award(%d,1,%d)",999,tNumTreasure[3]),"Kh玭g c莕 u/do_nothing")
	end
end

function pay_award(nNum1,nNum2,nNum3)
	local nNum = GetItemCount(2,1,30230)
	if nNum2 == 0 then
		if nNum < nNum1 * nNum3 then nNum1 = floor(nNum / nNum3) end
		AskClientForNumber("pay_wooden",1,nNum1,"H穣 nh藀 s?lng","")
	end
	if nNum2 == 1 then
		if nNum < nNum1 * nNum3 then nNum1 = floor(nNum / nNum3) end
		AskClientForNumber("pay_treasure",1,nNum1,"H穣 nh藀 s?lng","")
	end
end

function pay_wooden(nNum)
	local nNumTask = GetTask(VET_TREASURE_BOX_MNUM)
	local tNumWooden = {2,5,1}
	local nIndex = floor(nNumTask/20)+1
	if nIndex > 3 then nIndex = 3 end
	if gf_Judge_Room_Weight(1,1," ") ~= 1 then
        Talk(1,"",tSTRING_TREASUER_BOX[4])
		return 0
    end
	if GetItemCount(2,1,30230) < nNum * tNumWooden[3] then
		Talk(1,"",format(tSTRING_TREASUER_NPC[7],nNum * tNumWooden[3]))
		return 0 
	end
	if DelItem(2,1,30230,nNum * tNumWooden[3]) == 1 then
		if gf_AddItemEx2({2,1,30340,nNum},"фi M閏 Rng lo筰 "..tNumWooden[3].." xu","Than Tai Bao Ruong","фi M閏 Rng th祅h c玭g",0,1) ~= 1 then
			return 0
		end
  		gf_WriteLogEx("Than Tai Bao Ruong", "i th祅h c玭g", nNum, "Xu фi M閏 Rng")   		
		SetTask(VET_TREASURE_BOX_MNUM,nNumTask+nNum)
		return 1
	end
	return 0
end

function pay_treasure(nNum)
	local nNumTask = GetTask(VET_TREASURE_BOX_CNUM)
	local tNumTreasure = {66,135,300}
	--local nIndex = floor(nNumTask/20)+1
	--if nIndex > 3 then nIndex = 3 end
	local nIndex = 0
	if nNumTask < 5 then
		nIndex = 1
	elseif nNumTask >= 5 and nNumTask < 20 then
		nIndex = 2
	else
		nIndex = 3
	end
	if gf_Judge_Room_Weight(1,1," ") ~= 1 then
        Talk(1,"",tSTRING_TREASUER_BOX[4])
		return 0
  	end
	if GetItemCount(2,1,30230) < nNum * tNumTreasure[nIndex] then
		Talk(1,"",format(tSTRING_TREASUER_NPC[7],nNum * tNumTreasure[nIndex]))
		return 0 
	end	
	if DelItem(2,1,30230,nNum * tNumTreasure[nIndex]) == 1 then
		if gf_AddItemEx2({2,1,30341,nNum},"фi T祅g Rng lo筰 "..tNumTreasure[nIndex].." xu","Than Tai Bao Ruong","фi T祅g Rng th祅h c玭g",0,1) ~= 1 then
			return 0
		end
		SetTask(VET_TREASURE_BOX_CNUM,nNumTask+nNum)
		return 1
	end
	return 0
end

function do_nothing()
end

function get_BKVD()
	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "H穣 ch鋘 trang b?c莕 n﹏g c蕄."
	
	tinsert(tbSayDialog, "- Ta c莕 i 1 B筩h Kim Vi猰 д Kh玦 (100 M秐h B筩h Kim + 3 B筩h Kim H錸g Bao (c?ch鴄 4000 v祅g + 1 Thi猲 Chi Vi猰 д Kh玦[+12])/#get_BKVD_confirm(1,0)")
	tinsert(tbSayDialog, "- Ta c莕 i 1 B筩h Kim Vi猰 д Gi竝 (100 M秐h B筩h Kim + 3 B筩h Kim H錸g Bao (c?ch鴄 4000 v祅g + 1 Thi猲 Chi Vi猰 д Gi竝[+12])/#get_BKVD_confirm(2,0)")
	tinsert(tbSayDialog, "- Ta c莕 i 1 B筩h Kim Vi猰 д Trang (100 M秐h B筩h Kim + 3 B筩h Kim H錸g Bao (c?ch鴄 4000 v祅g + 1 Thi猲 Chi Vi猰 д Trang[+12])/#get_BKVD_confirm(3,0)")
	tinsert(tbSayDialog, "Tr?l筰/main")
	
	nSaySize = getn(tbSayDialog);
	Say(szSayHead, nSaySize, tbSayDialog);
end


function get_haonguyet()
	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "H穣 ch鋘 trang b?c莕 i."
	
	tinsert(tbSayDialog, "- Ta c莕 i N鉵 H筼 Nguy謙 (8 M秐h B筩h Kim + 1 N?Oa Tinh Th筩h + 1 B筩h Kim Чi H錸g Bao( c?ch鴄 4000 v祅g)/#get_haonguyet_confirm(1,0)")
	tinsert(tbSayDialog, "- Ta c莕 i 竜 H筼 Nguy謙 (6 M秐h B筩h Kim + 1 N?Oa Tinh Th筩h + 1 B筩h Kim Чi H錸g Bao( c?ch鴄 4000 v祅g)/#get_haonguyet_confirm(2,0)")
	tinsert(tbSayDialog, "- Ta c莕 i Qu莕 H筼 Nguy謙 (6 M秐h B筩h Kim + 1 N?Oa Tinh Th筩h + 1 B筩h Kim Чi H錸g Bao( c?ch鴄 4000 v祅g)/#get_haonguyet_confirm(3,0)")
	tinsert(tbSayDialog, "- Ta c莕 i Trang S鴆 H筼 Nguy謙 (12 M秐h B筩h Kim + 2 N?Oa Tinh Th筩h + 2 B筩h Kim Чi H錸g Bao( c?ch鴄 4000 v祅g)/get_haonguyet_trangsuc")
	tinsert(tbSayDialog, "- Ta c莕 i V?Kh?H筼 Nguy謙 (16 M秐h B筩h Kim + 4 N?Oa Tinh Th筩h + 4 B筩h Kim Чi H錸g Bao( c?ch鴄 4000 v祅g)/#get_haonguyet_confirm(5,0)")
	tinsert(tbSayDialog, "Tr?l筰/main")
	
	nSaySize = getn(tbSayDialog);
	Say(szSayHead, nSaySize, tbSayDialog);
end
function get_haonguyet_trangsuc()
	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "H穣 ch鋘 trang b?c莕 i."
	
	tinsert(tbSayDialog, "- Ta c莕 i H筼 Nguy謙-X輈h Tc Ho祅 (12 M秐h B筩h Kim + 2 N?Oa Tinh Th筩h + 2 B筩h Kim Чi H錸g Bao( c?ch鴄 4000 v祅g)/#get_haonguyet_confirm(4,1)")
	tinsert(tbSayDialog, "- Ta c莕 i H筼 Nguy謙-T?Giao Ng鋍 B閕 (12 M秐h B筩h Kim + 2 N?Oa Tinh Th筩h + 2 B筩h Kim Чi H錸g Bao( c?ch鴄 4000 v祅g)/#get_haonguyet_confirm(4,2)")
	tinsert(tbSayDialog, "- Ta c莕 i H筼 Nguy謙-V﹏ H?L謓h (12 M秐h B筩h Kim + 2 N?Oa Tinh Th筩h + 2 B筩h Kim Чi H錸g Bao( c?ch鴄 4000 v祅g)/#get_haonguyet_confirm(4,3)")
	tinsert(tbSayDialog, "- Ta c莕 i H筼 Nguy謙-?L﹏ B秓 Gi韎 (12 M秐h B筩h Kim + 2 N?Oa Tinh Th筩h + 2 B筩h Kim Чi H錸g Bao( c?ch鴄 4000 v祅g)/#get_haonguyet_confirm(4,4)")
	tinsert(tbSayDialog, "- Ta c莕 i H筼 Nguy謙-B輈h Quy Li猲 (12 M秐h B筩h Kim + 2 N?Oa Tinh Th筩h + 2 B筩h Kim Чi H錸g Bao( c?ch鴄 4000 v祅g)/#get_haonguyet_confirm(4,5)")
	tinsert(tbSayDialog, "Tr?l筰/get_haonguyet")
	
	nSaySize = getn(tbSayDialog);
	Say(szSayHead, nSaySize, tbSayDialog);
end


function get_BKVD_confirm(nGetType, nSelected)
	if gf_CheckPlayerRoute() == 0 then
		Talk(1, "","Ph秈 gia nh藀 h?ph竔 m韎 n﹏g c蕄 trang b?頲!");
		return 0;
	end
	if gf_Judge_Room_Weight(2, 500, "") == 0 then
        return 0;
     end
    	local nItemNum1 = tItem_need[1][3]
	if GetItemCount(2,1,30346) < nItemNum1 then
		Talk(1, "", "B筺 kh玭g  "..tItem_need[1][1].."  i trang b?B筩h Kim Vi猰 д")
		return 0
	end
	    	local nItemNum2 = tItem_need[2][3]
	if GetItemCount(2,1,30229) < nItemNum2 then
		Talk(1, "", "B筺 kh玭g  "..tItem_need[2][1].."  i trang b?B筩h Kim Vi猰 д")
		return 0
	end
	SetTaskTemp(TSK_TMP_CHANGE_BKVD,nGetType)
	local nSlot = BKVD_need[nGetType][1]		
	PutinItemBox("фi trang b? ,nSlot ", "X竎 nh薾 mu鑞 th鵦 hi謓 n﹏g c蕄 trang b?", FILE_NAME, 1)
end

function OnPutinCheck(param, idx, genre, detail, particular)
	local nGetType = GetTaskTemp(TSK_TMP_CHANGE_BKVD)
	if nGetType == 0 then
		return 0;
	end
	
	local tb_item = BKVD_need[nGetType][3]
	local tItem = {}
	local check = 0

	for i = 1, getn(tb_item) do
		tinsert(tItem,tb_item[i])
	end
	for i=1,getn(tItem) do
		local nG, nD, nP = gf_UnPack(tb_item[i])
		if (GetEquipAttr(idx,2) < 12) and genre == 0 then
			Talk(1,"",g_szNpcName.."ч cng h鉧 v藅 ph萴 ph秈 t?12 tr?l猲");
			return 0;		
		end
		if (genre == nG and detail == nD and particular == nP) then	
			check = 1	
		end
	end
	if check == 1 then
		return 1
	end
	Talk(1, "", g_szNpcName.."Ch?c?th?b?v祇 "..BKVD_need[nGetType][2]);
	return 0;
end

function OnPutinComplete(param)
	local nGetType = GetTaskTemp(TSK_TMP_CHANGE_BKVD)
	if nGetType == 0 then
		Talk(1, "", g_szNpcName.."B?v祇 v藅 ph萴 kh玭g ng");
		return 0;
	end
	if param ~= 1 then
		Talk(1, "", g_szNpcName.."B?v祇 v藅 ph萴 kh玭g ng");
		return 0;
	end
	local t = GetPutinItem()
	if getn(t) ~= BKVD_need[nGetType][1] then
		Talk(1, "", g_szNpcName.."B?v祇 v藅 ph萴 kh玭g ng");
		return 0;
	end
	if gf_Judge_Room_Weight(2, 500, "") == 0 then
        return 0;
     end
    	local nItemNum1 = tItem_need[1][3]
	if GetItemCount(2,1,30346) < nItemNum1 then
		Talk(1, "", "B筺 kh玭g  "..tItem_need[1][1].."  i trang b?B筩h Kim Vi猰 д")
		return 0
	end
	    	local nItemNum2 = tItem_need[2][3]
	if GetItemCount(2,1,30229) < nItemNum2 then
		Talk(1, "", "B筺 kh玭g  "..tItem_need[2][1].."  i trang b?B筩h Kim Vi猰 д")
		return 0
	end
	local nResult = 1
	for i = 1, getn(t) do		
		if DelItemByIndex(t[i][1], -1) ~= 1 then
			nResult = 0;
			break;
		end
	end
	local nItemNum1 = tItem_need[1][3]
	local nItemNum2 = tItem_need[2][3]
	local nbody = GetBody()
	if nResult ==1 then
		if DelItem(2,1,30346, nItemNum1) == 1 and DelItem(2,1,30229, nItemNum2) == 1 then
			SetTaskTemp(TSK_TMP_CHANGE_BKVD,0)
			local nItem = BKVD_suc[nGetType][2][nbody]
			gf_AddItemEx2(nItem, "N﹏g c蕄 trang b?th祅h c玭g", "NANG CAP TRANG BI BKVD", "n﹏g c蕄 th祅h c玭g")
			Talk(1,"","Ch骳 m鮪g b筺 nh薾 頲 1 trang b?B筩h Kim Vi猰 д!")
		end
	end
end

function get_haonguyet_confirm(nGetType, nSelected)
	if gf_CheckPlayerRoute() == 0 then
		Talk(1, "","Ph秈 gia nh藀 h?ph竔 m韎 n﹏g c蕄 trang b?頲!");
		return 0;
	end
	if gf_Judge_Room_Weight(2, 500, "") == 0 then
        return 0;
     end
     if nGetType == 1 then
    		if GetItemCount(2,1,30346) < 8 then
			Talk(1, "", "B筺 kh玭g  8 m秐h B筩h Kim  i trang b?H筼 Nguy謙")
			return 0
		end
    		if GetItemCount(2,1,30229) < 1 then
			Talk(1, "", "B筺 kh玭g  1 B筩h Kim Чi H錸g Bao  i trang b?H筼 Nguy謙")
			return 0
		end		
    		if GetItemCount(2,1,504) < 1 then
			Talk(1, "", "B筺 kh玭g  1 N?Oa Tinh Th筩h  i trang b?H筼 Nguy謙")
			return 0
		end			
     end
     if nGetType == 2 then
    		if GetItemCount(2,1,30346) < 6 then
			Talk(1, "", "B筺 kh玭g  6 m秐h B筩h Kim  i trang b?H筼 Nguy謙")
			return 0
		end
    		if GetItemCount(2,1,30229) < 1 then
			Talk(1, "", "B筺 kh玭g  1 B筩h Kim Чi H錸g Bao  i trang b?H筼 Nguy謙")
			return 0
		end	
    		if GetItemCount(2,1,504) < 1 then
			Talk(1, "", "B筺 kh玭g  1 N?Oa Tinh Th筩h  i trang b?H筼 Nguy謙")
			return 0
		end					
     end
     if nGetType == 3 then
     		if GetItemCount(2,1,30346) < 6 then
			Talk(1, "", "B筺 kh玭g  6 m秐h B筩h Kim  i trang b?H筼 Nguy謙")
			return 0
		end   
    		if GetItemCount(2,1,30229) < 1 then
			Talk(1, "", "B筺 kh玭g  1 B筩h Kim Чi H錸g Bao  i trang b?H筼 Nguy謙")
			return 0
		end	
    		if GetItemCount(2,1,504) < 1 then
			Talk(1, "", "B筺 kh玭g  1 N?Oa Tinh Th筩h  i trang b?H筼 Nguy謙")
			return 0
		end							
     end     
     if nGetType == 4 then
    		if GetItemCount(2,1,30346) < 12 then
			Talk(1, "", "B筺 kh玭g  12 m秐h B筩h Kim  i trang b?H筼 Nguy謙")
			return 0
		end    	
    		if GetItemCount(2,1,30229) < 2 then
			Talk(1, "", "B筺 kh玭g  2 B筩h Kim Чi H錸g Bao  i trang b?H筼 Nguy謙")
			return 0
		end		
    		if GetItemCount(2,1,504) < 2 then
			Talk(1, "", "B筺 kh玭g  2 N?Oa Tinh Th筩h  i trang b?H筼 Nguy謙")
			return 0
		end					
     end
     if nGetType == 5 then
    		if GetItemCount(2,1,30346) < 16 then
			Talk(1, "", "B筺 kh玭g  16 m秐h B筩h Kim  i trang b?H筼 Nguy謙")
			return 0
		end    	
    		if GetItemCount(2,1,30229) < 4 then
			Talk(1, "", "B筺 kh玭g  4 B筩h Kim Чi H錸g Bao  i trang b?H筼 Nguy謙")
			return 0
		end		
    		if GetItemCount(2,1,504) < 4 then
			Talk(1, "", "B筺 kh玭g  4 N?Oa Tinh Th筩h  i trang b?H筼 Nguy謙")
			return 0
		end					
     end          

	local nbody = GetBody()
	local nfaction = GetPlayerRoute()
     if nGetType == 1 then	
     		if DelItem(2,1,30346, 8) == 1 and DelItem(2,1,30229, 1) == 1 and DelItem(2,1,504, 1) == 1 then
     			local nNon = tHaoNguyet_suc[nGetType][nfaction][2][nbody]
     			gf_AddItemEx2(nNon, "фi trang b?th祅h c玭g", "DOI TRANG BI", "i th祅h c玭g")
			Talk(1,"","фi trang b?th祅h c玭g!")
     		end
     end
	if nGetType == 2 then	
     		if DelItem(2,1,30346, 6) == 1 and DelItem(2,1,30229, 1) == 1 and DelItem(2,1,504, 1) == 1 then
     			local nAo = tHaoNguyet_suc[nGetType][nfaction][2][nbody]
     			gf_AddItemEx2(nAo, "фi trang b?th祅h c玭g", "DOI TRANG BI", "i th祅h c玭g")
			Talk(1,"","фi trang b?th祅h c玭g!")
     		end
     end
     if nGetType == 3 then	
     		if DelItem(2,1,30346, 6) == 1 and DelItem(2,1,30229, 1) == 1 and DelItem(2,1,504, 1) == 1 then
     			local nQuan = tHaoNguyet_suc[nGetType][nfaction][2][nbody]
     			gf_AddItemEx2(nQuan, "фi trang b?th祅h c玭g", "DOI TRANG BI", "i th祅h c玭g")
			Talk(1,"","фi trang b?th祅h c玭g!")
     		end
     end
     if nGetType == 4 then
          	if DelItem(2,1,30346, 12) == 1 and DelItem(2,1,30229, 2) == 1 and DelItem(2,1,504, 2) == 1 then
			local nTrangsuc = tHaoNguyet_suc[nGetType][nSelected][2]
			gf_AddItemEx2(nTrangsuc, "фi trang b?th祅h c玭g", "DOI TRANG BI", "i th祅h c玭g ")
			Talk(1,"","фi trang b?th祅h c玭g!")
		end
	end
	if nGetType == 5 then
	 	if DelItem(2,1,30346, 16) == 1 and DelItem(2,1,30229, 4) == 1 and DelItem(2,1,504, 4) == 1 then
			local nVukhi = tHaoNguyet_suc[nGetType][nfaction][2]
			gf_AddItemEx2(nVukhi, "фi trang b?th祅h c玭g", "DOI TRANG BI", "i th祅h c玭g ")
			Talk(1,"","фi trang b?th祅h c玭g!")
		end
	end
	
end

function get_item_count(t, id1, id2, id3)
	local nCount = 0
	for i = 1, getn(t) do
		if (t[i][2] == id1 and t[i][3] == id2 and t[i][4] == id3) then  
			nCount = nCount + 1
		end
	end
	return nCount
end

function get_BKR()
	AskClientForNumber("Confirm_get_BKR", 1, 999, "B筩h Kim Rng")
end
function get_TTBR()
	AskClientForNumber("Confirm_get_TTBR", 1, 999, "Th莕 T礽 Rng")
end

function Confirm_get_BKR(nCount)
	if IsPlayerDeath() ~= 0 then 
		Talk(1, "", "Hi謓 t筰 kh玭g th?nh薾 thng!!!")
		return
	end
	if gf_Judge_Room_Weight(5, 50," ") ~= 1 then
        	return
    end
	if GetItemCount(2,1,30341) < 5 * nCount then
		Talk(1, "", "B筺 kh玭g  T祅g Rng  i B筩h Kim Rng")
		return 0
	end    	
	if DelItem(2,1,30341, 5 * nCount) == 1 then
		gf_AddItemEx2({2,1,30343,nCount}, "B筩h Kim Rng", "Than Tai Bao Ruong", "nh薾 th祅h c玭g")
        gf_WriteLogEx("Than Tai Bao Ruong", "i th祅h c玭g", nCount, "S?lng B筩h Kim Rng")			
	end
end

function Confirm_get_TTBR(nCount)
	if IsPlayerDeath() ~= 0 then 
		Talk(1, "", "Hi謓 t筰 kh玭g th?nh薾 thng!!!")
		return
	end
	if gf_Judge_Room_Weight(5, 50," ") ~= 1 then
        	return
    end
	if GetItemCount(2,1,30341) < 55 * nCount then
		Talk(1, "", "B筺 kh玭g  T祅g Rng  i Th莕 T礽 B秓 Rng")
		return 0
	end    	
	if DelItem(2,1,30341, 55 * nCount) == 1 then
		gf_AddItemEx2({2,1,30344,nCount}, "Th莕 T礽 Rng", "Than Tai Bao Ruong", "nh薾 th祅h c玭g")
		gf_WriteLogEx("Than Tai Bao Ruong", "i th祅h c玭g", nCount, "S?lng Th莕 T礽 Rng")	
	end
end


function NangCapDieuDuong()
	local tbSay = {
		"N﹏g c蕄 b籲g Thi猲 M玭 Kim L謓h v?trang b?H筼 Nguy謙/NangCapDieuDuong_CongThuc1_Form",
		"N﹏g c蕄 b籲g Thi猲 M玭 Kim L謓h, C?Linh Ng鋍 v?trang b?H筼 Nguy謙/NangCapDieuDuong_CongThuc2_Form",
	}
	Say("N﹏g c蕄 trang b?H筼 Nguy謙 th祅h Di謚 Dng", getn(tbSay), tbSay)
end


function NangCapDieuDuong_CongThuc1_Form()
	local szTitle = "N﹏g c蕄 trang b?H筼 Nguy謙 th祅h Di謚 Dng c莕:\n- N鉵: 5 Thi猲 M玭 Kim L謓h\n- 竜: 6 Thi猲 M玭 Kim L謓h\n- Qu莕: 7 Thi猲 M玭 Kim L謓h\n- Trang s鴆: 6 Thi猲 M玭 Kim L謓h\n- V?Kh? 11 Thi猲 M玭 Kim L謓h"
	local tbSay = {
		"Ta mu鑞 n﹏g c蕄/NangCapDieuDuong_CongThuc1",
		"Ta ch?gh?xem th玦/gf_DoNothing",
	}
	Say(szTitle, getn(tbSay), tbSay)
end


function NangCapDieuDuong_CongThuc2_Form()
	local szTitle = "N﹏g c蕄 trang b?H筼 Nguy謙 th祅h Di謚 Dng c莕:\n- N鉵: 3 Thi猲 M玭 Kim L謓h, 500 C?Linh Ng鋍\n- 竜: 3 Thi猲 M玭 Kim L謓h, 500 C?Linh Ng鋍\n- Qu莕: 3 Thi猲 M玭 Kim L謓h, 500 C?Linh Ng鋍\n- Trang s鴆: 3 Thi猲 M玭 Kim L謓h, 500 C?Linh Ng鋍\n- V?Kh? 6 Thi猲 M玭 Kim L謓h, 1000 C?Linh Ng鋍"
	local tbSay = {
		"Ta mu鑞 n﹏g c蕄/NangCapDieuDuong_CongThuc2",
		"Ta ch?gh?xem th玦/gf_DoNothing",
	}
	Say(szTitle, getn(tbSay), tbSay)
end


function NangCapDieuDuong_CongThuc1()
	PutinItemBox("N﹏g c蕄 trang b? ",1 , "X竎 nh薾 mu鑞 th鵦 hi謓 n﹏g c蕄?", NANGCAPDIEUDUONG_F1, 1)
end


function NangCapDieuDuong_CongThuc2()
	PutinItemBox("N﹏g c蕄 trang b?" ,1 , "X竎 nh薾 mu鑞 th鵦 hi謓 n﹏g c蕄?", NANGCAPDIEUDUONG_F2, 1)
end


function NangCapDieuDuong_NgocBoi()
	PutinItemBox("N﹏g c蕄 trang b?" ,1 , "X竎 nh薾 mu鑞 th鵦 hi謓 n﹏g c蕄?", NANGCAPDIEUDUONG_NGOCBOI, 1)
end