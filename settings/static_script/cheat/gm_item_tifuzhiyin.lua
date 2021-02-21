--���ָ��
-- rm before run ��Զ¥.lua
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
Include("\\script\\pet\\forget_pet_skill.lua")

g_szTitle = "<color=green>H��ng d�n:<color>"

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
			"Gia nh�p m�n ph�i/JoinRoute_UpdateLevel",
			"L�ng ba vi b� cho VMP/langbavibott",
			"Th�ng c�p m�t t�ch �� trang b�/Get_Book_Update",
		}
	else
		tSay = {
--			"Nh�p Code/GiftCodeNhap",
            "Update M�i/Get_Mored",
			"Nh�n L�u Ph�i Ch�n Quy�n v� Y�u Quy�t/Get_Book",
			"Hi�u �ng nh�n v�t/#char_eff(10)",
			-- "H� tr� ��ng c�p cho t�n th� Level 87/hotrogmer1st",
 --          "N�ng cao ��ng c�p chuy�n sinh nh�n v�t/player_reborn",
--			"Thay ��i h��ng Ph�c Sinh/change_PhucSinh",
            "Nh�n danh hi�u/Get_Danh_Hieu2",
            "T�ng �i�m nh�n v�t/Get_Diem_Char",
 		-- "Nh�n �n chuy�n sinh/Get_An",
            -- "Nh�n B� Di�u D��ng +10/Get_YaoYang_15",
			-- "Ng�u nhi�n nh�n ���c Trang B� Kim X� Lv3 +10/getkx3",
			"Ng�u nhi�n nh�n ���c Trang B� Kim X� Lv1 +10/Get_JinShe_1",
--			format("%s/Process_Equip_LingTu", "Nh�n Linh �� +10"),
--			format("%s/Process_SanJianTao", "Nh�n trang s�c �eo h�ng 6 sao"),
--			format("%s/Get_kx7", "Nh�n trang s�c �eo h�ng 7 sao"),
--			format("%s/test", "Test Nhan Event"),
--			format("%s/showKX", "Nh�n trang s�c �eo h�ng 4 sao"),
            "Nh�n C�c Lo�i Nguy�n Li�u/Get_Nguyen_Lieu",
			-- "Nh�n 4000 v�ng/Get_Money",
			"Thao t�c bang h�i/TongOperation",
--			"Thao t�c V� Kh�/PS_VK",
			"Thao t�c kinh m�ch/GetJingMai",
			-- "Nh�n Lak/Get_Energy",
			-- "Vu Khi Chua giam dinh/btcgd",
			"K� n�ng s�ng/Life_Skill",
			"Ngo�i Trang C�ng Th�nh/ngoaitrang",
--			"Nh�n t�i li�u c��ng h�a/Get_Enhance",
--			"Nh�n �� qu�/Get_Gem",
--			"Reset l�i gi�i h�n gi� ch�i/Reset_Time_Playy",
			format("%s/Pet_OP", "Ph�c sinh th� c�ng"),
--			format("%s/Reset_Time_Playy", "H�i ph�c th� l�c"),
--			format("%s/getTianJiaoLing", "Nh�n Thi�n Ki�u L�nh"),
		}
		if 3 == nRoute then
			tinsert(tSay, "Nh�n Thi�n Ph�t Ch�u v� Ph� Ma Ch�/Give_ZhuzhuZhouzhou")
		end
		if 6 == nRoute then
			tinsert(tSay, "Nh�n �m Kh� v� C� Quan/Give_JiguanAnqi")
		end
		if 8 == nRoute then
			tinsert(tSay, "Nh�n X� L�i Kim ��n/Give_Dandan")
			tinsert(tSay, "Nhan �� Buff NMK/DoBuffNMK")
		end		
		if 17 == nRoute then
			tinsert(tSay, "Nh�n Chi�n M�/Give_ZhanMa")
		end
		if 18 == nRoute then
			tinsert(tSay, "Nh�n Chi�n M� v� T� Ti�n/Give_Jiancu")
		end
		if 20 == nRoute then
			tinsert(tSay, "Nh�n Phong Thi Ph�/Give_Fengshifu")
		end
		if 21 == nRoute then
			tinsert(tSay, "Nh�n C�/Give_GuGu")
		end
		if 30 == nRoute then
			tinsert(tSay, "Nh�n �i�u/ling_nv_xiaodiao")
		end
		if CheckName(nName) == 1 then 
			tinsert(tSay, "Admin/admin")
		end
		if Checkdonate(nName) == 1 then 
			tinsert(tSay, "Gia nh�p v� m�n ph�i/VMP")
		end
	end
	tinsert(tSay, "Thanh l� t�i/ClearBagAllItem");
	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
	Say(g_szTitle.."GM h� tr� Gamer!!", getn(tSay), tSay);
end

function admin()
	local tSay = {
		g_szTitle.."L�a ch�n",
		"G�i Boss /BossTongHop",
		"Admin Permission /admin_2",
		"Callplayer/teleportToPlayer",
		"\nRa kh�i/nothing",
	}
	SelectSay(tSay);
end

function admin_2()
	local tSay = {
		g_szTitle.."L�a ch�n",
		"Move2 T��ng D��ng/#move2map(350,1430,2813)",
		"Annouce b�o tr�/annouce_baotri",
		"Hi�u �ng nh�n v�t Admin/testeff_ad",
		"Nh�n Trang B� Test/GetCT",
		"Tr�ng th�i chi�n ��u /Batcd",
		"Tr�ng th�i an to�n /Batlc",
		"Gia nh�p v� m�n ph�i/VMP",
		"Luy�n max skill tr�n ph�i/maxtranphai",
		"��o r��ng di ��ng/ruongqt",
		"Toc chay/tochay",
		"Nh�n Chi�n T��ng/chientuong",
		"Nh�n Ngua fake/nguafake",
		"Nhan Ngua moi/nhanthucuoimoi",
		-- "Nhan Ngua/tmkl",
		"Nhan Kim Phieu/nhansen",
		"Nhan Kim Phieu x10/nhansen_x10",
		-- "Nhan Rac/NhanBua",
		-- "Nh�n admin Item_1/mtc",
		-- "Kim Xa 3/Get_JinShe_admin",
		"Nh�n C�u Chuy�n H�i H�n �an/cuuchuyen",
		"\nRa kh�i/nothing",
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

	tinsert(tSay, format("%s/Boss_LucLam", "B�c L�c L�m Minh Ch�"))
	tinsert(tSay, format("%s/Boss_ThuongThan", "Th��ng Th�n Doanh Thi�n"))
	tinsert(tSay, format("%s/Boss_HuongLang", "L�nh H��ng L�ng"))
	tinsert(tSay, format("%s/Boss_LanHoa", "Lan Hoa"))
	tinsert(tSay, format("%s/Boss_AnhTu", "Anh T�"))
	tinsert(tSay, format("%s/Boss_PhuThuy", "Ph� th�y b�ng gi�"))
	tinsert(tSay, format("%s/Boss_LuongSon", "H�o h�n L��ng S�n"))
	tinsert(tSay, format("%s/Boss_W1", "��o Hoa ��o Ch� Ho�ng Long"))
	tinsert(tSay, format("%s/Boss_W2", "T�y V�c Th��ng Lang B� V��ng"))
	tinsert(tSay, format("%s/Boss_W3", "Ng�c S�n Chi Linh Thi�n C�u"))
	tinsert(tSay, format("%s/Boss_W4", "U Tr�ch Chi �nh Minh V�"))
	tinsert(tSay, format("%s/Boss_W5", "��ng Ph��ng B�t B�i"))
	tinsert(tSay, format("%s/Boss_TuLinh", "T� Linh"))
	tinsert(tSay, format("%s/Boss_NienThu", "��i Ni�n Th�"))
	tinsert(tSay, format("%s/Boss_ThitNuong", "Y�n ti�c Th�t N��ng"))
	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
	Say(g_szTitle.."Ng��i c�n g�i boss g�?", getn(tSay), tSay);
end
function Boss_LucLam()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("S�n T�c ��u M�c","B�c L�c L�m Minh Ch�", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe n�i minh ch� l�c l�m �ang � t�y Tuy�n Ch�u 191/192, ch�c �ang c� �m m�u!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_ThuongThan()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("Huy�n V� Th�ong","Th��ng Th�n Doanh Thi�n", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe n�i th� v� th�n t�n c�a T�n Th�y Ho�ng �ang � t�y Tuy�n Ch�u 189/192, v� l�m s�p c� m�t tr�n h�o ki�p!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_HuongLang()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("Nghi�t H�n","L�nh H��ng L�ng", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe n�i L�nh H��ng L�ng  �ang � t�y Tuy�n Ch�u 186/194, mau ��n �� xem th� dung nhan ki�u di�m c�a n�ng!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_LanHoa()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("lanhua_viet","Lan Hoa", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("C� ng��i nh�n th�y Lan Hoa �ang � t�y Tuy�n Ch�u 181/190, mau ��n �� xem!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")

end

function Boss_AnhTu()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("yingzi_viet","Anh T�", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("C� ng��i nh�n th�y Anh T�  �ang � t�y Tuy�n Ch�u 179/192, mau ��n �� xem!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")

end


function Boss_ThitNuong()

	--Msg2Global("C� ng��i nh�n th�y Y�n ti�c Th�t N��ng �ang � t�y Tuy�n Ch�u 181/188, mau ��n tham d�!")
	local nAddX = 0
	local nAddY = 0
	local nTargetNpc = 0
	local nMap,nX,nY = GetWorldPos();			
	for i = 1, 20 do
		nAddX = random(-70, 70)
		nAddY = random(-70, 70)		
		nTargetNpc = CreateNpc("M�m c�", "Th�t N��ng", nMap, nX + nAddX,  nY + nAddY)
		SetNpcLifeTime(nTargetNpc, 130)
		SetNpcScript(nTargetNpc, "\\script\\online\\viet_event\\200909\\2\\pangtuzi_baoguo.lua")
end

end

function Boss_PhuThuy()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIndex = 0
	local nNpcIndex = CreateNpc("Ph� th�y b�ng gi�", "Ph� th�y b�ng gi�", nMap, nX + 2, nY + 2);
	SetNpcLifeTime(nNpcIndex, 7200);
	SetNpcDeathScript(nNpcIndex, "\\script\\online\\viet_event\\200912\\3\\death_binglengwushi.lua");
	--Msg2Global("C� ng��i nh�n th�y Ph� th�y b�ng gi�  �ang � t�y Tuy�n Ch�u 192/188, mau ��n �� xem!")


end

function Boss_LuongSon()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local n = gf_GetRandItemByTable(LSB_NPC_GOLD_BOSS, 1000, 1) or 1;
	local nNpcIndex = CreateNpc(LSB_NPC_GOLD_BOSS[n][1],LSB_NPC_GOLD_BOSS[n][3],  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcDeathScript(nNpcIndex,"\\script\\online\\liangshanboss\\npc\\gld_boos_death.lua");
		SetNpcRemoveScript(nNpcIndex,"\\script\\online\\liangshanboss\\npc\\gld_boss_remove.lua");
	--Msg2Global("C� ng��i ph�t hi�n H�o h�n L��ng S�n  �ang � t�y Tuy�n Ch�u 191/187, mau ��n �� xem!")

end

--VK
function PS_VK()
	local szSay = {
		g_szTitle.."H�y l�a ch�n hi�u �ng v� kh�!",
		"Thi�t C�t/PS_1",
		"B�ch Chi�n/PS_2",
		"Ch��c Nh�t/PS_3",
		"Tu�n D�t/PS_4",
		"��o L�/PS_5",
		"Danh T�c/PS_6",
		"L�c H�/PS_7",
		"L�ng Ti�u/PS_8",
		"Ph�n V�n/PS_9",
		"�o�n Giao/PS_10",
		"C�i Th�/PS_11",
		"Ph� Qu�n/PS_12",
		"H�o m�n/PS_13",
		"\nRa kh�i/nothing",
	};
	SelectSay(szSay);
end


function PS_1()
	BindWeaponEffect("Thi�t C�t",1)	
end
function PS_2()
	BindWeaponEffect("B�ch Chi�n",1)	
end
function PS_3()
	BindWeaponEffect("Ch��c Nh�t",1)	
end
function PS_4()
	BindWeaponEffect("Tu�n D�t",1)	
end
function PS_5()
	BindWeaponEffect("��o L�",1)	
end
function PS_6()
	BindWeaponEffect("Danh T�c",1)	
end
function PS_7()
	BindWeaponEffect("L�c H�",1)	
end
function PS_8()
	BindWeaponEffect("L�ng Ti�u",1)	
end
function PS_9()
	BindWeaponEffect("Ph�n V�n",1)	
end
function PS_10()
	BindWeaponEffect("�o�n Giao",1)	
end
function PS_11()
	BindWeaponEffect("C�i Th�",1)	
end
function PS_12()
	BindWeaponEffect("Ph� Qu�n",1)	
end
function PS_13()
	BindWeaponEffect("H�o m�n",1)	
end


function btcgd()
	local tSay = {
		"Bao Tay/vkcgd1",
		"Ki�m/vkcgd2",
		"b�ng/vkcgd3",
		"Ch�m/vkcgd4",
		"�ao/vkcgd5",
		"��n/vkcgd6",
		"B�t/vkcgd7",
		"Tr��ng/vkcgd8",
		"Th��ng/vkcgd9",
		"Cung/vkcgd10",
		"Tr�o/vkcgd11",
		"Song �ao/vkcgd12",
		"T�i h� ch� xem qua th�i/nothing",
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
		"Ki�m/vk2",
		"b�ng/vk3",
		"Ch�m/vk4",
		"�ao/vk5",
		"��n/vk6",
		"B�t/vk7",
		"Tr��ng/vk8",
		"Th��ng/vk9",
		"Cung/vk10",
		"Tr�o/vk11",
		"Quat/vk12",
		"T�i h� ch� xem qua th�i/nothing",
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
		-- tinsert(tSay, format("%s/activePet", "K�ch ho�t ph�c sinh th� c�ng"))
	-- end
	-- tinsert(tSay, format("%s/getPetEgg", "Nh�n Tr�ng Th� C�ng"))
	-- tinsert(tSay, format("%s/getLingLi", "Nh�n �i�m linh l�c"))
	-- tinsert(tSay, format("%s/getbook5", "Nh�n Book 5"))
-- --	tinsert(tSay, format("%s/getbook6", "Nh�n Book 6"))
	-- tinsert(tSay, format("%s/getPet", "Nh�n Pet 6"))
	if GetSkillLevel(30149) == 0 then
		tinsert(tSay, format("%s/activePet", "K�ch ho�t ph�c sinh th� c�ng"))
	end
-- tinsert(tSay, format("%s/getbook4", "Nh�n Book 4"))
	tinsert(tSay, format("%s/getPetEgg", "Nh�n Tr�ng Th� C�ng"))
	tinsert(tSay, format("%s/getLingLi", "Nh�n �i�m linh l�c"))
	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
	Say(g_szTitle.."Ng��i c�n gi�p �� g�? Li�n h� https://facebook.com/Thuong.EoPi �� ���c h� tr� th�m!!!", getn(tSay), tSay);
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
		
		Msg2Player("�� h�c Gi�ng Linh Thu�t c�p 5");
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
		-- kx6 hoan l¨ng
        local pifeng,pIndex	=AddItem(0,154,32,1,4,-1,-1,-1,-1,-1,-1,0,10)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2608,2612))
		local huizhang,hIndex	=AddItem(0,153,32,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2585))
		local xie,xIndex	=AddItem(0,152,32,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2586))
	-- end kx6 hoan l¨ng
	
	 -- kx6 ®»ng giao
	    local pifeng,pIndex	=AddItem(0,154,33,1,4,-1,-1,-1,-1,-1,-1,0,10)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2703,2706))
		local huizhang,hIndex	=AddItem(0,153,33,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))
		local xie,xIndex	=AddItem(0,152,33,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))

	-- end kx6 ®»ng giao	

	  -- kx6 khëi ph­îng
		local pifeng,pIndex	=AddItem(0,154,34,1,4,-1,-1,-1,-1,-1,-1,0,10)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2799,2803))
		local huizhang,hIndex	=AddItem(0,153,34,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
		local xie,xIndex	=AddItem(0,152,34,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
	-- end kx6 khëi ph­îng
end

function GiftCodeNhap()
	AskClientForString("CODECHECK1","",1,9999,"Nh�p GiftCode")
end;
function CODECHECK1(nVar)
	local danhan = GetTask(3005)
	if nVar == 'loliteam' and danhan == 0 then
	Msg2Player("��i hi�p nh�n ���c 10 c�y b�t nh� l�n")
	Msg2Player("��i hi�p nh�n ���c 10 c�y b�t nh� l�n")
	Msg2Player("��i hi�p nh�n ��c 2 t�i h�t gi�ng")
	Msg2Player("��i hi�p nh�n ��c 5 v� Ti�u Y V�ng")
	if gf_Judge_Room_Weight(28, 100, " ") ~= 1 then
		return 0;
	end
	AddItem(2,0,398,10,4)
	AddItem(2,0,504,10,4)
	AddItem(2,1,30087,2,4)
	AddItem(2,1,30491,5,4)
	SetTask(3005,1)
	elseif  danhan == 1 then
	Talk(1,"","B�n �� nh�n GiftCode n�y r�i. Vui l�ng kh�ng nh�n l�i")
	else
	Talk(1,"","B�n �� nh�n GiftCode n�y r�i ho�c GiftCode kh�ng t�n t�i tr�n h� th�ng")
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
		Msg2Player(format("Nh�n th�nh c�ng %d linh l�c", nAdd))
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
		Talk(1,"",format("Ng��i �� gia nh�p m�n ph�i r�i, ta kh�ng th� gi�p ���c g�."));
		return 0;
	end
	local tMenu = {
		"Thi�u L�m/join_sl",
		"V� �ang/join_wd",
		"Nga My/join_em",
		"C�i Bang/join_gb",
		"���ng M�n/join_tm",
		"D��ng M�n/join_ym",
		"Ng� ��c/join_wdu",
		"C�n L�n/join_kl",
		"Th�y Y�n/join_cy",
-- --		"Minh Giao/join_mg",
--		"VMP/VMP",
--		"VMP2/VMP2",
		"Ra kh�i/nothing",
	};
	Say("Ng��i mu�n gia nh�p l�u ph�i g�?", getn(tMenu), tMenu);
end
function VMP()
	SetPlayerRoute(0);
	AddTitle(71, 2);
end

function VM2()
	SetPlayerRoute(1);
end
--------------------------------------------------ѡ�����ɿ�ʼ--------------------------------------
function join_sl()
	if GetSex() == 2 then
		Say(g_szTitle.."Ph�i Thi�u L�m ch� thu nh�n �� t� nam", 0);
		return
	end

	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"Thi�u L�m v� t�ng (Quy�n)/#enter_mp(4)",
		"Thi�u L�m thi�n t�ng (Tr��ng)/#enter_mp(3)",
		"Thi�u L�m t�c gia (�ao)/#enter_mp(2)",
		"Ra kh�i/nothing",
	};

	SelectSay(szSay);
end;

function join_mg()
	--if GetSex() == 2 then
	--	Say(g_szTitle.."Ph�i Thi�u L�m ch� thu nh�n �� t� nam", 0);
	--	return
	--end

	--if GetPlayerFaction() ~= 0 then
	--	return
	--end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"minh giao but/#enter_mp(26)",
		"minh giao dao/#enter_mp(25)",
		"minh giao chao/#enter_mp(27)",
		"Ra kh�i/nothing",
	};

	SelectSay(szSay);
