--���ָ��

Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
Include("\\script\\napthe\\tien_trang.lua")
Include("\\script\\online\\viet_event\\vng_task_control.lua")
Include("\\script\\meo\\gm-vip.lua")
Include("\\script\\meo\\gm_item\\admin.lua")
Include("\\script\\meo\\lolicoin\\code.lua")

g_szTitle = "<color=green>H��ng d�n:<color>"

function OnUse(nItem)
	if 1 ~= IsExpSvrSystemOpen() then
		return
	end
	
	local tSay = {}
	local nRoute = GetPlayerRoute();
	if nRoute <= 0 then
		tSay = {
			"Gia nh�p m�n ph�i/JoinRoute_UpdateLevel",
			"T�ng LV 99/Get_CAP1",
		}
	else
		tSay = {
	--		"Nh�p Code/GiftCodeNhap",
			"HOT.Nh�n Item Tr�i Nghi�m Game/ItemTraiNghiem",
			"0.Nh�p Gift Code/lolicode",
			"1.R�t Kim Phi�u V�o Game/RutKimPhieu",
			format("%s/getTiLi", "2.H�i ph�c th� l�c"),
            "3.Nh�n Qu� RollBack/Get_Qua_Update",
            "4.Nh�n Qu� Admin/Get_Mored",
			"5.Luy�n max skill tr�n ph�i/maxtranphai",
            "6.Thao t�c chuy�n sinh/chuyensinh",
            "7.Nh�n V�t Ph�m H� Tr� Th�m/Get_Nguyen_Lieu",
            "8.Nh�n danh hi�u/Get_Danh_Hieu",
            "8.T�ng �i�m nh�n v�t/Get_Diem_Char",
			"9.Nh�n trang b� (M�i)/MenuEquipments",
			"10.Nh�n L�u Ph�i Ch�n Quy�n v� Y�u Quy�t/Get_Book",
            "11.��i Phe Chi�n Tr��ng(1 l�n duy nh�t)/ShowMenuChangeTeam",
			"12.Nh�n 4000 v�ng/Get_Money",
            "13.Nh�n Lak 9x, m�u th�, m�u xu, b�nh Ng�/GetBonus_Day",
			"14.Thao t�c bang h�i/TongOperation",
			"15.Thao t�c kinh m�ch/GetJingMai",
			"16.B� sung tinh l�c/Get_Energy",
			"17.K� n�ng s�ng/Life_Skill",
			"18.Nh�n Qu�n h�m nguy�n so�i/Get_NguyenSoai",
			"19.Nh�n Qu�n h�m nguy�n so�i/Get_Lieu",
			"20.Nh�n Nh�n 50.000 �i�m c�ng tr�ng/Get_CongTrang",
	--		"Th� nghi�m FIX �m mana/fix_mana",
			"21.Nh�n t�i li�u c��ng h�a/Get_Enhance",
	--		"20.Reset l�i gi�i h�n gi� ch�i/Reset_Time_Playy",
			format("%s/Pet_OP", "22.Thao t�c th� c�ng"),
	--		format("%s/getTiLi", "H�i ph�c th� l�c"),
			format("%s/getTianJiaoLing", "23.Nh�n Thi�n Ki�u L�nh"),
		}
		if 3 == nRoute then
			tinsert(tSay, "Nh�n Thi�n Ph�t Ch�u v� Ph� Ma Ch�/Give_ZhuzhuZhouzhou")
		end
		if 6 == nRoute then
			tinsert(tSay, "Nh�n �m Kh� v� C� Quan/Give_JiguanAnqi")
		end
		if 8 == nRoute then
			tinsert(tSay, "Nh�n X� L�i Kim ��n/Give_Dandan")
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
	end
	if tostring(GetAccount())== "admin"or tostring(GetAccount())== "tinykidpro" then
			tinsert(tSay, "100. T�nh n�ng GM Admin/GMADP")
			end
	if tostring(GetAccount())== "admin"then
			tinsert(tSay, "Mod Jx2 Animal/GMADP2")
		end
	tinsert(tSay, "Thanh l� t�i/ClearBagAllItem");
	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
	Say(g_szTitle.." <color=gold>H� th�ng h� tr� ng��i ch�i? Li�n h� <bclr=pink><color=white>https://facebook.com/jx2animal<color><bclr> <color=pink>n�u c�n h� tr� ho�c g�p �!", getn(tSay), tSay);
