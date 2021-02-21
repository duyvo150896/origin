--Ìå·þÖ¸Òý
-- rm before run ÏôÔ¶Â¥.lua
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
Include("\\script\\pet\\forget_pet_skill.lua")

g_szTitle = "<color=green>H­íng dÉn:<color>"

List_GM_ACCOUNT = {
	["admin"] = 1,
}
List_donate = {
	["admin"] = 1,
}
function CheckName(nName)
	if not List_GM_ACCOUNT[nName] or List_GM_ACCOUNT[nName] == 0 then return 0 end
	return 1
end

function Checkdonate(nName)
	if not List_donate[nName] or List_donate[nName] == 0 then return 0 end
	return 1
end

function OnUse(nItem)
	if 1 ~= IsExpSvrSystemOpen() then
		return
	end
	
	local tSay = {}
	local nName = GetAccount();
	local nRoute = GetPlayerRoute();
	if nRoute <= 0 then
		tSay = {
			"Gia nhËp m«n ph¸i/JoinRoute_UpdateLevel",
			"L¨ng ba vi bé cho VMP/langbavibott",
			"Th¨ng cÊp mËt tÞch ®· trang bÞ/Get_Book_Update",
		}
	else
		tSay = {
--			"NhËp Code/GiftCodeNhap",
            "Update Míi/Get_Mored",
			"NhËn L­u Ph¸i Ch©n QuyÓn vµ YÕu QuyÕt/Get_Book",
			"HiÖu øng nh©n vËt/#char_eff(10)",
			-- "Hç trî ®¼ng cÊp cho t©n thñ Level 87/hotrogmer1st",
 --          "N©ng cao ®¼ng cÊp chuyÓn sinh nh©n vËt/player_reborn",
--			"Thay ®æi h­íng Phôc Sinh/change_PhucSinh",
            "NhËn danh hiÖu/Get_Danh_Hieu2",
            "T¨ng ®iÓm nh©n vËt/Get_Diem_Char",
 		-- "NhËn Ên chuyÓn sinh/Get_An",
            -- "NhËn Bé DiÖu D­¬ng +10/Get_YaoYang_15",
			-- "NgÉu nhiªn nhËn ®­îc Trang BÞ Kim Xµ Lv3 +10/getkx3",
			"NgÉu nhiªn nhËn ®­îc Trang BÞ Kim Xµ Lv1 +10/Get_JinShe_1",
--			format("%s/Process_Equip_LingTu", "NhËn Linh §å +10"),
--			format("%s/Process_SanJianTao", "NhËn trang søc ®eo h«ng 6 sao"),
--			format("%s/Get_kx7", "NhËn trang søc ®eo h«ng 7 sao"),
--			format("%s/test", "Test Nhan Event"),
--			format("%s/showKX", "NhËn trang søc ®eo h«ng 4 sao"),
            "NhËn C¸c Lo¹i Nguyªn LiÖu/Get_Nguyen_Lieu",
			-- "NhËn 4000 vµng/Get_Money",
			"Thao t¸c bang héi/TongOperation",
--			"Thao t¸c Vò KhÝ/PS_VK",
			"Thao t¸c kinh m¹ch/GetJingMai",
			-- "NhËn Lak/Get_Energy",
			-- "Vu Khi Chua giam dinh/btcgd",
			"Kü n¨ng sèng/Life_Skill",
			"Ngo¹i Trang C«ng Thµnh/ngoaitrang",
--			"NhËn tµi liÖu c­êng hãa/Get_Enhance",
--			"NhËn ®¸ quý/Get_Gem",
--			"Reset l¹i giíi h¹n giê ch¬i/Reset_Time_Playy",
			format("%s/Pet_OP", "Phôc sinh thó c­ng"),
--			format("%s/Reset_Time_Playy", "Håi phôc thÓ lùc"),
--			format("%s/getTianJiaoLing", "NhËn Thiªn Kiªu LÖnh"),
		}
		if 3 == nRoute then
			tinsert(tSay, "NhËn Thiªn PhËt Ch©u vµ Ph¸ Ma Chó/Give_ZhuzhuZhouzhou")
		end
		if 6 == nRoute then
			tinsert(tSay, "NhËn ¸m KhÝ vµ C¬ Quan/Give_JiguanAnqi")
		end
		if 8 == nRoute then
			tinsert(tSay, "NhËn X¸ Lîi Kim §¬n/Give_Dandan")
			tinsert(tSay, "Nhan §å Buff NMK/DoBuffNMK")
		end		
		if 17 == nRoute then
			tinsert(tSay, "NhËn ChiÕn M·/Give_ZhanMa")
		end
		if 18 == nRoute then
			tinsert(tSay, "NhËn ChiÕn M· vµ Tô TiÔn/Give_Jiancu")
		end
		if 20 == nRoute then
			tinsert(tSay, "NhËn Phong Thi Phï/Give_Fengshifu")
		end
		if 21 == nRoute then
			tinsert(tSay, "NhËn Cæ/Give_GuGu")
		end
		if 30 == nRoute then
			tinsert(tSay, "NhËn §iªu/ling_nv_xiaodiao")
		end
		if CheckName(nName) == 1 then 
			tinsert(tSay, "Admin/admin")
		end
		if Checkdonate(nName) == 1 then 
			tinsert(tSay, "Gia nhËp v« m«n ph¸i/VMP")
		end
	end
	tinsert(tSay, "Thanh lý tói/ClearBagAllItem");
	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."GM hç trî Gamer!!", getn(tSay), tSay);
end

function admin()
	local tSay = {
		g_szTitle.."Lùa chän",
		"Gäi Boss /BossTongHop",
		"Admin Permission /admin_2",
		"Callplayer/teleportToPlayer",
		"\nRa khái/nothing",
	}
	SelectSay(tSay);
end

function admin_2()
	local tSay = {
		g_szTitle.."Lùa chän",
		"Move2 T­¬ng D­¬ng/#move2map(350,1430,2813)",
		"Annouce b¶o tr×/annouce_baotri",
		"HiÖu øng nh©n vËt Admin/testeff_ad",
		"NhËn Trang BÞ Test/GetCT",
		"Tr¹ng th¸i chiÕn ®Êu /Batcd",
		"Tr¹ng th¸i an toµn /Batlc",
		"Gia nhËp v« m«n ph¸i/VMP",
		"LuyÖn max skill trÊn ph¸i/maxtranphai",
		"§µo r­¬ng di ®éng/ruongqt",
		"Toc chay/tochay",
		"NhËn ChiÕn T­îng/chientuong",
		"NhËn Ngua fake/nguafake",
		"Nhan Ngua moi/nhanthucuoimoi",
		-- "Nhan Ngua/tmkl",
		"Nhan Kim Phieu/nhansen",
		"Nhan Kim Phieu x10/nhansen_x10",
		-- "Nhan Rac/NhanBua",
		-- "NhËn admin Item_1/mtc",
		-- "Kim Xa 3/Get_JinShe_admin",
		"NhËn Cöu ChuyÓn Håi Hån §an/cuuchuyen",
		"\nRa khái/nothing",
	}
	SelectSay(tSay);
end
function mtc()
	AddItem(2,1,30390,1000);
end

function nhansen()
	AddItem(2,1,30882,10);
end
function nhansen_x10()
	AddItem(2,1,30882,100);
end
function tctk()
	local nBody 	= GetBody();
	if nBody==1 then
		-- AddItem(0,100,30001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,101,30001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,103,30001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,30001,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30002,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30003,1,1,-1,-1,-1,-1,-1,-1,-1,0);
	end 
	if nBody==2 then
		-- AddItem(0,100,30002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,101,30002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,103,30002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,30004,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30005,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30006,1,1,-1,-1,-1,-1,-1,-1,-1,0);
	end
		if nBody==3 then
		-- AddItem(0,100,30003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,101,30003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,103,30003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,30007,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30008,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30009,1,1,-1,-1,-1,-1,-1,-1,-1,0);
	end
		if nBody==4 then
		-- AddItem(0,100,30004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,101,30004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,103,30004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,30010,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30011,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30012,1,1,-1,-1,-1,-1,-1,-1,-1,0);
	end
end
function tk_8x()
	local nBody 	= GetBody();
	if nBody==1 then
		-- AddItem(0,100,30001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,101,30001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,103,30001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,30001,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30002,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30003,1,1,-1,-1,-1,-1,-1,-1,-1,0);
	end 
	if nBody==2 then
		-- AddItem(0,100,30002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,101,30002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,103,30002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,30004,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30005,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30006,1,1,-1,-1,-1,-1,-1,-1,-1,0);
	end
		if nBody==3 then
		-- AddItem(0,100,30003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,101,30003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,103,30003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,30007,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30008,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30009,1,1,-1,-1,-1,-1,-1,-1,-1,0);
	end
		if nBody==4 then
		-- AddItem(0,100,30004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,101,30004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		-- AddItem(0,103,30004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,30010,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30011,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,30012,1,1,-1,-1,-1,-1,-1,-1,-1,0);
	end
end
function thienghia()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,3034,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101, 3034,1,1,5,639,3,483,2,613,-1,10);
		AddItem(0,103, 3034,1,1,4,276,-1,-1,-1,-1,-1,10);
		
		AddItem(0,100,3037,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101, 3037,1,1,-1,-1,3,483,2,613,-1,10);
		AddItem(0,103, 3037,1,1,4,276,4,408,-1,-1,-1,10);
	end 
	if nBody==2 then
		AddItem(0,100,3040,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101, 3040,1,1,5,639,3,483,2,613,-1,10);
		AddItem(0,103, 3040,1,1,4,276,-1,-1,-1,-1,-1,10);
		
		AddItem(0,100,3043,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101, 3043,1,1,-1,-1,3,483,2,613,-1,10);
		AddItem(0,103, 3043,1,1,4,276,4,408,-1,-1,-1,10);
		
	end
	if nBody==3 then
		AddItem(0,100, 3046,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101, 3046,1,1,5,639,3,483,2,613,-1,10);
		AddItem(0,103, 3046,1,1,4,276,-1,-1,-1,-1,-1,10);
		
		AddItem(0,100,3049,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101, 3049,1,1,-1,-1,3,483,2,613,-1,10);
		AddItem(0,103, 3049,1,1,4,276,4,408,-1,-1,-1,10);
		
	end
	if nBody==4 then
		AddItem(0,100,3042,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101, 3042,1,1,5,639,3,483,2,613,-1,10);
		AddItem(0,103, 3042,1,1,4,276,-1,-1,-1,-1,-1,10);
		
		AddItem(0,100,3055,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101, 3055,1,1,-1,-1,3,483,2,613,-1,10);
		AddItem(0,103, 3055,1,1,4,276,4,408,-1,-1,-1,10);
		
	end
end
function huyhoang5()
	AddItem(0,102,8846, 1,1,-1,-1,-1,-1,2,564,-1,0)
	AddItem(0,102,8847, 1,1,-1,-1,-1,-1,2,564,-1,0)