end;

function join_wd()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"V� �ang ��o gia (Ki�m)/#enter_mp(14)",
		"V� �ang t�c gia (B�t)/#enter_mp(15)",
		"Ra kh�i/nothing",
	};

	SelectSay(szSay);
end;

function join_em()
	if GetSex() == 1 then
		Say(g_szTitle.."Nga My kh�ng nh�n �� t� nam", 0);
		return
	end

	if GetPlayerFaction() ~= 0 then
		return
	end

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"Nga My ph�t gia (Ki�m)/#enter_mp(8)",
		"Nga My t�c gia (C�m)/#enter_mp(9)",
		"Ra kh�i/nothing",
	};

	SelectSay(szSay);
end;

function join_gb()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"C�i Bang T�nh y (Quy�n)/#enter_mp(11)",
		"C�i Bang � Y (B�ng)/#enter_mp(12)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_tm()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"���ng M�n/#enter_mp(6)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_ym()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"D��ng M�n Th��ng K�/#enter_mp(17)",
		"D��ng M�n Cung K�/#enter_mp(18)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_wdu()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"Hi�p ��c (Song �ao)/#enter_mp(20)",
		"T� ��c C� S� (Tr�o)/#enter_mp(21)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_kl()
	if GetSex()==2 then
		Talk(1,"","C�n L�n kh�ng thu nh�n �� t� n�!");
		return 0
	end

	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"C�n L�n Thi�n S�/#enter_mp(23)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_cy()
	if GetSex()==1 then
		Talk(1,"","Th�y Y�n kh�ng thu nh�n �� t� nam!");
		return 0
	end

	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"Th�y Y�n V� Ti�n (Qu�t)/#enter_mp(29)",
		"Th�y Y�n Linh N� (Ti�u)/#enter_mp(30)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

-----------------------------------------������----------------------------------------
function enter_mp(nRoute)
	local nBegin = 0;
	local nEnd = 0;
	local nBody = GetBody(); --1=�����У�2=��ε�У�3=�Ը�Ů��4=��СŮ

	SetPlayerRoute(nRoute);						--��������

	if nRoute == 2 then						--�����׼�
		LearnSkill(3);
		LearnSkill(5);
		LearnSkill(32);
		nBegin = 21;
		nEnd = 31;
	elseif nRoute == 3 then					--������ɮ
		LearnSkill(6);
		LearnSkill(57);
		nBegin = 45;
		nEnd = 56;
	elseif nRoute == 4 then					--������ɮ
		LearnSkill(2);
		LearnSkill(44);
		nBegin = 33;
		nEnd = 43;
	elseif nRoute == 14 then					--�䵱����
		LearnSkill(4);
		LearnSkill(146);
		nBegin = 125;
		nEnd = 145;
	elseif nRoute == 15 then					--�䵱�׼�
		LearnSkill(5);
		LearnSkill(159);
		nBegin = 147;
		nEnd = 158;
	elseif nRoute == 8 then					--���ҷ��
		LearnSkill(4);
		LearnSkill(89);
		nBegin = 75
		nEnd = 88;
		-- AddItem(0,102,131,2,1,-1,-1,-1,-1,-1,-1,1,0);
		AddItem(0,2,8996,1,1,-1,-1,-1,-1,-1,-1,1,0);
	elseif nRoute == 9 then					--�����׼�
		LearnSkill(10);
		LearnSkill(102);
		nBegin = 90
		nEnd = 101;
	elseif nRoute == 11 then					--ؤ�ﾻҢ
		LearnSkill(2);
		LearnSkill(113);
		nBegin = 103
		nEnd = 112;
	elseif nRoute == 12 then					--ؤ����Ң
		LearnSkill(5);
		LearnSkill(124);
		nBegin = 114
		nEnd = 123;
	elseif nRoute == 6 then					--����
		LearnSkill(7);
		LearnSkill(74);
		nBegin = 58
		nEnd = 73;
	elseif nRoute == 17 then					--����ǹ��
		LearnSkill(11);
		LearnSkill(732);
		nBegin = 720;
		nEnd = 731;
	elseif nRoute == 18 then					--���Ź���
		LearnSkill(12);
		LearnSkill(745);
		nBegin = 733;
		nEnd = 744;
	elseif nRoute == 20 then					--�嶾а��
		LearnSkill(13);
		LearnSkill(775);
		nBegin = 364;
		nEnd = 377;
	elseif nRoute == 21 then					--�嶾��ʦ
		LearnSkill(14);
		LearnSkill(774);
		nBegin = 347;
		nEnd = 363;
	elseif nRoute == 23 then					--������ʦ
		LearnSkill(4);
		LearnSkill(1032);
		nBegin = 1017 ;
		nEnd = 1031;
	elseif nRoute == 25 then					--����ʥս
		LearnSkill(3);
		LearnSkill(1066);
		nBegin = 1053 ;
		nEnd = 1065;
	elseif nRoute == 26 then					--�������
		LearnSkill(8);
		LearnSkill(1096);
		nBegin = 1083 ;
		nEnd = 1095;
	elseif nRoute == 27 then					--����Ѫ��
		LearnSkill(14);
		LearnSkill(1213);
		nBegin = 1131 ;
		nEnd = 1143;
	elseif nRoute == 29 then					--��������
		LearnSkill(15);
		LearnSkill(1196);
		nBegin = 1165 ;
		nEnd = 1176;
	elseif nRoute == 30 then					--������Ů
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

	-- ----------------------------������ֵ------------
	-- -- SetTask(336, 20000);				--����ʦ�Ź��׶�
	-- -- ModifyReputation(20000, 0);			--��������
	-- -- PlayerReborn(0, 4);			--6ת
	-- -- gf_SetTaskByte(1538, 1, 5) 			--5ת
	SetLevel(80, 0);								--���õȼ�
	PlaySound("\\sound\\sound_i016.wav");
	-- -- SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
	Msg2Player("Thao t�c th�nh c�ng, h�y ��ng nh�p l�i")