end
function GMADP()
	local szSay ={
		g_szTitle.."<bclr=pink><color=white>�m ��ng c� m� x�a acc tinykidpro ra gi�m nh� tml ko del fix n�a ��u nh�",
				"Nh�n Buff ADM/adm_buff",
				"G�i th�ng b�o th� gi�i/thongbaothegioi",
				"Quy�n N�ng T�i Th��ng/thuongadmin",
				"Nh�n c� ph�/Copho",
				"M� Th� N��ng/openeventtho",
				"Set v� m�n ph�i/setvmpgm", 
				"Nh�n Item Update/GioiThieu",
				"Nh�n Chi�n T��ng/chientuong",
				"Nh�n Ng�a M�i 1/ngumoi1",
				"Nh�n Ng�a M�i 2/ngumoi2",
				"Nh�n Ng�a M�i 3/ngumoi3",
				"L�y Item b�ng ID/AddItemToGamer",
	--			"Nh�n Nh�n 250.000 �i�m c�ng tr�ng/Get_CongTrang",
				"G�i Boss T�ng H�p /BossTongHop",
				"Nh�n Qu�n h�m nguy�n so�i/Get_NguyenSoai",
				"Nh�n Qu�n h�m nguy�n so�i/Get_Lieu",
	--			"Nh�n Qu�n h�m nguy�n quan/Tuong_quan",
	--			"Nh�n trang b� Uy H� t��ng so�i/Choose_UyHoTuongSoai",
	--			"Nh�n Ngo�i Trang vip t�c ��nh/ngoaitrangtocdanh",
	--			"Nh�n Ngo�i Trang vip dame/ngoaitrangdame",
	--			"Nh�n U�n Linh ngo�i trang + V� Ti�u y /nhanULmax",
				"M� event s�n boss h�c tinh/boss_admin",
	--			"Luy�n max skill tr�n ph�i/maxtranphai",
	--			"Nh�n �n chuy�n sinh/an_lol",
	--			"Ph�t s�ng vk/PS_vk",
	--			"Nh�n 999 xu/mautho",
	--			"Minh Gi�o/join_mg",
	--			"Nh�n trang b� V� Song Chi�n Th�n+15/get_hbvs",
				"Gia nh�p m�n ph�i test/JoinRoute_UpdateLevel1",
	--			"Nh�n V� Kh� Nguy�n T�/VuKhiNguyenTu",
				"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function boss_admin()
	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("WorldBoss_HacTinh","H�c H�a V�nh H�ng", nMap, nX + 2, nY + 2,-1,1,1,30)
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")
	AddLocalNews("BOSSSSS H�c H�a V�nh H�ng �� tr�i d�y. C�c ��i hi�p h�y mau ��n ti�p �ng ti�u di�t �� nh�n trang b� H�c Tinh V�nh H�ng!!!")
end

function ngumoi1()
   AddItem(0,105,148,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,149,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,160,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,163,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,166,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,161,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30051,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30057,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30058,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30059,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30155,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30164,1,3,7,403,7,13762,7,13762,7,0);
	PlaySound("\\sound\\sound_i016.wav");
end

function ngumoi2()
   AddItem(0,105,210,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,1210,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,10122,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,180,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,181,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,182,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,193,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,194,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,1211,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,1212,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30098,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30099,1,3,7,403,7,13762,7,13762,7,0);
	PlaySound("\\sound\\sound_i016.wav");
end

function ngumoi3()
   AddItem(0,105,30147,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30148,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30174,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30175,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30177,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30178,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30179,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30187,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30188,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30189,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,30161,1,3,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,203,1,3,7,403,7,13762,7,13762,7,0);
	PlaySound("\\sound\\sound_i016.wav");
end

function GMADP2()
	local szSay ={
		g_szTitle.."Ch�o <color=pink>Nhi kute ��ng y�u c�a <color=green>anh Th��ng EoPi",
				"Nh�n Buff ADM/adm_buff",
				"Ph�t s�ng vk/PS_vk",
				"Nh�n V� Kh� Nguy�n T�/VuKhiNguyenTu",
				"Set v� m�n ph�i/setvmpgm",
				"Nh�n lv1 /Get_CongTrang",
				"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Copho()

	local tCopho ={
		[2]		={206,207,251},
		[3]		={204,205},
		[4]		={201,202,203},
		[6]		={208,209,250},
		[8]		={210,211},
		[9]		={212,213},
		[11]	={214,215},
		[12]	={216,217,252},
		[14]	={218,219},
		[15]	={220,221},
		[17]	={222,223,224},
		[18]	={225,226},
		[20]	={227,228,253,254,255,256,257},
		[21]	={229,230},
		[23]	={231,232},
		[25]	={237,238,239,240},
		[26]	={241,242,243,244},
		[27]	={245,246,247,248},
		[29]	={233,234},
		[30]	={235,236,249},
	};
	
	local nRoute = GetPlayerRoute()
	if 1 ~= gf_CheckPlayerRoute() then
		return 0;
	end

	if 1 ~= gf_Judge_Room_Weight((tCopho[nRoute][2] - tCopho[nRoute][1] + 1), 1, g_szTitle) then
		return 0;
	end

	for key,value in tCopho[nRoute] do
			gf_AddItemEx({2, 6, value, 1}, "C� Ph�");
	end
end

function GioiThieu2()
AddItem(0,102,11092,1,4,-1,-1,-1,-1,-1,-1)
AddItem(0,102,11093,1,4,-1,-1,-1,-1,-1,-1)
AddItem(0,112,30045,1); --m�t t�ch h�c tinh ph�
AddItem(0,107,30046,1); --m�t t�ch h�c tinh ch�nh
AddItem(2,1,50003,999);
AddItem(2,1,50004,999);
AddItem(2,1,50008,999);
AddItem(2,0,30080,1,4);
end

function GioiThieu()
AddItem(0,102,11094,1,3,-1,-1,-1,-1,-1,-1)
AddItem(0,102,11095,1,3,-1,-1,-1,-1,-1,-1)
end

function AddItemToGamer() 
	AskClientForString("AddItemToGamer_2","",1,20,"Nh�p V�o Item Code:") 
end

function AddItemToGamer_2(szItem)
	local szICode = SplitString(szItem, ",");
	local n = getn(szICode);
	AddItem(szICode[1],szICode[2],szICode[3],szICode[4],szICode[5],szICode[6])
--	Msg2Player(szICode[1])
end

function daquy10()
AddItem(2, 22, 108, 100);
AddItem(2, 22, 208, 100);
AddItem(2, 22, 308, 100);
AddItem(2, 22, 408, 100);
end

function GetBonus_Day()
AddItem(2,1,30499,100,4);
AddItem(1,1,15,200,4);
AddItem(1,1,17,200,4);
AddItem(1,1,19,200,4);
AddItem(1, 1, 1,999)
AddItem(1, 1, 1,999)
AddItem(1, 1, 1,999)
AddItem(1,0,30005,99)
AddItem(1,0,30006,99)
AddItem(1,0,30007,99)
AddItem(1, 0, 30009,99)
AddItem(1, 0, 30010,99)
AddItem(1, 0, 30011,99)
end

function Get_Qua_Update()
   AddTitle(70, 1);
   AddItem(0,105,211,1,1,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,212,1,1,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,213,1,1,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,214,1,1,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,215,1,1,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,216,1,1,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,217,1,1,7,403,7,13762,7,13762,7,0);
   AddItem(0,105,218,1,1,7,403,7,13762,7,13762,7,0);
   Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u VIP s� l�p ch�p ch�p do Admin Th��ng KuTe g�i t�ng �� b�n du xu�n");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function ItemTraiNghiem()
AddItem(2,1,50016,10,3);
AddItem(0,107,50141,1,3);
AddItem(0,107,50142,1,3);
AddItem(2,1,50008,1000,3);
PlaySound("\\sound\\sound_i016.wav");
SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function fix_mana()
if GetNeili() > 32767 then
        ModifyNeili(32767)
end
end

function Get_CAP1()
					SetLevel(99, 1);
	                PlaySound("\\sound\\sound_i016.wav");
	                SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_CAP2()
					SetLevel(1, 1);
	                PlaySound("\\sound\\sound_i016.wav");
	                SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function chuyensinh()
	local szSay ={
		g_szTitle.."<bclr=pink><color=white>L�u �!!! Ngo�i trang chuy�n sinh kh�ng gi�i h�n s� l�n nh�n!!!<bclr><color>",
            "Nh�n chuy�n sinh 10/player_reborn",
			"Thay ��i h��ng Ph�c Sinh/change_PhucSinh",
			"Nh�n �n chuy�n sinh/an_reborn",
				"Ra kh�i/nothing",
	};
	SelectSay(szSay);
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



function adm_buff()
	local tSay = {
		"Nh�n B�t T�/adm_bt",
		"Nh�n KTC/adm_ktc",
		"Nh�n T�ng H�nh/adm_th",
		"Nh�n HTMT/adm_htmt",
		"Nh�n HTMT50/adm_htmt50",
		"Nh�n TDXC/adm_tdxc",
		"Nh�n 100000HP/adm_HP",
		"Nh�n 1000000HP/adm_HPP",
		"Nh�n Bao Kich/adm_BK",
		"Nh�n Bao Kich C�ng Th�m/adm_bkct",
		"Nh�n 1000Ne/adm_ne",
		"Nh�n 1000 S�t Th��ng/adm_st",
		"Nh�n 100 PTBK/adm_ptbk",
		"Nh�n 100 GSTBK/adm_gstbk",
		"Nh�n 1000 Ch�nh x�c/adm_cx",
		"T�ng LV 1/Get_CAP2",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."Ch�c N�ng ADMON", getn(tSay), tSay);
end

function adm_bus()
	local tSay = {
		"Nh�n KTC/adm_ktc",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."Ch�c N�ng ADMON", getn(tSay), tSay);
end

function adm_bt()
		CastState("state_dispear", 84600,-1, 1, nStateID)
		Msg2Player("���c hi�u qu�: V� ��ch 24h");
end
function adm_ktc()
CastState("state_add_allability", 1000, -1, 1, nStateID)
		Msg2Player("���c hi�u qu�: Kh�ng T�t C� + 2000 �i�m");
end
function adm_th()
		CastState("state_illusion_latent", 84600,-1, 1, nStateID)
		Msg2Player("���c hi�u qu�: T�ng h�nh 24h");
end
function adm_htmt()
CastState("state_add_book_attribute_value",500,-1, 1, nStateID)
	Msg2Player("���c hi�u qu�: HTMT 1000%");
end

function adm_htmt50()
CastState("state_add_book_attribute_value",50,-1, 1, nStateID)
	Msg2Player("���c hi�u qu�: HTMT 1000%");
end

function adm_tdxc()
CastState("state_burst_enhance_rate", 50, -1, 1, nStateID)
	Msg2Player("���c hi�u qu�: TDXC 50");
end

function adm_HP()
CastState("state_life_max_point_add", 100000, -1, 1, nStateID)
	Msg2Player("���c hi�u qu�: 100000HP");
end

function adm_HPP()
CastState("state_life_max_point_add", 1000000, -1, 1, nStateID)
	Msg2Player("���c hi�u qu�: 1000000HP");
end

function adm_BK()
CastState("state_critical_point_increase", 50, -1, 1, nStateID)
	Msg2Player("���c hi�u qu�: 50 Bao kich");
end

function adm_ne()
CastState("state_dodge_point_increase", 1000, -1, 1, nStateID)
	Msg2Player("���c hi�u qu�: 1000 Ne");
end

function adm_st()
CastState("state_damage_point", 1000, -1, 1, nStateID)
	Msg2Player("���c hi�u qu�: 1000 S�t Th��ng");
end

function adm_ptbk()
CastState("state_def_critical_point_increase", 100, -1, 1, nStateID)
	Msg2Player("���c hi�u qu�: 100 Ph�ng Th� b�o K�ch");
end

function adm_gstbk()
CastState("state_def_critical_damage_increase", 100, -1, 1, nStateID)
	Msg2Player("���c hi�u qu�: 100 Gi�m s�t th��ng b�o k�ch");
end

function adm_bkct()
CastState("state_critical_damage_increase", 100, -1, 1, nStateID)
	Msg2Player("���c hi�u qu�: 100 b�o k�ch C�ng Th�m");
end

function adm_cx()
CastState("state_accuracy_point_increase", 10000, -1, 1, nStateID)
	Msg2Player("���c hi�u qu�: 1000 Ch�nh x�c");
end

function thongbaothegioi()
	local tSay = {
		"B�o tr� sau 15 ph�t n�a/thongbaothegioi1",
		"Nh�c nh� t�i v� ch�y AutoUpdate/thongbaothegioi2",
		"Th�ng b�o b�n c�p nh�t/thongbaothegioi3",
		"B�o tr� sau 5 ph�t n�a/thongbaothegioi4",
		"C�nh c�o ch�i d�/thongbaothegioi5",
		"Anh em share live/thongbaothegioi6",
		"T�i autoupdate m�i nh�t/thongbaothegioi7",
		"Th�ng b�o anh em ��nh Boss/thongbaothegioi8",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."Ch�c n�ng g�i th�ng b�o th� gi�i", getn(tSay), tSay);
end
function thongbaothegioi1()
	AddLocalNews("Th�ng b�o!!! Sau 15 ph�t n�a, server s� ti�n h�nh b�o tr� trong v�ng 30 ph�t!!!")
end
function thongbaothegioi2()
	AddLocalNews("C�c ��i hi�p h�y t�i v� ch�y Autoupdate �� c�p nh�t phi�n b�n m�i nh�t ngay t�i http://pk.loliteam.net")
end
function thongbaothegioi3()
	AddLocalNews("C�c ��i hi�p l�u �! Th�ng tin v� b�n c�p nh�t m�i v�a ���c ��ng t�i tr�n Website v� Fanpage c�a Server, h�y gh� th�m �� bi�t th�m th�ng tin.")
end
function thongbaothegioi4()
	AddLocalNews("Th�ng b�o!!! Sau 5 ph�t n�a, server s� ti�n h�nh b�o tr� trong v�ng 30 ph�t!!!")
end
function thongbaothegioi5()
	AddLocalNews("��y l� Server mi�n ph�, �� h� tr� anh em m�i th�, c�y cu�c nh� nh�ng ch� y�u PK. N�u c�n ti�p t�c ch�i d� th� ADMIN ng�ng update. L�y c� ph� ra l�m v� d� �i�n h�nh!!!")
end
function thongbaothegioi6()
	AddLocalNews("Anh em share live stream v� tham gia c�c event ���c Admin t� ch�c �� nh�n trang b� VIP n�o")
end
function thongbaothegioi7()
	AddLocalNews("=.= L�u �!!! Vui l�ng t�i b�n Autoupdate m�i nh�t �� tr�nh ph�t sinh l�i khi ch�i game")
end
function thongbaothegioi8()
	AddLocalNews("BOSSSSSSSSS H�c H�a V�nh H�ng �� tr�i d�y t�i V� �ang (197 / 211), c�c con n� h�y mau bay qua hi�p d�m n� l�y Vi�n H�c Tinh!!!")
end

function openeventtho()
	local t_denglong_sets = {
	[0] = {"Thi�u L�m", {204, 1526, 3269}},--������
	[1] = {"Nga My", {303, 1552, 3232}},--����һ
	[2] = {"���ng M�n", {305, 1530, 2921}},--���ڶ�
	[3] = {"C�i Bang", {209, 1515, 3265}},--������
	[4] = {"V� �ang", {312, 1707, 3477}},--������
	[5] = {"Ng� ��c", {407, 1555, 3286}},--������
	[6] = {"D��ng M�n", {219, 1655, 3301}},--������
};

	local nDay = tonumber(date("%w"));
	
	local nNpcIndex = 3;
	local nNpcLifeTime = 57 * 60;--��Ϊsystemtimetask.txt������Щ�����ʱ���Ѿ���ռ�ã����Ա���΢��������ʱ��
	nNpcIndex = CreateNpc("L� n��ng b�nh", "L� N��ng", gf_UnPack(t_denglong_sets[nDay][2]));
	SetNpcLifeTime(nNpcIndex, nNpcLifeTime);
	SetNpcScript(nNpcIndex, "\\script\\online\\viet_event\\200909\\2\\npc_zoujundenglong.lua");
	AddUnitStates(nNpcIndex, 6, GetTime());--��¼NPC������ʱ��
	AddLocalNews("Y�n ti�c Th�t N��ng ���c chi�u ��i t�i ["..t_denglong_sets[nDay][1].."]. M�i ��ng ��o ��n tham d�!");
end
function setvmpgm()
SetPlayerRoute(0)
end
function Get_tayvosongchienthan()
	if gf_Judge_Room_Weight(2, 100, " ") ~= 1 then
		return 0;
	end
	AddItem(2, 1, 30531, 100);	
	AddItem(2, 1, 30525, 100);	
end

function ShowMenuChangeTeam()
    local isChanged = GetTask(3576);
    if isChanged == 1 then
        Say("M�i ng��i ch� thay ��i phe 1 l�n mi�n ph� th�i n�!", 0);
        return 0;
    end
    local tSay = {   
        "Ta mu�n ��i sang T�ng/#change_team(3)",
        "Ta mu�n ��i sang Li�u/#change_team(-3)",
        "Quay l�i/showMainGMItem",
        "Ta ch� xem qua th�i/nothing"
    }
    Say(g_szTitle.."Ng��i quy�t ��nh thay ��i theo phe n�o ��y?", getn(tSay), tSay);
end

function change_team(nTeamID)
    local curTeam = GetTask(701);
    if nTeamID == 3 then
       if curTeam < 0 then
           SetTask(701, curTeam*-1);
       end
   elseif nTeamID == -3 then
       if curTeam > 0 then
            SetTask(701, curTeam*-1);
        end
    end
    SetTask(3576, 1);
end

function get_vosongchienthan15()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
				return 0;
		end
		local nBody 	= GetBody();
		local nSex 	= GetSex();
		local nLevel  = 15;
		if nSex == 1 and nBody ==1 then 
				AddItem(0,100,30651,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30651,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30651,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nSex == 1 and nBody ==2 then 
				AddItem(0,100,30652,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30652,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30652,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nSex == 2 and nBody ==3 then 
				AddItem(0,100,30653,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30653,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30653,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nSex == 2 and nBody ==4 then 
				AddItem(0,100,30654,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30654,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30654,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
end

function get_hbvs	()
	if 1 ~= gf_Judge_Room_Weight(3, 1, g_szTitle) then
				return 0;
		end
		local nBody 	= GetBody();
		local nSex 	= GetSex();
		local nLevel  = 15;
		if nSex == 1 and nBody ==1 then 
				AddItem(0,100,20020,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20020,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20020,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nSex == 1 and nBody ==2 then 
				AddItem(0,100,20021,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20021,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20021,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nSex == 2 and nBody ==3 then 
				AddItem(0,100,20022,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20022,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20022,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nSex == 2 and nBody ==4 then 
				AddItem(0,100,20023,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20023,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20023,1,4,-1,-1,-1,-1,-1,-1,1,nLevel)
		end

end
function Get_vocucminhtinh()
	AddItem(0,102,31130,1,4,-1,-1,-1,-1,-1,-1)
	AddItem(0,102,31131,1,4,-1,-1,-1,-1,-1,-1)
end

function Process_SanJianTao1()
   if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
		return 0;
	end
	for i=32,34 do
    local pifeng,pIndex	=AddItem(0,154,i,1,4,-1,-1,-1,-1,-1,-1,0,7)
    FeedItem(pIndex,1000000)
		local huizhang,hIndex	=AddItem(0,153,i,1,4,-1,-1,-1,-1,-1,-1,0,7)
		FeedItem(hIndex,1000000)
		local xie,xIndex	=AddItem(0,152,i,1,4,-1,-1,-1,-1,-1,-1,0,7)
		FeedItem(xIndex,1000000)
	end
end

function getTianJiaoLing()
	AddItem(2,97,236,100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end
function getTiLi()
	RestoreStamina()
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end
function Pet_OP()
	local tSay = {}
	if GetSkillLevel(30149) == 0 then
		tinsert(tSay, format("%s/activePet", "K�ch ho�t ph�c sinh th� c�ng"))
	end
	tinsert(tSay, format("%s/getPetEgg", "Nh�n Tr�ng Th� C�ng"))
	tinsert(tSay, format("%s/getLingLi", "Nh�n �i�m linh l�c"))
	tinsert(tSay, format("%s/sachpet", "Nh�n S�ch Pet V� C� - Ph� ��ch"))
	tinsert(tSay, format("%s/sachpet2", "Nh�n S�ch Pet 5"))
	tinsert(tSay, format("%s/sachpet3", "Nh�n S�ch Pet 6"))
	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
	Say(g_szTitle.."Ng��i c�n gi�p �� g�? Li�n h� https://facebook.com/Thuong.EoPi �� ���c h� tr� th�m!!!", getn(tSay), tSay);
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
end

function Process_SanJianTao()
   if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
		return 0;
	end
	for i=26,28 do
    local pifeng,pIndex	=AddItem(0,154,i,1,1,-1,-1,-1,-1,-1,-1,0,15)
    FeedItem(pIndex,1000000)
		local huizhang,hIndex	=AddItem(0,153,i,1,1,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(hIndex,1000000)
		local xie,xIndex	=AddItem(0,152,i,1,1,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(xIndex,1000000)
	end
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
	AddItem(2,1,31169,99)
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

function JoinRoute_UpdateLevel1()
	if GetPlayerFaction() ~= 0 then
		Talk(1,"",format("Ng��i �� gia nh�p m�n ph�i r�i, ta kh�ng th� gi�p ���c g�."));
		return 0;
	end
	local tMenu = {
		"���ng M�n Nh�m Hi�p /#enter_mp(31)",
		"C�n L�n Ki�m T�n/#enter_mp(32)",
		"Ra kh�i/nothing",
	};
	Say("Ng��i mu�n gia nh�p l�u ph�i g�?", getn(tMenu), tMenu);
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
		"Minh Gi�o/join_mg",
		"Ra kh�i/nothing",
	};
	Say("Ng��i mu�n gia nh�p l�u ph�i g�?", getn(tMenu), tMenu);
end

--------------------------------------------------ѡ�����ɿ�ʼ--------------------------------------
function join_sl()
	if GetSex() == 2 then
		Say(g_szTitle.."Ph�i Thi�u L�m ch� thu nh�n �� t� nam", 0);
		return
	end

	if GetPlayerFaction() ~= 0 then
		return
	end;

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
		"Minh Gi�o Th�nh Chi�n (�ao)/#enter_mp(25)",
		"Minh Gi�o Tr�n Binh (B�t)/#enter_mp(26)",
		"Minh Gi�o Huy�t Nh�n (Tr�o)/#enter_mp(27)",
		"Ra kh�i/nothing",
	};

	SelectSay(szSay);
end;

function join_wd()
	if GetPlayerFaction() ~= 0 then
		return
	end;

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
	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"C�i Bang T�nh y (Quy�n)/#enter_mp(11)",
		"C�i Bang � Y (B�ng)/#enter_mp(12)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_tm()
	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		--"���ng M�n Nh�m Hi�p /#enter_mp(5)",
		"���ng M�n/#enter_mp(6)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_ym()
	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"D��ng M�n Th��ng K�/#enter_mp(17)",
		"D��ng M�n Cung K�/#enter_mp(18)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_wdu()
	if GetPlayerFaction() ~= 0 then
		return
	end;

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

	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng��i mu�n gia nh�p l�u ph�i g�?",
		"C�n L�n Thi�n S�/#enter_mp(23)",
		--"C�n L�n Ki�m T�n/#enter_mp(22)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end;

function join_cy()
	if GetSex()==1 then
		Talk(1,"","Th�y Y�n kh�ng thu nh�n �� t� nam!");
		return 0
	end

	if GetPlayerFaction() ~= 0 then
		return
	end;

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
	elseif nRoute == 31 then					--������ɮ
		LearnSkill(17);
		LearnSkill(1883);
		nBegin = 1872;
		nEnd = 1882;
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
	elseif nRoute == 32 then					--������ʦ
		LearnSkill(1885);
		LearnSkill(1899);
		nBegin = 1886 ;
		nEnd = 1898;
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

	----------------------------������ֵ------------
	--PlayerReborn(1, random(4));			--6ת
	--gf_SetTaskByte(1538, 1, 5) 			--5ת
	SetTask(336, 20000);				--����ʦ�Ź��׶�
	ModifyReputation(2000, 0);			--��������
	gf_SetTaskByte(1538, 1, 5) 			--5ת	
	SetLevel(85, 1);								--���õȼ�
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	Msg2Player("Thao t�c th�nh c�ng, h�y ��ng nh�p l�i")
	SaveNow()
	Talk(1,"ExitGame","Thao t�c th�nh c�ng, h�y ��ng nh�p l�i")
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
		local nLevel  = 15;
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
				AddItem(0,11,9005,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 21 and nBody ==2 then 
				AddItem(0,100,3171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3171,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nRoute == 21 and nBody ==3 then 
				AddItem(0,100,3172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3172,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nRoute == 21 and nBody ==4 then 
				AddItem(0,100,3173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,3173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,3173,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,9005,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
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

function Get_JinShe()
		if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
				return 0;
		end
		local nRoute	= GetPlayerRoute();
		local nBody 	= GetBody();
		local nLevel  = 15;
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

function Get_Book()
	local szSay = {
		g_szTitle.."Nh�n L�u Ph�i Ch�n Quy�n v� Quy�t Y�u!",
		"Nh�n Ch�n Quy�n/Get_Book_ZhenJuan",
		"Nh�n Quy�t Y�u/Get_Book_JueYao",
		"Th�ng c�p m�t t�ch �� trang b�/Get_Book_Update",
		"Nh�n M�t t�ch ph�/get_mattichphu",
	--	"T�ng ph�n tr�m ch� s� m�t t�ch/Get_Buff_Update",
	--	"Y�u quy�t Minh Gi�o �ao/nhanyqmgd",
	--	"Y�u quy�t Minh Gi�o Tr�o/nhanyqmgt",
	--	"Y�u quy�t Minh Gi�o B�t/nhanyqmgb",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function get_mattichphu()
	local szSay = {
		g_szTitle.."Nh�n c�c lo�i m�t t�ch ph�!",
		"Tr��ng Quy�n Ph�/get_mt1",
		"T��ng H�nh Ph�/get_mt2",
		"Trung B�nh Ph�/get_mt3",
		"Khai S�n Ph�/get_mt4",
		"Kh� Li�u Thu�t/get_mt5",
		"To�i Di�p Ph�/get_mt6",
		"T� Nguy�n C�ng Ph�/get_mt7",
		"Huy�n Th�ch C�ng Ph�/get_mt8",
		"Kim Thi�n Ph�/get_mt9",
		"Tu La M�t t�ch/get_mt10",
		"B� Kim M�t t�ch/get_mt11",
		"B� Th�ch M�t t�ch/get_mt12",
		"Ng� Qu� M�t t�ch/get_mt13",
		"Thi�n H� M�t t�ch/get_mt14",
		"T� H� M�t t�ch/get_mt15",
		"Chi�m Y Ph�/get_mt16",
		"T� Linh Chi�n � Ph�/get_mt17",
		"T� Linh Thi�n � Ph�/get_mt18",
		"T� Linh T� � Ph�/get_mt19",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end
function get_mt1()
AddItem(0,107,51,1)
Msg2Player("B�n nh�n ���c m�t t�ch Tr��ng Quy�n Ph�")
end
function get_mt2()
AddItem(0,107,52,1)
Msg2Player("B�n nh�n ���c m�t t�ch T��ng H�nh Ph�")
end
function get_mt3()
AddItem(0,107,53,1)
Msg2Player("B�n nh�n ���c m�t t�ch Trung B�nh Ph�")
end
function get_mt4()
AddItem(0,107,54,1)
Msg2Player("B�n nh�n ���c m�t t�ch Khai S�n Ph�")
end
function get_mt5()
AddItem(0,107,55,1)
Msg2Player("B�n nh�n ���c m�t t�ch Kh� Li�u Thu�t")
end
function get_mt6()
AddItem(0,107,56,1)
Msg2Player("B�n nh�n ���c m�t t�ch To�i Di�p Ph�")
end
function get_mt7()
AddItem(0,107,57,1)
Msg2Player("B�n nh�n ���c m�t t�ch T� Nguy�n C�ng Ph�")
end

function get_mt8()
AddItem(0,107,58,1)
Msg2Player("B�n nh�n ���c m�t t�ch Huy�n Th�ch C�ng Ph�")
end
function get_mt9()
AddItem(0,107,59,1)
Msg2Player("B�n nh�n ���c m�t t�ch Kim Thi�n Ph�")
end
function get_mt10()
AddItem(0,107,60,1)
Msg2Player("B�n nh�n ���c m�t t�ch Tu La M�t t�ch")
end
function get_mt11()
AddItem(0,107,61,1)
Msg2Player("B�n nh�n ���c m�t t�ch B� Kim M�t t�ch")
end
function get_mt12()
AddItem(0,107,62,1)
Msg2Player("B�n nh�n ���c m�t t�ch B� Th�ch M�t t�ch")
end
function get_mt13()
AddItem(0,107,63,1)
Msg2Player("B�n nh�n ���c m�t t�ch Ng� Qu� M�t t�ch")
end
function get_mt14()
AddItem(0,107,64,1)
Msg2Player("B�n nh�n ���c m�t t�ch Thi�n H� M�t t�ch")
end
function get_mt15()
AddItem(0,107,65,1)
Msg2Player("B�n nh�n ���c m�t t�ch T� H� M�t t�ch")
end
function get_mt16()
AddItem(0,107,66,1)
Msg2Player("B�n nh�n ���c m�t t�ch Chi�m Y Ph�")
end
function get_mt17()
AddItem(0,107,159,1)
AddItem(0,107,162,1)
Msg2Player("B�n nh�n ���c m�t t�ch T� Linh Chi�n � Ph�")
end
function get_mt18()
AddItem(0,107,160,1)
AddItem(0,107,163,1)
Msg2Player("B�n nh�n ���c m�t t�ch T� Linh Thi�n � Ph�")
end
function get_mt19()
AddItem(0,107,161,1)
AddItem(0,107,164,1)
Msg2Player("B�n nh�n ���c m�t t�ch T� Linh T� � Ph�")
end
function nhanyqmgt()
AddItem(2,6,207,1)
AddItem(2,6,208,1)
AddItem(2,6,209,1)
AddItem(2,6,210,1)
AddItem(2,6,211,1)
AddItem(2,6,212,1)
AddItem(2,6,213,1)
AddItem(2,6,214,1)
AddItem(2,6,215,1)
AddItem(2,6,216,1)
AddItem(2,6,217,1)
AddItem(2,6,218,1)
end
function nhanyqmgb()
AddItem(2,6,195,1)
AddItem(2,6,196,1)
AddItem(2,6,197,1)
AddItem(2,6,198,1)
AddItem(2,6,199,1)
AddItem(2,6,200,1)
AddItem(2,6,201,1)
AddItem(2,6,202,1)
AddItem(2,6,203,1)
AddItem(2,6,204,1)
AddItem(2,6,205,1)
AddItem(2,6,206,1)
end
function nhanyqmgd()
AddItem(2,6,183,1)
AddItem(2,6,184,1)
AddItem(2,6,185,1)
AddItem(2,6,186,1)
AddItem(2,6,187,1)
AddItem(2,6,188,1)
AddItem(2,6,189,1)
AddItem(2,6,190,1)
AddItem(2,6,191,1)
AddItem(2,6,192,1)
AddItem(2,6,193,1)
AddItem(2,6,194,1)
end

function Get_Nguyen_Lieu()
	local szSay = {
		g_szTitle.."Nh�n C�c Lo�i V�t Li�u!",
		"Nh�n �� qu�/Get_Gem",
		"Nh�n �� qu� 10/daquy10",
		"Nh�n B�a C��ng H�a 12 13 14 15/Bua12345",
		"Nh�n Th�n Th�ch ��nh H�n/Get_Enhance_1",
		"Nh�n Tinh th�ch Thi�n Th�ch/Get_Enhance_2",
		"Nh�n nguy�n li�u t�y v� song chi�n th�n /Get_tayvosongchienthan",
		"Nh�n B�ng Th�ch/bangthach",
		"Nh�n Ma �ao Th�ch 1 2 3/madaothach",
		"Nh�n 100 Thi�n M�n Kim L�nh/Get_NL_TMKL",
		"Nh�n 100 Thi�n Cang L�nh/Get_NL_TCL",
		"Nh�n 100 Gi�m ��nh ph� c�p 7/Get_NL_FU",
		"Nh�n 1000 Ma Tinh/Get_NL_MT",
		"Nh�n Kim Ng�c Di�p (Ti�m S�ch Pet)/kimngocdiep",
		"Nh�n Nguy�n Li�u T�y Kim X�/Get_Tay",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Bua12345()
AddItem(2,1,30424,100)
AddItem(2,1,30425,100)
AddItem(2,1,30426,100)
AddItem(2,1,30427,100)
end

function bangthach()
AddItem(2,1,149,100)
end

function mautho()
AddItem(1,0,30005,999)
AddItem(1,0,30006,999)
AddItem(1,0,30007,999)
end

function madaothach()
AddItem(2,1,30428,100)
AddItem(2,1,30429,100)
AddItem(2,1,30430,100)
end

function kimngocdiep()
	AddItem(2, 1, 30729,999)
end

function chieuyeuky()
	AddItem(2, 1, 31307,5)
end

function Get_Tay()
	if gf_Judge_Room_Weight(8, 100, " ") ~= 1 then
		return 0;
	end
	AddItem(2, 1, 30529, 10);
	AddItem(2, 1, 30530, 10);
	AddItem(2, 1, 30531, 10);
	AddItem(2, 1, 30532, 10);	
	AddItem(2, 1, 30523, 10);
	AddItem(2, 1, 30524, 10);
	AddItem(2, 1, 30525, 10);
	AddItem(2, 1, 30526, 10);
end

function sachpet()
AddItem(2,150,85,1)
AddItem(2,150,106,1)
end
function sachpet2()
AddItem(2,150,67,1)
AddItem(2,150,68,1)
AddItem(2,150,69,1)
AddItem(2,150,70,1)
AddItem(2,150,71,1)
AddItem(2,150,72,1)
AddItem(2,150,73,1)
AddItem(2,150,74,1)
AddItem(2,150,75,1)
AddItem(2,150,76,1)
AddItem(2,150,77,1)
AddItem(2,150,78,1)
AddItem(2,150,79,1)
AddItem(2,150,80,1)
AddItem(2,150,81,1)
end
function sachpet3()
AddItem(2,150,87,1)
AddItem(2,150,88,1)
AddItem(2,150,89,1)
AddItem(2,150,90,1)
AddItem(2,150,91,1)
AddItem(2,150,92,1)
AddItem(2,150,93,1)
AddItem(2,150,94,1)
AddItem(2,150,95,1)
AddItem(2,150,96,1)
AddItem(2,150,97,1)
AddItem(2,150,98,1)
AddItem(2,150,99,1)
AddItem(2,150,100,1)
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

function Get_NL_FU()
	AddItem(2,5,7,100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end
	
function Get_NL_MT()
	AddItem(2,1,30497,1000)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_Bua()
	if gf_Judge_Room_Weight(4, 100, " ") ~= 1 then
		return 0;
	end
	AddItem(2, 1, 30424, 100);
	AddItem(2, 1, 30425, 100);
	AddItem(2, 1, 30426, 100);
	AddItem(2, 1, 30427, 100);
end

function Get_Book_ZhenJuan()
	if gf_Judge_Room_Weight(7, 1, g_szTitle) ~= 1 then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	
	if nRoute == 2 then
		AddItem(0, 107, 30018,5)
		AddItem(0, 107, 204-38,5)
	end
	
		if nRoute == 3 then
		AddItem(0, 107, 30020,5)
		AddItem(0, 107, 206-38,5)
	end
	
		if nRoute == 4 then
		AddItem(0, 107, 30019,5)
		AddItem(0, 107, 205-38,5)
	end
	
		if nRoute == 6 then
		AddItem(0, 107, 30021,5)
		AddItem(0, 107, 207-38,5)
	end
	
		if nRoute == 8 then
		AddItem(0, 107, 30022,5)
		AddItem(0, 107, 208-38,5)
	end
	
		if nRoute == 9 then
		AddItem(0, 107, 30023,5)
		AddItem(0, 107, 209-38,5)
	end
	
		if nRoute == 11 then
		AddItem(0, 107, 30024,5)
		AddItem(0, 107, 210-38,5)
	end
	
		if nRoute == 12 then
		AddItem(0, 107, 30025,5)
		AddItem(0, 107, 211-38,5)
	end
	
		if nRoute == 14 then
		AddItem(0, 107, 30026,5)
		AddItem(0, 107, 212-38,5)
	end
	
		if nRoute == 15 then
		AddItem(0, 107, 30027,5)
		AddItem(0, 107, 213-38,5)
	end
	
		if nRoute == 17 then
		AddItem(0, 107, 30028,5)
		AddItem(0, 107, 214-38,5)
	end
	
		if nRoute == 18 then
		AddItem(0, 107, 30029,5)
		AddItem(0, 107, 215-38,5)
	end
	
		if nRoute == 20 then
		AddItem(0, 107, 30030,5)
		AddItem(0, 107, 216-38,5)
	end
	
			if nRoute == 21 then
		AddItem(0, 107, 30031,5)
		AddItem(0, 107, 217-38,5)
	end
	
	if nRoute == 23 then--������ʦ
		AddItem(0, 107, 30032,5)
		AddItem(0, 107, 218-20,5)
	end
	
	if nRoute == 29 then--����
		AddItem(0, 107, 30033,5)
	  AddItem(0, 107, 222-20,5)
	end
	
	if nRoute == 30 then--��Ů
		AddItem(0, 107, 30034,5)
		AddItem(0, 107, 223-20,5)
	end
		if nRoute == 25 then--��Ů
		AddItem(0,107,30035,5)
		--AddItem(0, 107, 223-20,5)
	end
	if nRoute == 26 then--��Ů
		AddItem(0,107,30036,5)
		--AddItem(0, 107, 223-20,5)
	end
	if nRoute == 27 then--��Ů
		AddItem(0,107,30037,5)
		--AddItem(0, 107, 223-20,5)
	end	
	
	gf_AddItemEx({0, 112, 158,	1, 4}, "L�ng Ba Vi B� to�n t�p");
end

function Get_Book_JueYao()
--	local tJue ={ de nhan co pho
--		[2]		={1,6},
--		[3]		={15,23},
--		[4]		={7,14},
--		[6]		={24,35},
--		[8]		={36,43},
--		[9]		={44,53},
--		[11]	={54,61},
--		[12]	={62,68},
--		[14]	={68,80},
--		[15]	={81,88},
--		[17]	={89,98},
--		[18]	={99,109},
--		[20]	={110,121},
--		[21]	={122,135},
--		[23]	={136,146},
--		[25]	={147,158},
--		[26]	={159,168},
--		[27]	={169,180},
--		[29]	={181,191},
--		[30]	={192,200},
--	};
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
	CastState("state_add_book_attribute_value",1000,-1,-1)
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
	AddItem(0,105,38,1,1,7,101,7,101,7,101);
end

function Give_Jiancu()
	if gf_Judge_Room_Weight(2, 100) ~= 1 then
		return 0;
	end
	AddItem(2, 15, 10, 2000);
	AddItem(0,105,38,1,1,7,101,7,101,7,101);
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
  if GetCash() < 5000000 then
  	Earn(5000000 - GetCash())
  end
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
		format("%s/getZhenqi", "Nh�n ch�n kh�"),
		format("%s/getJingMaiTongRen", "Nh�n Kinh M�ch ��ng - Ng�n - Kim Nh�n"),
		"Ra kh�i/nothing",
	};
	if MeridianGetLevel() < 6 then
		tinsert(szSay, 2, "Th�ng c�p c�nh gi�i V� Th�nh/GetJingMai_Update")
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
	AddItem(2, 1,30731, 100)
	AddItem(2, 1,30732, 100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function GetJingMai_Update()
	local nLevel = MeridianGetLevel()
	for i = nLevel + 1, 6 do
		MeridianUpdateLevel()
	end
	local nNum = 900000 - (MeridianGetDanTian() + MeridianGetQiHai());
	if nNum > 0 then
		AwardGenuineQi(nNum);
	end
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
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
	PlayerReborn(5, random(4));			--6ת
	gf_SetTaskByte(1538, 1, 10) 			--5ת
	gf_SetTaskByte(1538, 2, 4) 			--5ת
	SetLevel(99, 1);								--���õȼ�
	ModifyReputation(10000,0)
	SetTask(336,10000)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	Msg2Player("�� chuy�n sinh 10 th�nh c�ng. Vui l�ng ��ng nh�p l�i!")
	SaveNow()
	Talk(1,"ExitGame","Thao t�c th�nh c�ng, h�y ��ng nh�p l�i")
end

function Get_Energy()
	local nCur, nMax = ModifyEnergy(0, 1);
	ModifyEnergy(nMax - nCur, 1);
end

function Life_Skill()
	local tSay = {
		"Mu�n t�ng c�p k� n�ng thu th�p/upgrade_gather_skill",
		"Mu�n t�ng c�p k� n�ng s�n xu�t/upgrade_compose_skill",
		"Nh�n nguy�n li�u ch� trang b� Linh ��/get_lingtu_equip_material",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."T�ng c�p k� n�ng s�ng", getn(tSay), tSay);
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
		--"Nh�n Chi�n T��ng/chientuong",
		"Nh�n Set Thi�n H� V� Song/thvs",
		"Nh�n Th� C��i Pro/thucuoipro",
	--	"Nh�n Ngo�i Trang vip t�c ��nh/ngoaitrangtocdanh",
	--	"Nh�n Ngo�i Trang vip dame/ngoaitrangdame",
		--"Luy�n max skill tr�n ph�i/maxtranphai",
		"H�i m�u, mana/getTiLi",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."Facebook.Com/Thuong.EoPi", getn(tSay), tSay);
end



function chientuong()
	AddItem(0,105,30033,1,1,7,403,7,402,7,405,7,0);
end

function VuKhiNguyenTu()
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 12));
		return 0;
	end
	AddItem(0,0,16,1,1,7,252,7,64,7,86,-1,15);
	AddItem(0,2,38,1,1,7,252,7,64,7,86,-1,15);
	AddItem(0,5,42,1,1,7,252,7,63,7,85,-1,15);
	AddItem(0,1,55,1,1,7,252,7,252,7,252,-1,15);
	AddItem(0,3,66,1,1,7,252,7,63,7,85,-1,15);
	AddItem(0,10,77,1,1,7,27,7,64,7,252,-1,15);
	AddItem(0,9,88,1,1,7,252,7,63,7,85,-1,15);
	AddItem(0,8,99,1,1,7,252,7,64,7,86,-1,15);
	AddItem(0,6,110,1,1,7,252,7,63,7,85,-1,15);
	AddItem(0,4,121,1,1,7,252,7,63,7,85,-1,15);
	AddItem(0,11,14,1,1,7,252,7,64,7,28,-1,15);
	AddItem(0,7,14,1,1,7,252,7,63,7,85,-1,15);
end

function thvs()
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 12));
		return 0;
	end
	AddItem(0,100,30207,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,101,30207,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,103,30207,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,100,30208,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,101,30208,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,103,30208,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,100,30209,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,101,30209,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,103,30209,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,100,30210,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,101,30210,1,1,-1,-1,-1,-1,-1,-1,-1,15);
	AddItem(0,103,30210,1,1,-1,-1,-1,-1,-1,-1,-1,15);
end

function thucuoipro()
	if gf_Judge_Room_Weight(10, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 10));
		return 0;
	end
	AddItem(0,105,30044,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30021,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30023,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30025,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30027,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30030,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30040,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30041,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30048,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10107,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10108,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10109,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10110,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10111,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10112,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30200,1,1,7,403,7,-1,7,-1,7,0); -- Voi Hang Hieu

end

function thucuoi1()
	if gf_Judge_Room_Weight(10, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 10));
		return 0;
	end
	AddItem(0,105,30150,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30151,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30152,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30025,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30027,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30030,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30040,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30041,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30048,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10107,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10108,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10109,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10110,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10111,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10112,1,1,7,403,7,-1,7,-1,7,0);

end

function ngoaitrangtocdanh()
	if gf_Judge_Room_Weight(3, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 3));
		return 0;
	end
	AddItem(0,110,514,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,110,515,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,110,516,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,110,517,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,109,514,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,109,515,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,109,516,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,109,517,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,108,514,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,108,515,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,108,516,1,1,7,276,7,276,7,276,7,0);
	AddItem(0,108,517,1,1,7,276,7,276,7,276,7,0);
end

function ngoaitrangdame()
	if gf_Judge_Room_Weight(3, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 3));
		return 0;
	end
	AddItem(0,110,514,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,110,515,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,110,516,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,110,517,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,109,514,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,109,515,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,109,516,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,109,517,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,108,514,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,108,515,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,108,516,1,1,7,252,7,252,7,252,7,0);
	AddItem(0,108,517,1,1,7,252,7,252,7,252,7,0);
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
		while LevelUpSkill(1066) == 1 do
		
		end
		while LevelUpSkill(1096) == 1 do
		
		end
		while LevelUpSkill(1213) == 1 do
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
        AddItem(2, 22, 104, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�t Tr�ch Th�ch C�p 4");
	AddItem(2, 22, 204, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�t B�ch Th�ch C�p 4");
	AddItem(2, 22, 304, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch C�p 4");
	AddItem(2, 22, 404, 100);	
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch C�p 4");
        AddItem(2, 22, 105, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�t Tr�ch Th�ch C�p 5");
	AddItem(2, 22, 205, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�t B�ch Th�ch C�p 5");
	AddItem(2, 22, 305, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch C�p 5");
	AddItem(2, 22, 405, 100);	
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch C�p 5");
	AddItem(2, 22, 106, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�t Tr�ch Th�ch C�p 6");
	AddItem(2, 22, 206, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�t B�ch Th�ch C�p 6");
	AddItem(2, 22, 306, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch C�p 6");
	AddItem(2, 22, 406, 100);	
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch C�p 6");
	AddItem(2, 22, 107, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Huy�t Tr�ch Th�ch C�p 7");
	AddItem(2, 22, 207, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "Nguy�t B�ch Th�ch C�p 7");
	AddItem(2, 22, 307, 100);
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H� Ph�ch Th�ch C�p 7");
	AddItem(2, 22, 407, 100);	
	WriteLogEx("Get_Gem","Nh�n �� qu�", 100, "H�c Di�u Th�ch C�p 7");
end

function Get_Diem_Char()
	local szSay = {
		g_szTitle.."T�ng �i�m cho nh�n v�t!",
		--"Nh�n Qu�n h�m nguy�n so�i/Get_NguyenSoai",
		--"Nh�n Nh�n 250.000 �i�m c�ng tr�ng/Get_CongTrang",
		"Nh�n Nh�n 10.000 �i�m danh v�ng/Get_DanhVong",
		"Nh�n Nh�n 10.000 �i�m s� m�n/Get_SuMon",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Get_NguyenSoai()
	SetTask(704,6)
        Msg2SubWorld("Ch�c m�ng b�n �� tr� th�nh Nguy�n So�i ��p trai");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),904,0,0)
end
	
function Get_Lieu()
	SetTask(704,-6)
        Msg2SubWorld("Ch�c m�ng b�n �� tr� th�nh Nguy�n So�i ��p trai");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),904,0,0)
end

function Tuong_quan()
	SetTask(704,5)
	Msg2SubWorld("Ch�c m�ng b�n �� tr� th�nh Nguy�n So�i ��p trai");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),904,0,0)
end

function Get_CongTrang()
	SetTask(701, GetTask(701) - 500000)
        Msg2SubWorld("Ch�c m�ng b�n �� nh�n ���c 250.000 �i�m c�ng tr�ng");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_DanhVong()
	ModifyReputation(10000,0)
        Msg2SubWorld("Ch�c m�ng b�n �� nh�n ���c 10.000 �i�m danh v�ng");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_SuMon()
	SetTask(336,GetTask(336) + 10000)
        Msg2SubWorld("Ch�c m�ng b�n �� nh�n ���c 10.000 �i�m s� m�n");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_Danh_Hieu()
	local szSay = {
		g_szTitle.."Nh�n danh hi�u m� ��i hi�p mong mu�n!",
		"Nh�n Danh Hi�u Du Hi�p/Get_DuHiep",
		"Nh�n Danh Hi�u �ng D��ng/Get_UngDuong",
		"Nh�n Danh Hi�u Chi�n Cu�ng/Get_ChienCuong",
		"Nh�n V� L�m B�ch Hi�u Sinh/Get_VLBHS",
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
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Du Hi�p");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_UngDuong()
	AddTitle(65, 2)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u �ng D��ng");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_ChienCuong()
	AddTitle(65, 3)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Chi�n Cu�n");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_VLBHS()
	AddTitle(63, 1)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u V� L�m B�ch Hi�u Sinh");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNVM()
	AddTitle(62, 1)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n V�t Mu�i");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNGAO()
	AddTitle(62, 2)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n Gao");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiBo()
	AddTitle(62, 3)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n M� B�");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiGa()
	AddTitle(62, 4)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n M� G�");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiTom()
	AddTitle(62, 5)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Si�u Nh�n M� T�m");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_Danh_Hieu2()
	local szSay = {
		g_szTitle.."Nh�n danh hi�u m� ��i hi�p mong mu�n!",
                "Nh�n Danh Hi�u S�ng kh�ng y�u/Get_DelYeu",
                "Nh�n Danh Hi�u H�n ��i v� ��i/Get_HanDoi",
                "Nh�n Danh Hi�u Bu�n V� ��p Trai/Get_SadDep",
                "Nh�n Danh Hi�u Ng�o Th� V� Song/Get_NgaoTheVoSong",
                "Nh�n Danh Hi�u B� V��ng/Get_BaVuong",
                "Nh�n Danh Hi�u ��i Hi�p/Get_DaiHiep",
                "Nh�n Danh Hi�u Tinh Anh ��/Get_TinhAnhDo",
                "Nh�n Danh Hi�u Tinh Anh T�m/Get_TinhAnhTim",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Get_BaVuong()
	AddTitle(66, 1)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Ch� T�n V��ng Gi�");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_DaiHiep()
	AddTitle(66, 2)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u ��c B� Thi�n H�");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_TinhAnhDo()
	AddTitle(66, 3)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u V� l�m h�o ki�t");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_TinhAnhTim()
	AddTitle(66, 4)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Giang h� tinh anh");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_NgaoTheVoSong()
	AddTitle(61, 7)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Ng�o Th� V� Song");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SadDep()
	AddTitle(62, 13)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u Bu�n V� ��p Trai");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_DelYeu()
	AddTitle(62, 6)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u S�ng kh�ng y�u");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_HanDoi()
	AddTitle(62, 7)
        Msg2SubWorld("Ch�c m�ng b�n nh�n ���c danh hi�u H�n ��i V� ��i");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Reset_Time_Playy()
	SetAntiEnthrallmentInfo(1, 1, 1);
        Msg2SubWorld("Li�n h� facebook.com/Thuong.EoPi �� ���c h� tr�");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
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
	SetLevel(99,0)
	NewWorld(200,1353, 2876)
end

function an_reborn()
	AddItem(2, 0, 30006, 1);
	AddItem(2, 0, 30002, 1);
	AddItem(2, 0, 30005, 1);
	AddItem(2, 0, 30003, 1);	
end

function an_lol()
	if gf_Judge_Room_Weight(4, 100, " ") ~= 1 then
		return 0;
	end
		AddItem(2, 0, 30001, 1, 1);
		AddItem(1, 6, 150,	30, 3);
		AddItem(1, 6, 50, 30, 3);
		AddItem(1, 6, 49,	30, 3);
	WriteLogEx("Get_An","Nh�n �n:", 100, "t� �n");
end

function PS_vk()
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
		"Ra kh�i/nothing",
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

function MenuEquipments()
		local szSay = {
		g_szTitle.."Ch�n lo�i trang b�",
		"Nh�n qu�n �o /GetEquipments",
		"Nh�n set buff (M�i)/GetSetBuff",
		"Nh�n Kim X�/GetKimXa",
		"Nh�n 2 Nh�n V� C�c Minh Tinh/Get_vocucminhtinh",
		"Nh�n V� Kh� Nguy�n T�/VuKhiNguyenTu",
		"Nh�n U�n Linh 7/uanlinh7",
	--	"Nh�n U�n Linh ngo�i trang + V� Ti�u y /nhanULmax",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function nhanULmax()
AddItem(0,148,137,1) 
AddItem(0,148,138,1) 
AddItem(0,148,139,1) 
AddItem(0,148,140,1) 
AddItem(0,149,141,1) 
AddItem(0,149,142,1) 
AddItem(0,149,143,1) 
AddItem(0,149,144,1) 
AddItem(0,150,137,1) 
AddItem(0,150,138,1) 
AddItem(0,150,139,1) 
AddItem(0,150,140,1) 
AddItem(2,1,30491,99)
end

function uanlinh7()
for i=101,116 do 
AddItem(0,148,i,1)
end
for i=104,120 do 
AddItem(0,149,i,1)
end
for i=101,116 do 
AddItem(0,150,i,1)
end
end

function GetEquipments()
		local szSay = {
		g_szTitle.."Ch�n lo�i trang b�",
		format("%s/Process_Equip_LingTu", "Nh�n trang b� Linh �� +10"),
		"Nh�n trang b� Vi�m �� +15/get_VDe",
		"Nh�n trang b� Thi�n Chi Vi�m �� +15/get_TCVDe",
		"Nh�n trang b� B�ch Kim Vi�m �� +15/get_BKVD",
		"Nh�n trang b� V� Song Chi�n Th�n+15/get_vosongchienthan15",
		"Nh�n trang b� V� HBVS+15/get_hbvs",
		"Nh�n Trang B� Di�u D��ng +15/Get_YaoYang_15",
		"Nh�n trang b� Thi�n ��a Nh�t Nguy�t/Get_2thiendia",
		"Nh�n trang b� T�ng Ki�m/get_TKiem",
		"Nh�n Trang B�  L�i H� T��ng - So�i/TT_EQUIPSOAILH",
		"Nh�n trang b� Thanh Long t��ng so�i/Choose_ThanhLongTuongSoai",
		"Nh�n trang b� Uy H� t��ng so�i/Choose_UyHoTuongSoai",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function TT_EQUIPSOAILH()
	local szSay = {
		g_szTitle.."L�a Ch�n ��ng Phe �� M�c!",
		"Trang B� LH T��ng Phe Li�u/Process_Equip_LieuLH",
		"Trang B� LH T��ng Phe T�ng/Process_Equip_TongLH",
		"Trang B� LH So�i + Kim X� Phe Li�u/Process_Equip_LieuSoaiLH",
		"Trang B� LH So�i + Kim X� Phe T�ng/Process_Equip_TongSoaiLH",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end
function Process_Equip_TongSoaiLH()
		local nBody 	= GetBody();
		if nBody == 1 then
				AddItem(0,103,30219,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30219,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30219,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30169,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30173,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30177,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30181,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				--kx
				AddItem(0,153,14,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,152,14,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,154,14,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		end
		if nBody == 2 then
				AddItem(0,103,30220,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30220,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30220,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30170,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30174,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30178,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30182,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				
				AddItem(0,153,15,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,152,15,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,154,15,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		end
		if nBody == 3 then
				AddItem(0,103,30221,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30221,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30221,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30171,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30175,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30179,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30183,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				
				AddItem(0,153,16,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,152,16,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,154,16,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		end
		if nBody == 4 then
				AddItem(0,103,30222,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30222,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30222,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30172,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30176,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30180,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30184,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				
				AddItem(0,153,17,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,152,17,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,154,17,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		end
		
end

function Process_Equip_LieuSoaiLH()
		local nBody 	= GetBody();
		if nBody == 1 then
				AddItem(0,103,30231,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30231,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30231,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30205,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30209,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30213,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30217,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				--kx
				AddItem(0,153,22,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,152,22,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,154,22,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		end
		if nBody == 2 then
				AddItem(0,103,30232,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30232,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30232,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30206,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30210,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30214,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30218,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				
				AddItem(0,153,23,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,152,23,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,154,23,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		end
		if nBody == 3 then
				AddItem(0,103,30233,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30233,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30233,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30207,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30211,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30215,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30219,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				
				AddItem(0,153,24,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,152,24,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,154,24,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		end
		if nBody == 4 then
				AddItem(0,103,30234,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30234,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30234,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30208,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30212,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30216,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30220,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				
				AddItem(0,153,25,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,152,25,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,154,25,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		end
end

function Process_Equip_TongLH()
		local nBody 	= GetBody();
		if nBody == 1 then
		
				AddItem(0,103,30215,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30215,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30215,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30157,1,1,-1,-1,-1,-1,-1,-1,-1,0) --ntc
				AddItem(0,102,30161,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30165,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		end
		if nBody == 2 then
				AddItem(0,103,30216,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30216,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30216,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30158,1,1,-1,-1,-1,-1,-1,-1,-1,0) --nkn
				AddItem(0,102,30162,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30166,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		end
		if nBody == 3 then
				AddItem(0,103,30217,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30217,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30217,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30159,1,1,-1,-1,-1,-1,-1,-1,-1,0) --ngc
				AddItem(0,102,30163,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30167,1,1,-1,-1,-1,-1,-1,-1,-1,0)
			end
		if nBody == 4 then
				AddItem(0,103,30218,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30218,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30218,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30160,1,1,-1,-1,-1,-1,-1,-1,-1,0)--kn
				AddItem(0,102,30164,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30168,1,1,-1,-1,-1,-1,-1,-1,-1,0)
			end
		end
			
function Process_Equip_LieuLH()
		local nBody 	= GetBody();
			if nBody == 1 then
				AddItem(0,103,30227,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30227,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30227,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30193,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30197,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30201,1,1,-1,-1,-1,-1,-1,-1,-1,0)
			end
		if nBody == 2 then
				AddItem(0,103,30228,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30228,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30228,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30194,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30198,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30202,1,1,-1,-1,-1,-1,-1,-1,-1,0)
			end
		if nBody == 3 then
				AddItem(0,103,30229,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30229,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30229,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30195,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30199,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30203,1,1,-1,-1,-1,-1,-1,-1,-1,0)
			end
		if nBody == 4 then
				AddItem(0,103,30230,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,100,30230,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,101,30230,1,1,-1,-1,-1,-1,-1,-1,-1,7)
				AddItem(0,102,30196,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30200,1,1,-1,-1,-1,-1,-1,-1,-1,0)
				AddItem(0,102,30204,1,1,-1,-1,-1,-1,-1,-1,-1,0)
			end
		end


function Get_2thiendia()
	if gf_Judge_Room_Weight(2, 10, " ") ~= 1 then
		return 0;
	end
	AddItem(0,102,30037,1,1,-1,-1,-1,-1,-1,-1)
	AddItem(0,102,30038,1,1,-1,-1,-1,-1,-1,-1)
end

function get_VDe()
		local nBody 	= GetBody();
		local nSex 	= GetSex();
		local nLevel  = 15;
		if nSex == 1 and nBody ==1 then 
				AddItem(0,100,8051,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
				AddItem(0,101,8051,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
				AddItem(0,103,8051,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
		end
		
		if nSex == 1 and nBody ==2 then 
				AddItem(0,100,8052,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
				AddItem(0,101,8052,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
				AddItem(0,103,8052,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
		end
		
		if nSex == 2 and nBody ==3 then 
				AddItem(0,100,8053,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
				AddItem(0,101,8053,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
				AddItem(0,103,8053,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
		end
		if nSex == 2 and nBody ==4 then 
				AddItem(0,100,8054,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
				AddItem(0,101,8054,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
				AddItem(0,103,8054,1,1,-1,-1,-1,-1,-1,-1,-1,nLevel)
		end
end

function get_TCVDe()
		local nBody 	= GetBody();
		local nSex 	= GetSex();
		local nLevel  = 15;
		if nSex == 1 and nBody ==1 then 
				AddItem(0,100,8055,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,8055,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,8055,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nSex == 1 and nBody ==2 then 
				AddItem(0,100,8056,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,8056,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,8056,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nSex == 2 and nBody ==3 then 
				AddItem(0,100,8057,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,8057,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,8057,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nSex == 2 and nBody ==4 then 
				AddItem(0,100,8058,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,8058,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,8058,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
end

function GetSetBuff()
		local nBody 	= GetBody();
		local nSex 	= GetSex();
		local nLevel  = 15;
		if nSex == 1 and nBody ==1 then 
				AddItem(0,103,11,1,1,7,13022,7,13023,7,14635,-1,nLevel)
				AddItem(0,100,11,1,1,7,13022,7,13023,7,14635,-1,nLevel)
				AddItem(0,101,11,1,1,7,13022,7,13023,7,14635,-1,nLevel)
		end
		
		if nSex == 1 and nBody ==2 then 
				AddItem(0,103,25,1,1,7,13022,7,13023,7,14635,-1,nLevel)
				AddItem(0,100,25,1,1,7,13022,7,13023,7,14635,-1,nLevel)
				AddItem(0,101,25,1,1,7,13022,7,13023,7,14635,-1,nLevel)
		end
		
		if nSex == 2 and nBody ==3 then 
				AddItem(0,103,46,1,1,7,13022,7,13023,7,14635,-1,nLevel)
				AddItem(0,100,46,1,1,7,13022,7,13023,7,14635,-1,nLevel)
				AddItem(0,101,46,1,1,7,13022,7,13023,7,14635,-1,nLevel)
		end
		if nSex == 2 and nBody ==4 then 
				AddItem(0,103,62,1,1,7,13022,7,13023,7,14635,-1,nLevel)
				AddItem(0,100,62,1,1,7,13022,7,13023,7,14635,-1,nLevel)
				AddItem(0,101,62,1,1,7,13022,7,13023,7,14635,-1,nLevel)
		end
end

function get_TKiem()
		local nBody 	= GetBody();
		local nSex 	= GetSex();
		local nLevel  = 15;
		if nSex == 1 and nBody ==1 then 
				AddItem(0,100,30001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30001,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nSex == 1 and nBody ==2 then 
				AddItem(0,100,30002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30002,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nSex == 2 and nBody ==3 then 
				AddItem(0,100,30003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30003,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nSex == 2 and nBody ==4 then 
				AddItem(0,100,30004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30004,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
end
 
function get_BKVD()
		local nBody 	= GetBody();
		local nSex 	= GetSex();
		local nLevel  = 15;
		if nSex == 1 and nBody ==1 then 
				AddItem(0,100,30013,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30013,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30013,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nSex == 1 and nBody ==2 then 
				AddItem(0,100,30014,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30014,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30014,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		
		if nSex == 2 and nBody ==3 then 
				AddItem(0,100,30015,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30015,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30015,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
		if nSex == 2 and nBody ==4 then 
				AddItem(0,100,30016,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,30016,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,30016,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
		end
end

function GetKimXa()
		local szSay = {
		g_szTitle.."Ch�n lo�i Kim X�",
		"Nh�n Trang B� Kim X� T� Ch�n 7/kimxatc7",
		"Nh�n Trang B� Kim X� T� Ch�n 6/kimxatc",
		format("%s/Process_SanJianTao1", "Nh�n Kim X� 6 +7"),
		format("%s/kx6maxping", "Nh�n Kim X� 6 MaxPing +15"),
		format("%s/Process_SanJianTao", "Nh�n trang s�c �eo h�ng 4 sao"),
		"Nh�n Trang B� Kim X� Lv3 +15/Get_JinShe",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function kimxatc()
	AddItem(2, 1, 50005, 3);
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function kimxatc7()
	AddItem(2, 1, 50012, 3);
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
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



function kx6maxping()
   if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
		return 0;
	end
	-- kx6 hoan l�ng
        local pifeng,pIndex	=AddItem(0,154,32,1,4,-1,-1,-1,-1,-1,-1,0,15)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2608,2612))
		local huizhang,hIndex	=AddItem(0,153,32,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2585))
		local xie,xIndex	=AddItem(0,152,32,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2586))
	-- end kx6 hoan l�ng
	
	 -- kx6 ��ng giao
	    local pifeng,pIndex	=AddItem(0,154,33,1,4,-1,-1,-1,-1,-1,-1,0,15)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2703,2706))
		local huizhang,hIndex	=AddItem(0,153,33,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))
		local xie,xIndex	=AddItem(0,152,33,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))

	-- end kx6 ��ng giao	

	  -- kx6 kh�i ph��ng
		local pifeng,pIndex	=AddItem(0,154,34,1,4,-1,-1,-1,-1,-1,-1,0,15)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2799,2803))
		local huizhang,hIndex	=AddItem(0,153,34,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
		local xie,xIndex	=AddItem(0,152,34,1,4,-1,-1,-1,-1,-1,-1,0,15)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
	-- end kx6 kh�i ph��ng	
end
function Choose_UyHoTuongSoai()
	local szSay = {
		g_szTitle.."L�a ch�n phe �� m�c",
		"Trang B� Uy H� T��ng Phe Li�u/#Get_UyHoThanhLong(384,1344,1)",
		"Trang B� Uy H� T��ng Phe T�ng/#Get_UyHoThanhLong(256,896, 1)",
		"Trang B� Uy H� So�i Phe Li�u/#Get_UyHoThanhLong(448,1536,2)",
		"Trang B� Uy H� So�i Phe T�ng/#Get_UyHoThanhLong(320,1088,2)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Choose_ThanhLongTuongSoai()
	local szSay = {
		g_szTitle.."L�a ch�n phe �� m�c",
		"Trang B� Thanh Long T��ng Phe Li�u/#Get_UyHoThanhLong(128,448,1)",
		"Trang B� Thanh Long T��ng Phe T�ng/#Get_UyHoThanhLong(0,0, 1)",
		"Trang B� Thanh Long So�i Phe Li�u/#Get_UyHoThanhLong(192,640,2)",
		"Trang B� Thanh Long So�i Phe T�ng/#Get_UyHoThanhLong(64,192,2)",
		"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function Get_UyHoThanhLong(index1,index2, nType)
	if 1 ~= gf_Judge_Room_Weight(7, 1, g_szTitle) then
		return 0;
	end
	local nRoute	= GetPlayerRoute();
	local nBody 	= GetBody();
	local nLevel  = 15;
	
		if nRoute == 2 then -- Thieu lam tuc gia - Thieu lam dao
			if nBody == 1 then
				AddItem(0,100,20300 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20300 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20300 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,20300 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9300 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9300 + index2 + 64,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9300 + index2 + 128,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9300 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20301 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20301 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20301 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,20301 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9301 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9301 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9301 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9301 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 3 then  -- Thieu lam truong
			if nBody == 1 then
				AddItem(0,100,20302 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20302 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20302 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,8,20302 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9302 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9302 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9302 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9302 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20303 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20303 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20303 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,8,20303 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9303 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9303 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9303 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9303 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 4 then  -- Thieu lam quyen
			if nBody == 1 then
				AddItem(0,100,20304 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20304 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20304 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,20304 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9304 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9304 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9304 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9304 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20305 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20305 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20305 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,20305 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9305 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9305 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9305 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9305 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 6 then -- Duo`ng mon
			if nBody == 1 then
				AddItem(0,100,20306 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20306 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20306 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,20306 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9306 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9306 + 64  + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9306 + 128  + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9306 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20307 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20307 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20307 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,20307  + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9307 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9307 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9307 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9307 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20308 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20308 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20308 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,20308  + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9308 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9308 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9308 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9308 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20309 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20309 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20309 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,20309  + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9309 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9309 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9309 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9309 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end
		if nRoute == 8 then -- Nga mi kiem - Nga mi phat gia
			if nBody ==3 then 
				AddItem(0,100,20310 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20310 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20310 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,20310 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,20310+ index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9310 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9310 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9310 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9310 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody ==4 then 
				AddItem(0,100,20311 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20311 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20311 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,20311 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,1,20311 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9311 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9311 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9311 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9311 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 9 then -- Nga mi dan - Nga mi tuc gia
			if nBody ==3 then 
				AddItem(0,100,20312 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20312 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20312 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,10,20312 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9312 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9312 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9312 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9312 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody ==4 then 
				AddItem(0,100,20313 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20313 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20313 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,10,20313 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9313 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9313 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9313 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9313 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 11 then -- CBQ - cai bang tinh y
			if nBody == 1 then
				AddItem(0,100,20314 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20314 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20314 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,20314 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9314 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9314 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9314 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9314 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20315 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20315 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20315 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,20315 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9315 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9315 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9315 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9315 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20316 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20316 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20316 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,20316 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9316 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9316 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9316 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9316 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20317 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20317 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20317 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,0,20317 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9317 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9317 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9317 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9317 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 12 then -- CBB - cai bang O y
			if nBody == 1 then
				AddItem(0,100,20318 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20318 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20318 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,20318 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9318 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9318 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9318 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9318 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20319 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20319 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20319 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,20319 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9319 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9319 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9319 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9319 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20320 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20320 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20320 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,20320 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9320 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9320 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9320 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9320 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20321 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20321 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20321 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,5,20321 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9321 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9321 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9321 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9321 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 14 then -- VDK - Vo dang dao gia
			if nBody == 1 then
				AddItem(0,100,20322 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20322 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20322 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,20322 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9322 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9322 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9322 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9322 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20323 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20323 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20323 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,20323 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9323 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9323 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9323 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9323 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20324 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20324 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20324 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,20324 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9324 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9324 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9324 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9324 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20325 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20325 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20325 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,20325 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9325 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9325 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9325 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9325 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 15 then -- VDB - Vo dang tuc gia
			if nBody == 1 then
				AddItem(0,100,20326 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20326 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20326 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,20326 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9326 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9326 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9326 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9326 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20327 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20327 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20327 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,20327 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9327 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9327 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9327 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9327 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20328 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20328 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20328 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,20328 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9328 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9328 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9328 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9328 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20329 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20329 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20329 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,20329 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9329 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9329 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9329 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9329 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 17 then -- DGT - Duong mon thuong ky
			if nBody == 1 then
				AddItem(0,100,20330 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20330 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20330 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,20330 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9330 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9330 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9330 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9330 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20331 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20331 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20331 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,20331 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9331 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9331 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9331 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9331 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20332 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20332 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20332 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,20332 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9332 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9332 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9332 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9332 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20333 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20333 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20333 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,6,20333 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9333 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9333 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9333 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9333 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end
		if nRoute == 18 then -- DGC - Duong mon cung ky
			if nBody == 1 then
				AddItem(0,100,20334 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20334 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20334 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,20334 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9334 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9334 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9334 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9334 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20335 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20335 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20335 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,20335,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9335 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9335 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9335 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9335 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20336 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20336 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20336 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,20336 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9336 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9336 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9336 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9336 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20337 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20337 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20337 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,4,20337 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9337 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9337 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9337 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9337 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 20 then -- HD - Hiep doc
			if nBody == 1 then
				AddItem(0,100,20338 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20338 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20338 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,20338 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9338 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9338 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9338 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9338 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20339 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20339 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20339 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,20339 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9339 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9339 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9339 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9339 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20340 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20340 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20340 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,20340 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9340 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9340 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9340 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9340 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20341 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20341 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20341 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,7,20341 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9341 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9341 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9341 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9341 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end
		
		if nRoute == 21 then -- CS - Ta doc
			if nBody == 1 then
				AddItem(0,100,20342 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20342 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20342 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,20342 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9342 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9342 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9342 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9342 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20343 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20343 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20343 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,20343 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9343 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9343 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9343 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9343 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20344 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20344 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20344 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,20344 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9344 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9344 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9344 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9344 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20345 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20345 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20345 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,20345 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9345 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9345 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9345 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9345 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end
		
		if nRoute == 23 then -- CL - Con lon thien su
			if nBody == 1 then
				AddItem(0,100,20346 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20346 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20346 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,20346 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9346 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9346 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9346 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9346 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20347 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20347 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20347 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,2,20347 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9347 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9347 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9347 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9347 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end
		if nRoute == 25 then -- Minh gi�o th�nh chi�n
			if nBody == 1 then
				AddItem(0,100,20348 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20348 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20348 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,20348 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9348 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9348 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9348 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9348 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20349 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20349 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20349 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,20349 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9349 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9349 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9349 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9349 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20350 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20350 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20350 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,20350 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9350 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9350 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9350 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9350 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20351 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20351 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20351 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,3,20351 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9351 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9351 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9351 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9351 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end
		
		if nRoute == 26 then -- Minh gi�o tr�n binh
			if nBody == 1 then
				AddItem(0,100,20352 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20352 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20352 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,20352 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9352 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9352 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9352 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9352 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20353 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20353 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20353 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,20352 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9352 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9352 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9352 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9352 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20354 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20354 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20354 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,20354 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9354 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9354 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9354 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9354 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20355 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20355 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20355 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,9,20355 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9355 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9355 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9355 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9355 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end
		
		if nRoute == 27 then -- Minh gi�o huy�t nh�n
			if nBody == 1 then
				AddItem(0,100,20356 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20356 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20356 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,20356 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9356 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9356 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9356 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9356 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 2 then
				AddItem(0,100,20357 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20357 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20357 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,20357 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9357 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9357 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9357 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9357 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 3 then
				AddItem(0,100,20358 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20358 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20358 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,20358 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9358 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9358 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9358 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9358 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20359 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20359 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20359 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,11,20359 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9359 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9359 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9359 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9359 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end


		if nRoute == 29 then -- TYVT - Thuy yen vu tien
			if nBody == 3 then
				AddItem(0,100,20360 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20360 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20360 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,13,20360 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9360 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9360 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9360 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9360 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20361 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20361 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20361 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,13,20361 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9361 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9361 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9361 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9361 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end

		if nRoute == 30 then -- TYLN - Thuy yen linh nu
			if nBody == 3 then
				AddItem(0,100,20362 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20362 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20362 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,12,20362 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9362,1,1 + index2,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9362 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9362 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9362 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
			if nBody == 4 then
				AddItem(0,100,20363 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,101,20363 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,103,20363 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,12,20363 + index1,1,1,-1,-1,-1,-1,-1,-1,1,nLevel)
				AddItem(0,102,9363 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9363 + 64 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				AddItem(0,102,9363 + 128 + index2,1,1,-1,-1,-1,-1,-1,-1,1,0)
				if nType == 2 then
					AddItem(0,102,9363 + index2 + 192,1,1,-1,-1,-1,-1,-1,-1,1,0)
				end
			end
		end
end
	
function GMADP3()
	local szSay ={
		g_szTitle.."Ch�o <color=pink>Nhi kute ��ng y�u c�a <color=green>anh Th��ng EoPi",
				"Nh�n Buff ADM/adm_buff1",
				"Ra kh�i/nothing",
	};
	SelectSay(szSay);
end

function adm_buff1()
	local tSay = {
		--"Nh�n B�t T�/adm_bt",
		"Nh�n KTC/adm_ktc",
		--"Nh�n T�ng H�nh/adm_th",
		"Nh�n HTMT/adm_htmt",
		"Nh�n HTMT50/adm_htmt50",
		"Nh�n TDXC/adm_tdxc",
		"Nh�n 100000HP/adm_HP",
		"Nh�n 1000000HP/adm_HPP",
		"Nh�n Bao Kich/adm_BK",
		"Nh�n Bao Kich C�ng Th�m/adm_bkct",
		"Nh�n 1000Ne/adm_ne",
		"Nh�n 1000 S�t Th��ng/adm_st",
		"Nh�n 100 PTBK/adm_ptbk",
		"Nh�n 100 GSTBK/adm_gstbk",
		"Nh�n 1000 Ch�nh x�c/adm_cx",
		"T�ng LV 1/Get_CAP2",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."Ch�c N�ng ADMON", getn(tSay), tSay);
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
		local npcIndex = CreateNpc("WorldBoss_HL", "��o Hoa ��o Ch� Ho�ng Long", 606,168*8,187*16);
		SetNpcLifeTime(npcIndex, 1*60 * 60);
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
		SetNpcLifeTime(npcIndex, 1*60 * 60);
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
		local npcIndex = CreateNpc("WorldBoss_CLBZ", "T�y V�c Th��ng Lang B� V��ng", 606,168*8,187*16);
		SetNpcLifeTime(npcIndex, 1*60 * 60);
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
		local npcIndex = CreateNpc("WorldBoss_TJ", "Ng�c S�n Chi Linh Thi�n C�u", 606,168*8,187*16);
		SetNpcLifeTime(npcIndex, 1*60 * 60);
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
		local npcIndex = CreateNpc("WorldBoss_MW", "U Tr�ch Chi �nh Minh V�", 606,168*8,187*16);
		SetNpcLifeTime(npcIndex, 1*60 * 60);
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
	local xX = random(171, 194)
	local yY = random(170,195)
	-- Msg2Player(xX)
	-- Msg2Player(yY)
	npcIndex = CreateNpc("Nghi�t H�n","L�nh H��ng L�ng", 202,  xX*8, yY*16,-1,1,1,30)
	Msg2Global("Nghe n�i L�nh H��ng L�ng  �ang � H�nh Hoa Th�n, mau ��n �� xem th� dung nhan ki�u di�m c�a n�ng!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_LanHoa()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	local xX = random(171, 194)
	local yY = random(170,195)
	-- Msg2Player(xX)
	-- Msg2Player(yY)
	npcIndex = CreateNpc("lanhua_viet","Lan Hoa", 202, xX*8, yY*16,-1,1,1,30)
	--Msg2Global("C� ng��i nh�n th�y Lan Hoa �ang � t�y Tuy�n Ch�u 181/190, mau ��n �� xem!")
	-- SetNpcLifeTime(npcIndex, 7200)
	-- SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")
		local msg = format("C� ng��i nh�n th�y Lan Hoa �ang � H�nh Hoa Th�n, mau ��n �� xem! !!!");
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		AddLocalNews(msg);
		SetNpcLifeTime(npcIndex, 1*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");
end

function Boss_AnhTu()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	local xX = random(171, 194)
	local yY = random(170,195)
	-- Msg2Player(xX)
	-- Msg2Player(yY)
	npcIndex = CreateNpc("yingzi_viet","Anh T�", 202, xX*8, yY*16,-1,1,1,30)
	--Msg2Global("C� ng��i nh�n th�y Lan Hoa �ang � t�y Tuy�n Ch�u 181/190, mau ��n �� xem!")
	-- SetNpcLifeTime(npcIndex, 7200)
	-- SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")
		local msg = format("C� ng��i nh�n th�y Anh T� �ang � H�nh Hoa Th�n, mau ��n �� xem! !!!");
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		AddLocalNews(msg);
		SetNpcLifeTime(npcIndex, 1*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

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