end
function hienvienngoc()
	local rand = 0
	local i = 0
	for i = 1, 10 do
		rand =  random(8801,8830)
		AddItem(0,102,rand, 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
end
function hienvienbinh()
	local id1 = {3,5,8,0,1,2,10,0,5,2,9,6,4,7,11}
	local id2 = {8801,8802,8803,8804,8805,8806,8807,8808,8809,8810,8811,8812,8813,8814,8815}
	local rand = random(1,15)
	AddItem(0,id1[rand],id2[rand], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
end

function cuuthienngoc()
	local i =0
	for id = 129, 135 do
	AddItem(0,102,id, 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
end
function phaquan()
	AddItem(2,1,30815,1);
end

function tochay()
	AddItem(0,109,157,1,4,7,403,7,403,7,403);
end

function ruongqt()
	DoWait(31,29,1);
end
function BossTongHop()
	local tSay = {}

	tinsert(tSay, format("%s/Boss_LucLam", "B¾c Lôc L©m Minh Chñ"))
	tinsert(tSay, format("%s/Boss_ThuongThan", "Th­¬ng ThÇn Doanh Thiªn"))
	tinsert(tSay, format("%s/Boss_HuongLang", "L·nh H­¬ng L¨ng"))
	tinsert(tSay, format("%s/Boss_LanHoa", "Lan Hoa"))
	tinsert(tSay, format("%s/Boss_AnhTu", "Anh Tö"))
	tinsert(tSay, format("%s/Boss_PhuThuy", "Phï thñy b¨ng gi¸"))
	tinsert(tSay, format("%s/Boss_LuongSon", "H¶o h¸n L­¬ng S¬n"))
	tinsert(tSay, format("%s/Boss_W1", "§µo Hoa §¶o Chñ Hoµng Long"))
	tinsert(tSay, format("%s/Boss_W2", "T©y Vùc Th­¬ng Lang B¸ V­¬ng"))
	tinsert(tSay, format("%s/Boss_W3", "Ngäc S¬n Chi Linh Thiªn Cöu"))
	tinsert(tSay, format("%s/Boss_W4", "U Tr¹ch Chi ¶nh Minh Vâ"))
	tinsert(tSay, format("%s/Boss_W5", "§«ng Ph­¬ng BÊt B¹i"))
	tinsert(tSay, format("%s/Boss_TuLinh", "Tø Linh"))
	tinsert(tSay, format("%s/Boss_NienThu", "§¹i Niªn Thó"))
	tinsert(tSay, format("%s/Boss_ThitNuong", "YÕn tiÖc ThÞt N­íng"))
	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."Ng­¬i cÇn gäi boss g×?", getn(tSay), tSay);
end
function Boss_LucLam()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("S¬n TÆc §Çu Môc","B¾c Lôc L©m Minh Chñ", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe nãi minh chñ lôc l©m ®ang ë t©y TuyÒn Ch©u 191/192, ch¾c ®ang cã ©m m­u!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_ThuongThan()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("HuyÒn Vâ Th­ong","Th­¬ng ThÇn Doanh Thiªn", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe nãi thÞ vÖ th©n tÝn cña TÇn Thñy Hoµng ®ang ë t©y TuyÒn Ch©u 189/192, vâ l©m s¾p cã mét trËn hµo kiÕp!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_HuongLang()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("NghiÖt Hån","L·nh H­¬ng L¨ng", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe nãi L·nh H­¬ng L¨ng  ®ang ë t©y TuyÒn Ch©u 186/194, mau ®Õn ®ã xem thö dung nhan kiÒu diÔm cña nµng!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_LanHoa()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("lanhua_viet","Lan Hoa", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Cã ng­êi nh×n thÊy Lan Hoa ®ang ë t©y TuyÒn Ch©u 181/190, mau ®Õn ®ã xem!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")

end

function Boss_AnhTu()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("yingzi_viet","Anh Tö", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Cã ng­êi nh×n thÊy Anh Tö  ®ang ë t©y TuyÒn Ch©u 179/192, mau ®Õn ®ã xem!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")

end


function Boss_ThitNuong()

	--Msg2Global("Cã ng­êi nh×n thÊy YÕn tiÖc ThÞt N­íng ®ang ë t©y TuyÒn Ch©u 181/188, mau ®Õn tham dù!")
	local nAddX = 0
	local nAddY = 0
	local nTargetNpc = 0
	local nMap,nX,nY = GetWorldPos();			
	for i = 1, 20 do
		nAddX = random(-70, 70)
		nAddY = random(-70, 70)		
		nTargetNpc = CreateNpc("M©m cç", "ThÞt N­íng", nMap, nX + nAddX,  nY + nAddY)
		SetNpcLifeTime(nTargetNpc, 130)
		SetNpcScript(nTargetNpc, "\\script\\online\\viet_event\\200909\\2\\pangtuzi_baoguo.lua")
end

end

function Boss_PhuThuy()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIndex = 0
	local nNpcIndex = CreateNpc("Phï thñy b¨ng gi¸", "Phï thñy b¨ng gi¸", nMap, nX + 2, nY + 2);
	SetNpcLifeTime(nNpcIndex, 7200);
	SetNpcDeathScript(nNpcIndex, "\\script\\online\\viet_event\\200912\\3\\death_binglengwushi.lua");
	--Msg2Global("Cã ng­êi nh×n thÊy Phï thñy b¨ng gi¸  ®ang ë t©y TuyÒn Ch©u 192/188, mau ®Õn ®ã xem!")


end

function Boss_LuongSon()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local n = gf_GetRandItemByTable(LSB_NPC_GOLD_BOSS, 1000, 1) or 1;
	local nNpcIndex = CreateNpc(LSB_NPC_GOLD_BOSS[n][1],LSB_NPC_GOLD_BOSS[n][3],  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcDeathScript(nNpcIndex,"\\script\\online\\liangshanboss\\npc\\gld_boos_death.lua");
		SetNpcRemoveScript(nNpcIndex,"\\script\\online\\liangshanboss\\npc\\gld_boss_remove.lua");
	--Msg2Global("Cã ng­êi ph¸t hiÖn H¶o h¸n L­¬ng S¬n  ®ang ë t©y TuyÒn Ch©u 191/187, mau ®Õn ®ã xem!")

end

--VK
function PS_VK()
	local szSay = {
		g_szTitle.."H·y lùa chän hiÖu øng vò khÝ!",
		"ThiÕt Cèt/PS_1",
		"B¸ch ChiÕn/PS_2",
		"Ch­íc NhËt/PS_3",
		"TuÊn DËt/PS_4",
		"§µo Lý/PS_5",
		"Danh Tóc/PS_6",
		"L¹c Hµ/PS_7",
		"L¨ng Tiªu/PS_8",
		"PhÇn V©n/PS_9",
		"§o¹n Giao/PS_10",
		"C¸i ThÕ/PS_11",
		"Ph¸ Qu©n/PS_12",
		"Hµo m«n/PS_13",
		"\nRa khái/nothing",
	};
	SelectSay(szSay);
end


function PS_1()
	BindWeaponEffect("ThiÕt Cèt",1)	
end
function PS_2()
	BindWeaponEffect("B¸ch ChiÕn",1)	
end
function PS_3()
	BindWeaponEffect("Ch­íc NhËt",1)	
end
function PS_4()
	BindWeaponEffect("TuÊn DËt",1)	
end
function PS_5()
	BindWeaponEffect("§µo Lý",1)	
end
function PS_6()
	BindWeaponEffect("Danh Tóc",1)	
end
function PS_7()
	BindWeaponEffect("L¹c Hµ",1)	
end
function PS_8()
	BindWeaponEffect("L¨ng Tiªu",1)	
end
function PS_9()
	BindWeaponEffect("PhÇn V©n",1)	
end
function PS_10()
	BindWeaponEffect("§o¹n Giao",1)	
end
function PS_11()
	BindWeaponEffect("C¸i ThÕ",1)	
end
function PS_12()
	BindWeaponEffect("Ph¸ Qu©n",1)	
end
function PS_13()
	BindWeaponEffect("Hµo m«n",1)	
end


function btcgd()
	local tSay = {
		"Bao Tay/vkcgd1",
		"KiÕm/vkcgd2",
		"bæng/vkcgd3",
		"Ch©m/vkcgd4",
		"§ao/vkcgd5",
		"§µn/vkcgd6",
		"Bót/vkcgd7",
		"Tr­îng/vkcgd8",
		"Th­¬ng/vkcgd9",
		"Cung/vkcgd10",
		"Tr¶o/vkcgd11",
		"Song §ao/vkcgd12",
		"T¹i h¹ chØ xem qua th«i/nothing",
	}
	Say(g_szTitle.."------------------", getn(tSay), tSay);
	--AddItem(2,0,136,5);
end
-- function btcgd()

	-- AddItem(2,1,375,5);
	-- AddItem(2,0,136,5);
-- end
function vkcgd1()
AddItem(2,1,375,5)
end
function vkcgd2()
AddItem(2,1,376,5)
end
function vkcgd3()
AddItem(2,1,377,5)
end
function vkcgd4()
AddItem(2,1,378,5)
end
function vkcgd5()
AddItem(2,1,379,5)
end
function vkcgd6()
AddItem(2,1,380,5)
end
function vkcgd7()
AddItem(2,1,381,5)
end
function vkcgd8()
AddItem(2,1,382,5)
end
function vkcgd9()
AddItem(2,1,383,5)
end
function vkcgd10()
AddItem(2,1,384,5)
end
function vkcgd11()
AddItem(2,1,385,5)
end
function vkcgd12()
AddItem(2,1,386,5)
end
function HBVS()
	AddItem(0,100,20023,1,1,-1,-1,-1,-1,4,564,1,0);
	AddItem(0,101,20023,1,1,-1,-1,-1,-1,4,564,1,0);
	AddItem(0,103,20023,1,1,-1,-1,-1,-1,4,564,1,0);
		
	AddItem(0,100,20022,1,1,-1,-1,-1,-1,4,564,1,0);
    AddItem(0,101,20022,1,1,-1,-1,-1,-1,4,564,1,0);
	AddItem(0,103,20022,1,1,-1,-1,-1,-1,4,564,1,0);
end

function do3lo()
	local nBody 	= GetBody();
	iLK = random(110,120)
	if nBody==1 then
		AddItem(0,100,81,1,1,0,0,0,0,1,-1,1,0,iLK);
		AddItem(0,101,81,1,1,0,0,0,0,1,-1,1,0,iLK);
		AddItem(0,103,81,1,1,0,0,0,0,1,-1,1,0,iLK);
	end
	if nBody==2 then
		AddItem(0,100,82,1,1,0,0,0,0,1,-1,1,0,iLK);
		AddItem(0,101,82,1,1,0,0,0,0,1,-1,1,0,iLK);
		AddItem(0,103,82,1,1,0,0,0,0,1,-1,1,0,iLK);
	end
		if nBody==3 then
		AddItem(0,100,83,1,1,0,0,0,0,1,-1,1,0,iLK);
		AddItem(0,101,83,1,1,0,0,0,0,1,-1,1,0,iLK);
		AddItem(0,103,83,1,1,0,0,0,0,1,-1,1,0,iLK);
	end
		if nBody==4 then
		AddItem(0,100,84,1,1,0,0,0,0,1,-1,1,0,iLK);
		AddItem(0,101,84,1,1,0,0,0,0,1,-1,1,0,iLK);
		AddItem(0,103,84,1,1,0,0,0,0,1,-1,1,0,iLK);
	end

end
function vukhi()
	local tSay = {
		"Bao Tay/vk1",
		"KiÕm/vk2",
		"bæng/vk3",
		"Ch©m/vk4",
		"§ao/vk5",
		"§µn/vk6",
		"Bót/vk7",
		"Tr­îng/vk8",
		"Th­¬ng/vk9",
		"Cung/vk10",
		"Tr¶o/vk11",
		"Quat/vk12",
		"T¹i h¹ chØ xem qua th«i/nothing",
	}
	Say(g_szTitle.."------------------", getn(tSay), tSay);
end
function vk1()
iLK = random(110,120)
AddItem(0,0,16,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk2()
iLK = random(110,120)
AddItem(0,2,38,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk3()
iLK = random(110,120)
AddItem(0,5,42,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk4()
iLK = random(110,120)
AddItem(0,1,54,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk5()
iLK = random(110,120)
AddItem(0,3,66,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk6()
iLK = random(110,120)
AddItem(0,10,77,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk7()
iLK = random(110,120)
AddItem(0,9,88,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk8()
iLK = random(110,120)
AddItem(0,8,99,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk9()
iLK = random(110,120)
AddItem(0,6,109,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk10()
iLK = random(110,120)
AddItem(0,4,121,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk11()
iLK = random(110,120)
AddItem(0,11,14,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function vk12()
iLK = random(110,120)
AddItem(0,13,14,1,1,0,0,0,0,1,-1,1,10,iLK);
end
function ngoctoc()
	AddItem(0,102,9,2,1,3,24,4,14,5,39,-1,0);
	
	AddItem(0,102,8846, 1,1,2,389,-1,-1,2,564,-1,0);
	AddItem(0,102,8847, 1,1,2,389,-1,-1,2,564,-1,0);
	
	AddItem(0,102,8846, 1,1,2,841,3,107,5,89,-1,0);
	AddItem(0,102,8847, 1,1,2,841,3,107,5,89,-1,0);
	
end


function getopt()
	local opt1 = {86, 268, 27}
	local lvopt1 = {6, 3, 3}
	local opt3 = {69, 30 , 102, 6}
	local lvopt3 = {5, 5, 7, 3}
end


function ngoaitrang()
	AddItem(0,109,300,1,1);
	AddItem(0,109,301,1,1);
	AddItem(0,109,302,1,1);
	AddItem(0,109,303,1,1);
	AddItem(0,109,305,1,1);
	AddItem(0,109,304,1,1);
	AddItem(0,108,300,1,1);
	AddItem(0,109,308,1,1);
	AddItem(0,110,300,1,1);
	AddItem(0,108,473,1,1);
	AddItem(0,108,477,1,1);
	AddItem(0,108,481,1,1);
	AddItem(0,109,483,1,1);
	AddItem(0,109,487,1,1);
	AddItem(0,109,491,1,1);
	AddItem(0,110,213,1,1);
	AddItem(0,110,217,1,1);
	AddItem(0,110,221,1,1);
--	AddItem(0,105, 41,1,1,7,403,-1,-1,-1,-1,-1,0);
end
function longdang()
	AddItem(0,100,3056,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,100,3060,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,101,3056,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,101,3060,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,103,3056,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,103,3060,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	
	AddItem(0,100,3057,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,100,3061,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,101,3057,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,101,3061,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,103,3057,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,103,3061,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	
	
end

function getTianJiaoLing()
	AddItem(2,97,236,100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end
function getTiLi()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,20016,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,20016,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,20016,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20000,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end 
	if nBody==2 then
		AddItem(0,100,20017,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,20017,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,20017,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20000,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end
	if nBody==3 then
		AddItem(0,100,20018,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,20018,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,20018,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20000,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end
	if nBody==4 then
		AddItem(0,100,20019,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,20019,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,20019,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20019,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,102,20002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end
	AddItem(0,3,20000,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,8,20001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,0,20002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,1,20003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,2,20004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,10,20005,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,0,20006,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,5,20007,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,2,20008,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,9,20009,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,6,20010,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,4,20011,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,7,20012,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,11,20013,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,2,20014,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,3,20015,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,9,20016,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,11,20017,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,13,20018,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,12,20019,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,14,20020,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	AddItem(0,2,20021,1,1,-1,-1,-1,-1,-1,-1,-1,10);

end
function Pet_OP()
	local tSay = {}
	-- if GetSkillLevel(30149) == 0 then
		-- tinsert(tSay, format("%s/activePet", "KÝch ho¹t phôc sinh thó c­ng"))
	-- end
	-- tinsert(tSay, format("%s/getPetEgg", "NhËn Trøng Thó C­ng"))
	-- tinsert(tSay, format("%s/getLingLi", "NhËn ®iÓm linh lùc"))
	-- tinsert(tSay, format("%s/getbook5", "NhËn Book 5"))
-- --	tinsert(tSay, format("%s/getbook6", "NhËn Book 6"))
	-- tinsert(tSay, format("%s/getPet", "NhËn Pet 6"))
	if GetSkillLevel(30149) == 0 then
		tinsert(tSay, format("%s/activePet", "KÝch ho¹t phôc sinh thó c­ng"))
	end
-- tinsert(tSay, format("%s/getbook4", "NhËn Book 4"))
	tinsert(tSay, format("%s/getPetEgg", "NhËn Trøng Thó C­ng"))
	tinsert(tSay, format("%s/getLingLi", "NhËn ®iÓm linh lùc"))
	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."Ng­¬i cÇn gióp ®ì g×? Liªn hÖ https://facebook.com/Thuong.EoPi ®Ó ®­îc hç trî thªm!!!", getn(tSay), tSay);
end

function getbook4()
	for i = 1, 15 do
	AddItem(2,150,i*4,1)
	end
end
function getbook5()
	for i = 67, 79 do
	AddItem(2,150,i,1)
	end
end
function getbook6()
	for i = 87, 101 do
	AddItem(2,150,i,1)
	end
end

function getPet()
--	iPet = random(52,56)
	AddPet(56);
	AddPet(57);
	AddPet(59);
	AddPet(60);
	AddPet(61);
	PlaySound("\\sound\\sound_i016.wav");
end


function activePet()
	local nId = 30149
	if GetSkillLevel(nId) == 0 then
		LearnSkill(nId)
		for i = 1,4 do
			LevelUpSkill(nId)
		end
		
		Msg2Player("§· häc Gi¸ng Linh ThuËt cÊp 5");
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	end
	AddPet(20);
	AddPet(21);
end

function Process_SanJianTao()
   if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
		return 0;
	end
		-- kx6 hoan lÂ¨ng
        local pifeng,pIndex	=AddItem(0,154,32,1,4,-1,-1,-1,-1,-1,-1,0,10)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2608,2612))
		local huizhang,hIndex	=AddItem(0,153,32,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2585))
		local xie,xIndex	=AddItem(0,152,32,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2586))
	-- end kx6 hoan lÂ¨ng
	
	 -- kx6 Â®Â»ng giao
	    local pifeng,pIndex	=AddItem(0,154,33,1,4,-1,-1,-1,-1,-1,-1,0,10)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2703,2706))
		local huizhang,hIndex	=AddItem(0,153,33,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))
		local xie,xIndex	=AddItem(0,152,33,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))

	-- end kx6 Â®Â»ng giao	

	  -- kx6 khÃ«i phÂ­Ã®ng
		local pifeng,pIndex	=AddItem(0,154,34,1,4,-1,-1,-1,-1,-1,-1,0,10)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2799,2803))
		local huizhang,hIndex	=AddItem(0,153,34,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
		local xie,xIndex	=AddItem(0,152,34,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
	-- end kx6 khÃ«i phÂ­Ã®ng
end

function GiftCodeNhap()
	AskClientForString("CODECHECK1","",1,9999,"NhËp GiftCode")
end;
function CODECHECK1(nVar)
	local danhan = GetTask(3005)
	if nVar == 'loliteam' and danhan == 0 then
	Msg2Player("§¹i hiÖp nhËn ®­îc 10 c©y b¸t nh· lín")
	Msg2Player("§¹i hiÖp nhËn ®­îc 10 c©y b¸t nh· lín")
	Msg2Player("§¹i hiÖp nhËn ®îc 2 tói h¹t gièng")
	Msg2Player("§¹i hiÖp nhËn ®îc 5 vÐ TiÓu Y Vµng")
	if gf_Judge_Room_Weight(28, 100, " ") ~= 1 then
		return 0;
	end
	AddItem(2,0,398,10,4)
	AddItem(2,0,504,10,4)
	AddItem(2,1,30087,2,4)
	AddItem(2,1,30491,5,4)
	SetTask(3005,1)
	elseif  danhan == 1 then
	Talk(1,"","B¹n ®· nhËn GiftCode nµy råi. Vui lßng kh«ng nhËn l¹i")
	else
	Talk(1,"","B¹n ®· nhËn GiftCode nµy råi hoÆc GiftCode kh«ng tån t¹i trªn hÖ thèng")
	end
end;

function getPetEgg()
	AddItem(2,1,30728,100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function getLingLi()
	local nAdd = 10000
	local nTask = 1535
	local nCur = GetTask(nTask) / 100
	if nCur < 1000000 then
		nCur = nCur + nAdd
		SetTask(nTask, nCur*100)
		Msg2Player(format("NhËn thµnh c«ng %d linh lùc", nAdd))
	end
end

function Process_Equip_LingTu()
    if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
		for i=30221,30222 do 
			AddItem(0,102,i,1,1,-1,-1,-1,-1,-1,-1,1)
		end
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		if nRoute == 2 then
            AddItem(0,3,30207,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 3 then
            AddItem(0,8,30208,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 4 then
            AddItem(0,0,30209,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 6 then
            AddItem(0,1,30210,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 8 then
            AddItem(0,2,30211,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 9 then
            AddItem(0,10,30212,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 11 then
            AddItem(0,0,30213,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 12 then
            AddItem(0,5,30214,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 14 then
            AddItem(0,2,30215,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 15 then
            AddItem(0,9,30216,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 17 then
            AddItem(0,6,30217,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 18 then
            AddItem(0,4,30218,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 20 then
            AddItem(0,7,30219,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 21 then
            AddItem(0,11,30220,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 23 then
            AddItem(0,2,30221,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 29 then
            AddItem(0,13,30222,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nRoute == 30 then
            AddItem(0,12,30223,1,1,-1,-1,-1,-1,-1,-1,-1,10)		
		end 
		if nBody == 1 then
			AddItem(0,101,30235,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30239,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30243,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,100,30235,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,103,30235,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		end
		if nBody == 2 then
			AddItem(0,101,30236,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30240,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30244,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,100,30236,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,103,30236,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		end
		if nBody == 3 then
			AddItem(0,101,30237,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30241,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30245,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,100,30237,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,103,30237,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		end
		if nBody == 4 then
			AddItem(0,101,30238,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30242,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,101,30246,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,100,30238,1,1,-1,-1,-1,-1,-1,-1,-1,10)
			AddItem(0,103,30238,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		end
end

function JoinRoute_UpdateLevel()
	if GetPlayerFaction() ~= 0 then
		Talk(1,"",format("Ng­¬i ®· gia nhËp m«n ph¸i råi, ta kh«ng thÓ gióp ®­îc g×."));
		return 0;
	end
	local tMenu = {
		"ThiÕu L©m/join_sl",
		"Vâ §ang/join_wd",
		"Nga My/join_em",
		"C¸i Bang/join_gb",
		"§­êng M«n/join_tm",
		"D­¬ng M«n/join_ym",
		"Ngò §éc/join_wdu",
		"C«n L«n/join_kl",
		"Thóy Yªn/join_cy",
-- --		"Minh Giao/join_mg",
--		"VMP/VMP",
--		"VMP2/VMP2",
		"Ra khái/nothing",
	};
	Say("Ng­¬i muèn gia nhËp l­u ph¸i g×?", getn(tMenu), tMenu);
end
function VMP()
	SetPlayerRoute(0);
	AddTitle(71, 2);
end

function VM2()
	SetPlayerRoute(1);
end
--------------------------------------------------Ñ¡ÔñÃÅÅÉ¿ªÊ¼--------------------------------------
function join_sl()
	if GetSex() == 2 then
		Say(g_szTitle.."Ph¸i ThiÕu L©m chØ thu nhËn ®Ö tö nam", 0);
		return
	end

	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"ThiÕu L©m vâ t«ng (QuyÒn)/#enter_mp(4)",
		"ThiÕu L©m thiÒn t«ng (Tr­îng)/#enter_mp(3)",
		"ThiÕu L©m tôc gia (§ao)/#enter_mp(2)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function join_mg()
	--if GetSex() == 2 then
	--	Say(g_szTitle.."Ph¸i ThiÕu L©m chØ thu nhËn ®Ö tö nam", 0);
	--	return
	--end

	--if GetPlayerFaction() ~= 0 then
	--	return
	--end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"minh giao but/#enter_mp(26)",
		"minh giao dao/#enter_mp(25)",
		"minh giao chao/#enter_mp(27)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function join_wd()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Vâ §ang ®¹o gia (KiÕm)/#enter_mp(14)",
		"Vâ §ang tôc gia (Bót)/#enter_mp(15)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function join_em()
	if GetSex() == 1 then
		Say(g_szTitle.."Nga My kh«ng nhËn ®Ö tö nam", 0);
		return
	end

	if GetPlayerFaction() ~= 0 then
		return
	end

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Nga My phËt gia (KiÕm)/#enter_mp(8)",
		"Nga My tôc gia (CÇm)/#enter_mp(9)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function join_gb()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"C¸i Bang TÜnh y (QuyÒn)/#enter_mp(11)",
		"C¸i Bang ¤ Y (Bæng)/#enter_mp(12)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_tm()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"§­êng M«n/#enter_mp(6)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_ym()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"D­¬ng M«n Th­¬ng Kþ/#enter_mp(17)",
		"D­¬ng M«n Cung Kþ/#enter_mp(18)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_wdu()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"HiÖp §éc (Song §ao)/#enter_mp(20)",
		"Tµ §éc Cæ S­ (Tr¶o)/#enter_mp(21)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_kl()
	if GetSex()==2 then
		Talk(1,"","C«n L«n kh«ng thu nhËn ®Ö tö n÷!");
		return 0
	end

	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"C«n L«n Thiªn S­/#enter_mp(23)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_cy()
	if GetSex()==1 then
		Talk(1,"","Thóy Yªn kh«ng thu nhËn ®Ö tö nam!");
		return 0
	end

	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Thóy Yªn Vò Tiªn (Qu¹t)/#enter_mp(29)",
		"Thóy Yªn Linh N÷ (Tiªu)/#enter_mp(30)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

-----------------------------------------ÈëÃÅÅÉ----------------------------------------
function enter_mp(nRoute)
	local nBegin = 0;
	local nEnd = 0;
	local nBody = GetBody(); --1=Õý³£ÄÐ£¬2=¿ýÎµÄÐ£¬3=ÐÔ¸ÐÅ®£¬4=½¿Ð¡Å®

	SetPlayerRoute(nRoute);						--ÉèÖÃÁ÷ÅÉ

	if nRoute == 2 then						--ÉÙÁÖË×¼Ò
		LearnSkill(3);
		LearnSkill(5);
		LearnSkill(32);
		nBegin = 21;
		nEnd = 31;
	elseif nRoute == 3 then					--ÉÙÁÖìøÉ®
		LearnSkill(6);
		LearnSkill(57);
		nBegin = 45;
		nEnd = 56;
	elseif nRoute == 4 then					--ÉÙÁÖÎäÉ®
		LearnSkill(2);
		LearnSkill(44);
		nBegin = 33;
		nEnd = 43;
	elseif nRoute == 14 then					--Îäµ±µÀ¼Ò
		LearnSkill(4);
		LearnSkill(146);
		nBegin = 125;
		nEnd = 145;
	elseif nRoute == 15 then					--Îäµ±Ë×¼Ò
		LearnSkill(5);
		LearnSkill(159);
		nBegin = 147;
		nEnd = 158;
	elseif nRoute == 8 then					--¶ëáÒ·ð¼Ò
		LearnSkill(4);
		LearnSkill(89);
		nBegin = 75
		nEnd = 88;
		-- AddItem(0,102,131,2,1,-1,-1,-1,-1,-1,-1,1,0);
		AddItem(0,2,8996,1,1,-1,-1,-1,-1,-1,-1,1,0);
	elseif nRoute == 9 then					--¶ëáÒË×¼Ò
		LearnSkill(10);
		LearnSkill(102);
		nBegin = 90
		nEnd = 101;
	elseif nRoute == 11 then					--Ø¤°ï¾»Ò¢
		LearnSkill(2);
		LearnSkill(113);
		nBegin = 103
		nEnd = 112;
	elseif nRoute == 12 then					--Ø¤°ïÎÛÒ¢
		LearnSkill(5);
		LearnSkill(124);
		nBegin = 114
		nEnd = 123;
	elseif nRoute == 6 then					--ÌÆÃÅ
		LearnSkill(7);
		LearnSkill(74);
		nBegin = 58
		nEnd = 73;
	elseif nRoute == 17 then					--ÑîÃÅÇ¹Æï
		LearnSkill(11);
		LearnSkill(732);
		nBegin = 720;
		nEnd = 731;
	elseif nRoute == 18 then					--ÑîÃÅ¹­Æï
		LearnSkill(12);
		LearnSkill(745);
		nBegin = 733;
		nEnd = 744;
	elseif nRoute == 20 then					--Îå¶¾Ð°ÏÀ
		LearnSkill(13);
		LearnSkill(775);
		nBegin = 364;
		nEnd = 377;
	elseif nRoute == 21 then					--Îå¶¾¹ÆÊ¦
		LearnSkill(14);
		LearnSkill(774);
		nBegin = 347;
		nEnd = 363;
	elseif nRoute == 23 then					--À¥¢ØÌìÊ¦
		LearnSkill(4);
		LearnSkill(1032);
		nBegin = 1017 ;
		nEnd = 1031;
	elseif nRoute == 25 then					--Ã÷½ÌÊ¥Õ½
		LearnSkill(3);
		LearnSkill(1066);
		nBegin = 1053 ;
		nEnd = 1065;
	elseif nRoute == 26 then					--Ã÷½ÌÕó±ø
		LearnSkill(8);
		LearnSkill(1096);
		nBegin = 1083 ;
		nEnd = 1095;
	elseif nRoute == 27 then					--Ã÷½ÌÑªÈË
		LearnSkill(14);
		LearnSkill(1213);
		nBegin = 1131 ;
		nEnd = 1143;
	elseif nRoute == 29 then					--´äÑÌÎèÏÉ
		LearnSkill(15);
		LearnSkill(1196);
		nBegin = 1165 ;
		nEnd = 1176;
	elseif nRoute == 30 then					--´äÑÌÁéÅ®
		LearnSkill(16);
		LearnSkill(1230);
		nBegin = 1217 ;
		nEnd = 1229;
	else
		return
	end;

	LearnSkill(20);

	for i = nBegin, nEnd do
		LearnSkill(i);
		while LevelUpSkill(i) == 1 do
		end
	end;

	-- ----------------------------ÉèÖÃÊýÖµ------------
	-- -- SetTask(336, 20000);				--ÉèÖÃÊ¦ÃÅ¹±Ï×¶È
	-- -- ModifyReputation(20000, 0);			--ÉèÖÃÉùÍû
	-- -- PlayerReborn(0, 4);			--6×ª
	-- -- gf_SetTaskByte(1538, 1, 5) 			--5×ª
	SetLevel(80, 0);								--ÉèÖÃµÈ¼¶
	PlaySound("\\sound\\sound_i016.wav");
	-- -- SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
	Msg2Player("Thao t¸c thµnh c«ng, h·y ®¨ng nhËp l¹i")
-- --	AddItem(0,105,15,1,1,-1,-1,-1,-1,-1,-1);
	AddItem(2, 1, 1005, 1);
	AddItem(0, 200,40, 1);
	AddItem(2, 1, 1003, 1);
	AddItem(2, 1, 1004, 1);
	AddItem(2, 1, 2, 10);
	Earn(100000);
	SaveNow()
	Talk(1,"","Thao t¸c thµnh c«ng, h·y ®¨ng nhËp l¹i")
end

function Get_YaoYang_15()
	if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
		for i=3190,3194 do
				AddItem(0,102,i,1,1,-1,-1,-1,-1,-1,-1)
		end
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		local nLevel  = 10;
		if nRoute == 2 and nBody ==1 then 
				AddItem(0,100,3128,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3128,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3128,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,8992,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 2 and nBody ==2 then 
				AddItem(0,100,3129,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3129,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3129,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,8992,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 3 and nBody ==1 then 
				AddItem(0,100,3132,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3132,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3132,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,8,8994,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 3 and nBody ==2 then 
				AddItem(0,100,3133,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3133,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3133,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,8,8994,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 4 and nBody ==1 then 
				AddItem(0,100,3130,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3130,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3130,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8993,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 4 and nBody ==2 then 
				AddItem(0,100,3131,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3131,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3131,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8993,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==1 then 
				AddItem(0,100,3134,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3134,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3134,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8995,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==2 then 
				AddItem(0,100,3135,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3135,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3135,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8995,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==3 then 
				AddItem(0,100,3136,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3136,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3136,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8995,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 6 and nBody ==4 then 
				AddItem(0,100,3137,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3137,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3137,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,8995,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 8 and nBody ==3 then 
				AddItem(0,100,3138,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3138,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3138,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,8996,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 8 and nBody ==4 then 
				AddItem(0,100,3139,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3139,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3139,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,8996,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 9 and nBody ==3 then 
				AddItem(0,100,3140,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3140,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3140,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,10,8997,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 9 and nBody ==4 then 
				AddItem(0,100,3141,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3141,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3141,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,10,8997,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 11 and nBody ==1 then 
				AddItem(0,100,3142,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3142,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3142,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8998,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 11 and nBody ==2 then 
				AddItem(0,100,3143,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3143,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3143,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8998,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 11 and nBody ==3 then 
				AddItem(0,100,3144,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3144,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3144,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8998,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 11 and nBody ==4 then 
				AddItem(0,100,3145,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3145,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3145,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,8998,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 12 and nBody ==1 then 
				AddItem(0,100,3146,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3146,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3146,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8999,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 12 and nBody ==2 then 
				AddItem(0,100,3147,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3147,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3147,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8999,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 12 and nBody ==3 then 
				AddItem(0,100,3148,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3148,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3148,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8999,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 12 and nBody ==4 then 
				AddItem(0,100,3149,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3149,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3149,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,8999,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 14 and nBody ==1 then 
				AddItem(0,100,3150,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3150,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3150,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,9000,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 14 and nBody ==2 then 
				AddItem(0,100,3151,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3151,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3151,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,9000,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 14 and nBody ==3 then 
				AddItem(0,100,3152,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3152,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3152,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,9000,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 14 and nBody ==4 then 
				AddItem(0,100,3153,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3153,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3153,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,9000,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 15 and nBody ==1 then 
				AddItem(0,100,3154,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3154,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3154,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,9001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 15 and nBody ==2 then 
				AddItem(0,100,3155,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3155,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3155,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,9001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 15 and nBody ==3 then 
				AddItem(0,100,3156,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3156,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3156,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,9001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 15 and nBody ==4 then 
				AddItem(0,100,3157,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3157,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3157,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,9001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 17 and nBody ==1 then 
				AddItem(0,100,3158,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3158,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3158,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,9002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 17 and nBody ==2 then 
				AddItem(0,100,3159,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3159,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3159,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,9002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 17 and nBody ==3 then 
				AddItem(0,100,3160,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3160,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3160,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,9002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 17 and nBody ==4 then 
				AddItem(0,100,3161,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3161,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3161,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,9002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 18 and nBody ==1 then 
				AddItem(0,100,3162,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3162,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3162,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,9003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 18 and nBody ==2 then 
				AddItem(0,100,3163,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3163,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3163,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,9003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 18 and nBody ==3 then 
				AddItem(0,100,3164,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3164,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3164,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,9003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 18 and nBody ==4 then 
				AddItem(0,100,3165,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3165,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3165,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,9003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

		if nRoute == 20 and nBody ==1 then 
				AddItem(0,100,3166,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3166,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3166,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,9004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 20 and nBody ==2 then 
				AddItem(0,100,3167,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3167,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3167,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,9004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 20 and nBody ==3 then 
				AddItem(0,100,3168,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3168,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3168,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,9004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 20 and nBody ==4 then 
				AddItem(0,100,3169,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3169,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3169,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,9004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 21 and nBody ==1 then 
				AddItem(0,100,3170,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3170,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3170,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,4,304,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 21 and nBody ==2 then 
				AddItem(0,100,3171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,4,304,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 21 and nBody ==3 then 
				AddItem(0,100,3172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,4,304,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 21 and nBody ==4 then 
				AddItem(0,100,3173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,4,304,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 23 and nBody ==1 then 
				AddItem(0,100,3174,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3174,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3174,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,2,9006,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 23 and nBody ==2 then 
				AddItem(0,100,3175,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3175,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3175,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,2,9006,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		
		if nRoute == 29 and nBody ==3 then 
				AddItem(0,100,3188,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3188,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3188,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,13,9010,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 29 and nBody ==4 then 
				AddItem(0,100,3189,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3189,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3189,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,13,9010,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 30 and nBody ==3 then 
				AddItem(0,100,3190,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3190,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3190,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,12,9011,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
		if nRoute == 30 and nBody ==4 then 
				AddItem(0,100,3191,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,101,3191,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,103,3191,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				AddItem(0,12,9011,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
		end
end

function getkx3()
	local tSay = {
		"¢m ChÕ Max Ping 3 Opt/Get_JinShe_3",
		"Option ngÉu Nhiªn/Get_JinShe_2",
		"T¹i h¹ chØ xem qua th«i/nothing",
	}
	Say(g_szTitle.."------------------", getn(tSay), tSay);
end


function Get_JinShe_1()

local ret1, xIndex = AddItem(0,152,1,1,1,-1,-1,-1,-1,-1,-1,-1,10);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,153,1,1,1,-1,-1,-1,-1,-1,-1,-1,10);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,154,1,1,1,-1,-1,-1,-1,-1,-1,-1,10);
FeedItem(xIndex,1000000)
end

function Get_JinShe_2()

local ret1, xIndex = AddItem(0,152,4,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,153,4,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,154,4,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,152,5,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,153,5,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,154,5,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,152,6,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,153,6,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,154,6,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,152,7,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,153,7,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,154,7,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,152,8,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,153,8,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,154,8,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
local ret1, xIndex = AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,-1,0);
FeedItem(xIndex,1000000)
end

function Get_JinShe()
		if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		local nLevel  = 14;
		if nRoute == 2 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,186,164,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,186,164,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,186,164,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 3 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 4 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		
		
		if nRoute == 6 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,162,178,757,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,162,178,757,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,162,178,757,754,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 8 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		

		if nRoute == 9 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 11 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,183,181,757,770,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,183,181,757,770,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,183,181,757,770,1004)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 12 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,163,178,758,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,163,178,758,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,163,178,758,754,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 14 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 15 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,164,178,760,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,164,178,760,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,164,178,760,754,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 17 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,183,181,757,770,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,183,181,757,770,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,183,181,757,770,1004)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 18 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,162,178,757,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,162,178,757,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,162,178,757,754,1004)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 20 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,163,179,758,755,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,163,179,758,755,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,163,179,758,755,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 21 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,180,760,756,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,180,760,756,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,180,760,756,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 23 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 29 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,162,178,757,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,162,178,757,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,162,178,757,754,1004)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 30	then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,164,178,760,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,164,178,760,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,164,178,760,754,1004)
				FeedItem(xIndex,1000000)
		end
	
end
function Get_JinShe_3()
		if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		local nLevel  = 10;
		-- Msg2Player("%d", nRoute);
		if nRoute == 2 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,162,181,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,162,181,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,162,181,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 3 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,164,182,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,164,182,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,164,182,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 4 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,164,182,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,164,182,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,164,182,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		
		
		if nRoute == 6 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,162,178,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,162,178,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,162,178,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 8 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		

		if nRoute == 9 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 11 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,183,181,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,183,181,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,183,181,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 12 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,163,178,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,163,178,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,163,178,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 14 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,168,182,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,168,182,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,168,182,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 15 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,164,178,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,164,178,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,164,178,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 17 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,183,181,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,183,181,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,183,181,7-1,-1,-1)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 18 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,162,178,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,162,178,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,162,178,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 20 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,163,179,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,163,179,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,163,179,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 21 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,180,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,180,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,180,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 23 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 29 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,162,178,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,162,178,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,162,178,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 30	then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,164,178,-1,-1,-1)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,164,178,-1,-1,-1)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,164,178,-1,-1,-1)
				FeedItem(xIndex,1000000)
		end
	
end

function Get_JinShe_admin()
		if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		local nLevel  = 14;
		if nRoute == 2 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,186,164,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,186,164,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,186,164,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 3 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 4 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,164,182,759,-1,771)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,-1,771)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,-1,182,-1,771,759)
				FeedItem(xIndex,1000000)
		end
		
		
		if nRoute == 6 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,162,178,757,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,162,178,757,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,162,178,757,754,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 8 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		

		if nRoute == 9 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 11 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,183,181,757,770,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,183,181,757,770,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,183,181,757,770,1004)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 12 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,163,178,758,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,163,178,758,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,163,178,758,754,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 14 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 15 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,164,178,760,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,164,178,760,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,164,178,760,754,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 17 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,183,181,757,770,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,183,181,757,770,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,183,181,757,770,1004)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 18 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,162,178,757,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,162,178,757,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,162,178,757,754,1004)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 20 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,163,179,758,755,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,163,179,758,755,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,163,179,758,755,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 21 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,180,760,756,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,180,760,756,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,180,760,756,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 23 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,165,182,759,771,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,165,182,759,771,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,165,182,759,771,1004)
				FeedItem(xIndex,1000000)
		end
		
		if nRoute == 29 then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,162,178,757,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,162,178,757,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,162,178,757,754,1004)
				FeedItem(xIndex,1000000)
		end

		if nRoute == 30	then 
				local pifeng,pIndex	=AddItem(0,152,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(pIndex,188,164,178,760,754,825)
				FeedItem(pIndex,1000000)
				local huizhang,hIndex	=AddItem(0,153,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(hIndex,188,164,178,760,754,630)
				FeedItem(hIndex,1000000)
				local xie,xIndex	=AddItem(0,154,9,1,1,-1,-1,-1,-1,-1,-1,0,nLevel)
				SetItemFeedUpAttrs(xIndex,188,164,178,760,754,1004)
				FeedItem(xIndex,1000000)
		end
	
end
function mtphu()
	AddItem(0,107,64,1)
	AddItem(0,107,65,1)
	AddItem(0,107,66,1)
	AddItem(0,107,59,1)
end
function Get_Book()
	local szSay = {
		g_szTitle.."NhËn L­u Ph¸i Ch©n QuyÓn vµ QuyÕt YÕu!",
		"Mat tich/mtphu",
		-- "NhËn Ch©n QuyÓn/Get_Book_ZhenJuan",
		"NhËn QuyÕt YÕu/Get_Book_JueYao",
		"Th¨ng cÊp mËt tÞch ®· trang bÞ/Get_Book_Update",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_Nguyen_Lieu()
	local szSay = {
		g_szTitle.."NhËn C¸c Lo¹i VËt LiÖu!",
		-- "NhËn 100 Thiªn M«n Kim LÖnh/Get_NL_TMKL",
		-- "NhËn 100 Thiªn Cang LÖnh/Get_NL_TCL",
--		"Nguyen Lieu Kich Bao Tay/kichbaotay",
		"NhËn B¨ng Th¹ch vµ m¶nh b¨ng th¹ch/bangthach",
		-- "NhËn 1000 Ma Tinh/Get_NL_MT",
		"NhËn linh th¹ch 1 /lt1",
		"NhËn linh th¹ch 2 /lt2",
		"NhËn linh th¹ch 3 /lt3",
		"NhËn linh th¹ch 4 /lt4",
		"NhËn linh th¹ch 5 /lt5",
		-- "NhËn linh th¹ch 6 /lt6",
		-- "NhËn lt7 /lt7",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function kichbaotay()
	AddItem(2,1,3330,100)
	
	AddItem(2,1,3204,100)
	AddItem(2,1,3205,100)
	AddItem(2,1,3330,100)
	AddItem(2,1,3330,100)
	AddItem(2,1,3330,100)
end

function bangthach()
	AddItem(2,1,148,100)
	AddItem(2,1,149,100)
end

function lt1()
	AddItem(2,1,30413,100)
end

function lt2()
	AddItem(2,1,30414,100)
end
function lt3()
	AddItem(2,1,30415,100)
end
function lt4()
	AddItem(2,1,30416,100)
end
function lt5()
	AddItem(2,1,30417,100)
end
function lt6()
	AddItem(2,1,30418,100)
end
function lt7()
	AddItem(2,1,30419,100)
end

function Get_NL_TMKL()
	AddItem(2,1,30370,100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_NL_TCL()
	AddItem(2,95,204,100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_NL_MT()
	AddItem(2,1,30497,1000)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_Book_ZhenJuan()
	if gf_Judge_Room_Weight(7, 1, g_szTitle) ~= 1 then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
--	AddItem(0,107,30019,10);
	if nRoute == 2 then
		AddItem(0,107,30018,10)
	end
	
	if nRoute == 3 then
		AddItem(0,107,30020,10)
	end
	
	if nRoute == 4 then
		AddItem(0,107,30019,10)
	end
	
	if nRoute == 6 then
		AddItem(0,107,30021,10)
	end
	
	if nRoute == 8 then
		AddItem(0,107,30022,10)
	end
	
	if nRoute == 9 then
		AddItem(0,107,30023,10)
	end
	
	if nRoute == 11 then
		AddItem(0,107,30024,10)
	end
	
	if nRoute == 12 then
		AddItem(0,107,30025,10)
	end
	
	if nRoute == 14 then
		AddItem(0,107,30026,10)
	end
	
	if nRoute == 15 then
		AddItem(0,107,30027,10)
	end
	
	if nRoute == 17 then
		AddItem(0,107,30028,10)
	end
	
	if nRoute == 18 then
		AddItem(0,107,30029,10)
	end
	
	if nRoute == 20 then
		AddItem(0,107,30030,10)
	end
	
	if nRoute == 21 then
		AddItem(0,107,30031,10)
	end
	
	if nRoute == 23 then--À¥¢ØÌìÊ¦
		AddItem(0,107,30032,10)
	end
	
	if nRoute == 29 then--ÎèÏÉ
		AddItem(0,107,30033,10)
	end
	
	if nRoute == 30 then--ÁéÅ®
		AddItem(0,107,30034,10)
	end
	
	gf_AddItemEx({0, 112, 158,	1, 4}, "L¨ng Ba Vi Bé toµn tËp");
end

function langbavibott()
	gf_AddItemEx({0, 112, 158,	1, 4}, "L¨ng Ba Vi Bé toµn tËp");
end
function Get_Book_JueYao()
	local tJue ={
		[2]		={1,10},
		[3]		={21,31},
		[4]		={11,20},
		[6]		={32,46},
		[8]		={47,59},
		[9]		={60,70},
		[11]	={71,79},
		[12]	={80,88},
		[14]	={89,108},
		[15]	={109,119},
		[17]	={120,130},
		[18]	={131,141},
		[20]	={142,154},
		[21]	={155,168},
		[23]	={169,182},
		[25]	={183,194},
		[26]	={195,206},
		[27]	={207,218},
		[29]	={219,229},
		[30]	={230,240},
	};

	local nRoute = GetPlayerRoute()
	if 1 ~= gf_CheckPlayerRoute() then
		return 0;
	end

	if 1 ~= gf_Judge_Room_Weight((tJue[nRoute][2] - tJue[nRoute][1] + 1), 1, g_szTitle) then
		return 0;
	end

	for i = tJue[nRoute][1],tJue[nRoute][2] do
		gf_AddItemEx({2, 6, i, 1, 4}, "QuyÕt YÕu");
	end
end

function Get_Book_Update()
	for i=1,100 do LevelUpBook() end
	for i=1,100 do LevelUpBook(1) end
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_Buff_Update()
	CastState("state_add_book_attribute_value",0,-1,-1)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_Money()
	if GetCash() < 40000000 then
		Earn(40000000 - GetCash());
	end
end

function Give_ZhuzhuZhouzhou()
	if gf_Judge_Room_Weight(2, 1) ~= 1 then
		return 0;
	end

	AddItem(2, 3, 4, 99);
	AddItem(2, 3, 12, 99);	
end

function Give_JiguanAnqi()
	if gf_Judge_Room_Weight(11, 1) ~= 1 then
		return 0;
	end
  for i = 1,9 do
		AddItem(2, 11, i, 2000, 4);
	end
	AddItem(2, 3, 6, 999, 4);	
end

function Give_Dandan()
	if gf_Judge_Room_Weight(1, 1) ~= 1 then
		return 0;
	end
	AddItem(2, 3, 7, 999);
end

function Give_ZhanMa()
	if gf_Judge_Room_Weight(1, 10) ~= 1 then
		return 0;
	end
	AddItem(2,1,30094,1);
end

function Give_Jiancu()
	if gf_Judge_Room_Weight(2, 100) ~= 1 then
		return 0;
	end
	AddItem(2, 15, 10, 2000);
	--AddItem(0,105,38,1,1,7,101,-1,-1,-1,-1);
	AddItem(2,1,30094,1);
end

function Give_Fengshifu()
	if gf_Judge_Room_Weight(5, 1) ~= 1 then
		return 0;
	end

	AddItem(1, 6, 34,	30, 4);
	AddItem(1, 6, 46, 30, 4);
	AddItem(1, 6, 84,	30, 4);
	AddItem(1, 6, 153,30, 4);
	AddItem(1, 6, 154,30, 4);
	AddItem(1,6,150,100);
end

function Give_GuGu()
	if gf_Judge_Room_Weight(32, 1) ~= 1 then
		return 0;
	end
  for i = 1,31 do
		AddItem(2, 17, i, 99, 4);
	end

	if 0 >= GetItemCount(2, 0, 1063) and 1 == gf_Judge_Room_Weight(1, 1) then
		AddItem(2, 0, 1063, 1);
	end
	AddItem(2, 17, 14, 9999, 4);
	AddItem(0, 102, 2121, 1);
	AddItem(0, 102, 2122, 1);
	AddItem(0, 102, 2123, 1);
	AddItem(0, 102, 2124, 1);
end

function ling_nv_xiaodiao()
	local szSay = {};
	szSay[getn(szSay) + 1] = "NhËn TiÓu §iªu/Give_XiaoDiao";
	szSay[getn(szSay) + 1] = "Nu«i TiÓu §iªu/Give_XiaoDiaoFood";
	szSay[getn(szSay) + 1] = "HuÊn luyÖn TiÓu §iªu/Feed_XiaoDiao";
	szSay[getn(szSay) + 1] = "Ra khái/nothing";
	Say(g_szTitle.."TiÓu §iªu thao t¸c.", getn(szSay), szSay)
end


function Give_XiaoDiao()
	if gf_Judge_Room_Weight(1, 1) ~= 1 then
		return 0;
	end
	AddItem(2, 20, random(1, 5), 1, 4);
end

function Give_XiaoDiaoFood()
	if gf_Judge_Room_Weight(11, 1) ~= 1 then
		return 0;
	end

	for i = 6, 12 do
		if i == 11 then
			AddItem(2, 97, i, 1, 4);
		else
			AddItem(2, 97, i, 100, 4);
		end
	end
end

function Feed_XiaoDiao()
	local nPetItemIndex = GetPlayerEquipIndex(12);
	if (nPetItemIndex == nil or nPetItemIndex <=0) then
		Msg2Player("C¸c h¹ ch­a cã thó c­ng, kh«ng thÓ tiÕn hµnh huÊn luyÖn!");
		return
	end;
	local ItemGen, ItemDetail, ItemParticular = GetItemInfoByIndex(nPetItemIndex);
	if (ItemGen == nil or ItemDetail == nil or ItemParticular == nil)
		or (ItemGen ~= 2 or ItemDetail ~= 20)
	then
		Msg2Player("C¸c h¹ ch­a cã thó c­ng, kh«ng thÓ tiÕn hµnh huÊn luyÖn!");
		return
	end

	for i = 1, 84 do
		LevelUpPet(nPetItemIndex)
	end
end

function ClearBagAllItem(bTag)
	if not bTag or tonumber(bTag) ~= 1 then
		Say(g_szTitle.."Ng­¬i muèn thanh lý tói?", 2, "§ång ý/#ClearBagAllItem(1)", "Ra khái/nothing")
		return
	end
	ClearItemInPos();
	if GetItemCount(2,1,30644) < 1 and GetFreeItemRoom() > 0 then
		AddItem(2,1,30644,1)
		AddItem(0,200,40, 1)
	end
end

function TongOperation()
	local szSay = {
		g_szTitle.."Thao t¸c bang héi",
		"Ta muèn lËp bang héi/TongOperation_Create",
		"Ta muèn th¨ng cÊp bang héi/TongOperation_update",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function TongOperation_Create()
	if IsTongMember() ~= 0 then
		Talk(1,"","Ng­¬i ®· cã bang héi");
		return
	end
	if gf_Judge_Room_Weight(2, 100, " ") ~= 1 then
		return 0;
	end
	if GetItemCount(2,0,555) < 1 then
		AddItem(2,0,555,1)
	end
	if GetItemCount(2,0,125) < 1 then
  	AddItem(2,0,125,1)
  end
  if GetReputation() < 2000 then
  	ModifyReputation(2000 - GetReputation(), 0)
  end
  -- if GetCash() < 5000000 then
  	-- Earn(5000000 - GetCash())
  -- end
  CreateTongDialog()
end


function TongOperation_update()
	if GetTongLevel() < 3 then
		AddTongLevel();
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	end
end

function GetJingMai()
	local szSay = {
		g_szTitle.."Thao th¸c kinh m¹ch",
		"TÈy ®iÓm kinh m¹ch/GetJingMai_Reset",
--		format("%s/getZhenqi", "NhËn ch©n khÝ"),
--		format("%s/getJingMaiTongRen", "NhËn Kinh M¹ch §ång Nh©n"),
		"Ra khái/nothing",
	};
	if MeridianGetLevel() < 2 then
		tinsert(szSay, 2, "Th¨ng cÊp c¶nh giíi Vâ HiÒn/GetJingMai_Update")
	end
	if GetLevel() >=90 then 
		tinsert(szSay, 2, "§i ®Õn NPC th¨ng cÊp c¶nh giíi Vâ T­íng/GetJingMai_Update_votuong")
	end
	SelectSay(szSay);
end

function getZhenqi()
	AwardGenuineQi(180000);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end
function getJingMaiTongRen()
	AddItem(2, 1,30730, 100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function GetJingMai_Update()
	local nLevel = MeridianGetLevel()
	for i = nLevel + 1, 1 do
--	for i = nLevel + 1, 2 do
		MeridianUpdateLevel()
	end

--	local nNum = 600000 - (MeridianGetDanTian() + MeridianGetQiHai());
	local nNum = 150000 - (MeridianGetDanTian() + MeridianGetQiHai());
	if nNum > 0 then
		AwardGenuineQi(nNum);
	end
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end
function checkchankhi()
	local t1= MeridianGetDanTian();
	local t2 = MeridianGetQiHai();
	
	Msg2Player(t1);
	Msg2Player(t2);
end
function GetJingMai_Reset(bTag)
	if not bTag or tonumber(bTag) ~= 1 then
		Say(g_szTitle.."Thao th¸c kinh m¹ch", 2,"§ång ý/#GetJingMai_Reset(1)", "Hñy bá/nothing")
		return 0;
	end
	MeridianRestore(-1);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function player_reborn()
	PlayerReborn(2, random(4));			--6×ª
	gf_SetTaskByte(1538, 1, 5) 			--5×ª
	SetLevel(99, 1);								--ÉèÖÃµÈ¼¶
	ModifyReputation(10000,0)
	SetTask(336,10000)
	
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function Get_Energy()
	AddItem(1,1,19,200);
	AddItem(1,1,15,200);
	AddItem(1,1,17,200);
end
function Get_Energy_5x()
	AddItem(1,1,14,200);
	AddItem(1,1,16,200);
	AddItem(1,1,18,200);
end
function Life_Skill()
	local tSay = {
		"Muèn t¨ng cÊp kü n¨ng thu thËp/upgrade_gather_skill",
		"Muèn t¨ng cÊp kü n¨ng s¶n xuÊt/upgrade_compose_skill",
--		"NhËn nguyªn liÖu chÕ trang bÞ Linh §å/get_lingtu_equip_material",
		-- "NhËn NHCT/nhct",
		"T¹i h¹ chØ xem qua th«i/nothing",
	}
	Say(g_szTitle.."T¨ng cÊp kü n¨ng sèng", getn(tSay), tSay);
end
function nhct()
	AddItem(2,1,3219,100);
end
function upgrade_gather_skill()
	local tGather = {1, 2, 5, 6};
	local tName = {"§èn c©y", "Lµm da", "§µo kho¸ng", "KÐo t¬"};
	local str = ""
	for k, v in tName do
		str = str.."<color=gold>"..v.."<color>,"
	end
	for k, v in tGather do
		local nCur = GetLifeSkillLevel(0, v)
		local nMax = GetLifeSkillMaxLevel(0, v);
		if nMax > nCur then
			local msg = g_szTitle..format("HiÖn t¹i chØ cã thÓ th¨ng cÊp kü n¨ng %s, <color=gold>%s<color> ®ang ®¹t cÊp <color=green>%d<color>, muèn th¨ng cÊp <color=gold>%s<color> ®Õn cÊp <color=green>%d<color> kh«ng?",
				 str, tName[k], nCur, tName[k], nMax);
			Say(msg, 2, format("§ång ý/#upgrade_gather_skill_do(%d, %d)", v, nMax), "Hñy bá/nothing")
			return 0;
		end
	end
	Talk(1,"","Kh«ng cã kü n¨ng sèng cã thÓ th¨ng cÊp, h·y ®i t×m NPC ®Ó häc vµ th¨ng cÊp giíi h¹n kü n¨ng ®Õn cÊp 99")
end

function upgrade_gather_skill_do(nSkill, nMax)
	for i = GetLifeSkillLevel(0, nSkill), nMax do
		AddLifeSkillExp(0, nSkill, 9999999);		
	end
	if 79 == nMax then
		Talk(1,"","HiÖn ®· hoµn thµnh th¨ng cÊp kü n¨ng, h·y ®i t×m NPC ®Ó t¨ng cÊp giíi h¹n ®Õn 99 nµo!")
	end
	Msg2Player(format("Thµnh c«ng t¨ng cÊp kü n¨ng ®Õn cÊp %d", nMax));
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function upgrade_compose_skill()
	local tGather = {2, 3, 4, 5, 9, 10};
	local tName = {"ChÕ t¹o binh khÝ dµi", "ChÕ t¹o binh khÝ ng¾n", "ChÕ t¹o kú m«n binh khÝ", "Lµm hé gi¸p", "H¹ trang", "§Çu qu¸n"};
	local str = ""
	for k, v in tName do
		str = str.."<color=gold>"..v.."<color>,"
	end
	for k, v in tGather do
		local nCur = GetLifeSkillLevel(1, v)
		local nMax = GetLifeSkillMaxLevel(1, v);
		if nMax > nCur then
			local msg = g_szTitle..format("HiÖn t¹i chØ cã thÓ th¨ng cÊp kü n¨ng %s, <color=gold>%s<color> ®ang ®¹t cÊp <color=green>%d<color>, muèn th¨ng cÊp <color=gold>%s<color> ®Õn cÊp <color=green>%d<color> kh«ng?",
				 str, tName[k], nCur, tName[k], nMax);
			Say(msg, 2, format("§ång ý/#upgrade_compose_skill_do(%d, %d)", v, nMax), "Hñy bá/nothing")
			return 0;
		end
	end
	Talk(1,"","Kh«ng cã kü n¨ng sèng cã thÓ th¨ng cÊp, h·y ®i t×m NPC ®Ó häc vµ th¨ng cÊp giíi h¹n kü n¨ng ®Õn cÊp 99")
end

function upgrade_compose_skill_do(nSkill, nMax)
	for i = GetLifeSkillLevel(1, nSkill), nMax do
		AddLifeSkillExp(1, nSkill, 9999999);		
	end
	if 79 == nMax then
		Talk(1,"","HiÖn ®· hoµn thµnh th¨ng cÊp kü n¨ng, h·y ®i t×m NPC ®Ó t¨ng cÊp giíi h¹n ®Õn 99 nµo!")
	end
	Msg2Player(format("Thµnh c«ng t¨ng cÊp kü n¨ng ®Õn cÊp %d", nMax));
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function get_lingtu_equip_material()
	if gf_Judge_Room_Weight(18, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 18));
		return 0;
	end
	AddItem(2, 1, 30670, 999);
	AddItem(2, 1, 30671, 999);
	AddItem(2, 1, 30672, 999);
	AddItem(2, 1, 30673, 999);
	AddItem(2, 1, 30674, 999);
	AddItem(2, 2, 38, 999);
	AddItem(2, 2, 12, 999);
	AddItem(2, 2, 39, 999);
	AddItem(2, 2, 13, 999);
	AddItem(2, 2, 49, 999);
	AddItem(2, 2, 56, 999);
	AddItem(2, 2, 50, 999);
	AddItem(2, 2, 100, 999);
	AddItem(2, 1, 30680, 999);
	AddItem(2, 1, 30681, 999);
	AddItem(2, 1, 30682, 999);
	AddItem(2, 1, 30683, 999);
	AddItem(2, 1, 30684, 999);
end

function Get_Mored()
	local tSay = {
--		"NhËn Thiªn H¹ V« Song/thvs",	
--	"NhËn HiÖu ChiÕn Tr­êng/hieudothong",
--		"NhËn HKDNP/hkdnp",
		-- "NhËn M¸u /receiveTiLi",
		"NhËn B¸nh Ng«/banhngo",
		-- "NhËn TT3 LL3 TT4 LL4/ttll3",
		-- "NhËn Thiªn NghÜa/thienghia",
		-- "NhËn Thiªn Chi tµng KiÕm/tctk",
--		"HHVD/huyhoang5",
		-- "HHVD/huyhoang5",
		"uÈn Linh cÊp 3/nhanul",
--		"Vâ L©m b¸ Chñ/vlbc",
--		"NhËn Cöu ChuyÓn Håi Hån §an/cuuchuyen",
--		"NhËn ChiÕn T­îng/chientuong",
--		"NhËn Vò KhÝ Nguyªn Tö/vknt",
--		"NhËn Vò Kh¶m /vkkham",
--		"NhËn Vò Opt zin /vkopt",
--		"NhËn §å Long §»ng Phông Vò/longdang",
		-- "NhËn Thó Míi/nhanthucuoimoi",
		"NhËn Thó C­ìi/thucuoipro",
--		"NhËn Thiªn Chi Viªm §Õ/thienchiviemde",
		"NhËn Viªm §Õ/viemde",
		"NhËn ®å buff/dobuffhttc",
		"NhËn tö quang hiªn viªn ngäc/hienvienngoc",
		"NhËn tö quang hiªn viªn thÇn binh/hienvienbinh",
		"NhËn Cöu Thiªn Ngäc/cuuthienngoc",
    	-- "NhËn B¹ch Kim Viªm §Õ/bkvd",
--		"LuyÖn max skill trÊn ph¸i/maxtranphai",
--		"NhËn Th«ng Thiªn/getTiLi",
--		"NhËn Thien Chi T­íng Qu©n/thienchituongquan",
--		"NhËn T­íng Qu©n/tuongquan",
		-- "QuÇn ¸o  TLQ/aosm",
--		"C¸c Lo¹i Ngäc/ngoctoc",
--      "C¸c Lo¹i Ngäc/ngocdame",
		-- "Ma Dao thach 3/madao",
		-- "§å 3 Lç/do3lo",
		-- "Vu khi 3 Lç/vukhi",
--		"QuÎ 8 qu¸i/que8w", 
--		"Ngo¹i Trang/ngoaitrangnew", 
		"T¹i h¹ chØ xem qua th«i/nothing",
	}
	Say(g_szTitle.."------------------", getn(tSay), tSay);
end

function vlbc()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,30025,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,30025,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,30025,1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	
	if nBody==2 then
		AddItem(0,100,30026,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,30026,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,30026,1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	
	if nBody==3 then
		AddItem(0,100,30027,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,30027,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,30027,1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	
	if nBody==4 then
		AddItem(0,100,30028,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,30028,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,30028,1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
end	
function thuongung()
	local nBody 	= GetBody();

	if nBody==1 then
		AddItem(0,100,30033,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,30033,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,30033,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,102,30052,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30056,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30060,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==2 then
		AddItem(0,100,30034,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,30034,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,30034,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,102,30053,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30057,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30041,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==3 then
		AddItem(0,100,30035,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,30035,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,30035,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,102,30054,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30058,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30062,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==4 then
		AddItem(0,100,30036,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,30036,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,30036,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,102,30055,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30059,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30063,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
end
function madao()
	-- AddItem(2,1,30428,100);
	-- AddItem(2,1,30429,100);
	AddItem(2,1,30430,100);
end
function nhanul()
	local tSay = {
		g_szTitle.."Lùa chän",
		"NgÉu nhiªn nãn/UL3_non",
		"NgÉu nhiªn ¸o/UL3_ao",
		"NgÉu nhiªn quÇn/UL3_quan",
		"\nRa khái/nothing",
	}
	SelectSay(tSay);
end

function cuuchuyen()
	AddItem(1, 0, 32, 999, 0, 999);
end
function bkvd()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,30013,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,30013,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,30013,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end 
	if nBody==2 then
		AddItem(0,100,30014,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,30014,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,30014,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		
	end
	if nBody==3 then
		AddItem(0,100,30015,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	    AddItem(0,101,30015,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	    AddItem(0,103,30015,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end 
	if nBody==4 then
		AddItem(0,100,30016,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	    AddItem(0,101,30016,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	    AddItem(0,103,30016,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		
	end
	
end
function aosm()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,421,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,441,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end 
	if nBody==2 then
		AddItem(0,100,422,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,442,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end
	CastState("state_skill_adjust",3,3600,1); --VAC gi?m còn 2 t? khí / 1 l?n thi tri?n
end
function thienchituongquan()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,3016,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,3016,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,3016,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,102,3036,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3040,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3044,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==2 then
		AddItem(0,100,3017,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,3017,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,3017,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,102,3037,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3041,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3045,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==3 then
		AddItem(0,100,3018,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,3018,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,3018,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,102,3038,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3042,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3046,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==4 then
		AddItem(0,100,3019,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,3019,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,3019,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,102,3039,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3043,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3047,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	-- if nBody==1 then
		-- AddItem(0,100,30017,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,101,30017,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,103,30017,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,102,30017,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3040,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3044,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	-- end
	
	-- if nBody==2 then
		-- AddItem(0,100,30018,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,101,30018,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,103,30018,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,102,30018,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3041,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3045,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	-- end
	
	-- if nBody==3 then
		-- AddItem(0,100,30019,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,101,30019,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,103,30019,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,102,30019,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3042,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3046,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	-- end
	
	-- if nBody==4 then
		-- AddItem(0,100,30020,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,101,30020,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,103,30020,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		-- AddItem(0,102,30020,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3043,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3047,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	-- end
end

function receiveTiLi()
	-- AddItem(1, 0, 30009, 999);
	-- AddItem(1, 0, 30010, 999);
	-- AddItem(1, 0, 30011, 999);
	 AddItem(1, 0, 30006, 999);
	 AddItem(1, 0, 30007, 999);
end


function chientuong()
	AddItem(0,105,30033,1,1,7,403,7,-1,7,-1,7,0);
end

function vkkham()
	local szSay = {
		g_szTitle.."NhËn vò KhÝ lo¹i nµo!",
                "BQPN - NP/vkkham1",
                "ST - NP/vkkham2",
				"To be Continues..../vkkham3",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function vkkham1()
	local opt3 = {69, 30 , 102, 6}
	local op3 = random(1, 4)
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 12));
		return 0;
	end
	local nRoute	= GetPlayerRoute();
	if nRoute == 4 then
		AddItem(0,0,16,3,1,2,252,7,383,5,opt3[op3],0,14)
	end
end

function vkkham2()
	local opt3 = {69, 30 , 102, 6}
	local op3 = random(1, 4)
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 12));
		return 0;
	end
	local nRoute	= GetPlayerRoute();
	if nRoute == 4 then
		AddItem(0,0,16,3,1,3,268,7,383,5,opt3[op3],0,14)
	end
end

function vkkham3()

end

function vkopt()
	local opt3 = {69, 30 , 102, 6}

	local op3 = random(1, 4)
	
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 12));
		return 0;
	end
	local nRoute	= GetPlayerRoute();
	if nRoute == 4 then
		AddItem(0,0,16,3,1,3,86,7,64,-1, -1, 0,14)
	end
	-- if nRoute > 4  or nRoute < 3then
		-- AddItem(0,0,14,1,1,7,658,7,85,7,63,-1,10);
		-- AddItem(0,2,36,1,1,7,658,7,86,7,63,-1,10);
		-- AddItem(0,5,40,1,1,7,658,7,85,7,63,-1,10);
		-- AddItem(0,1,53,1,1,7,658,7,85,7,63,-1,10);
		-- AddItem(0,3,64,1,1,7,658,7,85,7,63,-1,10);
		-- AddItem(0,10,75,1,1,7,658,7,86,7,63,-1,10);
		-- AddItem(0,9,86,1,1,7,658,7,86,7,63,-1,10);
		-- AddItem(0,8,97,1,1,7,658,7,86,7,63,-1,10);
		-- AddItem(0,6,108,1,1,7,658,7,85,7,63,-1,10);
		-- AddItem(0,4,119,1,1,7,658,7,85,7,63,-1,10);
		-- AddItem(0,11,12,1,1,7,658,7,86,7,63,-1,10);
		-- AddItem(0,7,12,1,1,7,658,7,85,7,63,-1,10);
	-- end
end

function vknt()
	local opt1 = {86, 268, 27}
	local lvopt1 = {6, 3, 3}
	local opt3 = {69, 30 , 102, 6}
	local lvopt3 = {5, 5, 7, 3}

	local op1 = random(1, 3)
	local op3 = random(1, 4)
	
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 12));
		return 0;
	end
	iOpt = random(5,10)
	iOpt2 = random(1,3)
	local nRoute	= GetPlayerRoute();
	if nRoute == 4 then
		AddItem(0,0,16,3,1,lvopt1[op1],opt1[op1],7,64,lvopt3[op3],opt3[op3],0,10)
	end
	if nRoute > 4  or nRoute < 3then
		AddItem(0,0,14,1,1,7,658,7,85,7,63,-1,10);
		AddItem(0,2,36,1,1,7,658,7,86,7,63,-1,10);
		AddItem(0,5,40,1,1,7,658,7,85,7,63,-1,10);
		AddItem(0,1,53,1,1,7,658,7,85,7,63,-1,10);
		AddItem(0,3,64,1,1,7,658,7,85,7,63,-1,10);
		AddItem(0,10,75,1,1,7,658,7,86,7,63,-1,10);
		AddItem(0,9,86,1,1,7,658,7,86,7,63,-1,10);
		AddItem(0,8,97,1,1,7,658,7,86,7,63,-1,10);
		AddItem(0,6,108,1,1,7,658,7,85,7,63,-1,10);
		AddItem(0,4,119,1,1,7,658,7,85,7,63,-1,10);
		AddItem(0,11,12,1,1,7,658,7,86,7,63,-1,10);
		AddItem(0,7,12,1,1,7,658,7,85,7,63,-1,10);
	end
end

function thvs()
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 12));
		return 0;
	end
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,30207,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,30207,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,30207,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end 
	if nBody==2 then
		AddItem(0,100,30208,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,30208,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,30208,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end
	if nBody==3 then
		AddItem(0,100,30209,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,30209,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,30209,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end
	if nBody==4 then
		AddItem(0,100,30210,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,30210,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,30210,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end

end

function thucuoipro()
	if gf_Judge_Room_Weight(10, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 10));
		return 0;
	end
	AddItem(0,105,30023,1,1,7,403,7,-1,7,-1,7,0);
	-- AddItem(0,105,30025,1,1,7,403,7,-1,7,-1,7,0);
	-- AddItem(0,105,30027,1,1,7,403,7,-1,7,-1,7,0);
	-- AddItem(0,105,30030,1,1,7,403,7,-1,7,-1,7,0);
	-- AddItem(0,105,10107,1,1,7,403,7,-1,7,-1,7,0);
	-- AddItem(0,105,10108,1,1,7,403,7,-1,7,-1,7,0);
	-- AddItem(0,105,10109,1,1,7,403,7,-1,7,-1,7,0);
	-- AddItem(0,105,10110,1,1,7,403,7,-1,7,-1,7,0);
	-- AddItem(0,105,10111,1,1,7,403,7,-1,7,-1,7,0);
	-- AddItem(0,105,10112,1,1,7,403,7,-1,7,-1,7,0);
	-- AddItem(0,105,195,1,1,-1,-1,-1,-1,-1,-1);
	-- AddItem(0,105,194,1,1,-1,-1,-1,-1,-1,-1);
	-- AddItem(0,105,139,1,1,7,403,-1,-1,-1,-1);
	-- AddItem(0,105,138,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,149,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,148,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,30000,1,1,7,403,-1,-1,-1,-1);
	-- AddItem(0,105,30098,1,1,7,403,-1,-1,-1,-1);
	-- AddItem(0,105,30099,1,1,7,403,-1,-1,-1,-1);
end

function thienchiviemde()
	if gf_Judge_Room_Weight(3, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 3));
		return 0;
	
	end
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,8055,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8055,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8055,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end 
	if nBody==2 then
		AddItem(0,100,8056,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8056,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8056,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end
	 if nBody==3 then
		AddItem(0,100,8057,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8057,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8057,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	 end
	 if nBody==4 then
		AddItem(0,100,8058,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8058,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8058,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	 end
end
function viemde()
	if gf_Judge_Room_Weight(3, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 3));
		return 0;
	
	end
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,8001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end 
	if nBody==2 then
		AddItem(0,100,8002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	end
	 if nBody==3 then
		AddItem(0,100,8003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	 end
	 if nBody==4 then
		AddItem(0,100,8004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
	 end
end

function dobuffhttc()
	if gf_Judge_Room_Weight(3, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 3));
		return 0;
	end
	local nBody 	= GetBody();
--	AddItem(0,0,6,1,1,3,292,3,293,0,0,-1,0);
	if nBody==1 then
		AddItem(0,102,6,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,101,6,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,103,6,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,100,6,1,1,3,292,3,293,0,0,-1,0)
	end
	if nBody==2 then
		AddItem(0,102,35,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,101,35,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,103,35,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,100,35,1,1,3,292,3,293,0,0,-1,0)
	end
	if nBody==3 then
		AddItem(0,102,1,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,101,40,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,103,40,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,100,40,1,1,3,292,3,293,0,0,-1,0)
	end
	if nBody==4 then
		AddItem(0,102,1,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,101,57,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,103,57,1,1,3,292,3,293,0,0,-1,0)
		AddItem(0,100,57,1,1,3,292,3,293,0,0,-1,0)
	end
end

function maxtranphai()
	for i = 1,20 do

		while LevelUpSkill(1196) == 1 do

		end
		while LevelUpSkill(44) == 1 do

		end
		while LevelUpSkill(146) == 1 do

		end
		while LevelUpSkill(745) == 1 do

		end
		while LevelUpSkill(113) == 1 do

		end
		while LevelUpSkill(1032) == 1 do

		end
		while LevelUpSkill(74) == 1 do

		end
		while LevelUpSkill(774) == 1 do

		end
		while LevelUpSkill(775) == 1 do

		end
		while LevelUpSkill(732) == 1 do

		end
		while LevelUpSkill(159) == 1 do

		end
		while LevelUpSkill(89) == 1 do

		end
		while LevelUpSkill(102) == 1 do

		end
		while LevelUpSkill(1230) == 1 do

		end
		while LevelUpSkill(57) == 1 do

		end
		while LevelUpSkill(124) == 1 do

		end
		while LevelUpSkill(32) == 1 do

		end
	end;
end

function Get_Enhance()
	local tSay = {
		"NhËn ThÇn Th¹ch §Þnh Hån/Get_Enhance_1",
		"NhËn Tinh th¹ch Thiªn Th¹ch/Get_Enhance_2",
		"T¹i h¹ chØ xem qua th«i/nothing",
	}
	Say(g_szTitle.."T¨ng cÊp kü n¨ng sèng", getn(tSay), tSay);
end

function Get_Enhance_1()
	if gf_Judge_Room_Weight(2, 10, " ") ~= 1 then
		return 0;
	end
	gf_AddItemEx2({2, 1, 1068, 1}, "Thiªn Th¹ch linh th¹ch", "Get_Enhance_1", "NhËn ThÇn Th¹ch §Þnh Hån", 0, 1);
	gf_AddItemEx2({2, 1, 1067, 1}, "Thiªn Th¹ch linh th¹ch", "Get_Enhance_1", "NhËn ThÇn Th¹ch §Þnh Hån", 0, 1);
end

function Get_Enhance_2()
	if gf_Judge_Room_Weight(1, 10, " ") ~= 1 then
		return 0;
	end
	AddItem(2, 1, 1009, 100);
	WriteLogEx("Get_Enhance_2","NhËn Tinh th¹ch Thiªn Th¹ch", 100, "Thiªn Th¹ch Tinh Th¹ch");
end

function Get_Gem()
	if gf_Judge_Room_Weight(24, 100, " ") ~= 1 then
		return 0;
	end
        AddItem(2, 22, 101, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "HuyÕt TrÝch Th¹ch CÊp 1");
	AddItem(2, 22, 201, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "NguyÖt B¹ch Th¹ch CÊp 1");
	AddItem(2, 22, 301, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "Hæ Ph¸ch Th¹ch CÊp 1");
	AddItem(2, 22, 401, 100);	
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "H¾c DiÖu Th¹ch CÊp 1");
        AddItem(2, 22, 102, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "HuyÕt TrÝch Th¹ch CÊp 2");
	AddItem(2, 22, 202, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "NguyÖt B¹ch Th¹ch CÊp 2");
	AddItem(2, 22, 302, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "Hæ Ph¸ch Th¹ch CÊp 2");
	AddItem(2, 22, 402, 100);	
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "H¾c DiÖu Th¹ch CÊp 2");
        AddItem(2, 22, 103, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "HuyÕt TrÝch Th¹ch CÊp 3");
	AddItem(2, 22, 203, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "NguyÖt B¹ch Th¹ch CÊp 3");
	AddItem(2, 22, 303, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "Hæ Ph¸ch Th¹ch CÊp 3");
	AddItem(2, 22, 403, 100);	
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "H¾c DiÖu Th¹ch CÊp 3");
        -- AddItem(2, 22, 104, 100);
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "HuyÕt TrÝch Th¹ch CÊp 4");
	-- AddItem(2, 22, 204, 100);
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "NguyÖt B¹ch Th¹ch CÊp 4");
	-- AddItem(2, 22, 304, 100);
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "Hæ Ph¸ch Th¹ch CÊp 4");
	-- AddItem(2, 22, 404, 100);	
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "H¾c DiÖu Th¹ch CÊp 4");
        -- AddItem(2, 22, 105, 100);
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "HuyÕt TrÝch Th¹ch CÊp 5");
	-- AddItem(2, 22, 205, 100);
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "NguyÖt B¹ch Th¹ch CÊp 5");
	-- AddItem(2, 22, 305, 100);
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "Hæ Ph¸ch Th¹ch CÊp 5");
	-- AddItem(2, 22, 405, 100);	
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "H¾c DiÖu Th¹ch CÊp 5");
	-- AddItem(2, 22, 106, 100);
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "HuyÕt TrÝch Th¹ch CÊp 6");
	-- AddItem(2, 22, 206, 100);
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "NguyÖt B¹ch Th¹ch CÊp 6");
	-- AddItem(2, 22, 306, 100);
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "Hæ Ph¸ch Th¹ch CÊp 6");
	-- AddItem(2, 22, 406, 100);	
	-- WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "H¾c DiÖu Th¹ch CÊp 6");
end

function Get_Diem_Char()
	local szSay = {
		g_szTitle.."T¨ng ®iÓm cho nh©n vËt!",
--		"NhËn Qu©n hµm nguyªn so¸i/Get_NguyenSoai",
--		"NhËn NhËn 250.000 ®iÓm c«ng tr¹ng/Get_CongTrang",
		"NhËn NhËn 10.000 ®iÓm danh väng/Get_DanhVong",
		"NhËn NhËn 10.000 ®iÓm s­ m«n/Get_SuMon",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_NguyenSoai()
	SetTask(704,6)
        Msg2Player("Chóc mõng b¹n ®· trë thµnh Nguyªn So¸i ®Ñp trai");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),904,0,0)
end

function Get_CongTrang()
	SetTask(701, GetTask(701) + 250000)
        Msg2Player("Chóc mõng b¹n ®· nhËn ®­îc 250.000 ®iÓm c«ng tr¹ng");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_DanhVong()
	ModifyReputation(10000,0)
        Msg2Player("Chóc mõng b¹n ®· nhËn ®­îc 10.000 ®iÓm danh väng");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_SuMon()
	SetTask(336,GetTask(336) + 10000)
        Msg2Player("Chóc mõng b¹n ®· nhËn ®­îc 10.000 ®iÓm s­ m«n");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_Danh_Hieu()
	local szSay = {
		g_szTitle.."NhËn danh hiÖu mµ ®¹i hiÖp mong muèn!",
		-- "NhËn Danh HiÖu Du HiÖp/Get_DuHiep",
		-- "NhËn Danh HiÖu ¦ng D­¬ng/Get_UngDuong",
		-- "NhËn Danh HiÖu ChiÕn Cuång/Get_ChienCuong",
		-- "NhËn Vâ L©m B¸ch HiÓu Sinh/Get_VLBHS",
                "NhËn Siªu Nh©n VÞt Muèi/Get_SNVM",
                "NhËn Siªu Nh©n Gao/Get_SNGAO",
                "NhËn Siªu Nh©n M× Bß/Get_SNMiBo",
                "NhËn Siªu Nh©n M× Gµ/Get_SNMiGa",
                "NhËn Siªu Nh©n M× T«m/Get_SNMiTom",
                "Trang kÕ/Get_Danh_Hieu2",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_DuHiep()
	AddTitle(65, 1)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Du HiÖp");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_UngDuong()
	AddTitle(65, 2)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu ¦ng D­¬ng");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_ChienCuong()
	AddTitle(65, 3)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu ChiÕn Cuån");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_VLBHS()
	AddTitle(63, 1)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Vâ L©m B¸ch HiÓu Sinh");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNVM()
	AddTitle(62, 1)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Siªu Nh©n VÞt Muèi");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNGAO()
	AddTitle(62, 2)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Siªu Nh©n Gao");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiBo()
	AddTitle(62, 3)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Siªu Nh©n M× Bß");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiGa()
	AddTitle(62, 4)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Siªu Nh©n M× Gµ");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiTom()
	AddTitle(62, 5)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Siªu Nh©n M× T«m");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_Danh_Hieu2()
	local szSay = {
		g_szTitle.."NhËn danh hiÖu mµ ®¹i hiÖp mong muèn!",
                -- "NhËn Danh HiÖu Sèng kh«ng yªu/Get_DelYeu",
                -- "NhËn Danh HiÖu HËn ®êi v« ®èi/Get_HanDoi",
                -- "NhËn Danh HiÖu Buån V× §Ñp Trai/Get_SadDep",
                -- "NhËn Danh HiÖu Ng¹o ThÕ V« Song/Get_NgaoTheVoSong",
                "NhËn Danh HiÖu B¸ V­¬ng/Get_BaVuong",
                "NhËn Danh HiÖu §¹i HiÖp/Get_DaiHiep",
                "NhËn Danh HiÖu Tinh Anh §á/Get_TinhAnhDo",
                "NhËn Danh HiÖu Tinh Anh TÝm/Get_TinhAnhTim",
--				"NhËn Danh HiÖu New/Get_LaHan",
--				"Trang kÕ/danhhieu3",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end


function danhhieu3()
	local szSay = {
	g_szTitle.."NhËn danh hiÖu mµ ®¹i hiÖp mong muèn!",
                "NhËn Danh HiÖu Mµu MÌ/HieuLoLi",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function HieuLoLi()
	-- AddTitle(70, 2)
	-- AddTitle(70, 3)
	-- AddTitle(70, 4)
	-- AddTitle(70, 5)
	-- AddTitle(70, 6)
	AddTitle(70, 7)
	-- AddTitle(70, 8)
	-- AddTitle(71, 2);
	
--	AddTitle(71, 3)
end

function Get_BaVuong()
	AddTitle(66, 1)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu ChÝ T«n V­¬ng Gi¶");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_DaiHiep()
	AddTitle(66, 2)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu §éc Bé Thiªn H¹");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_TinhAnhDo()
	AddTitle(66, 3)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Vâ l©m hµo kiÖt");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_TinhAnhTim()
	AddTitle(66, 4)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Giang hå tinh anh");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_NgaoTheVoSong()
	AddTitle(61, 7)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Ng¹o ThÕ V« Song");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SadDep()
	AddTitle(62, 13)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Buån V× §Ñp Trai");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_DelYeu()
	AddTitle(62, 6)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu Sèng kh«ng yªu");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_HanDoi()
	AddTitle(62, 7)
        Msg2Player("Chóc mõng b¹n nhËn ®­îc danh hiÖu HËn §êi V« §èi");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end
function Get_LaHan()
	AddTitle(25, 2)
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end
function Reset_Time_Playy()
	RestoreStamina()
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_An()
	if gf_Judge_Room_Weight(4, 100, " ") ~= 1 then
		return 0;
	end
    AddItem(2, 0, 30002, 1);
	WriteLogEx("Get_An","NhËn Ên:", 100, "Long tö Ên");
	AddItem(2, 0, 30005, 1);
	WriteLogEx("Get_An","NhËn Ên:", 100, "Phông tö Ên");
	AddItem(2, 0, 30003, 1);
	WriteLogEx("Get_An","NhËn Ên:", 100, "Hæ tö Ên");
	AddItem(2, 0, 30006, 1);	
	WriteLogEx("Get_An","NhËn Ên:", 100, "¦ng tö Ên");

end

function change_PhucSinh()
	local tSay = {}
	local tHeader = "§¹i hiÖp muèn thay ®æi theo h­íng nµo. §èi víi Phôc Sinh, sau khi thay ®æi sÏ bÞ vÒ level 10, h·y ®Õn g¾p B¹ch Tiªn Sinh (TuyÒn Ch©u) ®Ó nhËn l¹i level !!!!."		
	tinsert(tSay, "H­íng Long Tö/#confirm_change_chuyensinh(1)")
	tinsert(tSay, "H­íng Hæ Tö/#confirm_change_chuyensinh( 2)")
	tinsert(tSay, "H­íng ¦ng Tö/#confirm_change_chuyensinh(3)")		
	tinsert(tSay, "H­íng Phông Tö/#confirm_change_chuyensinh(4)")
	tinsert(tSay, "T¹m thêi ta ch­a muèn thay ®æi/nothing")
	Say(tHeader, getn(tSay), tSay)			
end

function confirm_change_chuyensinh(nWay)
	local nNum_cs6 = GetPlayerRebornParam(0)
	PlayerReborn(nNum_cs6,nWay) -- Thay ®æi h­íng chuyÓn Sinh 6 thµnh c«ng		
	Talk(1,"", "Chóc mõng ®¹i hiÖp ®· thay ®æi h­íng Phôc Sinh thµnh c«ng !")		
	Msg2Player("Chóc mõng ®¹i hiÖp ®· thay ®æi h­íng Phôc Sinh thµnh c«ng !")
--	SetLevel(99,0)
	NewWorld(200,1353, 2876)
end

function get_translife_item()
	if gf_JudgeRoomWeight(5,300,"") == 0 then
		return
	end	

	BigDelItem(2,0,30002, BigGetItemCount(2,0,30002))
	BigDelItem(2,0,30003, BigGetItemCount(2,0,30003))
	BigDelItem(2,0,30005, BigGetItemCount(2,0,30005))
	BigDelItem(2,0,30006, BigGetItemCount(2,0,30006))
	local nTransCount = GetTranslifeCount()	
	local nType = GetTranslifeFaction()	
	---------chuyÓn sinh 7
	if GetPlayerRebornParam(0) == 2 then
		local nType_cs7 = GetPlayerRebornParam(1)
		local nBody = GetBody()	
		gf_AddItemEx(tb_translife_seal_cs6[nType_cs7][2], tb_translife_seal_cs6[nType_cs7][1])		
		if GetLevel() < 79 then
			Talk(1,"","§¹i hiÖp ch­a ®ñ yªu cÇu ®Ó nhËn l¹i trang bÞ")	
			return
		end
		SetTask(336,GetTask(336) - 100)
		Msg2Player("B¹n bÞ trõ 100 ®iÓm s­ m«n.")
		local nType_cs6 = GetPlayerRebornParam(1) -- xãa trang bi CS6
		local nBody_cs6 = GetBody()
		for i=1, getn(tb_translife_cloth_cs7_nhanlai[nType_cs7][nBody]) do
			local G,D,P,nCount, _, lvatt1, att1, lvatt2, att2, lvatt3, att3  = gf_UnPack(tb_translife_cloth_cs7_nhanlai[nType_cs7][nBody][i])
			P = P + GetBody() - 1
			lvatt3 = lvatt3 or 0
			att3 = att3 or 0
			BigDelItem(G,D,P,BigGetItemCount(G,D,P))
		end					
		for i = 1, 3 do
			gf_AddItemEx(tb_translife_cloth_cs7_nhanlai[nType_cs7][nBody][i], "NhËn l¹i trang bÞ")
		end
		for i=1, getn(tb_translife_cloth[nType][nTransCount]) do
			local G,D,P,nCount, _, lvatt1, att1, lvatt2, att2, lvatt3, att3  = gf_UnPack(tb_translife_cloth[nType][nTransCount][i][2])
			P = P + GetBody() - 1
			lvatt3 = lvatt3 or 0
			att3 = att3 or 0
			BigDelItem(G,D,P,BigGetItemCount(G,D,P))
			gf_AddItemEx({G, D, P, nCount,1, lvatt1, att1, lvatt2, att2, lvatt3, att3},tb_translife_cloth[nType][nTransCount][i][1])
		end				
		Talk(1,"","§©y lµ nh÷ng vËy quý gi¸, lÇn sau cÈn thËn ko ®Ó mÊt n÷a ®Êy!")	
		WriteLogEx("Chuyen Sinh","nhËn l¹i Ên vµ ngo¹i trang chuyÓn sinh 7 theo h­íng "..tb_translife_seal[nType_cs6][3])		
		return
	end	
end

LSB_NPC_GOLD_BOSS = {
	{"yangxiong", 165, "BÖnh Quan S¸c D­¬ng Hïng", 30 * 60},
	{"linchong", 167, "B¸o Tö §Çu L©m Xung", 30 * 60},
	{"luzhishen", 167, "Hoa Hßa Th­îng Lç TrÝ Th©m", 30 * 60},
	{"likui", 167, "H¾c Toµn Phong Lý Quú", 30 * 60},
	{"husanliang", 167, "NhÊt Tr­îng Thanh Hæ Tam N­¬ng", 30 * 60},
	{"shixiu", 167, "Phanh MÖnh Tam Lang Th¹ch Tó", 30 * 60},
	{"CËp Thêi Vò Tèng Giang", 167, "CËp Thêi Vò Tèng Giang", 30 * 60},
	{"Tri §a Tinh Ng« Dông", 167, "Tri §a Tinh Ng« Dông", 30 * 60},
	{"Cöu V¨n Long Sö TiÕn", 167, "Cöu V¨n Long Sö TiÕn", 30 * 60},
	{"TiÓu TuyÒn Phong Sµi TiÕn", 167, "TiÓu TuyÒn Phong Sµi TiÕn", 30 * 60},
	{"§¹i §ao Quan Th¾ng", 167, "§¹i §ao Quan Th¾ng", 30 * 60},
	{"NhËp V©n Long C«ng T«n Th¾ng", 167, "NhËp V©n Long C«ng T«n Th¾ng", 30 * 60},
	{"B¸o Tö §Çu L©m Xung", 167, "B¸o Tö §Çu L©m Xung", 30 * 60},
	{"Hoa Hßa Th­îng Lç TrÝ Th©m", 167, "Hoa Hßa Th­îng Lç TrÝ Th©m", 30 * 60},
	{"Hµnh Gi¶ Vâ Tßng", 167, "Hµnh Gi¶ Vâ Tßng", 30 * 60},
	{"Tóy B¸n Tiªn Phong NhÊt Phµm", 167, "Tóy B¸n Tiªn Phong NhÊt Phµm", 30 * 60},
	{"BÖnh Quan S¸c D­¬ng Hïng", 167, "BÖnh Quan S¸c D­¬ng Hïng", 30 * 60},
	{"Phanh MÖnh Tam Lang Th¹ch Tó", 167, "Phanh MÖnh Tam Lang Th¹ch Tó", 30 * 60},
	{"NhÊt Tr­îng Thanh Hæ Tam N­¬ng", 167, "NhÊt Tr­îng Thanh Hæ Tam N­¬ng", 30 * 60},
	{"Song Th­¬ng T­íng §æng B×nh", 167, "Song Th­¬ng T­íng §æng B×nh", 30 * 60},
	{"Thanh DiÖn Thó D­¬ng TrÝ", 167, "Thanh DiÖn Thó D­¬ng TrÝ", 30 * 60},
	{"TÝch LÞch Háa TÇn Minh", 167, "TÝch LÞch Háa TÇn Minh", 30 * 60},
	{"Song Tiªn H« Diªn Ch­íc", 167, "Song Tiªn H« Diªn Ch­íc", 30 * 60},
	{"H¾c Toµn Phong Lý Quú", 167, "H¾c Toµn Phong Lý Quú", 30 * 60},
};

function Boss_W1()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
	local msg = format("Theo t×nh b¸o, 1 qu¸i nh©n víi vâ c«ng v« ®Þch thiªn h¹ ®· xuÊt hiÖn t¹i Tµi Nguyªn ChiÕn, mau ®Õn thu phôc h¾n !!!");
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_HL", "§µo Hoa §¶o Chñ Hoµng Long", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 23*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end

function Boss_W5()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_dfbb", "§«ng Ph­¬ng BÊt B¹i", 606,168*8,187*16);
		local msg = format("Theo t×nh b¸o, 1 qu¸i nh©n víi vâ c«ng v« ®Þch thiªn h¹ ®· xuÊt hiÖn t¹i Tµi Nguyªn ChiÕn, mau ®Õn thu phôc h¾n !!!");
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		AddLocalNews(msg);
		SetNpcLifeTime(npcIndex, 2*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end

function Boss_W6()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("TYT_HyehuoTYS", "Gi¸c §éc Thó", 606,168*8,187*16);
		local msg = format("Theo t×nh b¸o, 1 qu¸i nh©n víi vâ c«ng v« ®Þch thiªn h¹ ®· xuÊt hiÖn t¹i Tµi Nguyªn ChiÕn, mau ®Õn thu phôc h¾n !!!");
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		AddLocalNews(msg);
		SetNpcLifeTime(npcIndex, 2*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end

function Boss_W2()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
	local msg = format("Theo t×nh b¸o, 1 qu¸i nh©n víi vâ c«ng v« ®Þch thiªn h¹ ®· xuÊt hiÖn t¹i Tµi Nguyªn ChiÕn, mau ®Õn thu phôc h¾n !!!");
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_CLBZ", "T©y Vùc Th­¬ng Lang B¸ V­¬ng", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 2*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W3()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
	local msg = format("Theo t×nh b¸o, 1 qu¸i nh©n víi vâ c«ng v« ®Þch thiªn h¹ ®· xuÊt hiÖn t¹i Tµi Nguyªn ChiÕn, mau ®Õn thu phôc h¾n !!!");
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_TJ", "Ngäc S¬n Chi Linh Thiªn Cöu", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 2*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W4()

	local nMap,nX,nY = GetWorldPos();
	local msg = format("Theo t×nh b¸o, 1 qu¸i nh©n víi vâ c«ng v« ®Þch thiªn h¹ ®· xuÊt hiÖn t¹i Tµi Nguyªn ChiÕn, mau ®Õn thu phôc h¾n !!!");
	local nNpcIdx = 0
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_MW", "U Tr¹ch Chi ¶nh Minh Vâ", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 2*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end

function Thuong_LuongSon()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
			local nNpcIdx = CreateNpc(IBbaoxiang, "R­¬ng H¶o H¸n", nMap, nX + 2, nY + 2);
			SetNpcLifeTime(nNpcIdx, 2*60 * 60);
			SetNpcScript(nNpcIdx,"\\script\\online\\liangshanboss\\npc\\box\\box_e.lua");

end

function Boss_TuLinh()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local n = gf_GetRandItemByTable(TuLinh_BOSS_LIST, 1000, 1) or 1;
	local nNpcIndex = CreateNpc(TuLinh_BOSS_LIST[n][1],TuLinh_BOSS_LIST[n][3],  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcDeathScript(nNpcIndex,"\\script\\online_activites\\tiaozhansilingboss\\boss\\boss_death.lua");
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
end

TuLinh_BOSS_LIST = {
	{"Long Tö", 165, "Long ThÇn Hãa Th©n", 30 * 60},
	{"Phông Tö", 167, "Phông ThÇn Hãa Th©n", 30 * 60},
	{"Hæ Tö", 165, "Hæ ThÇn Hãa Th©n", 30 * 60},
	{"¦ng Tö", 167, "¦ng ThÇn Hãa Th©n", 30 * 60},
}

function Boss_NienThu()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local nNpcIndex = CreateNpc("§¹i Niªn Thó","ThÇn thó ngh×n n¨m",  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcScript(nNpcIndex,"\\script\\online_activites\\2011_03\\boss\\npc\\bigboss.lua");

end

function Batcd()
SetFightState(1)
end

function Batlc()
SetFightState(0)
end

function UL3_non()
	for i = 1, 10 do
		local non = random(35,51)
		AddItem(0, 148, non, 1, 1);
	end
end
function UL3_ao()

	for i = 1, 10 do
		local non = random(35,51)
		AddItem(0, 149, non, 1, 1);
	end
end
function UL3_quan()
	for i = 1, 10 do
		local non = random(35,51)
		AddItem(0, 150, non, 1, 1);
	end
end

function UL5_non()
	for i = 1, 10 do
		local non = random(69,84)
		AddItem(0, 148, non, 1, 1);
	end
end
function UL5_ao()

	for i = 1, 10 do
		local non = random(70,86)
		AddItem(0, 149, non, 1, 1);
	end
end
function UL5_quan()
	for i = 1, 10 do
		local non = random(69,84)
		AddItem(0, 150, non, 1, 1);
	end
end
function UL7()
	AddItem(0, 148, 102, 1, 1);
	AddItem(0, 148, 103, 1, 1);
	
	AddItem(0, 149, 105, 1, 1);
	AddItem(0, 149, 106, 1, 1);
	
	AddItem(0, 150, 102, 1, 1);
	AddItem(0, 150, 103, 1, 1);
end

function DoBuffNMK()

	-- local tSay = {
		-- "Non/nhanngoaitrangNMK_non",
		-- "Ao/nhanngoaitrangNMK_Ao",
		-- "Quan/nhanngoaitrangNMK_Quan",
		-- "T¹i h¹ chØ xem qua th«i/nothing",
	-- }
	-- Say(g_szTitle.."------------------", getn(tSay), tSay);
	
	AddItem(0,110,516,1,1,-1,-1,3,484,7,41,-1,0);
	AddItem(0,109,516,1,1,-1,-1,3,484,7,41,-1,0);
	AddItem(0,108,516,1,1,-1,-1,3,484,7,41,-1,0);
	
	AddItem(0,110,517,1,1,-1,-1,3,484,7,41,-1,0);
	AddItem(0,109,517,1,1,-1,-1,3,484,7,41,-1,0);
	AddItem(0,108,517,1,1,-1,-1,3,484,7,41,-1,0);
end

--Gia nhËp Ph¸i
-- function JoinRoute_UpdateLevel()
	-- local tMenu = {
		-- "ThiÕu L©m/join_sl",
		-- "Vâ §ang/join_wd",
		-- "Nga My/join_em",
		-- "C¸i Bang/join_gb",
		-- "§­êng M«n/join_tm",
		-- "D­¬ng M«n/join_ym",
		-- "Ngò §éc/join_wdu",
-- --		"C«n L«n/join_kl",
-- --		"Thóy Yªn/join_cy",
-- --		"Minh Gi¸o/join_mgb",
		-- "\nRa khái/nothing",
	-- };
	-- Say("Ng­¬i muèn gia nhËp l­u ph¸i g×?", getn(tMenu), tMenu);
-- end

--/home/server/gs0/script/ÖÐÔ­¶þÇø/ÏåÑô/npc
function nhanngoaitrangNMK()
	
	
	local ID_AO_KN = {287,288,289,290,291,292,398,399,400,401,402,486,490,494,498,502,504,512,517,521,525,529,533,537,565,569,573,30004,30008,30012,30016,621,30036,633,30020,30024,30028,30032,679,683,687,724,728,704,708,712,904,932,828,940,716,956,840,836,988,814,671,720,581,10004,10008,10012,10016,10020,10024,637,1008,1012,1044,1024,1056}
	local ID_AO_NGC = {281,282,283,284,285,286,408,409,410,411,412,485,489,493,497,501,503,513,516,520,524,528,532,536,564,568,572,30003,30007,30011,30015,620,30035,632,30019,30023,30027,30031,678,682,686,723,727,703,707,711,903,931,827,939,715,955,839,835,987,813,670,719,580,10003,10007,10011,10015,10019,10023,636,1007,1011,1043,1023,1055}
	local ID_NON_KN = {213,214,215,216,217,218,398,399,400,401,402,476,480,484,486,512,517,521,525,529,533,537,541,553,545,557,549,561,565,569,573,30004,30008,30012,30016,621,30020,30024,30028,30032,30036,633,679,683,687,724,728,704,708,712,904,932,625,828,940,716,956,840,836,988,814,671,720,581,10004,10008,10012,10016,10020,10024,637,1008,1012,1044,1024,1056}
	local ID_NON_NGC = {207,208,209,210,211,212,408,409,410,411,412,475,479,483,485,513,516,520,524,528,532,536,540,552,544,556,548,560,564,568,572,30003,30007,30011,30015,620,30019,30023,30027,30031,30035,632,678,682,686,723,727,703,707,711,903,931,624,827,939,715,955,839,835,987,813,670,719,580,10003,10007,10011,10015,10019,10023,636,1007,1011,1043,1023,1055}
	local ID_QUAN_KN = {287,288,289,290,291,292,198,199,200,201,202,216,220,224,226,512,517,521,525,529,30004,30008,30012,30016,565,569,573,621,30020,30024,30028,30032,30036,633,679,683,687,724,728,704,708,712,904,932,828,940,716,956,840,836,988,814,671,720,581,10004,10008,10012,10016,10020,10024,637,1008,1012,1044,1024,1056}
	local ID_QUAN_NGC = {281,282,283,284,285,286,208,209,210,211,212,215,219,223,225,513,516,520,524,528,30003,30007,30011,30015,564,568,572,620,30019,30023,30027,30031,30035,632,678,682,686,723,727,703,707,711,903,931,827,939,715,955,839,835,987,813,670,719,580,10003,10007,10011,10015,10019,10023,636,1007,1011,1043,1023,1055}
	
	

	if nBody == 3 then
		AddItem(0,110,ID_QUAN_KN[id],1,1,7,484,3,484,7,41,-1,0);
		AddItem(0,109,ID_AO_KN[id],  1,1,7,484,7,41,7,41,-1,0);
		AddItem(0,108,ID_NON_KN[id], 1,1,7,484,7,41,7,41,-1,0);
	end
	if nBody == 4 then
		AddItem(0,110,ID_QUAN_NGC[i],1,1,7,484,3,484,7,41,-1,0);
		AddItem(0,109,ID_AO_NGC[id],1,1,7,484,7,41,7,41,-1,0);
		AddItem(0,108,ID_NON_NGC[id],1,1,7,484,7,41,7,41,-1,0);
	end
end

function nhanngoaitrangNMK_non()
	-- local ID_NON_KN = {213,214,215,216,217,218,398,399,400,401,402,476,480,484,486,512,517,521,525,529,533,537,541,553,545,557,549,561,565,569,573,30004,30008,30012,30016,621,30020,30024,30028,30032,30036,633,679,683,687,724,728,704,708,712,904,932,625,828,940,716,956,840,836,988,814,671,720,581,10004,10008,10012,10016,10020,10024,637,1008,1012,1044,1024,1056}
	-- local ID_NON_NGC = {207,208,209,210,211,212,408,409,410,411,412,475,479,483,485,513,516,520,524,528,532,536,540,552,544,556,548,560,564,568,572,30003,30007,30011,30015,620,30019,30023,30027,30031,30035,632,678,682,686,723,727,703,707,711,903,931,624,827,939,715,955,839,835,987,813,670,719,580,10003,10007,10011,10015,10019,10023,636,1007,1011,1043,1023,1055}

	local nBody 	= GetBody();
	
	-- for i = 1,10 do
		-- local id = random(1,67)
		-- ---NGC
		if nBody == 3 then
			AddItem(0,108,1007,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		end
		-- --KN
		if nBody == 4 then
			 AddItem(0,108,1008,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		end
	-- end
end

function nhanngoaitrangNMK_Ao()
	-- local ID_AO_KN = {287,288,289,290,291,292,398,399,400,401,402,486,490,494,498,502,504,512,517,521,525,529,533,537,565,569,573,30004,30008,30012,30016,621,30036,633,30020,30024,30028,30032,679,683,687,724,728,704,708,712,904,932,828,940,716,956,840,836,988,814,671,720,581,10004,10008,10012,10016,10020,10024,637,1008,1012,1044,1024,1056}
	-- local ID_AO_NGC = {281,282,283,284,285,286,408,409,410,411,412,485,489,493,497,501,503,513,516,520,524,528,532,536,564,568,572,30003,30007,30011,30015,620,30035,632,30019,30023,30027,30031,678,682,686,723,727,703,707,711,903,931,827,939,715,955,839,835,987,813,670,719,580,10003,10007,10011,10015,10019,10023,636,1007,1011,1043,1023,1055}

	local nBody 	= GetBody();
	
	-- for i = 1,10 do
		-- local id = random(1,67)
		-- ---NGC
		if nBody == 3 then
			 AddItem(0,109,1007,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		end
		-- --KN
		if nBody == 4 then
			 AddItem(0,109,1008,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		end
	-- end
end

function nhanngoaitrangNMK_Quan()
	-- local ID_QUAN_KN = {287,288,289,290,291,292,198,199,200,201,202,216,220,224,226,512,517,521,525,529,30004,30008,30012,30016,565,569,573,621,30020,30024,30028,30032,30036,633,679,683,687,724,728,704,708,712,904,932,828,940,716,956,840,836,988,814,671,720,581,10004,10008,10012,10016,10020,10024,637,1008,1012,1044,1024,1056}
	-- local ID_QUAN_NGC = {281,282,283,284,285,286,208,209,210,211,212,215,219,223,225,513,516,520,524,528,30003,30007,30011,30015,564,568,572,620,30019,30023,30027,30031,30035,632,678,682,686,723,727,703,707,711,903,931,827,939,715,955,839,835,987,813,670,719,580,10003,10007,10011,10015,10019,10023,636,1007,1011,1043,1023,1055}

	local nBody 	= GetBody();
	
	-- for i = 1,10 do
		-- local id = random(1,67)
		-- ---NGC
		if nBody == 3 then
			AddItem(0,110,1007,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		end
		-- --KN
		if nBody == 4 then
			AddItem(0,110,1008,1,1,-1,-1,-1,-1,-1,-1,-1,0);
		end
	-- end
end

function nhanthucuoimoi()
--- thu moi
	AddItem(0,105,211,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,212,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,213,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,214,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,215,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,216,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,217,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,218,1,1,7,403,7,-1,7,-1,7,0);
-- hoa sen
	AddItem(0,105,30149,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30150,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30151,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30143,1,1,7,403,7,-1,7,-1,7,0);

	-- long ma
	AddItem(0,105,30148,1,1,7,403,7,-1,7,-1,7,0);
	--lua
	AddItem(0,105,151,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,152,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,153,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,154,1,1,7,403,7,-1,7,-1,7,0);
-- Huou
	AddItem(0,105,10122,1,1,7,403,7,-1,7,-1,7,0);
--ho
	AddItem(0,105,10116,1,1,7,403,7,-1,7,-1,7,0);
-- meo
	AddItem(0,105,30190,1,1,7,403,7,-1,7,-1,7,0);
end

function nhanthucuoimoi_gamer()
--- thu moi
	AddItem(0,105,211,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,212,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,213,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,214,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,215,1,1,7,403,7,-1,7,-1,7,0);
	--lua
	AddItem(0,105,151,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,152,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,153,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,154,1,1,7,403,7,-1,7,-1,7,0);
	-- bach hong
	AddItem(0,105,30176,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30175,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30174,1,1,7,403,7,-1,7,-1,7,0);
--ho
	AddItem(0,105,10116,1,1,7,403,7,-1,7,-1,7,0);
-- Huou
	AddItem(0,105,10122,1,1,7,403,7,-1,7,-1,7,0);


end

function ngocdame()
	local tSay = {
		g_szTitle.."Lùa chän",
		"Thiªn Phong /ngocdame_tienphong",
		"Hiªn Viªn /ngocdame_hienvien",
--		"Thiªn NghÜa /ngocdame_thiennghia",
		"\nRa khái/nothing",
	}
	SelectSay(tSay);
end

function ngocdame_tienphong()
	local nBody 	= GetBody();
	if nBody == 1 then 
		AddItem(0,102,2261,1,1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,2265,1,1,-1,-1,-1,-1,-1,-1,0);
	end
	
	if nBody == 2 then 
		AddItem(0,102,2262,1,1,-1,-1,-1,-1,-1,-1,0);
		AddItem(0,102,2266,1,1,-1,-1,-1,-1,-1,-1,0);
	end
end

function ngocdame_hienvien()
	AddItem(0,102,8805,1,1,3,371,-1,-1,3,331,0);
    AddItem(0,102,8806,1,1,3,371,-1,-1,3,331,0);
	
	AddItem(0,102,8805,1,1,3,371,-1,-1,1,279,0);
    AddItem(0,102,8806,1,1,3,371,-1,-1,1,279,0);
end

function ngocdame_thiennghia()
	AddItem(0,102,3128,1,1,-1,-1,-1,-1,-1,-1,0);
    AddItem(0,102,3131,1,1,-1,-1,-1,-1,-1,-1,0);
	AddItem(0,102,3134,1,1,-1,-1,-1,-1,-1,-1,0);
end

function tuongquan()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,2241,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,2241,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,2241,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,102,3036,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3040,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3044,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==2 then
		AddItem(0,100,2242,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,101,2242,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,103,2242,1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,102,3037,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3041,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3045,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
end

function banhngo()
	AddItem(1,1,1,999);
end

function ttll3()
	AddItem(2,1,30523,999);
	-- AddItem(2,1,30524,999);
	AddItem(2,1,30529,999);
	-- AddItem(2,1,30530,999);
end


g_szTitleMain = "<color=green>Kim xµ 7: <color> Thuéc tÝnh tù chän vµ cao nhÊt"
function Get_kx7()
	local tSay = {
		"Trang bÞ Kim Xµ S¸t Lang - Kh¸ng tÊt c¶/Get_KXSL",
		"Trang bÞ Kim Xµ NhuÖ Nha - Ngo¹i c«ng/Get_KXNN",
		"Trang bÞ Kim Xµ Méng S¸t - Néi c«ng/Get_KXMS",
		"Tho¸t/nothing",
	};
	Say(g_szTitleMain, getn(tSay), tSay);
end

g_szTitle1 = "<color=green>Kim Xµ S¸t Lang: <color>";
function Get_KXSL()
	local tSay = {
		"Kim Xµ S¸t Lang - ¸o Choµng/#SetKXSL_1(152)",
		"Kim Xµ S¸t Lang - Huy Ch­¬ng/#SetKXSL_1(153)",
		"Kim Xµ S¸t Lang - ChiÕn Hµi/#SetKXSL_1(154)",
		"Hñy/nothing",
	};
	
	Say(g_szTitle1, getn(tSay), tSay);
end

function SetKXSL_1(nType)
	local List = {
		[3388] = {"Linh Ho¹t"},
		[3389] = {"Th©n Ph¸p"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle1.."Lùa chän thuéc tÝnh 1", getn(tSay), tSay);
end

function SetKXSL_2(nType,ID1)
	local List = {
		[3401] = {"Néi c«ng"},
		[3402] = {"Søc m¹nh"},
		[3403] = {"G©n cèt"},
		[3404] = {"§iÓm sinh lùc"},
		[3405] = {"Tû lÖ ®iÓm sinh lùc %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle1.."Lùa chän thuéc tÝnh 2", getn(tSay), tSay);
end

function SetKXSL_3(nType,ID1, ID2)
	local List = {
		[3417] = {"B¹o kÝch"},
		[3418] = {"§iÓm ngo¹i c«ng"},
		[3419] = {"§iÓm néi c«ng"},
		[3420] = {"C«ng kÝch"},
		[3421] = {"Kh¸ng tÊt c¶"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle1.."Lùa chän thuéc tÝnh 3", getn(tSay), tSay);
end

function SetKXSL_4(nType,ID1, ID2, ID3)
	local List = {
		[3435] = {"Phßng thñ b¹o kÝch"},
		[3436] = {"Gi¶m s¸t th­¬ng b¹o kÝch"},
		[3437] = {"Hé gi¸p ngo¹i phßng"},
		[3438] = {"Hé gi¸p néi phßng"},
		[3439] = {"Hé gi¸p néi ngo¹i phßng"},
		[3440] = {"§iÓm sinh lùc"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle1.."Lùa chän thuéc tÝnh 4", getn(tSay), tSay);
end

function SetKXSL_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3446] = {"Linh ho¹t"},
		[3447] = {"Th©n ph¸p"},
		[3405] = {"T¨ng tû lÖ ®iÓm sinh lùc"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle1.."Lùa chän thuéc tÝnh 5", getn(tSay), tSay);
end

function SetKXSL_6(nType,ID1, ID2, ID3,ID4,ID5)
	if nType == 154 then
		List = {
			[3482] = {"Tèc ®é ch¹y"},
			[3483] = {"Tèc ®é xuÊt chiªu"},
			[3484] = {"Gi¶m chÞu th­¬ng"},
			[3485] = {"T¨ng chÝ mÖnh"},
			[3486] = {"Kh¸ng tÊt c¶"},
		};
	else
		List = {
			[3468] = {"T¨ng s¸t th­¬ng"},
			[3469] = {"C«ng kÝch kÌm ®éc"},
			[3470] = {"S¸t th­¬ng ®éc trïng"},
			[3460] = {"Tû lÖ kh¸ng tr¹ng th¸i phô"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle1.."Lùa chän thuéc tÝnh 6", getn(tSay), tSay);
end

function SetKXSL_End(nType,ID1,ID2,ID3,ID4,ID5,ID6)
	local pifeng,pIndex = AddItem(0,nType,35,1,1,-1,-1,-1,-1,-1,-1,0,10)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	DelItem(2,1,50005,1);
end


g_szTitle2 = "<color=green>Kim Xµ NhuÖ Nha: <color>";
function Get_KXNN()
	local tSay = {
		"Kim Xµ NhuÖ Nha - ¸o Choµng/#SetKXNN_1(152)",
		"Kim Xµ NhuÖ Nha - Huy Ch­¬ng/#SetKXNN_1(153)",
		"Kim Xµ NhuÖ Nha - ChiÕn Hµi/#SetKXNN_1(154)",
		"Hñy/nothing",
	};
	
	Say(g_szTitle2, getn(tSay), tSay);
end

function SetKXNN_1(nType)
	local List = {
		[3492] = {"Søc m¹nh"},
		[3493] = {"G©n cèt"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle2.."Lùa chän thuéc tÝnh 1", getn(tSay), tSay);
end

function SetKXNN_2(nType,ID1)
	local List = {
		[3505] = {"Néi c«ng"},
		[3506] = {"Th©n ph¸p"},
		[3507] = {"Linh ho¹t"},
		[3508] = {"§iÓm sinh lùc"},
		[3509] = {"Tû lÖ ®iÓm sinh lùc %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle2.."Lùa chän thuéc tÝnh 2", getn(tSay), tSay);
end

function SetKXNN_3(nType,ID1, ID2)
	local List = {
		[3521] = {"B¹o kÝch"},
		[3522] = {"§iÓm ngo¹i c«ng"},
		[3523] = {"§iÓm néi c«ng"},
		[3524] = {"C«ng kÝch"},
		[3525] = {"T¨ng ®iÓm sinh lùc"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle2.."Lùa chän thuéc tÝnh 3", getn(tSay), tSay);
end

function SetKXNN_4(nType,ID1, ID2, ID3)
	local List = {
		[3539] = {"Phßng thñ b¹o kÝch"},
		[3540] = {"Gi¶m s¸t th­¬ng b¹o kÝch"},
		[3541] = {"Hé gi¸p ngo¹i phßng"},
		[3542] = {"Hé gi¸p néi phßng"},
		[3543] = {"Hé gi¸p néi ngo¹i phßng"},
		[3544] = {"§iÓm sinh lùc"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle2.."Lùa chän thuéc tÝnh 4", getn(tSay), tSay);
end

function SetKXNN_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3552] = {"Søc m¹nh"},
		[3553] = {"G©n cèt"},
		[3554] = {"Sinh lùc t¨ng %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle2.."Lùa chän thuéc tÝnh 5", getn(tSay), tSay);
end

function SetKXNN_6(nType,ID1, ID2, ID3,ID4,ID5)

	if nType == 154 then
		List = {
			[3577] = {"Tèc ®é ch¹y"},
			[3578] = {"Tèc ®é xuÊt chiªu"},
			[3579] = {"Gi¶m thä th­¬ng"},
			[3580] = {"T¨ng chÝ mÖnh"},
		};
	else
		List = {
			[3564] = {"Giíi h¹n cao nhÊt ngo¹i c«ng vò khÝ"},
			[3565] = {"Giíi h¹n thÊp nhÊt ngo¹i c«ng vò khÝ"},
			[3566] = {"Tû lÖ ngo¹i c«ng %"},
			[3567] = {"§iÓm tæng c«ng kÝch ngo¹i c«ng"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle2.."Lùa chän thuéc tÝnh 6", getn(tSay), tSay);
end

function SetKXNN_End(nType,ID1,ID2,ID3,ID4,ID5,ID6)
	local pifeng,pIndex = AddItem(0,nType,36,1,1,-1,-1,-1,-1,-1,-1,0,10)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	DelItem(2,1,50005,1);
end


g_szTitle3 = "<color=green>Kim Xµ Méng S¸t: <color>";

function Get_KXMS()
	local tSay = {
		"Kim Xµ Méng S¸t - ¸o Ch­oµng/#SetKXMS_1(152)",
		"Kim Xµ Méng S¸t - Huy Ch­¬ng/#SetKXMS_1(153)",
		"Kim Xµ Méng S¸t - ChiÕn Hµi/#SetKXMS_1(154)",
		"Hñy/nothing",
	};
	
	Say(g_szTitle3, getn(tSay), tSay);
end

function SetKXMS_1(nType)
	local List = {
		[3586] = {"Néi c«ng"},
		[3587] = {"G©n cèt"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle3.."Lùa chän thuéc tÝnh 1", getn(tSay), tSay);
end

function SetKXMS_2(nType,ID1)
	local List = {
		[3599] = {"Søc m¹nh"},
		[3600] = {"Th©n ph¸p"},
		[3601] = {"Linh ho¹t"},
		[3602] = {"§iÓm sinh lùc"},
		[3603] =  {"Tû lÖ ®iÓm sinh lùc %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle3.."Lùa chän thuéc tÝnh 2", getn(tSay), tSay);
end

function SetKXMS_3(nType,ID1, ID2)
	local List = {
		[3615] = {"B¹o kÝch"},
		[3616] = {"§iÓm ngo¹i c«ng"},
		[3617] = {"§iÓm néi c«ng"},
		[3618] = {"C«ng kÝch"},
		[3619] = {"T¨ng ®iÓm sinh lùc"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle3.."Lùa chän thuéc tÝnh 3", getn(tSay), tSay);
end

function SetKXMS_4(nType,ID1, ID2, ID3)
	local List = {
		[3633] = {"Phßng thñ b¹o kÝch"},
		[3634] = {"Gi¶m s¸t th­¬ng b¹o kÝch"},
		[3635] = {"Hé gi¸p ngo¹i phßng"},
		[3636] = {"Hé gi¸p néi phßng"},
		[3637] = {"Hé gi¸p néi ngo¹i phßng"},
		[3638] = {"§iÓm sinh lùc"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle3.."Lùa chän thuéc tÝnh 4", getn(tSay), tSay);
end

function SetKXMS_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3646] = {"Néi c«ng"},
		[3647] = {"Th©n ph¸p"},
		[3648] = {"Linh ho¹t"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle3.."Lùa chän thuéc tÝnh 5", getn(tSay), tSay);
end

function SetKXMS_6(nType,ID1, ID2, ID3,ID4,ID5)

	if nType == 154 then
		List = {
			[3673] = {"Tèc ®é ch¹y"},
			[3674] = {"Tèc ®é xuÊt chiªu"},
			[3675] = {"Gi¶m thä th­¬ng"},
			[3676] = {"T¨ng chÝ mÖnh"},
			[3677] = {"Gi¶m thêi gian thä th­¬ng"},
		};
	else
		List = {
			[3658] = {"Giíi h¹n cao nhÊt néi c«ng vò khÝ"},
			[3659] = {"Giíi h¹n thÊp nhÊt néi c«ng vò khÝ"},
			[3660] = {"T¨ng néi c«ng %"},
			[3661] = {"§iÓm c«ng kÝch néi c«ng"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle3.."Lùa chän thuéc tÝnh 6", getn(tSay), tSay);
end

function SetKXMS_End(nType,ID1,ID2,ID3,ID4,ID5,ID6)
	local pifeng,pIndex = AddItem(0,nType,37,1,1,-1,-1,-1,-1,-1,-1,0,10)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	DelItem(2,1,50005,1);
end

function KX4()
   if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
		return 0;
	end
	for i=26,28 do
    local pifeng,pIndex	=AddItem(0,154,i,1,1,-1,-1,-1,-1,-1,-1,0,10)
    FeedItem(pIndex,1000000)
		local huizhang,hIndex	=AddItem(0,153,i,1,1,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(hIndex,1000000)
		local xie,xIndex	=AddItem(0,152,i,1,1,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(xIndex,1000000)
	end
end

function test()
	local szSay = {
		g_szTitle.."Lùa chän",
		"NhËn Nguyªn LiÖu/nhannl",
		"§æi Event/doiev",
		"Ra khái/nothing",
	};
	SelectSay(szSay);	
end

function doiev()
	AskClientForNumber("VNG_DoiEvent_Kieu1", 1, 999, "So luong (1-999)")
end

function nhannl()
	AddItem(2,1,30051,999);
	AddItem(2,1,30230,999);
end

function VNG_DoiEvent_Kieu1(nCount)
	if GetItemCount(2,1,30051) < (5 * nCount ) or GetItemCount(2,1,30230) < (2 * nCount)  then
		Talk(1, "", "ThiÕu nguyªn liÖu råi ml : 5 Nh¸nh Hoa Mai vs 2 VËt PhÈm Xu!");
		return 0;
	end
	if DelItem(2,1,30051 , 5 * nCount) == 1 and DelItem(2,1,30230, 2 * nCount) == 1 then
		AddItem(2,1,30053, 1*nCount)
	end
end

function showKX()
	local tSay = {
		g_szTitle.."Lùa chän",
		-- "NhËn Th«n NguyÖt lÖnh (KX6)/Get_KimXa",
		"Trang bÞ Kim xµ 4 (ngÉu nhiªn)/showKX4",
		-- "Trang bÞ Kim xµ 5 (ngÉu nhiªn)/showKX5",
		-- "Trang bÞ Kim xµ 6 (ngÉu nhiªn)/showKX6",
		-- "Trang bÞ Kim xµ 7 (ngÉu nhiªn)/showKX7",
	}
	tinsert(tSay,"Ra khái/nothing");
	SelectSay(tSay);	
end;

function getRandomKX4(nSet)
	KXDH = {
		[1] = {
			[1056] = "Linh ho¹t B",
			[1057] = "Th©n ph¸p B",
		},
		[2] = {
			[1069] = "Søc m¹nh B",
			[1070] = "G©n cèt B",
			[1071] = "Néi c«ng B",
			[1072] = "Sinh lùc B",
			[1073] = "Tû lÖ sinh lùc B",
		},
		[3] = {
			[1079] = "Linh ho¹t B",
			[1080] = "Th©n ph¸p B",
		},
		[4] = {
			[1] = {
				[1092] = "Ph¶n ®ßn ngo¹i c«ng/1%B",
				[1093] = "Ph¶n ®ßn néi c«ng/1%B",
				[1094] = "T¨ng s¸t th­¬ng/1B",
				[1095] = "KÌm theo ®éc s¸t/1B",
				[1096] = "T¨ng s¸t th­¬ng cæ ®éc/1B",
			},
			[2] = {
				[1108] = "Ph¶n ®ßn ngo¹i c«ng/1%B",
				[1109] = "Ph¶n ®ßn néi c«ng/1%B",
				[1110] = "T¨ng s¸t th­¬ng/1B",
				[1111] = "KÌm theo ®éc s¸t/1B",
				[1112] = "T¨ng s¸t th­¬ng cæ ®éc/1B",
			},
			[3] = {
				[1123] = "T¨ng tèc ®é xuÊt chiªu/1%B",
				[1124] = "Kh¸ng tÊt c¶ B",
				[1125] = "T¨ng chÝ mÖnh/1%B",
			}
		}
	}
	
	KXTH = {
		[1] = {
			[1129] = "Søc m¹nh B",
		},
		[2] = {
			[1143] = "Linh ho¹t B",
			[1144] = "Th©n ph¸p B",
			[1145] = "G©n cèt B",
			[1146] = "Néi c«ng B",
			[1147] = "Sinh lùc B",
			[1148] = "Tû lÖ sinh lùc B",
		},
		[3] = {
			[1156] = "Søc m¹nh B",
			[1157] = "G©n cèt B",
			[1158] = "Sinh lùc %B",
		},
		[4] = {
			[1] = {
				[1168] = "Ph¶n ®ßn ngo¹i c«ng/1B",
				[1169] = "Ph¶n ®ßn néi c«ng/1B",
				[1170] = "T¨ng ngo¹i c«ng/1%B",
				[1171] = "Tæng c«ng kÝch ngo¹i c«ng/1B",
			},
			[2] = {
				[1181] = "Ph¶n ®ßn ngo¹i c«ng/1B",
				[1182] = "Ph¶n ®ßn néi c«ng/1B",
				[1183] = "T¨ng ngo¹i c«ng/1%B",
				[1184] = "Tæng c«ng kÝch ngo¹i c«ng/1B",
			},
			[3] = {
				[1194] = "Tèc ®é di chuyÓn/1%B",
				[1195] = "T¨ng tèc ®é xuÊt chiªu/1%B",
				[1196] = "Hót sinh lùc B",
				[1197] = "Gi¶m thä th­¬ng/1%B",
			}
		}
	}
	
	KXVD = {
		[1] = {
			[1201] = "Néi c«ng B",
		},
		[2] = {
			[1213] = "Linh ho¹t B",
			[1214] = "Th©n ph¸p B",
			[1215] = "G©n cèt B",
			[1216] = "Sinh lùc B",
			[1217] = "Tû lÖ sinh lùc B",
		},
		[3] = {
			[1225] = "Linh ho¹t B",
			[1226] = "Th©n ph¸p B",
			[1227] = "Néi c«ng B",
		},
		[4] = {
			[1] = {
				[1237] = "T¨ng néi c«ng/1%B",
				[1238] = "Tæng c«ng kÝch néi c«ng/1B",
				[1239] = "Néi c«ng lín nhÊt trªn vò khÝ t¨ng/1B",
				[1240] = "Néi c«ng nhá nhÊt trªn vò khÝ t¨ng/1B",
			},
			[2] = {
				[1250] = "T¨ng néi c«ng/1%B",
				[1251] = "Tæng c«ng kÝch néi c«ng/1B",
				[1252] = "Néi c«ng lín nhÊt trªn vò khÝ t¨ng/1B",
				[1253] = "Néi c«ng nhá nhÊt trªn vò khÝ t¨ng/1B",
			},
			[3] = {
				[1263] = "Tèc ®é di chuyÓn/1%B",
				[1264] = "T¨ng tèc ®é xuÊt chiªu/1%B",
				[1265] = "Gi¶m thä th­¬ng/1%B",
				[1266] = "T¨ng chÝ mÖnh/1%B",
			}
		}
	}
	
	local tSet = {};
	if nSet == 26 then tSet = KXDH
	elseif nSet == 27 then tSet = KXTH
	elseif nSet == 28 then tSet = KXVD end;
	
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("NhËn kim xµ thµnh c«ng!");
	end;
end;

function getRandomKX5(nSet)
	KXHC = {
		[1] = {
			[1955] = "Linh ho¹t - Vµng",
			[1956] = "Th©n ph¸p - Vµng",
		},
		[2] = {
			[1973] = "Néi c«ng - Vµng",
			[1974] = "Søc m¹nh - Vµng",
			[1975] = "C¨n cèt - Vµng",
			[1976] = "T¨ng ®iÓm sinh lùc - Vµng",
			[1977] = "T¨ng tû lÖ ®iÓm sinh lùc - Vµng",
		},
		[3] = {
			[1997] = "B¹o kÝch - Vµng",
			[1999] = "T¨ng ®iÓm sè ngo¹i c«ng - Vµng",
			[2000] = "T¨ng ®iÓm sè néi c«ng - Vµng",
			[2001] = "T¨ng ®iÓm sè néi ngo¹i - Vµng",
			[2002] = "Toµn thuéc tÝnh - Vµng",
		},
		[4] = {
			[2022] = "Phßng béc - Vµng",
			[2023] = "Gi¶m béc - Vµng",
			[2024] = "Hé gi¸p ngo¹i phßng - Vµng",
			[2025] = "Hé gi¸p néi phßng - Vµng",
			[2026] = "Hé gi¸p néi ngo¹i phßng - Vµng",
			[2027] = "§iÓm sinh lùc - Vµng",
		},
		[5] = {
			[2035] = "Linh ho¹t - Vµng",
			[2036] = "Th©n ph¸p - Vµng",
		},
		[6] = {
			[1] = {
				[2055] = "T¨ng s¸t th­¬ng - Vµng",
				[2056] = "C«ng kÝch kÌm ®éc - Vµng",
				[2057] = "S¸t th­¬ng ®éc trïng - Vµng",
			},
			[2] = {
				[2074] = "Tèc ®é ch¹y - Vµng",
				[2075] = "Ph¸t huy Vâ c«ng - Vµng",
				[2076] = "Gi¶m nöa chÞu th­¬ng - Vµng",
				[2077] = "X¸c suÊt chuÈn x¸c - Vµng",
				[2078] = "Toµn thuéc tÝnh - Vµng",
			}
		}
	}
	
	KXQP = {
		[1] = {
			[2086] = "Søc m¹nh - Vµng",
			[2087] = "C¨n cèt - Vµng",
		},
		[2] = {
			[2104] = "Néi c«ng - Vµng",
			[2105] = "Th©n ph¸p - Vµng",
			[2106] = "Linh ho¹t - Vµng",
			[2107] = "§iÓm sinh lùc - Vµng",
			[2108] = "Tû lÖ ®iÓm sinh lùc - Vµng",
		},
		[3] = {
			[2128] = "B¹o kÝch - Vµng",
			[2130] = "§iÓm ngo¹i c«ng - Vµng",
			[2131] = "§iÓm néi c«ng - Vµng",
			[2132] = "§iÓm néi ngo¹i c«ng - Vµng",
			[2133] = "T¨ng ®iÓm sinh lùc - Vµng",
		},
		[4] = {
			[2153] = "Phßng béc - Vµng",
			[2154] = "Gi¶m béc - Vµng",
			[2155] = "Hé gi¸p ngo¹i phßng - Vµng",
			[2156] = "Hé gi¸p néi phßng - Vµng",
			[2157] = "Hé gi¸p néi ngo¹i phßng - Vµng",
			[2158] = "§iÓm sinh lùc - Vµng",
		},
		[5] = {
			[2169] = "Søc m¹nh - Vµng",
			[2170] = "C¨n cèt - Vµng",
			[2171] = "T¨ng tû lÖ ®iÓm sinh lùc - Vµng",
		},
		[6] = {
			[1] = {
				[2193] = "Giíi h¹n cao nhÊt ngo¹i c«ng vò khÝ - vµng ",
				[2194] = "Giíi h¹n thÊp nhÊt ngo¹i c«ng vò khÝ - Vµng",
				[2195] = "Tû lÖ ngo¹i c«ng - Vµng",
				[2196] = "§iÓm tæng c«ng kÝch ngo¹i c«ng - Vµng",
			},
			[2] = {
				[2213] = "Tèc ®é ch¹y - Vµng",
				[2214] = "Ph¸t huy Vâ c«ng - Vµng",
				[2215] = "Gi¶m nöa chÞu th­¬ng - Vµng",
				[2216] = "X¸c suÊt chuÈn x¸c - Vµng",
			}
		}
	}
	
	KXDV = {
		[1] = {
			[2225] = "Néi c«ng - Vµng",
			[2226] = "C¨n cèt - Vµng",
		},
		[2] = {
			[2243] = "Søc m¹nh - Vµng",
			[2244] = "Th©n ph¸p - Vµng",
			[2245] = "Linh ho¹t - Vµng",
			[2246] = "§iÓm sinh lùc - Vµng",
			[2247] = "Tû lÖ ®iÓm sinh lùc - Vµng",
		},
		[3] = {
			[2267] = "B¹o kÝch - Vµng",
			[2269] = "§iÓm ngo¹i c«ng - Vµng",
			[2270] = "§iÓm néi c«ng - Vµng",
			[2271] = "§iÓm néi ngo¹i c«ng - Vµng",
			[2272] = "T¨ng ®iÓm sinh lùc - Vµng",
		},
		[4] = {
			[2292] = "Phßng béc - Vµng",
			[2293] = "Gi¶m béc - Vµng",
			[2294] = "Hé gi¸p ngo¹i phßng - Vµng",
			[2295] = "Hé gi¸p néi phßng - Vµng",
			[2296] = "Hé gi¸p néi ngo¹i phßng - Vµng",
			[2297] = "§iÓm sinh lùc - Vµng",
		},
		[5] = {
			[2308] = "Néi c«ng - Vµng",
			[2309] = "Th©n ph¸p - Vµng",
			[2310] = "Linh ho¹t - Vµng",
		},
		[6] = {
			[1] = {
				[2332] = "Giíi h¹n cao nhÊt néi c«ng vò khÝ - Vµng",
				[2333] = "Giíi h¹n thÊp nhÊt néi c«ng vò khÝ - Vµng",
				[2334] = "Tû lÖ néi c«ng-vµng",
				[2335] = "§iÓm tæng c«ng kÝch néi c«ng- vµng",
			},
			[2] = {
				[2352] = "Tèc ®é ch¹y - Vµng",
				[2353] = "Ph¸t huy Vâ c«ng - Vµng",
				[2354] = "Gi¶m nöa chÞu th­¬ng - Vµng",
				[2355] = "X¸c suÊt chuÈn x¸c - Vµng",
				[2356] = "Rót ng¾n ®éng t¸c bÞ th­¬ng- Vµng",
			}
		}
	}

	local tSet = {};
	if nSet == 29 then tSet = KXHC
	elseif nSet == 30 then tSet = KXQP
	elseif nSet == 31 then tSet = KXDV end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("NhËn kim xµ thµnh c«ng!");
	end;

end;

function getRandomKX6(nSet)
	KXDG = {
		[1] = {
			[2618] = {"Søc m¹nh"},
			[2619] = {"G©n cèt"},
		},
		[2] = {
			[2631] = {"Néi c«ng"},
			[2632] = {"Th©n ph¸p"},
			[2633] = {"Linh ho¹t"},
			[2634] = {"§iÓm sinh lùc"},
			[2635] = {"Tû lÖ ®iÓm sinh lùc"},
		},
		[3] = {
			[2647] = {"B¹o kÝch"},
			[2648] = {"§iÓm ngo¹i c«ng"},
			[2649] = {"§iÓm néi c«ng"},
			[2650] = {"§iÓm néi ngo¹i c«ng"},
			[2651] = {"T¨ng ®iÓm sinh lùc"},
		},
		[4] = {
			[2665] = {"Phßng béc"},
			[2666] = {"Gi¶m béc"},
			[2667] = {"Hé gi¸p ngo¹i phßng"},
			[2668] = {"Hé gi¸p néi phßng"},
			[2669] = {"Hé gi¸p néi ngo¹i phßng"},
			[2670] = {"§iÓm sinh lùc"},
		},
		[5] =  {
			[2678] = {"Søc m¹nh"},
			[2679] = {"G©n cèt"},
			[2680] = {"T¨ng tû lÖ ®iÓm sinh lùc"},
		},
		[6] = {
			[1] = { -- ¸o choµng vµ huy ch­¬ng
				[2690] = {"Giíi h¹n cao nhÊt ngo¹i c«ng vò khÝ"},
				[2691] = {"Giíi h¹n thÊp nhÊt ngo¹i c«ng vò khÝ"},
				[2692] = {"Tû lÖ ngo¹i c«ng"},
				[2693] = {"§iÓm tæng c«ng kÝch ngo¹i c«ng"},
			},
			[2] = { -- Giµy (154)
				[2703] = {"Tèc ®é ch¹y"},
				[2704] = {"Ph¸t huy vâ c«ng"},
				[2705] = {"Gi¶m nöa thä th­¬ng"},
				[2706] = {"X¸c suÊt chuÈn x¸c"},
			}
		}
	}
	
	KXHL = {
		[1] = {
			[2514] = {"Linh ho¹t"},
			[2515] = {"Th©n Ph¸p"},
		},
		[2] = {
			[2527] = {"Néi c«ng"},
			[2528] = {"Søc m¹nh"},
			[2529] = {"G©n cèt"},
			[2530] = {"§iÓm sinh lùc"},
			[2531] = {"Tû lÖ ®iÓm sinh lùc"},
		},
		[3] = {
			[2543] = {"B¹o kÝch"},
			[2544] = {"§iÓm ngo¹i c«ng"},
			[2545] = {"§iÓm néi c«ng"},
			[2546] = {"§iÓm néi ngo¹i c«ng"},
			[2547] = {"T¨ng ®iÓm sinh lùc"},
		},
		[4] = {
			[2561] = {"Phßng béc"},
			[2562] = {"Gi¶m béc"},
			[2563] = {"Hé gi¸p ngo¹i phßng"},
			[2564] = {"Hé gi¸p néi phßng"},
			[2565] = {"Hé gi¸p néi ngo¹i phßng"},
			[2566] = {"§iÓm sinh mÖnh"},
		},
		[5] = {
			[2572] = {"Linh ho¹t"},
			[2573] = {"Th©n ph¸p"},
		},
		[6] = {
			[1] = {
				[2583] = {"T¨ng s¸t th­¬ng"},
				[2584] = {"C«ng kÝch kÌm ®éc"},
				[2585] = {"S¸t th­¬ng ®éc trïng"},
				[2586] = {"Tû lÖ kh¸ng tr¹ng th¸i bÊt th­êng"},
			},
			[2] = {
				[2608] = {"Tèc ®é ch¹y"},
				[2609] = {"Ph¸t huy Vâ c«ng"},
				[2610] = {"Gi¶m nöa chÞu th­¬ng"},
				[2611] = {"X¸c suÊt chuÈn x¸c"},
				[2612] = {"Toµn thuéc tÝnh"},
			}
		}
	}
	
	KXKP = {
		[1] = {
			[2712] = {"Néi c«ng"},
			[2713] = {"G©n cèt"},
		},
		[2] = {
			[2725] = {"Søc m¹nh"},
			[2726] = {"Th©n ph¸p"},
			[2727] = {"Linh ho¹t"},
			[2728] = {"§iÓm sinh lùc"},
			[2729] =  {"Tû lÖ ®iÓm sinh lùc"},
		},
		[3] = {
			[2741] = {"B¹o kÝch"},
			[2742] = {"§iÓm ngo¹i c«ng"},
			[2743] = {"§iÓm néi c«ng"},
			[2744] = {"§iÓm néi ngo¹i c«ng"},
			[2745] = {"T¨ng ®iÓm sinh lùc"},
		},
		[4] = {
			[2759] = {"Phßng béc"},
			[2760] = {"Gi¶m béc"},
			[2761] = {"Hé gi¸p ngo¹i phßng"},
			[2762] = {"Hé gi¸p néi phßng"},
			[2763] = {"Hé gi¸p néi ngo¹i phßng"},
			[2764] = {"§iÓm sinh lùc"},
		},
		[5] = {
			[2772] = {"Néi c«ng"},
			[2773] = {"Th©n ph¸p"},
			[2774] = {"Linh ho¹t"},
		},
		[6] = {
			[1] = {
				[2784] = {"Giíi h¹n cao nhÊt néi c«ng vò khÝ"},
				[2785] = {"Giíi h¹n thÊp nhÊt néi c«ng vò khÝ"},
				[2786] = {"T¨ng néi c«ng"},
				[2787] = {"§iÓm c«ng kÝch néi c«ng"},
			},
			[2] = {
				[2803] = {"Rót ng¾n thêi gian thä th­¬ng"},
				[2799] = {"Tèc ®é ch¹y"},
				[2800] = {"Ph¸t huy vâ c«ng"},
				[2801] = {"Gi¶m nöa thä th­¬ng"},
				[2802] = {"X¸c suÊt chuÈn x¸c"},
			}
		}
	}

	local tSet = {};
	if nSet == 32 then tSet = KXHL
	elseif nSet == 33 then tSet = KXDG
	elseif nSet == 34 then tSet = KXKP end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("NhËn kim xµ thµnh c«ng!");
	end;
end


function getRandomKX7(nSet)
	
	KXSL = {
		[1] = {
			[3388]="Linh ho¹t",
			[3389]="Th©n ph¸p",
		},
		[2] = {
			[3401] = "Néi c«ng",
			[3402] = "Søc m¹nh",
			[3403] = "C¨n cèt",
			[3404] = "T¨ng ®iÓm sinh lùc",
			[3405] = "T¨ng tû lÖ ®iÓm sinh lùc",
		},
		[3] = {
			[3417] = "B¹o kÝch",
			[3418] = "T¨ng ®iÓm sè ngo¹i c«ng",
			[3419] = "T¨ng ®iÓm sè néi c«ng",
			[3420] = "T¨ng ®iÓm sè néi ngo¹i",
			[3421] = "Toµn thuéc tÝnh",
		},
		[4] = {
			[3435] = "Phßng béc",
			[3436] = "Gi¶m béc",
			[3437] = "Hé gi¸p ngo¹i phßng",
			[3438] = "Hé gi¸p néi phßng",
			[3439] = "Hé gi¸p néi ngo¹i phßng",
			[3440] = "§iÓm sinh lùc",
		},
		[5] = {
			[3446] = "Linh ho¹t",
			[3447] = "Th©n ph¸p",
		},
		[6] = {
			[1] = {
				[3457] = "T¨ng s¸t th­¬ng",
				[3458] = "C«ng kÝch kÌm ®éc",
				[3459] = "S¸t th­¬ng ®éc trïng",
			},
			[2] = {
				[3468] = "T¨ng s¸t th­¬ng",
				[3469] = "C«ng kÝch kÌm ®éc",
				[3470] = "S¸t th­¬ng ®éc trïng",
			},
			[3] = {
				[3482] = "Tèc ®é ch¹y",
				[3483] = "Ph¸t huy Vâ c«ng",
				[3484] = "Gi¶m nöa chÞu th­¬ng",
				[3485] = "X¸c suÊt chuÈn x¸c",
				[3486] = "Toµn thuéc tÝnh",
			}
		}
	}

	KXNN = {
		[1] = {
			[3492] = "Søc m¹nh",
			[3493] = "C¨n cèt",
		},
		[2] = {
			[3505] = "Néi c«ng",
			[3506] = "Th©n ph¸p",
			[3507] = "Linh ho¹t",
			[3508] = "§iÓm sinh lùc",
			[3509] = "Tû lÖ ®iÓm sinh lùc",
		},
		[3] = {
			[3521] = "B¹o kÝch",
			[3522] = "§iÓm ngo¹i c«ng",
			[3523] = "§iÓm néi c«ng",
			[3524] = "§iÓm néi ngo¹i c«ng",
			[3525] = "T¨ng ®iÓm sinh lùc",
		},
		[4] = {
			[3539] = "Phßng béc",
			[3540] = "Gi¶m béc",
			[3541] = "Hé gi¸p ngo¹i phßng",
			[3542] = "Hé gi¸p néi phßng",
			[3543] = "Hé gi¸p néi ngo¹i phßng",
			[3544] = "§iÓm sinh lùc",
		},
		[5] = {
			[3552] = "Søc m¹nh",
			[3553] = "C¨n cèt",
			[3554] = "T¨ng tû lÖ ®iÓm sinh lùc",
		},
		[6] = {
			[1] = {
				[3564] = "Giíi h¹n cao nhÊt ngo¹i c«ng vò khÝ ",
				[3565] = "Giíi h¹n thÊp nhÊt ngo¹i c«ng vò khÝ",
				[3566] = "Tû lÖ ngo¹i c«ng",
				[3567] = "§iÓm tæng c«ng kÝch ngo¹i c«ng",
			},
			[2] = {
				[3577] = "Tèc ®é ch¹y",
				[3578] = "Ph¸t huy Vâ c«ng",
				[3579] = "Gi¶m nöa chÞu th­¬ng",
				[3580] = "X¸c suÊt chuÈn x¸c",
			}
		}
	}
			
	KXMS = {
		[1] = {
			[3586] = "Néi c«ng",
			[3587] = "C¨n cèt",
		},
		[2] = {
			[3599] = "Søc m¹nh",
			[3600] = "Th©n ph¸p",
			[3601] = "Linh ho¹t",
			[3602] = "§iÓm sinh lùc",
			[3603] = "Tû lÖ ®iÓm sinh lùc",
		},
		[3] = {
			[3615] = "B¹o kÝch",
			[3616] = "§iÓm ngo¹i c«ng",
			[3617] = "§iÓm néi c«ng",
			[3618] = "§iÓm néi ngo¹i c«ng",
			[3619] = "T¨ng ®iÓm sinh lùc",
		},
		[4] = {
			[3633] = "Phßng béc",
			[3634] = "Gi¶m béc",
			[3635] = "Hé gi¸p ngo¹i phßng",
			[3636] = "Hé gi¸p néi phßng",
			[3637] = "Hé gi¸p néi ngo¹i phßng",
			[3638] = "§iÓm sinh lùc",
		},
		[5] = {
			[3646] = "Néi c«ng",
			[3647] = "Th©n ph¸p",
			[3648] = "Linh ho¹t",
		},
		[6] = {
			[1] = {
				[3658] = "Giíi h¹n cao nhÊt néi c«ng vò khÝ",
				[3659] = "Giíi h¹n thÊp nhÊt néi c«ng vò khÝ",
				[3660] = "Tû lÖ néi c«ng-vµng",
				[3661] = "§iÓm tæng c«ng kÝch néi c«ng- vµng",
			},
			[2] = {
				[3673] = "Tèc ®é ch¹y",
				[3674] = "Ph¸t huy Vâ c«ng",
				[3675] = "Gi¶m nöa chÞu th­¬ng",
				[3676] = "X¸c suÊt chuÈn x¸c",
				[3677] = "Rót ng¾n ®éng t¸c bÞ th­¬ng- Vµng",
			}
		}
	}
	local tSet = {};
	if nSet == 35 then tSet = KXSL
	elseif nSet == 36 then tSet = KXNN
	elseif nSet == 37 then tSet = KXMS end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("NhËn kim xµ thµnh c«ng!");
	end;
end;



function showKX7()
	tSay = {
		"S¸t Lang/#getRandomKX7(35)",
		"NhuÖ Nha/#getRandomKX7(36)",
		"Méng S¸t/#getRandomKX7(37)",
	}
	tinsert(tSay,"Ch­a muèn nhËn/nothing");
	Say("Chän lo¹i kim xµ",getn(tSay),tSay);
end;

function showKX6()
	tSay = {
		"Hoan L¨ng/#getRandomKX6(32)",
		"§»ng Giao/#getRandomKX6(33)",
		"Khëi Ph­îng/#getRandomKX6(34)",
	}
	tinsert(tSay,"Ch­a muèn nhËn/nothing");
	Say("Chän lo¹i kim xµ",getn(tSay),tSay);
end;

function showKX5()
	tSay = {
		"HiÖp cèt/#getRandomKX5(29)",
		"Quû phï/#getRandomKX5(30)",
		"§»ng v©n/#getRandomKX5(31)",
	}
	tinsert(tSay,"Ch­a muèn nhËn/nothing");
	Say("Chän lo¹i kim xµ",getn(tSay),tSay);
end;


function showKX4()
	tSay = {
		"Du hiÖp/#getRandomKX4(26)",
		"ThiÕt huyÕt/#getRandomKX4(27)",
		"V©n du/#getRandomKX4(28)",
	}
	tinsert(tSay,"Ch­a muèn nhËn/nothing");
	Say("Chän lo¹i kim xµ",getn(tSay),tSay);
end;

function addSetofKX(tSet, nSet)
	local r1,r2,r3,r4,r5,r6;
	-- Add Phi phong
	r1,r2,r3,r4,r5,r6 = getIndexs(tSet,1);
	AddKX(152,nSet,r1,r2,r3,r4,r5,r6);
	-- Add Huy ch­¬ng
	r1,r2,r3,r4,r5,r6 = getIndexs(tSet,2);
	AddKX(153,nSet,r1,r2,r3,r4,r5,r6);
	-- Add ChiÕn hµi
	r1,r2,r3,r4,r5,r6 = getIndexs(tSet,3);
	AddKX(154,nSet,r1,r2,r3,r4,r5,r6);
	return 1;
end

function getIndexs(tList,nPos)
	local tSubList = {}
	local nListLen = getn(tList);
	
	if nPos == 1 then
		tSubList = tList[nListLen][1];
	elseif nPos == 2 then
		if getn(tList[nListLen]) == 3 then
			tSubList = tList[nListLen][2];
		else
			tSubList = tList[nListLen][1];
		end
	elseif nPos == 3 then
		if getn(tList[nListLen]) == 3 then 
			tSubList = tList[nListLen][3];
		else
			tSubList = tList[nListLen][2];
		end
	end
	
	local r1,r2,r3,r4,r5,r6;
	if nListLen == 6 then 			
		r1 = getRandomIndex(tList[1]);
		r2 = getRandomIndex(tList[2]);
		r3 = getRandomIndex(tList[3]);
		r4 = getRandomIndex(tList[4]);
		r5 = getRandomIndex(tList[5]);
		r6 = getRandomIndex(tSubList);
		-- print(r1,r2,r3,r4,r5,r6);
	elseif nListLen == 4 then 
		r1 = getRandomIndex(tList[1]);
		r2 = getRandomIndex(tList[2]);
		r3 = getRandomIndex(tList[3]);
		r4 = getRandomIndex(tSubList);
	end
		
	return r1,r2,r3,r4,r5,r6;
end;

function getRandomIndex(tList)
	local nIndexResult = -1;
	if tList == nil then 
		return 0
	end
	local nRandNum = random(tlen(tList));
	local i = 0;
	for k,v in tList do 
		i = i+1;
		if i == nRandNum then
			nIndexResult = k;
			break
		end
	end
	return nIndexResult;
end;

function tlen(tList)
	local i = 0;
	for k,v in tList do 
		i = i+1;
	end
	return i;
end;

function AddKX(nType,nSet,ID1,ID2,ID3,ID4,ID5,ID6)
	local nResult,nItemIndex = AddItem(0,nType,nSet,1,4,-1,-1,-1,-1,-1,-1,0,10)
    FeedItem(nItemIndex,1000000)
	if ID5 ~= nil and ID6 ~= nil then 
		SetItemFeedUpAttrs(nItemIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	else
		SetItemFeedUpAttrs(nItemIndex,ID1,ID2,0,ID3,0,ID4);
	end
end


function tmkl()
	AddItem(2,1,30370,10);
	AddItem(2,95,204,10);
end

function NhanBua()
	AddItem(2,1,30424,1);
	AddItem(2,1,30425,1);
	AddItem(2,1,30426,1);
end

function hieudothong()
	AddItem(2,1,9988,1);
	AddItem(2,1,9987,1);
end

function hkdnp()
	AddItem(2,1,30490,5);
end

function que8w()
	for i = 469,476 do
		AddItem(2,1,i,100);
	end
end

function ngoaitrangnew()
	local id = 108 ; 
	local szSay = {
		g_szTitle.."Ng­¬i muèn lÊy bé  g×?",
		"ID-1  /#ngoaitrangnew_amhon(680)",
		"ID-2  /#ngoaitrangnew_amhon(684)",
		"ID-3  /#ngoaitrangnew_amhon(721)",
		"ID-4  /#ngoaitrangnew_amhon(725)",
		"ID-5  /#ngoaitrangnew_amhon(701)",
		"ID-6  /#ngoaitrangnew_amhon(705)",
		"ID-7  /#ngoaitrangnew_amhon(709)",
		"ID-8  /#ngoaitrangnew_amhon(901)",
		"ID-9  /#ngoaitrangnew_amhon(929)",
		"ID-10/#ngoaitrangnew_amhon(622)",
		"ID-11/#ngoaitrangnew_amhon(825)",
		"ID-12/#ngoaitrangnew_amhon(937)",
		"ID-13/#ngoaitrangnew_amhon(713)",
		"ID-14/#ngoaitrangnew_amhon(953)",
		"ID-15/#ngoaitrangnew_amhon(837)",
		"ID-16/#ngoaitrangnew_amhon(833)",
		"ID-17/#ngoaitrangnew_amhon(985)",
		"ID-18/#ngoaitrangnew_amhon(811)",
		"ID-19/#ngoaitrangnew_amhon(668)",
		"ID-10/#ngoaitrangnew_amhon(717)",
		"ID-21/#ngoaitrangnew_amhon(578)",
		"ID-22/#ngoaitrangnew_amhon(10001)",
		"ID-23/#ngoaitrangnew_amhon(10005)",
		"ID-24/#ngoaitrangnew_amhon(10009)",
		"ID-25/#ngoaitrangnew_amhon(10013)",
		"ID-26/#ngoaitrangnew_amhon(10017)",
		"ID-27/#ngoaitrangnew_amhon(10021)",
		"ID-28/#ngoaitrangnew_amhon(634)",
		"ID-29/#ngoaitrangnew_amhon(1005)",
		"ID-30/#ngoaitrangnew_amhon(1009)",
		"ID-31/#ngoaitrangnew_amhon(1041)",
		"ID-32/#ngoaitrangnew_amhon(1021)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end

function ngoaitrangnew_amhon(id)
	local nBody 	= GetBody();
	if  nBody  ==  1 then
		AddItem(0,108,id,1);
		AddItem(0,109,id,1);
		AddItem(0,110,id,1);
	end
	if  nBody  ==  2 then
		AddItem(0,108,id+1,1);
		AddItem(0,109,id+1,1);
		AddItem(0,110,id+1,1);
	end
	if  nBody  ==  3 then
		AddItem(0,108,id+2,1);
		AddItem(0,109,id+2,1);
		AddItem(0,110,id+2,1);
	end
	if  nBody  ==  4 then
		AddItem(0,108,id+3,1);
		AddItem(0,109,id+3,1);
		AddItem(0,110,id+3,1);
	end
end

function dongtienvang()
	AddItem(2,130094,1);
end




---------test trang bi CT -------
function GetCT()
    local szSay = {
        g_szTitle.."Lùa chän",
        "NhËn trang bÞ Háa Phông/Get_CT_HP",
        "NhËn trang bÞ Thanh Long/Get_CT_TL",
        "NhËn trang bÞ Uy Hæ/Get_CT_UH",
        "Ra khái/nothing",
    };
    SelectSay(szSay);    
end


--Trang bi UY HO
function Get_CT_UH()
    local szSay = {
        g_szTitle.."Lùa chän trang bÞ",
        "Trang phôc Uy Hæ T*íng Phe Tèng/#Get_TP_CT_UH(1,1)",
        "Trang phôc Uy Hæ So¸i Phe Tèng/#Get_TP_CT_UH(1,2)",
        "Trang phôc Uy Hæ T*íng Phe Liªu/#Get_TP_CT_UH(2,1)",
        "Trang phôc Uy Hæ So¸i Phe Liªu/#Get_TP_CT_UH(2,2)",
        "Ra khái/nothing",
    };
    SelectSay(szSay);
end


--Trang bi THANH LONG
function Get_CT_TL()
    local szSay = {
        g_szTitle.."Lùa chän trang bÞ",
        "Trang phôc Thanh Long T*íng Phe Tèng/#Get_TP_CT_TL(1,1)",
        "Trang phôc Thanh Long So¸i Phe Tèng/#Get_TP_CT_TL(1,2)",
        "Trang phôc Thanh Long T*íng Phe Liªu/#Get_TP_CT_TL(2,1)",
        "Trang phôc Thanh Long So¸i Phe Liªu/#Get_TP_CT_TL(2,2)",
        "Ra khái/nothing",
    };
    SelectSay(szSay);
end


--Trang bi Hoa Phung
function Get_CT_HP()
    local szSay = {
        g_szTitle.."Lùa chän trang bÞ",
        "Trang phôc Háa Phông T*íng Phe Tèng/#Get_TP_CT_HP(1,1)",
        "Trang phôc Háa Phông So¸i Phe Tèng/#Get_TP_CT_HP(1,2)",
        "Trang phôc Háa Phông T*íng Phe Liªu/#Get_TP_CT_HP(2,1)",
        "Trang phôc Háa Phông So¸i Phe Liªu/#Get_TP_CT_HP(2,2)",
        "Ra khái/nothing",
    };
    SelectSay(szSay);
end


--GET
function Get_TP_CT_UH(nPhe, nQH)
        if nPhe == 1 and nQH == 1 then
            local ID1 = 20556 --TP
            local ID2 = 10196 --NB
            local ID3 = 20556 --VK
            GetCTEnd(ID1, ID2, ID3, nQH);
        elseif nPhe == 1 and nQH == 2 then
            local ID1 = 20620 --TP
            local ID2 = 10388 --NB
            local ID3 = 20620 --VK
            GetCTEnd(ID1, ID2, ID3, nQH);
        elseif nPhe == 2 and nQH == 1 then
            local ID1 = 20684 --TP
            local ID2 = 10644 --NB
            local ID3 = 20684 --VK
            GetCTEnd(ID1, ID2, ID3, nQH);
        elseif nPhe == 2 and nQH == 2 then
            local ID1 = 20748 --TP
            local ID2 = 10836 --NB
            local ID3 = 20748 --VK
            GetCTEnd(ID1, ID2, ID3, nQH);
        end
end


function Get_TP_CT_TL(nPhe, nQH)
    if nPhe == 1 and nQH == 1 then
        local ID1 = 20300 --TP
        local ID2 = 9300 --NB
        local ID3 = 20300 --VK
        GetCTEnd(ID1, ID2, ID3, nQH);
    elseif nPhe == 1 and nQH == 2 then
        local ID1 = 20364 --TP
        local ID2 = 9492 --NB
        local ID3 = 20364 --VK
        GetCTEnd(ID1, ID2, ID3, nQH);
    elseif nPhe ==2  and nQH == 1 then
        local ID1 = 20428 --TP
        local ID2 = 9748 --NB
        local ID3 = 20428 --VK
        GetCTEnd(ID1, ID2, ID3, nQH);
    elseif nPhe == 2 and nQH == 2 then
        local ID1 = 20492 --TP
        local ID2 = 9940 --NB
        local ID3 = 20492 --VK
        GetCTEnd(ID1, ID2, ID3, nQH);
    end
end


function Get_TP_CT_HP(nPhe, nQH)
    if nPhe == 1 and nQH == 1 then
        local ID1 = 30311 --TP
        local ID2 = 30228 --NB
        local ID3 = 30328 --VK
        GetCTEnd(ID1, ID2, ID3, nQH);
    elseif nPhe == 1 and nQH == 2 then
        local ID1 = 30375 --TP
        local ID2 = 30420 --NB
        local ID3 = 30432 --VK
        GetCTEnd(ID1, ID2, ID3, nQH);
    elseif nPhe == 2 and nQH == 1 then
        local ID1 = 30439 --TP
        local ID2 = 30676 --NB
        local ID3 = 30536 --VK
        GetCTEnd(ID1, ID2, ID3, nQH);
    elseif nPhe == 2 and nQH == 2 then
        local ID1 = 30503 --TP
        local ID2 = 30868 --NB
        local ID3 = 30640 --VK
        GetCTEnd(ID1, ID2, ID3, nQH);
    end
end


function GetCTEnd(ID1, ID2, ID3, nQH)
    local ID = {
        [2] =     {3, ID1, ID2, ID3},
        [3] =     {8,ID1 + 2,ID2 + 2,ID3 +2},
        [4] =     {0,ID1 + 4,ID2 + 4,ID3 +4},
        [6] =     {1,ID1 + 6,ID2 + 6,ID3 +6},
        [8]=     {2,ID1 + 10,ID2 + 10,ID3 +10},
        [9]=     {10,ID1 + 12,ID2 + 12,ID3 +12},
        [11]=    {0,ID1 + 14,ID2 + 14,ID3 +14},
        [12]=    {5,ID1 + 18,ID2 + 18,ID3 +18},
        [14]=    {2,ID1 + 22,ID2 + 22,ID3 +22},
        [15]=    {9,ID1 + 26,ID2 + 26,ID3 +26},
        [17]=    {6,ID1 + 30,ID2 + 30,ID3 +30},
        [18]=    {4,ID1 + 34,ID2 + 34,ID3 +34},
        [20]=    {7,ID1 + 38,ID2 + 38,ID3 +38},
        [21]=    {11,ID1 + 42,ID2 + 42,ID3 +42},
        [23]=    {2,ID1 + 46,ID2 + 46,ID3 +46},
        [25]=    {3,ID1 + 48,ID2 + 48,ID3 +48},
        [26]=    {9,ID1 + 52,ID2 + 52,ID3 +52},
        [27]=    {11,ID1 + 56,ID2 + 56,ID3 +56},
        [29]=    {13,ID1 + 60,ID2 + 60,ID3 +60},
        [30]=    {12,ID1 + 62,ID2 + 62,ID3 +62},
    };
    
    local nRoute = GetPlayerRoute();
    if nRoute == 8 or nRoute == 9 or nRoute == 29 or nRoute == 30 then
        nBody = GetBody() - 3;
    else
        nBody = GetBody() - 1;
    end
    
    for k, v in pairs(ID) do
        if nRoute == k then
            local nA = v[1];
            local nTP = v[2] + nBody;
            local nNB = v[3] + nBody;
            local nVK = v[4] + nBody;
            
            AddItem(0, 103, nTP, 1,1,-1,-1,-1,-1,-1,-1,1,15); --TP
            AddItem(0, 101, nTP, 1,1,-1,-1,-1,-1,-1,-1,1,15);
            AddItem(0, 100, nTP, 1,1,-1,-1,-1,-1,-1,-1,1,15);
            
            AddItem(0, 102, nNB, 1,1,-1,-1,-1,-1,-1,-1,1,15); -- NB
            AddItem(0, 102, nNB + 64, 1,1,-1,-1,-1,-1,-1,-1,1,15);
            AddItem(0, 102, nNB + 64 * 2, 1,1,-1,-1,-1,-1,-1,-1,1,15);
            
            if nQH == 2 then
                AddItem(0, 102, nNB + 64 * 3, 1,1,-1,-1,-1,-1,-1,-1,1,15); --NBS
            end
                    
            AddItem(0, nA, nVK, 1,1,-1,-1,-1,-1,-1,-1,1,15); --VK
        end
    end
end
----

---
-- SetPKFlag(0, 0)

-- Tr? l?i công tr?ng tru?c nhe b?n
-- - Add 25 tri?u di?m công tr?ng phe Liêu : ?gm ds SetTask(701, GetTask(701) - 25000000)

-- - Add Quân hàm soái Liêu : ?gm ds SetTask(704,-6)

-- - Add 50 nghìn di?m tích luy chi?n tru?ng ?gm ds SetTask(707, GetTask(707) + 50000)

-- ?gm ds SetTask(704,6)
function teleportToPlayer()
	local tSay = {}
	local oldPlayerIndex = PlayerIndex;
	local totalOnlinePlayers = 0;
	local player = FirstPlayer()
	local count = gf_GetServerPlayerCount();
	
	while (player > 0) do
	  if player ~= oldPlayerIndex then 
			totalOnlinePlayers = totalOnlinePlayers + 1;
			PlayerIndex = player;
			tinsert(tSay,""..GetName().."/#reallyTeleportToPlayer("..player..")");
		end
		player = NextPlayer(player)
	end
	PlayerIndex = oldPlayerIndex;


	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."Found ".. count .." players online on server. Who do you want to get to?", getn(tSay), tSay);
end


function reallyTeleportToPlayer(playerIndex)
	local mapId, nX, nY = gf_GetWorldPos(playerIndex);
	NewWorld(mapId, nX, nY);
end


function summonPlayer()
	local tSay = {}
	local oldPlayerIndex = PlayerIndex;
	local totalOnlinePlayers = 0;
	local player = FirstPlayer()
	while (player > 0) do
	  if player ~= oldPlayerIndex then 
			totalOnlinePlayers = totalOnlinePlayers + 1;
			PlayerIndex = player;
			tinsert(tSay,""..GetName().."/#reallySummonPlayer("..player..")");
			-- tinsert(tSay, format("%s/reallySummonPlayer", GetName()))
		end
		player = NextPlayer(player)
	end
	PlayerIndex = oldPlayerIndex;


	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."Found ".. totalOnlinePlayers .." players online. Who do you want to summon?", getn(tSay), tSay);
end


function reallySummonPlayer(playerIndex)
	-- Msg2Player(playerIndex);
	local mapId, nX, nY = GetWorldPos();
	local oldPlayerIndex = PlayerIndex;
	PlayerIndex = playerIndex or PlayerIndex;
	NewWorld(mapId, nX, nY);
	PlayerIndex = oldPlayerIndex;
end


function testeff()
	local szSay = {
		g_szTitle.."Chän hiÖu øng g×?",
		-- "ID 1 /#char_eff(1)",
		-- "ID 2/#char_eff(2)",
		-- "ID 3/#char_eff(3)",
		-- "ID 4/#char_eff(4)",
		-- "ID 5/#char_eff(5)",
		-- "ID 6/#char_eff(6)",
		-- "ID 7/#char_eff(7)",
		-- "ID 8/#char_eff(8)",
		-- "ID 9/#char_eff(9)",
		"Bïng Ch¸y Lªn/#char_eff(10)",
		-- "ID 11/#char_eff(11)",
		"Ra khái/nothing",
	};

	SelectSay(szSay); 
end
function char_eff(id)
	local idEff = {929 ,933 ,937 ,943 ,949 ,962 ,965 ,966 ,978 ,979 ,990 };
	SetCurrentNpcSFX(PIdx2NpcIdx(),idEff[id],5,1);
end

function testeff_ad()
	local szSay = {
		g_szTitle.."Chän hiÖu øng g×?",
		"ID 1 /#char_eff_ad(1)",
		"ID 2/#char_eff_ad(2)",
		"ID 3/#char_eff_ad(3)",
		"Ra khái/nothing",
	};
	SelectSay(szSay); 
end

function char_eff_ad(id)
	local idEff = {970 ,985 ,988 };
	SetCurrentNpcSFX(PIdx2NpcIdx(),idEff[id],1,1);
end

function annouce_baotri()
	Msg2Global("HÖ thèng sÏ b¶o tr× cËp nhËt trong 5 phót n÷a, thêi gian b¶o tr×: 5 phót, vui lßng th«ng c¶m ! C¶m ¬n");
	AddLocalNews("HÖ thèng sÏ b¶o tr× cËp nhËt trong 5 phót n÷a, thêi gian b¶o tr×: 5 phót, vui lßng th«ng c¶m ! C¶m ¬n");
end

function move2map(mapId,nX,nY)
	NewWorld(mapId, nX, nY);
end

function GetJingMai_Update_votuong()
	NewWorld(502, 210*8, 194*16);
end

function hotrogmer1st()
	if  GetLevel() < 87 then
		local szSay = {
		g_szTitle.."N©ng lªn ®¼ng cÊp 87 vµ 0 ®iÓm kinh nghiÖm (Xãa tÊt c¶ ®iÓm kinh nghiÖm hiÖn t¹i?",
		"Ta muèn n©ng cao ®¼ng cÊp vµ chÊp nhËn xãa tÊt c¶ kinh nghiÖm hiÖn cã /really_hotrogmer1st",
		"Ra khái/nothing",
	};
	SelectSay(szSay); 
	else
		Talk(1,"","ChØ hç trî nh©n sÜ cã ®¼ng cÊp nhá h¬n 86")
	end
end

function  really_hotrogmer1st()
		local curExp = GetExp();
		gf_Modify("Exp",-curExp);
		SetLevel(87, 1);
		AddItem(2,1,30668,10);
		Talk(1,"","Vui lßng tho¸t game vµ ®¨ng nhËp l¹i!")
end

function nguafake()
	AddItem(0,105,220,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,221,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,222,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,223,1,1,7,403,7,-1,7,-1,7,0);
end