-- --	AddItem(0,105,15,1,1,-1,-1,-1,-1,-1,-1);
	AddItem(2, 1, 1005, 1);
	AddItem(0, 200,40, 1);
	AddItem(2, 1, 1003, 1);
	AddItem(2, 1, 1004, 1);
	AddItem(2, 1, 2, 10);
	Earn(100000);
	SaveNow()
	Talk(1,"","Thao t�c th�nh c�ng, h�y ��ng nh�p l�i")
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
		"�m Ch� Max Ping 3 Opt/Get_JinShe_3",
		"Option ng�u Nhi�n/Get_JinShe_2",
		"T�i h� ch� xem qua th�i/nothing",
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
		g_szTitle.."Nh�n L�u Ph�i Ch�n Quy�n v� Quy�t Y�u!",
		"Mat tich/mtphu",
		-- "Nh�n Ch�n Quy�n/Get_Book_ZhenJuan",
		"Nh�n Quy�t Y�u/Get_Book_JueYao",
		"Th�ng c�p m�t t�ch �� trang b�/Get_Book_Update",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Get_Nguyen_Lieu()
	local szSay = {
		g_szTitle.."Nh�n C�c Lo�i V�t Li�u!",
		-- "Nh�n 100 Thi�n M�n Kim L�nh/Get_NL_TMKL",
		-- "Nh�n 100 Thi�n Cang L�nh/Get_NL_TCL",
--		"Nguyen Lieu Kich Bao Tay/kichbaotay",
		"Nh�n B�ng Th�ch v� m�nh b�ng th�ch/bangthach",
		-- "Nh�n 1000 Ma Tinh/Get_NL_MT",
		"Nh�n linh th�ch 1 /lt1",
		"Nh�n linh th�ch 2 /lt2",
		"Nh�n linh th�ch 3 /lt3",
		"Nh�n linh th�ch 4 /lt4",
		"Nh�n linh th�ch 5 /lt5",
		-- "Nh�n linh th�ch 6 /lt6",
		-- "Nh�n lt7 /lt7",
		"Ra kh�i/nothing",
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
	
	if nRoute == 23 then--������ʦ
		AddItem(0,107,30032,10)
	end
	
	if nRoute == 29 then--����
		AddItem(0,107,30033,10)
	end
	
	if nRoute == 30 then--��Ů
		AddItem(0,107,30034,10)
	end
	
	gf_AddItemEx({0, 112, 158,	1, 4}, "L�ng Ba Vi B� to�n t�p");
end

function langbavibott()
	gf_AddItemEx({0, 112, 158,	1, 4}, "L�ng Ba Vi B� to�n t�p");
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
		gf_AddItemEx({2, 6, i, 1, 4}, "Quy�t Y�u");
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
	szSay[getn(szSay) + 1] = "Nh�n Ti�u �i�u/Give_XiaoDiao";
	szSay[getn(szSay) + 1] = "Nu�i Ti�u �i�u/Give_XiaoDiaoFood";
	szSay[getn(szSay) + 1] = "Hu�n luy�n Ti�u �i�u/Feed_XiaoDiao";
	szSay[getn(szSay) + 1] = "Ra kh�i/nothing";
	Say(g_szTitle.."Ti�u �i�u thao t�c.", getn(szSay), szSay)
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
		Msg2Player("C�c h� ch�a c� th� c�ng, kh�ng th� ti�n h�nh hu�n luy�n!");
		return
	end;
	local ItemGen, ItemDetail, ItemParticular = GetItemInfoByIndex(nPetItemIndex);
	if (ItemGen == nil or ItemDetail == nil or ItemParticular == nil)
		or (ItemGen ~= 2 or ItemDetail ~= 20)
	then
		Msg2Player("C�c h� ch�a c� th� c�ng, kh�ng th� ti�n h�nh hu�n luy�n!");
		return
	end

	for i = 1, 84 do
		LevelUpPet(nPetItemIndex)
	end
end

function ClearBagAllItem(bTag)
	if not bTag or tonumber(bTag) ~= 1 then
		Say(g_szTitle.."Ng��i mu�n thanh l� t�i?", 2, "��ng �/#ClearBagAllItem(1)", "Ra kh�i/nothing")
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
		g_szTitle.."Thao t�c bang h�i",
		"Ta mu�n l�p bang h�i/TongOperation_Create",
		"Ta mu�n th�ng c�p bang h�i/TongOperation_update",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function TongOperation_Create()
	if IsTongMember() ~= 0 then
		Talk(1,"","Ng��i �� c� bang h�i");
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
		g_szTitle.."Thao th�c kinh m�ch",
		"T�y �i�m kinh m�ch/GetJingMai_Reset",
--		format("%s/getZhenqi", "Nh�n ch�n kh�"),
--		format("%s/getJingMaiTongRen", "Nh�n Kinh M�ch ��ng Nh�n"),
		"Ra kh�i/nothing",
	};
	if MeridianGetLevel() < 2 then
		tinsert(szSay, 2, "Th�ng c�p c�nh gi�i V� Hi�n/GetJingMai_Update")
	end
	if GetLevel() >=90 then 
		tinsert(szSay, 2, "�i ��n NPC th�ng c�p c�nh gi�i V� T��ng/GetJingMai_Update_votuong")
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
		Say(g_szTitle.."Thao th�c kinh m�ch", 2,"��ng �/#GetJingMai_Reset(1)", "H�y b�/nothing")
		return 0;
	end
	MeridianRestore(-1);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function player_reborn()
	PlayerReborn(2, random(4));			--6ת
	gf_SetTaskByte(1538, 1, 5) 			--5ת
	SetLevel(99, 1);								--���õȼ�
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
		"Mu�n t�ng c�p k� n�ng thu th�p/upgrade_gather_skill",
		"Mu�n t�ng c�p k� n�ng s�n xu�t/upgrade_compose_skill",
--		"Nh�n nguy�n li�u ch� trang b� Linh ��/get_lingtu_equip_material",
		-- "Nh�n NHCT/nhct",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."T�ng c�p k� n�ng s�ng", getn(tSay), tSay);
end
function nhct()
	AddItem(2,1,3219,100);
end
function upgrade_gather_skill()
	local tGather = {1, 2, 5, 6};
	local tName = {"��n c�y", "L�m da", "��o kho�ng", "K�o t�"};
	local str = ""
	for k, v in tName do
		str = str.."<color=gold>"..v.."<color>,"
	end
	for k, v in tGather do
		local nCur = GetLifeSkillLevel(0, v)
		local nMax = GetLifeSkillMaxLevel(0, v);
		if nMax > nCur then
			local msg = g_szTitle..format("Hi�n t�i ch� c� th� th�ng c�p k� n�ng %s, <color=gold>%s<color> �ang ��t c�p <color=green>%d<color>, mu�n th�ng c�p <color=gold>%s<color> ��n c�p <color=green>%d<color> kh�ng?",
				 str, tName[k], nCur, tName[k], nMax);
			Say(msg, 2, format("��ng �/#upgrade_gather_skill_do(%d, %d)", v, nMax), "H�y b�/nothing")
			return 0;
		end
	end
	Talk(1,"","Kh�ng c� k� n�ng s�ng c� th� th�ng c�p, h�y �i t�m NPC �� h�c v� th�ng c�p gi�i h�n k� n�ng ��n c�p 99")
end

function upgrade_gather_skill_do(nSkill, nMax)
	for i = GetLifeSkillLevel(0, nSkill), nMax do
		AddLifeSkillExp(0, nSkill, 9999999);		
	end
	if 79 == nMax then
		Talk(1,"","Hi�n �� ho�n th�nh th�ng c�p k� n�ng, h�y �i t�m NPC �� t�ng c�p gi�i h�n ��n 99 n�o!")
	end
	Msg2Player(format("Th�nh c�ng t�ng c�p k� n�ng ��n c�p %d", nMax));
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function upgrade_compose_skill()
	local tGather = {2, 3, 4, 5, 9, 10};
	local tName = {"Ch� t�o binh kh� d�i", "Ch� t�o binh kh� ng�n", "Ch� t�o k� m�n binh kh�", "L�m h� gi�p", "H� trang", "��u qu�n"};
	local str = ""
	for k, v in tName do
		str = str.."<color=gold>"..v.."<color>,"
	end
	for k, v in tGather do
		local nCur = GetLifeSkillLevel(1, v)
		local nMax = GetLifeSkillMaxLevel(1, v);
		if nMax > nCur then
			local msg = g_szTitle..format("Hi�n t�i ch� c� th� th�ng c�p k� n�ng %s, <color=gold>%s<color> �ang ��t c�p <color=green>%d<color>, mu�n th�ng c�p <color=gold>%s<color> ��n c�p <color=green>%d<color> kh�ng?",
				 str, tName[k], nCur, tName[k], nMax);
			Say(msg, 2, format("��ng �/#upgrade_compose_skill_do(%d, %d)", v, nMax), "H�y b�/nothing")
			return 0;
		end
	end
	Talk(1,"","Kh�ng c� k� n�ng s�ng c� th� th�ng c�p, h�y �i t�m NPC �� h�c v� th�ng c�p gi�i h�n k� n�ng ��n c�p 99")
end

function upgrade_compose_skill_do(nSkill, nMax)
	for i = GetLifeSkillLevel(1, nSkill), nMax do
		AddLifeSkillExp(1, nSkill, 9999999);		
	end
	if 79 == nMax then
		Talk(1,"","Hi�n �� ho�n th�nh th�ng c�p k� n�ng, h�y �i t�m NPC �� t�ng c�p gi�i h�n ��n 99 n�o!")
	end
	Msg2Player(format("Th�nh c�ng t�ng c�p k� n�ng ��n c�p %d", nMax));
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function get_lingtu_equip_material()
	if gf_Judge_Room_Weight(18, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 18));
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
--		"Nh�n Thi�n H� V� Song/thvs",	
--	"Nh�n Hi�u Chi�n Tr��ng/hieudothong",
--		"Nh�n HKDNP/hkdnp",
		-- "Nh�n M�u /receiveTiLi",
		"Nh�n B�nh Ng�/banhngo",
		-- "Nh�n TT3 LL3 TT4 LL4/ttll3",
		-- "Nh�n Thi�n Ngh�a/thienghia",
		-- "Nh�n Thi�n Chi t�ng Ki�m/tctk",
--		"HHVD/huyhoang5",
		-- "HHVD/huyhoang5",
		"u�n Linh c�p 3/nhanul",
--		"V� L�m b� Ch�/vlbc",
--		"Nh�n C�u Chuy�n H�i H�n �an/cuuchuyen",
--		"Nh�n Chi�n T��ng/chientuong",
--		"Nh�n V� Kh� Nguy�n T�/vknt",
--		"Nh�n V� Kh�m /vkkham",
--		"Nh�n V� Opt zin /vkopt",
--		"Nh�n �� Long ��ng Ph�ng V�/longdang",
		-- "Nh�n Th� M�i/nhanthucuoimoi",
		"Nh�n Th� C��i/thucuoipro",
--		"Nh�n Thi�n Chi Vi�m ��/thienchiviemde",
		"Nh�n Vi�m ��/viemde",
		"Nh�n �� buff/dobuffhttc",
		"Nh�n t� quang hi�n vi�n ng�c/hienvienngoc",
		"Nh�n t� quang hi�n vi�n th�n binh/hienvienbinh",
		"Nh�n C�u Thi�n Ng�c/cuuthienngoc",
    	-- "Nh�n B�ch Kim Vi�m ��/bkvd",
--		"Luy�n max skill tr�n ph�i/maxtranphai",
--		"Nh�n Th�ng Thi�n/getTiLi",
--		"Nh�n Thien Chi T��ng Qu�n/thienchituongquan",
--		"Nh�n T��ng Qu�n/tuongquan",
		-- "Qu�n �o  TLQ/aosm",
--		"C�c Lo�i Ng�c/ngoctoc",
--      "C�c Lo�i Ng�c/ngocdame",
		-- "Ma Dao thach 3/madao",
		-- "�� 3 L�/do3lo",
		-- "Vu khi 3 L�/vukhi",
--		"Qu� 8 qu�i/que8w", 
--		"Ngo�i Trang/ngoaitrangnew", 
		"T�i h� ch� xem qua th�i/nothing",
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
		g_szTitle.."L�a ch�n",
		"Ng�u nhi�n n�n/UL3_non",
		"Ng�u nhi�n �o/UL3_ao",
		"Ng�u nhi�n qu�n/UL3_quan",
		"\nRa kh�i/nothing",
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
	CastState("state_skill_adjust",3,3600,1); --VAC gi?m c�n 2 t? kh� / 1 l?n thi tri?n
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
		g_szTitle.."Nh�n v� Kh� lo�i n�o!",
                "BQPN - NP/vkkham1",
                "ST - NP/vkkham2",
				"To be Continues..../vkkham3",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function vkkham1()
	local opt3 = {69, 30 , 102, 6}
	local op3 = random(1, 4)
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 12));
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
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 12));
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
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 12));
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
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 12));
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
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 12));
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
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 10));
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
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 3));
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
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 3));
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
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 3));
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
		"Nh�n Th�n Th�ch ��nh H�n/Get_Enhance_1",
		"Nh�n Tinh th�ch Thi�n Th�ch/Get_Enhance_2",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."T�ng c�p k� n�ng s�ng", getn(tSay), tSay);
end

function Get_Enhance_1()
	if gf_Judge_Room_Weight(2, 10, " ") ~= 1 then
		return 0;
	end
	gf_AddItemEx2({2, 1, 1068, 1}, "Thi�n Th�ch linh th�ch", "Get_Enhance_1", "Nh�n Th�n Th�ch ��nh H�n", 0, 1);
	gf_AddItemEx2({2, 1, 1067, 1}, "Thi�n Th�ch linh th�ch", "Get_Enhance_1", "Nh�n Th�n Th�ch ��nh H�n", 0, 1);
end

function Get_Enhance_2()
	if gf_Judge_Room_Weight(1, 10, " ") ~= 1 then
		return 0;
	end
	AddItem(2, 1, 1009, 100);
	WriteLogEx("Get_Enhance_2","Nh�n Tinh th�ch Thi�n Th�ch", 100, "Thi�n Th�ch Tinh Th�ch");
end

function Get_Gem()
	if gf_Judge_Room_Weight(24, 100, " ") ~= 1 then
		return 0;
	end
        AddItem(2, 22, 101, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�t Tr�ch Th�ch C�p 1");
	AddItem(2, 22, 201, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�t B�ch Th�ch C�p 1");
	AddItem(2, 22, 301, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch C�p 1");
	AddItem(2, 22, 401, 100);	
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch C�p 1");
        AddItem(2, 22, 102, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�t Tr�ch Th�ch C�p 2");
	AddItem(2, 22, 202, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�t B�ch Th�ch C�p 2");
	AddItem(2, 22, 302, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch C�p 2");
	AddItem(2, 22, 402, 100);	
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch C�p 2");
        AddItem(2, 22, 103, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�t Tr�ch Th�ch C�p 3");
	AddItem(2, 22, 203, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�t B�ch Th�ch C�p 3");
	AddItem(2, 22, 303, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch C�p 3");
	AddItem(2, 22, 403, 100);	
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch C�p 3");
        -- AddItem(2, 22, 104, 100);
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�t Tr�ch Th�ch C�p 4");
	-- AddItem(2, 22, 204, 100);
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�t B�ch Th�ch C�p 4");
	-- AddItem(2, 22, 304, 100);
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch C�p 4");
	-- AddItem(2, 22, 404, 100);	
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch C�p 4");
        -- AddItem(2, 22, 105, 100);
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�t Tr�ch Th�ch C�p 5");
	-- AddItem(2, 22, 205, 100);
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�t B�ch Th�ch C�p 5");
	-- AddItem(2, 22, 305, 100);
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch C�p 5");
	-- AddItem(2, 22, 405, 100);	
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch C�p 5");
	-- AddItem(2, 22, 106, 100);
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�t Tr�ch Th�ch C�p 6");
	-- AddItem(2, 22, 206, 100);
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�t B�ch Th�ch C�p 6");
	-- AddItem(2, 22, 306, 100);
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch C�p 6");
	-- AddItem(2, 22, 406, 100);	
	-- WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch C�p 6");
end

function Get_Diem_Char()
	local szSay = {
		g_szTitle.."T�ng �i�m cho nh�n v�t!",
--		"Nh�n Qu�n h�m nguy�n so�i/Get_NguyenSoai",
--		"Nh�n Nh�n 250.000 �i�m c�ng tr�ng/Get_CongTrang",
		"Nh�n Nh�n 10.000 �i�m danh v�ng/Get_DanhVong",
		"Nh�n Nh�n 10.000 �i�m s� m�n/Get_SuMon",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Get_NguyenSoai()
	SetTask(704,6)
        Msg2Player("Ch�c m�ng b�n �� tr� th�nh Nguy�n So�i ��p trai");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),904,0,0)
end

function Get_CongTrang()
	SetTask(701, GetTask(701) + 250000)
        Msg2Player("Ch�c m�ng b�n �� nh�n ���c 250.000 �i�m c�ng tr�ng");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_DanhVong()
	ModifyReputation(10000,0)
        Msg2Player("Ch�c m�ng b�n �� nh�n ���c 10.000 �i�m danh v�ng");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_SuMon()
	SetTask(336,GetTask(336) + 10000)
        Msg2Player("Ch�c m�ng b�n �� nh�n ���c 10.000 �i�m s� m�n");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_Danh_Hieu()
	local szSay = {
		g_szTitle.."Nh�n danh hi�u m� ��i hi�p mong mu�n!",
		-- "Nh�n Danh Hi�u Du Hi�p/Get_DuHiep",
		-- "Nh�n Danh Hi�u �ng D��ng/Get_UngDuong",
		-- "Nh�n Danh Hi�u Chi�n Cu�ng/Get_ChienCuong",
		-- "Nh�n V� L�m B�ch Hi�u Sinh/Get_VLBHS",
                "Nh�n Si�u Nh�n V�t Mu�i/Get_SNVM",
                "Nh�n Si�u Nh�n Gao/Get_SNGAO",
                "Nh�n Si�u Nh�n M� B�/Get_SNMiBo",
                "Nh�n Si�u Nh�n M� G�/Get_SNMiGa",
                "Nh�n Si�u Nh�n M� T�m/Get_SNMiTom",
                "Trang k�/Get_Danh_Hieu2",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Get_DuHiep()
	AddTitle(65, 1)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Du Hi�p");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_UngDuong()
	AddTitle(65, 2)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u �ng D��ng");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_ChienCuong()
	AddTitle(65, 3)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Chi�n Cu�n");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_VLBHS()
	AddTitle(63, 1)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u V� L�m B�ch Hi�u Sinh");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNVM()
	AddTitle(62, 1)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n V�t Mu�i");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNGAO()
	AddTitle(62, 2)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n Gao");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiBo()
	AddTitle(62, 3)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n M� B�");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiGa()
	AddTitle(62, 4)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n M� G�");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiTom()
	AddTitle(62, 5)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n M� T�m");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_Danh_Hieu2()
	local szSay = {
		g_szTitle.."Nh�n danh hi�u m� ��i hi�p mong mu�n!",
                -- "Nh�n Danh Hi�u S�ng kh�ng y�u/Get_DelYeu",
                -- "Nh�n Danh Hi�u H�n ��i v� ��i/Get_HanDoi",
                -- "Nh�n Danh Hi�u Bu�n V� ��p Trai/Get_SadDep",
                -- "Nh�n Danh Hi�u Ng�o Th� V� Song/Get_NgaoTheVoSong",
                "Nh�n Danh Hi�u B� V��ng/Get_BaVuong",
                "Nh�n Danh Hi�u ��i Hi�p/Get_DaiHiep",
                "Nh�n Danh Hi�u Tinh Anh ��/Get_TinhAnhDo",
                "Nh�n Danh Hi�u Tinh Anh T�m/Get_TinhAnhTim",
--				"Nh�n Danh Hi�u New/Get_LaHan",
--				"Trang k�/danhhieu3",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end


function danhhieu3()
	local szSay = {
	g_szTitle.."Nh�n danh hi�u m� ��i hi�p mong mu�n!",
                "Nh�n Danh Hi�u M�u M�/HieuLoLi",
		"Ra kh�i/nothing",
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
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Ch� T�n V��ng Gi�");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_DaiHiep()
	AddTitle(66, 2)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u ��c B� Thi�n H�");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_TinhAnhDo()
	AddTitle(66, 3)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u V� l�m h�o ki�t");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_TinhAnhTim()
	AddTitle(66, 4)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Giang h� tinh anh");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_NgaoTheVoSong()
	AddTitle(61, 7)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Ng�o Th� V� Song");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SadDep()
	AddTitle(62, 13)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u Bu�n V� ��p Trai");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_DelYeu()
	AddTitle(62, 6)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u S�ng kh�ng y�u");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_HanDoi()
	AddTitle(62, 7)
        Msg2Player("Ch�c m�ng b�n nh�n ���c danh hi�u H�n ��i V� ��i");
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
	WriteLogEx("Get_An","Nh�n �n:", 100, "Long t� �n");
	AddItem(2, 0, 30005, 1);
	WriteLogEx("Get_An","Nh�n �n:", 100, "Ph�ng t� �n");
	AddItem(2, 0, 30003, 1);
	WriteLogEx("Get_An","Nh�n �n:", 100, "H� t� �n");
	AddItem(2, 0, 30006, 1);	
	WriteLogEx("Get_An","Nh�n �n:", 100, "�ng t� �n");

end

function change_PhucSinh()
	local tSay = {}
	local tHeader = "��i hi�p mu�n thay ��i theo h��ng n�o. ��i v�i Ph�c Sinh, sau khi thay ��i s� b� v� level 10, h�y ��n g�p B�ch Ti�n Sinh (Tuy�n Ch�u) �� nh�n l�i level !!!!."		
	tinsert(tSay, "H��ng Long T�/#confirm_change_chuyensinh(1)")
	tinsert(tSay, "H��ng H� T�/#confirm_change_chuyensinh( 2)")
	tinsert(tSay, "H��ng �ng T�/#confirm_change_chuyensinh(3)")		
	tinsert(tSay, "H��ng Ph�ng T�/#confirm_change_chuyensinh(4)")
	tinsert(tSay, "T�m th�i ta ch�a mu�n thay ��i/nothing")
	Say(tHeader, getn(tSay), tSay)			
end

function confirm_change_chuyensinh(nWay)
	local nNum_cs6 = GetPlayerRebornParam(0)
	PlayerReborn(nNum_cs6,nWay) -- Thay ��i h��ng chuy�n Sinh 6 th�nh c�ng		
	Talk(1,"", "Ch�c m�ng ��i hi�p �� thay ��i h��ng Ph�c Sinh th�nh c�ng !")		
	Msg2Player("Ch�c m�ng ��i hi�p �� thay ��i h��ng Ph�c Sinh th�nh c�ng !")
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
	---------chuy�n sinh 7
	if GetPlayerRebornParam(0) == 2 then
		local nType_cs7 = GetPlayerRebornParam(1)
		local nBody = GetBody()	
		gf_AddItemEx(tb_translife_seal_cs6[nType_cs7][2], tb_translife_seal_cs6[nType_cs7][1])		
		if GetLevel() < 79 then
			Talk(1,"","��i hi�p ch�a �� y�u c�u �� nh�n l�i trang b�")	
			return
		end
		SetTask(336,GetTask(336) - 100)
		Msg2Player("B�n b� tr� 100 �i�m s� m�n.")
		local nType_cs6 = GetPlayerRebornParam(1) -- x�a trang bi CS6
		local nBody_cs6 = GetBody()
		for i=1, getn(tb_translife_cloth_cs7_nhanlai[nType_cs7][nBody]) do
			local G,D,P,nCount, _, lvatt1, att1, lvatt2, att2, lvatt3, att3  = gf_UnPack(tb_translife_cloth_cs7_nhanlai[nType_cs7][nBody][i])
			P = P + GetBody() - 1
			lvatt3 = lvatt3 or 0
			att3 = att3 or 0
			BigDelItem(G,D,P,BigGetItemCount(G,D,P))
		end					
		for i = 1, 3 do
			gf_AddItemEx(tb_translife_cloth_cs7_nhanlai[nType_cs7][nBody][i], "Nh�n l�i trang b�")
		end
		for i=1, getn(tb_translife_cloth[nType][nTransCount]) do
			local G,D,P,nCount, _, lvatt1, att1, lvatt2, att2, lvatt3, att3  = gf_UnPack(tb_translife_cloth[nType][nTransCount][i][2])
			P = P + GetBody() - 1
			lvatt3 = lvatt3 or 0
			att3 = att3 or 0
			BigDelItem(G,D,P,BigGetItemCount(G,D,P))
			gf_AddItemEx({G, D, P, nCount,1, lvatt1, att1, lvatt2, att2, lvatt3, att3},tb_translife_cloth[nType][nTransCount][i][1])
		end				
		Talk(1,"","��y l� nh�ng v�y qu� gi�, l�n sau c�n th�n ko �� m�t n�a ��y!")	
		WriteLogEx("Chuyen Sinh","nh�n l�i �n v� ngo�i trang chuy�n sinh 7 theo h��ng "..tb_translife_seal[nType_cs6][3])		
		return
	end	
end

LSB_NPC_GOLD_BOSS = {
	{"yangxiong", 165, "B�nh Quan S�c D��ng H�ng", 30 * 60},
	{"linchong", 167, "B�o T� ��u L�m Xung", 30 * 60},
	{"luzhishen", 167, "Hoa H�a Th��ng L� Tr� Th�m", 30 * 60},
	{"likui", 167, "H�c To�n Phong L� Qu�", 30 * 60},
	{"husanliang", 167, "Nh�t Tr��ng Thanh H� Tam N��ng", 30 * 60},
	{"shixiu", 167, "Phanh M�nh Tam Lang Th�ch T�", 30 * 60},
	{"C�p Th�i V� T�ng Giang", 167, "C�p Th�i V� T�ng Giang", 30 * 60},
	{"Tri �a Tinh Ng� D�ng", 167, "Tri �a Tinh Ng� D�ng", 30 * 60},
	{"C�u V�n Long S� Ti�n", 167, "C�u V�n Long S� Ti�n", 30 * 60},
	{"Ti�u Tuy�n Phong S�i Ti�n", 167, "Ti�u Tuy�n Phong S�i Ti�n", 30 * 60},
	{"��i �ao Quan Th�ng", 167, "��i �ao Quan Th�ng", 30 * 60},
	{"Nh�p V�n Long C�ng T�n Th�ng", 167, "Nh�p V�n Long C�ng T�n Th�ng", 30 * 60},
	{"B�o T� ��u L�m Xung", 167, "B�o T� ��u L�m Xung", 30 * 60},
	{"Hoa H�a Th��ng L� Tr� Th�m", 167, "Hoa H�a Th��ng L� Tr� Th�m", 30 * 60},
	{"H�nh Gi� V� T�ng", 167, "H�nh Gi� V� T�ng", 30 * 60},
	{"T�y B�n Ti�n Phong Nh�t Ph�m", 167, "T�y B�n Ti�n Phong Nh�t Ph�m", 30 * 60},
	{"B�nh Quan S�c D��ng H�ng", 167, "B�nh Quan S�c D��ng H�ng", 30 * 60},
	{"Phanh M�nh Tam Lang Th�ch T�", 167, "Phanh M�nh Tam Lang Th�ch T�", 30 * 60},
	{"Nh�t Tr��ng Thanh H� Tam N��ng", 167, "Nh�t Tr��ng Thanh H� Tam N��ng", 30 * 60},
	{"Song Th��ng T��ng ��ng B�nh", 167, "Song Th��ng T��ng ��ng B�nh", 30 * 60},
	{"Thanh Di�n Th� D��ng Tr�", 167, "Thanh Di�n Th� D��ng Tr�", 30 * 60},
	{"T�ch L�ch H�a T�n Minh", 167, "T�ch L�ch H�a T�n Minh", 30 * 60},
	{"Song Ti�n H� Di�n Ch��c", 167, "Song Ti�n H� Di�n Ch��c", 30 * 60},
	{"H�c To�n Phong L� Qu�", 167, "H�c To�n Phong L� Qu�", 30 * 60},
};

function Boss_W1()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
	local msg = format("Theo t�nh b�o, 1 qu�i nh�n v�i v� c�ng v� ��ch thi�n h� �� xu�t hi�n t�i T�i Nguy�n Chi�n, mau ��n thu ph�c h�n !!!");
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_HL", "��o Hoa ��o Ch� Ho�ng Long", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 23*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end

function Boss_W5()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_dfbb", "��ng Ph��ng B�t B�i", 606,168*8,187*16);
		local msg = format("Theo t�nh b�o, 1 qu�i nh�n v�i v� c�ng v� ��ch thi�n h� �� xu�t hi�n t�i T�i Nguy�n Chi�n, mau ��n thu ph�c h�n !!!");
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
		local npcIndex = CreateNpc("TYT_HyehuoTYS", "Gi�c ��c Th�", 606,168*8,187*16);
		local msg = format("Theo t�nh b�o, 1 qu�i nh�n v�i v� c�ng v� ��ch thi�n h� �� xu�t hi�n t�i T�i Nguy�n Chi�n, mau ��n thu ph�c h�n !!!");
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
	local msg = format("Theo t�nh b�o, 1 qu�i nh�n v�i v� c�ng v� ��ch thi�n h� �� xu�t hi�n t�i T�i Nguy�n Chi�n, mau ��n thu ph�c h�n !!!");
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_CLBZ", "T�y V�c Th��ng Lang B� V��ng", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 2*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W3()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
	local msg = format("Theo t�nh b�o, 1 qu�i nh�n v�i v� c�ng v� ��ch thi�n h� �� xu�t hi�n t�i T�i Nguy�n Chi�n, mau ��n thu ph�c h�n !!!");
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_TJ", "Ng�c S�n Chi Linh Thi�n C�u", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 2*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W4()

	local nMap,nX,nY = GetWorldPos();
	local msg = format("Theo t�nh b�o, 1 qu�i nh�n v�i v� c�ng v� ��ch thi�n h� �� xu�t hi�n t�i T�i Nguy�n Chi�n, mau ��n thu ph�c h�n !!!");
	local nNpcIdx = 0
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_MW", "U Tr�ch Chi �nh Minh V�", nMap, nX + 2, nY + 2);
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
			local nNpcIdx = CreateNpc(IBbaoxiang, "R��ng H�o H�n", nMap, nX + 2, nY + 2);
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
	{"Long T�", 165, "Long Th�n H�a Th�n", 30 * 60},
	{"Ph�ng T�", 167, "Ph�ng Th�n H�a Th�n", 30 * 60},
	{"H� T�", 165, "H� Th�n H�a Th�n", 30 * 60},
	{"�ng T�", 167, "�ng Th�n H�a Th�n", 30 * 60},
}

function Boss_NienThu()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local nNpcIndex = CreateNpc("��i Ni�n Th�","Th�n th� ngh�n n�m",  nMap, nX + 2, nY + 2);
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
		-- "T�i h� ch� xem qua th�i/nothing",
	-- }
	-- Say(g_szTitle.."------------------", getn(tSay), tSay);
	
	AddItem(0,110,516,1,1,-1,-1,3,484,7,41,-1,0);
	AddItem(0,109,516,1,1,-1,-1,3,484,7,41,-1,0);
	AddItem(0,108,516,1,1,-1,-1,3,484,7,41,-1,0);
	
	AddItem(0,110,517,1,1,-1,-1,3,484,7,41,-1,0);
	AddItem(0,109,517,1,1,-1,-1,3,484,7,41,-1,0);
	AddItem(0,108,517,1,1,-1,-1,3,484,7,41,-1,0);
end

--Gia nh�p Ph�i
-- function JoinRoute_UpdateLevel()
	-- local tMenu = {
		-- "Thi�u L�m/join_sl",
		-- "V� �ang/join_wd",
		-- "Nga My/join_em",
		-- "C�i Bang/join_gb",
		-- "���ng M�n/join_tm",
		-- "D��ng M�n/join_ym",
		-- "Ng� ��c/join_wdu",
-- --		"C�n L�n/join_kl",
-- --		"Th�y Y�n/join_cy",
-- --		"Minh Gi�o/join_mgb",
		-- "\nRa kh�i/nothing",
	-- };
	-- Say("Ng��i mu�n gia nh�p l�u ph�i g�?", getn(tMenu), tMenu);
-- end

--/home/server/gs0/script/��ԭ����/����/npc
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
		g_szTitle.."L�a ch�n",
		"Thi�n Phong /ngocdame_tienphong",
		"Hi�n Vi�n /ngocdame_hienvien",
--		"Thi�n Ngh�a /ngocdame_thiennghia",
		"\nRa kh�i/nothing",
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


g_szTitleMain = "<color=green>Kim x� 7: <color> Thu�c t�nh t� ch�n v� cao nh�t"
function Get_kx7()
	local tSay = {
		"Trang b� Kim X� S�t Lang - Kh�ng t�t c�/Get_KXSL",
		"Trang b� Kim X� Nhu� Nha - Ngo�i c�ng/Get_KXNN",
		"Trang b� Kim X� M�ng S�t - N�i c�ng/Get_KXMS",
		"Tho�t/nothing",
	};
	Say(g_szTitleMain, getn(tSay), tSay);
end

g_szTitle1 = "<color=green>Kim X� S�t Lang: <color>";
function Get_KXSL()
	local tSay = {
		"Kim X� S�t Lang - �o Cho�ng/#SetKXSL_1(152)",
		"Kim X� S�t Lang - Huy Ch��ng/#SetKXSL_1(153)",
		"Kim X� S�t Lang - Chi�n H�i/#SetKXSL_1(154)",
		"H�y/nothing",
	};
	
	Say(g_szTitle1, getn(tSay), tSay);
end

function SetKXSL_1(nType)
	local List = {
		[3388] = {"Linh Ho�t"},
		[3389] = {"Th�n Ph�p"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 1", getn(tSay), tSay);
end

function SetKXSL_2(nType,ID1)
	local List = {
		[3401] = {"N�i c�ng"},
		[3402] = {"S�c m�nh"},
		[3403] = {"G�n c�t"},
		[3404] = {"�i�m sinh l�c"},
		[3405] = {"T� l� �i�m sinh l�c %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 2", getn(tSay), tSay);
end

function SetKXSL_3(nType,ID1, ID2)
	local List = {
		[3417] = {"B�o k�ch"},
		[3418] = {"�i�m ngo�i c�ng"},
		[3419] = {"�i�m n�i c�ng"},
		[3420] = {"C�ng k�ch"},
		[3421] = {"Kh�ng t�t c�"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 3", getn(tSay), tSay);
end

function SetKXSL_4(nType,ID1, ID2, ID3)
	local List = {
		[3435] = {"Ph�ng th� b�o k�ch"},
		[3436] = {"Gi�m s�t th��ng b�o k�ch"},
		[3437] = {"H� gi�p ngo�i ph�ng"},
		[3438] = {"H� gi�p n�i ph�ng"},
		[3439] = {"H� gi�p n�i ngo�i ph�ng"},
		[3440] = {"�i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 4", getn(tSay), tSay);
end

function SetKXSL_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3446] = {"Linh ho�t"},
		[3447] = {"Th�n ph�p"},
		[3405] = {"T�ng t� l� �i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 5", getn(tSay), tSay);
end

function SetKXSL_6(nType,ID1, ID2, ID3,ID4,ID5)
	if nType == 154 then
		List = {
			[3482] = {"T�c �� ch�y"},
			[3483] = {"T�c �� xu�t chi�u"},
			[3484] = {"Gi�m ch�u th��ng"},
			[3485] = {"T�ng ch� m�nh"},
			[3486] = {"Kh�ng t�t c�"},
		};
	else
		List = {
			[3468] = {"T�ng s�t th��ng"},
			[3469] = {"C�ng k�ch k�m ��c"},
			[3470] = {"S�t th��ng ��c tr�ng"},
			[3460] = {"T� l� kh�ng tr�ng th�i ph�"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 6", getn(tSay), tSay);
end

function SetKXSL_End(nType,ID1,ID2,ID3,ID4,ID5,ID6)
	local pifeng,pIndex = AddItem(0,nType,35,1,1,-1,-1,-1,-1,-1,-1,0,10)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	DelItem(2,1,50005,1);
end


g_szTitle2 = "<color=green>Kim X� Nhu� Nha: <color>";
function Get_KXNN()
	local tSay = {
		"Kim X� Nhu� Nha - �o Cho�ng/#SetKXNN_1(152)",
		"Kim X� Nhu� Nha - Huy Ch��ng/#SetKXNN_1(153)",
		"Kim X� Nhu� Nha - Chi�n H�i/#SetKXNN_1(154)",
		"H�y/nothing",
	};
	
	Say(g_szTitle2, getn(tSay), tSay);
end

function SetKXNN_1(nType)
	local List = {
		[3492] = {"S�c m�nh"},
		[3493] = {"G�n c�t"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 1", getn(tSay), tSay);
end

function SetKXNN_2(nType,ID1)
	local List = {
		[3505] = {"N�i c�ng"},
		[3506] = {"Th�n ph�p"},
		[3507] = {"Linh ho�t"},
		[3508] = {"�i�m sinh l�c"},
		[3509] = {"T� l� �i�m sinh l�c %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 2", getn(tSay), tSay);
end

function SetKXNN_3(nType,ID1, ID2)
	local List = {
		[3521] = {"B�o k�ch"},
		[3522] = {"�i�m ngo�i c�ng"},
		[3523] = {"�i�m n�i c�ng"},
		[3524] = {"C�ng k�ch"},
		[3525] = {"T�ng �i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 3", getn(tSay), tSay);
end

function SetKXNN_4(nType,ID1, ID2, ID3)
	local List = {
		[3539] = {"Ph�ng th� b�o k�ch"},
		[3540] = {"Gi�m s�t th��ng b�o k�ch"},
		[3541] = {"H� gi�p ngo�i ph�ng"},
		[3542] = {"H� gi�p n�i ph�ng"},
		[3543] = {"H� gi�p n�i ngo�i ph�ng"},
		[3544] = {"�i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 4", getn(tSay), tSay);
end

function SetKXNN_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3552] = {"S�c m�nh"},
		[3553] = {"G�n c�t"},
		[3554] = {"Sinh l�c t�ng %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 5", getn(tSay), tSay);
end

function SetKXNN_6(nType,ID1, ID2, ID3,ID4,ID5)

	if nType == 154 then
		List = {
			[3577] = {"T�c �� ch�y"},
			[3578] = {"T�c �� xu�t chi�u"},
			[3579] = {"Gi�m th� th��ng"},
			[3580] = {"T�ng ch� m�nh"},
		};
	else
		List = {
			[3564] = {"Gi�i h�n cao nh�t ngo�i c�ng v� kh�"},
			[3565] = {"Gi�i h�n th�p nh�t ngo�i c�ng v� kh�"},
			[3566] = {"T� l� ngo�i c�ng %"},
			[3567] = {"�i�m t�ng c�ng k�ch ngo�i c�ng"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 6", getn(tSay), tSay);
end

function SetKXNN_End(nType,ID1,ID2,ID3,ID4,ID5,ID6)
	local pifeng,pIndex = AddItem(0,nType,36,1,1,-1,-1,-1,-1,-1,-1,0,10)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	DelItem(2,1,50005,1);
end


g_szTitle3 = "<color=green>Kim X� M�ng S�t: <color>";

function Get_KXMS()
	local tSay = {
		"Kim X� M�ng S�t - �o Ch�o�ng/#SetKXMS_1(152)",
		"Kim X� M�ng S�t - Huy Ch��ng/#SetKXMS_1(153)",
		"Kim X� M�ng S�t - Chi�n H�i/#SetKXMS_1(154)",
		"H�y/nothing",
	};
	
	Say(g_szTitle3, getn(tSay), tSay);
end

function SetKXMS_1(nType)
	local List = {
		[3586] = {"N�i c�ng"},
		[3587] = {"G�n c�t"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 1", getn(tSay), tSay);
end

function SetKXMS_2(nType,ID1)
	local List = {
		[3599] = {"S�c m�nh"},
		[3600] = {"Th�n ph�p"},
		[3601] = {"Linh ho�t"},
		[3602] = {"�i�m sinh l�c"},
		[3603] =  {"T� l� �i�m sinh l�c %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 2", getn(tSay), tSay);
end

function SetKXMS_3(nType,ID1, ID2)
	local List = {
		[3615] = {"B�o k�ch"},
		[3616] = {"�i�m ngo�i c�ng"},
		[3617] = {"�i�m n�i c�ng"},
		[3618] = {"C�ng k�ch"},
		[3619] = {"T�ng �i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 3", getn(tSay), tSay);
end

function SetKXMS_4(nType,ID1, ID2, ID3)
	local List = {
		[3633] = {"Ph�ng th� b�o k�ch"},
		[3634] = {"Gi�m s�t th��ng b�o k�ch"},
		[3635] = {"H� gi�p ngo�i ph�ng"},
		[3636] = {"H� gi�p n�i ph�ng"},
		[3637] = {"H� gi�p n�i ngo�i ph�ng"},
		[3638] = {"�i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 4", getn(tSay), tSay);
end

function SetKXMS_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3646] = {"N�i c�ng"},
		[3647] = {"Th�n ph�p"},
		[3648] = {"Linh ho�t"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 5", getn(tSay), tSay);
end

function SetKXMS_6(nType,ID1, ID2, ID3,ID4,ID5)

	if nType == 154 then
		List = {
			[3673] = {"T�c �� ch�y"},
			[3674] = {"T�c �� xu�t chi�u"},
			[3675] = {"Gi�m th� th��ng"},
			[3676] = {"T�ng ch� m�nh"},
			[3677] = {"Gi�m th�i gian th� th��ng"},
		};
	else
		List = {
			[3658] = {"Gi�i h�n cao nh�t n�i c�ng v� kh�"},
			[3659] = {"Gi�i h�n th�p nh�t n�i c�ng v� kh�"},
			[3660] = {"T�ng n�i c�ng %"},
			[3661] = {"�i�m c�ng k�ch n�i c�ng"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 6", getn(tSay), tSay);
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
		g_szTitle.."L�a ch�n",
		"Nh�n Nguy�n Li�u/nhannl",
		"��i Event/doiev",
		"Ra kh�i/nothing",
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
		Talk(1, "", "Thi�u nguy�n li�u r�i ml : 5 Nh�nh Hoa Mai vs 2 V�t Ph�m Xu!");
		return 0;
	end
	if DelItem(2,1,30051 , 5 * nCount) == 1 and DelItem(2,1,30230, 2 * nCount) == 1 then
		AddItem(2,1,30053, 1*nCount)
	end
end

function showKX()
	local tSay = {
		g_szTitle.."L�a ch�n",
		-- "Nh�n Th�n Nguy�t l�nh (KX6)/Get_KimXa",
		"Trang b� Kim x� 4 (ng�u nhi�n)/showKX4",
		-- "Trang b� Kim x� 5 (ng�u nhi�n)/showKX5",
		-- "Trang b� Kim x� 6 (ng�u nhi�n)/showKX6",
		-- "Trang b� Kim x� 7 (ng�u nhi�n)/showKX7",
	}
	tinsert(tSay,"Ra kh�i/nothing");
	SelectSay(tSay);	
end;

function getRandomKX4(nSet)
	KXDH = {
		[1] = {
			[1056] = "Linh ho�t B",
			[1057] = "Th�n ph�p B",
		},
		[2] = {
			[1069] = "S�c m�nh B",
			[1070] = "G�n c�t B",
			[1071] = "N�i c�ng B",
			[1072] = "Sinh l�c B",
			[1073] = "T� l� sinh l�c B",
		},
		[3] = {
			[1079] = "Linh ho�t B",
			[1080] = "Th�n ph�p B",
		},
		[4] = {
			[1] = {
				[1092] = "Ph�n ��n ngo�i c�ng/1%B",
				[1093] = "Ph�n ��n n�i c�ng/1%B",
				[1094] = "T�ng s�t th��ng/1B",
				[1095] = "K�m theo ��c s�t/1B",
				[1096] = "T�ng s�t th��ng c� ��c/1B",
			},
			[2] = {
				[1108] = "Ph�n ��n ngo�i c�ng/1%B",
				[1109] = "Ph�n ��n n�i c�ng/1%B",
				[1110] = "T�ng s�t th��ng/1B",
				[1111] = "K�m theo ��c s�t/1B",
				[1112] = "T�ng s�t th��ng c� ��c/1B",
			},
			[3] = {
				[1123] = "T�ng t�c �� xu�t chi�u/1%B",
				[1124] = "Kh�ng t�t c� B",
				[1125] = "T�ng ch� m�nh/1%B",
			}
		}
	}
	
	KXTH = {
		[1] = {
			[1129] = "S�c m�nh B",
		},
		[2] = {
			[1143] = "Linh ho�t B",
			[1144] = "Th�n ph�p B",
			[1145] = "G�n c�t B",
			[1146] = "N�i c�ng B",
			[1147] = "Sinh l�c B",
			[1148] = "T� l� sinh l�c B",
		},
		[3] = {
			[1156] = "S�c m�nh B",
			[1157] = "G�n c�t B",
			[1158] = "Sinh l�c %B",
		},
		[4] = {
			[1] = {
				[1168] = "Ph�n ��n ngo�i c�ng/1B",
				[1169] = "Ph�n ��n n�i c�ng/1B",
				[1170] = "T�ng ngo�i c�ng/1%B",
				[1171] = "T�ng c�ng k�ch ngo�i c�ng/1B",
			},
			[2] = {
				[1181] = "Ph�n ��n ngo�i c�ng/1B",
				[1182] = "Ph�n ��n n�i c�ng/1B",
				[1183] = "T�ng ngo�i c�ng/1%B",
				[1184] = "T�ng c�ng k�ch ngo�i c�ng/1B",
			},
			[3] = {
				[1194] = "T�c �� di chuy�n/1%B",
				[1195] = "T�ng t�c �� xu�t chi�u/1%B",
				[1196] = "H�t sinh l�c B",
				[1197] = "Gi�m th� th��ng/1%B",
			}
		}
	}
	
	KXVD = {
		[1] = {
			[1201] = "N�i c�ng B",
		},
		[2] = {
			[1213] = "Linh ho�t B",
			[1214] = "Th�n ph�p B",
			[1215] = "G�n c�t B",
			[1216] = "Sinh l�c B",
			[1217] = "T� l� sinh l�c B",
		},
		[3] = {
			[1225] = "Linh ho�t B",
			[1226] = "Th�n ph�p B",
			[1227] = "N�i c�ng B",
		},
		[4] = {
			[1] = {
				[1237] = "T�ng n�i c�ng/1%B",
				[1238] = "T�ng c�ng k�ch n�i c�ng/1B",
				[1239] = "N�i c�ng l�n nh�t tr�n v� kh� t�ng/1B",
				[1240] = "N�i c�ng nh� nh�t tr�n v� kh� t�ng/1B",
			},
			[2] = {
				[1250] = "T�ng n�i c�ng/1%B",
				[1251] = "T�ng c�ng k�ch n�i c�ng/1B",
				[1252] = "N�i c�ng l�n nh�t tr�n v� kh� t�ng/1B",
				[1253] = "N�i c�ng nh� nh�t tr�n v� kh� t�ng/1B",
			},
			[3] = {
				[1263] = "T�c �� di chuy�n/1%B",
				[1264] = "T�ng t�c �� xu�t chi�u/1%B",
				[1265] = "Gi�m th� th��ng/1%B",
				[1266] = "T�ng ch� m�nh/1%B",
			}
		}
	}
	
	local tSet = {};
	if nSet == 26 then tSet = KXDH
	elseif nSet == 27 then tSet = KXTH
	elseif nSet == 28 then tSet = KXVD end;
	
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh�n kim x� th�nh c�ng!");
	end;
end;

function getRandomKX5(nSet)
	KXHC = {
		[1] = {
			[1955] = "Linh ho�t - V�ng",
			[1956] = "Th�n ph�p - V�ng",
		},
		[2] = {
			[1973] = "N�i c�ng - V�ng",
			[1974] = "S�c m�nh - V�ng",
			[1975] = "C�n c�t - V�ng",
			[1976] = "T�ng �i�m sinh l�c - V�ng",
			[1977] = "T�ng t� l� �i�m sinh l�c - V�ng",
		},
		[3] = {
			[1997] = "B�o k�ch - V�ng",
			[1999] = "T�ng �i�m s� ngo�i c�ng - V�ng",
			[2000] = "T�ng �i�m s� n�i c�ng - V�ng",
			[2001] = "T�ng �i�m s� n�i ngo�i - V�ng",
			[2002] = "To�n thu�c t�nh - V�ng",
		},
		[4] = {
			[2022] = "Ph�ng b�c - V�ng",
			[2023] = "Gi�m b�c - V�ng",
			[2024] = "H� gi�p ngo�i ph�ng - V�ng",
			[2025] = "H� gi�p n�i ph�ng - V�ng",
			[2026] = "H� gi�p n�i ngo�i ph�ng - V�ng",
			[2027] = "�i�m sinh l�c - V�ng",
		},
		[5] = {
			[2035] = "Linh ho�t - V�ng",
			[2036] = "Th�n ph�p - V�ng",
		},
		[6] = {
			[1] = {
				[2055] = "T�ng s�t th��ng - V�ng",
				[2056] = "C�ng k�ch k�m ��c - V�ng",
				[2057] = "S�t th��ng ��c tr�ng - V�ng",
			},
			[2] = {
				[2074] = "T�c �� ch�y - V�ng",
				[2075] = "Ph�t huy V� c�ng - V�ng",
				[2076] = "Gi�m n�a ch�u th��ng - V�ng",
				[2077] = "X�c su�t chu�n x�c - V�ng",
				[2078] = "To�n thu�c t�nh - V�ng",
			}
		}
	}
	
	KXQP = {
		[1] = {
			[2086] = "S�c m�nh - V�ng",
			[2087] = "C�n c�t - V�ng",
		},
		[2] = {
			[2104] = "N�i c�ng - V�ng",
			[2105] = "Th�n ph�p - V�ng",
			[2106] = "Linh ho�t - V�ng",
			[2107] = "�i�m sinh l�c - V�ng",
			[2108] = "T� l� �i�m sinh l�c - V�ng",
		},
		[3] = {
			[2128] = "B�o k�ch - V�ng",
			[2130] = "�i�m ngo�i c�ng - V�ng",
			[2131] = "�i�m n�i c�ng - V�ng",
			[2132] = "�i�m n�i ngo�i c�ng - V�ng",
			[2133] = "T�ng �i�m sinh l�c - V�ng",
		},
		[4] = {
			[2153] = "Ph�ng b�c - V�ng",
			[2154] = "Gi�m b�c - V�ng",
			[2155] = "H� gi�p ngo�i ph�ng - V�ng",
			[2156] = "H� gi�p n�i ph�ng - V�ng",
			[2157] = "H� gi�p n�i ngo�i ph�ng - V�ng",
			[2158] = "�i�m sinh l�c - V�ng",
		},
		[5] = {
			[2169] = "S�c m�nh - V�ng",
			[2170] = "C�n c�t - V�ng",
			[2171] = "T�ng t� l� �i�m sinh l�c - V�ng",
		},
		[6] = {
			[1] = {
				[2193] = "Gi�i h�n cao nh�t ngo�i c�ng v� kh� - v�ng ",
				[2194] = "Gi�i h�n th�p nh�t ngo�i c�ng v� kh� - V�ng",
				[2195] = "T� l� ngo�i c�ng - V�ng",
				[2196] = "�i�m t�ng c�ng k�ch ngo�i c�ng - V�ng",
			},
			[2] = {
				[2213] = "T�c �� ch�y - V�ng",
				[2214] = "Ph�t huy V� c�ng - V�ng",
				[2215] = "Gi�m n�a ch�u th��ng - V�ng",
				[2216] = "X�c su�t chu�n x�c - V�ng",
			}
		}
	}
	
	KXDV = {
		[1] = {
			[2225] = "N�i c�ng - V�ng",
			[2226] = "C�n c�t - V�ng",
		},
		[2] = {
			[2243] = "S�c m�nh - V�ng",
			[2244] = "Th�n ph�p - V�ng",
			[2245] = "Linh ho�t - V�ng",
			[2246] = "�i�m sinh l�c - V�ng",
			[2247] = "T� l� �i�m sinh l�c - V�ng",
		},
		[3] = {
			[2267] = "B�o k�ch - V�ng",
			[2269] = "�i�m ngo�i c�ng - V�ng",
			[2270] = "�i�m n�i c�ng - V�ng",
			[2271] = "�i�m n�i ngo�i c�ng - V�ng",
			[2272] = "T�ng �i�m sinh l�c - V�ng",
		},
		[4] = {
			[2292] = "Ph�ng b�c - V�ng",
			[2293] = "Gi�m b�c - V�ng",
			[2294] = "H� gi�p ngo�i ph�ng - V�ng",
			[2295] = "H� gi�p n�i ph�ng - V�ng",
			[2296] = "H� gi�p n�i ngo�i ph�ng - V�ng",
			[2297] = "�i�m sinh l�c - V�ng",
		},
		[5] = {
			[2308] = "N�i c�ng - V�ng",
			[2309] = "Th�n ph�p - V�ng",
			[2310] = "Linh ho�t - V�ng",
		},
		[6] = {
			[1] = {
				[2332] = "Gi�i h�n cao nh�t n�i c�ng v� kh� - V�ng",
				[2333] = "Gi�i h�n th�p nh�t n�i c�ng v� kh� - V�ng",
				[2334] = "T� l� n�i c�ng-v�ng",
				[2335] = "�i�m t�ng c�ng k�ch n�i c�ng- v�ng",
			},
			[2] = {
				[2352] = "T�c �� ch�y - V�ng",
				[2353] = "Ph�t huy V� c�ng - V�ng",
				[2354] = "Gi�m n�a ch�u th��ng - V�ng",
				[2355] = "X�c su�t chu�n x�c - V�ng",
				[2356] = "R�t ng�n ��ng t�c b� th��ng- V�ng",
			}
		}
	}

	local tSet = {};
	if nSet == 29 then tSet = KXHC
	elseif nSet == 30 then tSet = KXQP
	elseif nSet == 31 then tSet = KXDV end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh�n kim x� th�nh c�ng!");
	end;

end;

function getRandomKX6(nSet)
	KXDG = {
		[1] = {
			[2618] = {"S�c m�nh"},
			[2619] = {"G�n c�t"},
		},
		[2] = {
			[2631] = {"N�i c�ng"},
			[2632] = {"Th�n ph�p"},
			[2633] = {"Linh ho�t"},
			[2634] = {"�i�m sinh l�c"},
			[2635] = {"T� l� �i�m sinh l�c"},
		},
		[3] = {
			[2647] = {"B�o k�ch"},
			[2648] = {"�i�m ngo�i c�ng"},
			[2649] = {"�i�m n�i c�ng"},
			[2650] = {"�i�m n�i ngo�i c�ng"},
			[2651] = {"T�ng �i�m sinh l�c"},
		},
		[4] = {
			[2665] = {"Ph�ng b�c"},
			[2666] = {"Gi�m b�c"},
			[2667] = {"H� gi�p ngo�i ph�ng"},
			[2668] = {"H� gi�p n�i ph�ng"},
			[2669] = {"H� gi�p n�i ngo�i ph�ng"},
			[2670] = {"�i�m sinh l�c"},
		},
		[5] =  {
			[2678] = {"S�c m�nh"},
			[2679] = {"G�n c�t"},
			[2680] = {"T�ng t� l� �i�m sinh l�c"},
		},
		[6] = {
			[1] = { -- �o cho�ng v� huy ch��ng
				[2690] = {"Gi�i h�n cao nh�t ngo�i c�ng v� kh�"},
				[2691] = {"Gi�i h�n th�p nh�t ngo�i c�ng v� kh�"},
				[2692] = {"T� l� ngo�i c�ng"},
				[2693] = {"�i�m t�ng c�ng k�ch ngo�i c�ng"},
			},
			[2] = { -- Gi�y (154)
				[2703] = {"T�c �� ch�y"},
				[2704] = {"Ph�t huy v� c�ng"},
				[2705] = {"Gi�m n�a th� th��ng"},
				[2706] = {"X�c su�t chu�n x�c"},
			}
		}
	}
	
	KXHL = {
		[1] = {
			[2514] = {"Linh ho�t"},
			[2515] = {"Th�n Ph�p"},
		},
		[2] = {
			[2527] = {"N�i c�ng"},
			[2528] = {"S�c m�nh"},
			[2529] = {"G�n c�t"},
			[2530] = {"�i�m sinh l�c"},
			[2531] = {"T� l� �i�m sinh l�c"},
		},
		[3] = {
			[2543] = {"B�o k�ch"},
			[2544] = {"�i�m ngo�i c�ng"},
			[2545] = {"�i�m n�i c�ng"},
			[2546] = {"�i�m n�i ngo�i c�ng"},
			[2547] = {"T�ng �i�m sinh l�c"},
		},
		[4] = {
			[2561] = {"Ph�ng b�c"},
			[2562] = {"Gi�m b�c"},
			[2563] = {"H� gi�p ngo�i ph�ng"},
			[2564] = {"H� gi�p n�i ph�ng"},
			[2565] = {"H� gi�p n�i ngo�i ph�ng"},
			[2566] = {"�i�m sinh m�nh"},
		},
		[5] = {
			[2572] = {"Linh ho�t"},
			[2573] = {"Th�n ph�p"},
		},
		[6] = {
			[1] = {
				[2583] = {"T�ng s�t th��ng"},
				[2584] = {"C�ng k�ch k�m ��c"},
				[2585] = {"S�t th��ng ��c tr�ng"},
				[2586] = {"T� l� kh�ng tr�ng th�i b�t th��ng"},
			},
			[2] = {
				[2608] = {"T�c �� ch�y"},
				[2609] = {"Ph�t huy V� c�ng"},
				[2610] = {"Gi�m n�a ch�u th��ng"},
				[2611] = {"X�c su�t chu�n x�c"},
				[2612] = {"To�n thu�c t�nh"},
			}
		}
	}
	
	KXKP = {
		[1] = {
			[2712] = {"N�i c�ng"},
			[2713] = {"G�n c�t"},
		},
		[2] = {
			[2725] = {"S�c m�nh"},
			[2726] = {"Th�n ph�p"},
			[2727] = {"Linh ho�t"},
			[2728] = {"�i�m sinh l�c"},
			[2729] =  {"T� l� �i�m sinh l�c"},
		},
		[3] = {
			[2741] = {"B�o k�ch"},
			[2742] = {"�i�m ngo�i c�ng"},
			[2743] = {"�i�m n�i c�ng"},
			[2744] = {"�i�m n�i ngo�i c�ng"},
			[2745] = {"T�ng �i�m sinh l�c"},
		},
		[4] = {
			[2759] = {"Ph�ng b�c"},
			[2760] = {"Gi�m b�c"},
			[2761] = {"H� gi�p ngo�i ph�ng"},
			[2762] = {"H� gi�p n�i ph�ng"},
			[2763] = {"H� gi�p n�i ngo�i ph�ng"},
			[2764] = {"�i�m sinh l�c"},
		},
		[5] = {
			[2772] = {"N�i c�ng"},
			[2773] = {"Th�n ph�p"},
			[2774] = {"Linh ho�t"},
		},
		[6] = {
			[1] = {
				[2784] = {"Gi�i h�n cao nh�t n�i c�ng v� kh�"},
				[2785] = {"Gi�i h�n th�p nh�t n�i c�ng v� kh�"},
				[2786] = {"T�ng n�i c�ng"},
				[2787] = {"�i�m c�ng k�ch n�i c�ng"},
			},
			[2] = {
				[2803] = {"R�t ng�n th�i gian th� th��ng"},
				[2799] = {"T�c �� ch�y"},
				[2800] = {"Ph�t huy v� c�ng"},
				[2801] = {"Gi�m n�a th� th��ng"},
				[2802] = {"X�c su�t chu�n x�c"},
			}
		}
	}

	local tSet = {};
	if nSet == 32 then tSet = KXHL
	elseif nSet == 33 then tSet = KXDG
	elseif nSet == 34 then tSet = KXKP end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh�n kim x� th�nh c�ng!");
	end;
end


function getRandomKX7(nSet)
	
	KXSL = {
		[1] = {
			[3388]="Linh ho�t",
			[3389]="Th�n ph�p",
		},
		[2] = {
			[3401] = "N�i c�ng",
			[3402] = "S�c m�nh",
			[3403] = "C�n c�t",
			[3404] = "T�ng �i�m sinh l�c",
			[3405] = "T�ng t� l� �i�m sinh l�c",
		},
		[3] = {
			[3417] = "B�o k�ch",
			[3418] = "T�ng �i�m s� ngo�i c�ng",
			[3419] = "T�ng �i�m s� n�i c�ng",
			[3420] = "T�ng �i�m s� n�i ngo�i",
			[3421] = "To�n thu�c t�nh",
		},
		[4] = {
			[3435] = "Ph�ng b�c",
			[3436] = "Gi�m b�c",
			[3437] = "H� gi�p ngo�i ph�ng",
			[3438] = "H� gi�p n�i ph�ng",
			[3439] = "H� gi�p n�i ngo�i ph�ng",
			[3440] = "�i�m sinh l�c",
		},
		[5] = {
			[3446] = "Linh ho�t",
			[3447] = "Th�n ph�p",
		},
		[6] = {
			[1] = {
				[3457] = "T�ng s�t th��ng",
				[3458] = "C�ng k�ch k�m ��c",
				[3459] = "S�t th��ng ��c tr�ng",
			},
			[2] = {
				[3468] = "T�ng s�t th��ng",
				[3469] = "C�ng k�ch k�m ��c",
				[3470] = "S�t th��ng ��c tr�ng",
			},
			[3] = {
				[3482] = "T�c �� ch�y",
				[3483] = "Ph�t huy V� c�ng",
				[3484] = "Gi�m n�a ch�u th��ng",
				[3485] = "X�c su�t chu�n x�c",
				[3486] = "To�n thu�c t�nh",
			}
		}
	}

	KXNN = {
		[1] = {
			[3492] = "S�c m�nh",
			[3493] = "C�n c�t",
		},
		[2] = {
			[3505] = "N�i c�ng",
			[3506] = "Th�n ph�p",
			[3507] = "Linh ho�t",
			[3508] = "�i�m sinh l�c",
			[3509] = "T� l� �i�m sinh l�c",
		},
		[3] = {
			[3521] = "B�o k�ch",
			[3522] = "�i�m ngo�i c�ng",
			[3523] = "�i�m n�i c�ng",
			[3524] = "�i�m n�i ngo�i c�ng",
			[3525] = "T�ng �i�m sinh l�c",
		},
		[4] = {
			[3539] = "Ph�ng b�c",
			[3540] = "Gi�m b�c",
			[3541] = "H� gi�p ngo�i ph�ng",
			[3542] = "H� gi�p n�i ph�ng",
			[3543] = "H� gi�p n�i ngo�i ph�ng",
			[3544] = "�i�m sinh l�c",
		},
		[5] = {
			[3552] = "S�c m�nh",
			[3553] = "C�n c�t",
			[3554] = "T�ng t� l� �i�m sinh l�c",
		},
		[6] = {
			[1] = {
				[3564] = "Gi�i h�n cao nh�t ngo�i c�ng v� kh� ",
				[3565] = "Gi�i h�n th�p nh�t ngo�i c�ng v� kh�",
				[3566] = "T� l� ngo�i c�ng",
				[3567] = "�i�m t�ng c�ng k�ch ngo�i c�ng",
			},
			[2] = {
				[3577] = "T�c �� ch�y",
				[3578] = "Ph�t huy V� c�ng",
				[3579] = "Gi�m n�a ch�u th��ng",
				[3580] = "X�c su�t chu�n x�c",
			}
		}
	}
			
	KXMS = {
		[1] = {
			[3586] = "N�i c�ng",
			[3587] = "C�n c�t",
		},
		[2] = {
			[3599] = "S�c m�nh",
			[3600] = "Th�n ph�p",
			[3601] = "Linh ho�t",
			[3602] = "�i�m sinh l�c",
			[3603] = "T� l� �i�m sinh l�c",
		},
		[3] = {
			[3615] = "B�o k�ch",
			[3616] = "�i�m ngo�i c�ng",
			[3617] = "�i�m n�i c�ng",
			[3618] = "�i�m n�i ngo�i c�ng",
			[3619] = "T�ng �i�m sinh l�c",
		},
		[4] = {
			[3633] = "Ph�ng b�c",
			[3634] = "Gi�m b�c",
			[3635] = "H� gi�p ngo�i ph�ng",
			[3636] = "H� gi�p n�i ph�ng",
			[3637] = "H� gi�p n�i ngo�i ph�ng",
			[3638] = "�i�m sinh l�c",
		},
		[5] = {
			[3646] = "N�i c�ng",
			[3647] = "Th�n ph�p",
			[3648] = "Linh ho�t",
		},
		[6] = {
			[1] = {
				[3658] = "Gi�i h�n cao nh�t n�i c�ng v� kh�",
				[3659] = "Gi�i h�n th�p nh�t n�i c�ng v� kh�",
				[3660] = "T� l� n�i c�ng-v�ng",
				[3661] = "�i�m t�ng c�ng k�ch n�i c�ng- v�ng",
			},
			[2] = {
				[3673] = "T�c �� ch�y",
				[3674] = "Ph�t huy V� c�ng",
				[3675] = "Gi�m n�a ch�u th��ng",
				[3676] = "X�c su�t chu�n x�c",
				[3677] = "R�t ng�n ��ng t�c b� th��ng- V�ng",
			}
		}
	}
	local tSet = {};
	if nSet == 35 then tSet = KXSL
	elseif nSet == 36 then tSet = KXNN
	elseif nSet == 37 then tSet = KXMS end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh�n kim x� th�nh c�ng!");
	end;
end;



function showKX7()
	tSay = {
		"S�t Lang/#getRandomKX7(35)",
		"Nhu� Nha/#getRandomKX7(36)",
		"M�ng S�t/#getRandomKX7(37)",
	}
	tinsert(tSay,"Ch�a mu�n nh�n/nothing");
	Say("Ch�n lo�i kim x�",getn(tSay),tSay);
end;

function showKX6()
	tSay = {
		"Hoan L�ng/#getRandomKX6(32)",
		"��ng Giao/#getRandomKX6(33)",
		"Kh�i Ph��ng/#getRandomKX6(34)",
	}
	tinsert(tSay,"Ch�a mu�n nh�n/nothing");
	Say("Ch�n lo�i kim x�",getn(tSay),tSay);
end;

function showKX5()
	tSay = {
		"Hi�p c�t/#getRandomKX5(29)",
		"Qu� ph�/#getRandomKX5(30)",
		"��ng v�n/#getRandomKX5(31)",
	}
	tinsert(tSay,"Ch�a mu�n nh�n/nothing");
	Say("Ch�n lo�i kim x�",getn(tSay),tSay);
end;


function showKX4()
	tSay = {
		"Du hi�p/#getRandomKX4(26)",
		"Thi�t huy�t/#getRandomKX4(27)",
		"V�n du/#getRandomKX4(28)",
	}
	tinsert(tSay,"Ch�a mu�n nh�n/nothing");
	Say("Ch�n lo�i kim x�",getn(tSay),tSay);
end;

function addSetofKX(tSet, nSet)
	local r1,r2,r3,r4,r5,r6;
	-- Add Phi phong
	r1,r2,r3,r4,r5,r6 = getIndexs(tSet,1);
	AddKX(152,nSet,r1,r2,r3,r4,r5,r6);
	-- Add Huy ch��ng
	r1,r2,r3,r4,r5,r6 = getIndexs(tSet,2);
	AddKX(153,nSet,r1,r2,r3,r4,r5,r6);
	-- Add Chi�n h�i
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
		g_szTitle.."Ng��i mu�n l�y b�  g�?",
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
		"Ra kh�i/nothing",
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
        g_szTitle.."L�a ch�n",
        "Nh�n trang b� H�a Ph�ng/Get_CT_HP",
        "Nh�n trang b� Thanh Long/Get_CT_TL",
        "Nh�n trang b� Uy H�/Get_CT_UH",
        "Ra kh�i/nothing",
    };
    SelectSay(szSay);    
end


--Trang bi UY HO
function Get_CT_UH()
    local szSay = {
        g_szTitle.."L�a ch�n trang b�",
        "Trang ph�c Uy H� T*�ng Phe T�ng/#Get_TP_CT_UH(1,1)",
        "Trang ph�c Uy H� So�i Phe T�ng/#Get_TP_CT_UH(1,2)",
        "Trang ph�c Uy H� T*�ng Phe Li�u/#Get_TP_CT_UH(2,1)",
        "Trang ph�c Uy H� So�i Phe Li�u/#Get_TP_CT_UH(2,2)",
        "Ra kh�i/nothing",
    };
    SelectSay(szSay);
end


--Trang bi THANH LONG
function Get_CT_TL()
    local szSay = {
        g_szTitle.."L�a ch�n trang b�",
        "Trang ph�c Thanh Long T*�ng Phe T�ng/#Get_TP_CT_TL(1,1)",
        "Trang ph�c Thanh Long So�i Phe T�ng/#Get_TP_CT_TL(1,2)",
        "Trang ph�c Thanh Long T*�ng Phe Li�u/#Get_TP_CT_TL(2,1)",
        "Trang ph�c Thanh Long So�i Phe Li�u/#Get_TP_CT_TL(2,2)",
        "Ra kh�i/nothing",
    };
    SelectSay(szSay);
end


--Trang bi Hoa Phung
function Get_CT_HP()
    local szSay = {
        g_szTitle.."L�a ch�n trang b�",
        "Trang ph�c H�a Ph�ng T*�ng Phe T�ng/#Get_TP_CT_HP(1,1)",
        "Trang ph�c H�a Ph�ng So�i Phe T�ng/#Get_TP_CT_HP(1,2)",
        "Trang ph�c H�a Ph�ng T*�ng Phe Li�u/#Get_TP_CT_HP(2,1)",
        "Trang ph�c H�a Ph�ng So�i Phe Li�u/#Get_TP_CT_HP(2,2)",
        "Ra kh�i/nothing",
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

-- Tr? l?i c�ng tr?ng tru?c nhe b?n
-- - Add 25 tri?u di?m c�ng tr?ng phe Li�u : ?gm ds SetTask(701, GetTask(701) - 25000000)

-- - Add Qu�n h�m so�i Li�u : ?gm ds SetTask(704,-6)

-- - Add 50 ngh�n di?m t�ch luy chi?n tru?ng ?gm ds SetTask(707, GetTask(707) + 50000)

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


	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
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


	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
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
		g_szTitle.."Ch�n hi�u �ng g�?",
		-- "ID 1 /#char_eff(1)",
		-- "ID 2/#char_eff(2)",
		-- "ID 3/#char_eff(3)",
		-- "ID 4/#char_eff(4)",
		-- "ID 5/#char_eff(5)",
		-- "ID 6/#char_eff(6)",
		-- "ID 7/#char_eff(7)",
		-- "ID 8/#char_eff(8)",
		-- "ID 9/#char_eff(9)",
		"B�ng Ch�y L�n/#char_eff(10)",
		-- "ID 11/#char_eff(11)",
		"Ra kh�i/nothing",
	};

	SelectSay(szSay); 
end
function char_eff(id)
	local idEff = {929 ,933 ,937 ,943 ,949 ,962 ,965 ,966 ,978 ,979 ,990 };
	SetCurrentNpcSFX(PIdx2NpcIdx(),idEff[id],5,1);
end

function testeff_ad()
	local szSay = {
		g_szTitle.."Ch�n hi�u �ng g�?",
		"ID 1 /#char_eff_ad(1)",
		"ID 2/#char_eff_ad(2)",
		"ID 3/#char_eff_ad(3)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay); 
end

function char_eff_ad(id)
	local idEff = {970 ,985 ,988 };
	SetCurrentNpcSFX(PIdx2NpcIdx(),idEff[id],1,1);
end

function annouce_baotri()
	Msg2Global("H� th�ng s� b�o tr� c�p nh�t trong 5 ph�t n�a, th�i gian b�o tr�: 5 ph�t, vui l�ng th�ng c�m ! C�m �n");
	AddLocalNews("H� th�ng s� b�o tr� c�p nh�t trong 5 ph�t n�a, th�i gian b�o tr�: 5 ph�t, vui l�ng th�ng c�m ! C�m �n");
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
		g_szTitle.."N�ng l�n ��ng c�p 87 v� 0 �i�m kinh nghi�m (X�a t�t c� �i�m kinh nghi�m hi�n t�i?",
		"Ta mu�n n�ng cao ��ng c�p v� ch�p nh�n x�a t�t c� kinh nghi�m hi�n c� /really_hotrogmer1st",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay); 
	else
		Talk(1,"","Ch� h� tr� nh�n s� c� ��ng c�p nh� h�n 86")
	end
end

function  really_hotrogmer1st()
		local curExp = GetExp();
		gf_Modify("Exp",-curExp);
		SetLevel(87, 1);
		AddItem(2,1,30668,10);
		Talk(1,"","Vui l�ng tho�t game v� ��ng nh�p l�i!")
end

function nguafake()
	AddItem(0,105,220,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,221,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,222,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,223,1,1,7,403,7,-1,7,-1,7,0);
end