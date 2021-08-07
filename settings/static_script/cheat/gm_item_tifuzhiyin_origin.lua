--���ָ��

Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")

g_szTitle = "<color=green>H��ng d�n:<color>"

List_GM_ACCOUNT = {
	["admin"] = 1,
}
List_donate = {
	["kiacoheo"] = 1,
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
		}
	else
		tSay = {
--			"Nh�p Code/GiftCodeNhap",
             "Update M�i/Get_Mored",
--			"�� 3 L�/do3lo",
--           "N�ng cao ��ng c�p chuy�n sinh nh�n v�t/player_reborn",
--			"Thay ��i h��ng Ph�c Sinh/change_PhucSinh",
            "Nh�n danh hi�u/Get_Danh_Hieu",
            "T�ng �i�m nh�n v�t/Get_Diem_Char",
			"Nh�n �n chuy�n sinh/Get_An",
--           "Nh�n B� Di�u D��ng +15/Get_YaoYang_15",
--			"Ng�u nhi�n nh�n ���c Trang B� Kim X� Lv3 +15/Get_JinShe",
--			format("%s/Process_Equip_LingTu", "Nh�n Linh �� +10"),
--			format("%s/Process_SanJianTao", "Nh�n trang s�c �eo h�ng 6 sao"),
			"Nh�n L�u Ph�i Ch�n Quy�n v� Y�u Quy�t/Get_Book",
            "Nh�n C�c Lo�i Nguy�n Li�u/Get_Nguyen_Lieu",
			"Nh�n 4000 v�ng/Get_Money",
			"Thao t�c bang h�i/TongOperation",
--			"Thao t�c V� Kh�/PS_VK",
--			"Thao t�c kinh m�ch/GetJingMai",
			"Nh�n Lak/Get_Energy",
--			"bao tay Chua giam dinh/btcgd",
--			"K� n�ng s�ng/Life_Skill",
--			"Ngo�i Trang C�ng Th�nh/ngoaitrang",
--			"Nh�n t�i li�u c��ng h�a/Get_Enhance",
--			"Nh�n �� qu�/Get_Gem",
--			"Reset l�i gi�i h�n gi� ch�i/Reset_Time_Playy",
--			format("%s/Pet_OP", "Ph�c sinh th� c�ng"),
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
	end
	tinsert(tSay, "Thanh l� t�i/ClearBagAllItem");
	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
	Say(g_szTitle.."GM h� tr� Gamer!!", getn(tSay), tSay);
end

function admin()
	local tSay = {
		g_szTitle.."L�a ch�n",
		"G�i Boss /BossTongHop",
		"Tr�ng th�i chi�n ��u /Batcd",
		"Tr�ng th�i an to�n /Batlc",
		"Gia nh�p v� m�n ph�i/VMP",
		"Luy�n max skill tr�n ph�i/maxtranphai",
		"��o r��ng di ��ng/ruongqt",
		"Toc chay/tochay",
		"Nh�n Chi�n T��ng/chientuong",
		"Nhan Ngua moi/nhanthucuoimoi",
		-- "Pha Quan /phaquan",
		"\nRa kh�i/nothing",
	}
	SelectSay(tSay);
end

function tctk()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,30001,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,30001,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,30001,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end 
	if nBody==2 then
		AddItem(0,100,30002,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,30002,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,30002,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end
end

function thienghia()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,3034,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101, 3034,1,1,5,639,3,483,2,613,-1,7);
		AddItem(0,103, 3034,1,1,4,276,-1,-1,-1,-1,-1,7);
		
		AddItem(0,100,3037,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101, 3037,1,1,-1,-1,3,483,2,613,-1,7);
		AddItem(0,103, 3037,1,1,4,276,4,408,-1,-1,-1,7);
	end 
	if nBody==2 then
		AddItem(0,100,3040,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101, 3040,1,1,5,639,3,483,2,613,-1,7);
		AddItem(0,103, 3040,1,1,4,276,-1,-1,-1,-1,-1,7);
		
		AddItem(0,100,3043,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101, 3043,1,1,-1,-1,3,483,2,613,-1,7);
		AddItem(0,103, 3043,1,1,4,276,4,408,-1,-1,-1,7);
		
	end
end
function huyhoang5()
	AddItem(0,102,8846, 1,1,-1,-1,-1,-1,2,564,-1,0)
	AddItem(0,102,8847, 1,1,-1,-1,-1,-1,2,564,-1,0)
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
	AddItem(2,1,375,5);
	AddItem(2,0,136,5);
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
	iLK = random(100,120)
	AddItem(0,100,81,1,1,6,302,7,355,7,11,1,7);
	AddItem(0,100,81,1,1,0,0,0,0,1,-1,1,0,iLK);
	AddItem(0,101,81,1,1,0,0,0,0,1,-1,1,0,iLK);
	AddItem(0,103,81,1,1,0,0,0,0,1,-1,1,0,iLK);
	AddItem(0,103,81,1,1,4,276,6,302,2,305,1,7);
	AddItem(0,103,81,1,1,7,379,4,276,2,305,1,7);
	
	AddItem(0,100,82,1,1,6,302,7,355,7,11,1,7);
	AddItem(0,100,82,1,1,0,0,0,0,1,-1,1,0,iLK);
	AddItem(0,101,82,1,1,0,0,0,0,1,-1,1,0,iLK);
	AddItem(0,103,82,1,1,0,0,0,0,1,-1,1,0,iLK);
	AddItem(0,103,82,1,1,4,276,6,302,2,305,1,7);
	AddItem(0,103,82,1,1,7,379,4,276,2,305,1,7);
	
	AddItem(0,0,16,1,1,0,0,0,0,1,-1,1,0,iLK);
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
	AddItem(0,105, 41,1,1,7,403,-1,-1,-1,-1,-1,0);
end
function longdang()
	AddItem(0,100,3056,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,100,3060,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,101,3056,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,101,3060,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,103,3056,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,103,3060,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	
	AddItem(0,100,3057,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,100,3061,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,101,3057,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,101,3061,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,103,3057,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,103,3061,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	
	
end

function getTianJiaoLing()
	AddItem(2,97,236,100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end
function getTiLi()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,20016,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,20016,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,20016,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20000,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20001,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20003,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20002,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end 
	if nBody==2 then
		AddItem(0,100,20017,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,20017,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,20017,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20000,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20001,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20003,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20002,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end
	if nBody==3 then
		AddItem(0,100,20018,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,20018,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,20018,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20000,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20001,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20003,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20002,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end
	if nBody==4 then
		AddItem(0,100,20019,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,20019,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,20019,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20019,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20001,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20003,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,102,20002,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end
	AddItem(0,3,20000,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,8,20001,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,0,20002,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,1,20003,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,2,20004,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,10,20005,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,0,20006,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,5,20007,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,2,20008,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,9,20009,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,6,20010,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,4,20011,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,7,20012,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,11,20013,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,2,20014,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,3,20015,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,9,20016,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,11,20017,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,13,20018,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,12,20019,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,14,20020,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	AddItem(0,2,20021,1,1,-1,-1,-1,-1,-1,-1,-1,7);

end
function Pet_OP()
	local tSay = {}
	if GetSkillLevel(30149) == 0 then
		tinsert(tSay, format("%s/activePet", "K�ch ho�t ph�c sinh th� c�ng"))
	end
	tinsert(tSay, format("%s/getPetEgg", "Nh�n Tr�ng Th� C�ng"))
	tinsert(tSay, format("%s/getLingLi", "Nh�n �i�m linh l�c"))
	tinsert(tSay, format("%s/getbook5", "Nh�n Book 5"))
	tinsert(tSay, format("%s/getbook6", "Nh�n Book 6"))
	tinsert(tSay, format("%s/getPet", "Nh�n Pet random"))
	tinsert(tSay, "T�i h� ch� xem qua th�i/nothing");
	Say(g_szTitle.."Ng��i c�n gi�p �� g�? Li�n h� https://facebook.com/Thuong.EoPi �� ���c h� tr� th�m!!!", getn(tSay), tSay);
end

function getbook5()
for i = 67, 86 do
AddItem(2,150,i,1)
end
end
function getbook6()
for i = 87, 101 do
AddItem(2,150,i,1)
end
end

function getPet()
	iPet = random(52,56)
	AddPet(iPet);
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
        local pifeng,pIndex	=AddItem(0,154,32,1,4,-1,-1,-1,-1,-1,-1,0,7)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2608,2612))
		local huizhang,hIndex	=AddItem(0,153,32,1,4,-1,-1,-1,-1,-1,-1,0,7)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2585))
		local xie,xIndex	=AddItem(0,152,32,1,4,-1,-1,-1,-1,-1,-1,0,7)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2586))
	-- end kx6 hoan l¨ng
	
	 -- kx6 ®»ng giao
	    local pifeng,pIndex	=AddItem(0,154,33,1,4,-1,-1,-1,-1,-1,-1,0,7)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2703,2706))
		local huizhang,hIndex	=AddItem(0,153,33,1,4,-1,-1,-1,-1,-1,-1,0,7)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))
		local xie,xIndex	=AddItem(0,152,33,1,4,-1,-1,-1,-1,-1,-1,0,7)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))

	-- end kx6 ®»ng giao	

	  -- kx6 khëi ph­îng
		local pifeng,pIndex	=AddItem(0,154,34,1,4,-1,-1,-1,-1,-1,-1,0,7)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2799,2803))
		local huizhang,hIndex	=AddItem(0,153,34,1,4,-1,-1,-1,-1,-1,-1,0,7)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
		local xie,xIndex	=AddItem(0,152,34,1,4,-1,-1,-1,-1,-1,-1,0,7)
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
--		"C�i Bang � Y (B�ng)/#enter_mp(12)",
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
		AddItem(0,102,131,2,1,-1,-1,-1,-1,-1,-1,1,0);
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

	----------------------------������ֵ------------
	SetTask(336, 20000);				--����ʦ�Ź��׶�
	ModifyReputation(20000, 0);			--��������
--	PlayerReborn(1, random(4));			--6ת
--	gf_SetTaskByte(1538, 1, 5) 			--5ת
	SetLevel(99, 1);								--���õȼ�
	PlaySound("\\sound\\sound_i016.wav");
--	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
	Msg2Player("Thao t�c th�nh c�ng, h�y ��ng nh�p l�i")
--	AddItem(0,105,15,1,1,-1,-1,-1,-1,-1,-1);
--	AddItem(2, 1, 1005, 1);
	AddItem(0, 200,40, 1);
	AddItem(2, 1, 1003, 1);
	AddItem(2, 1, 1004, 1);
	AddItem(2, 1, 2, 10);
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
function mtphu()
	AddItem(0,107,64,1)
	AddItem(0,107,65,1)
	AddItem(0,107,66,1)
	AddItem(0,107,59,1)
end
function Get_Book()
	local szSay = {
		g_szTitle.."Nh�n L�u Ph�i Ch�n Quy�n v� Quy�t Y�u!",
		"Nh�n Ch�n Quy�n/Get_Book_ZhenJuan",
		"Nh�n Quy�t Y�u/Get_Book_JueYao",
		"Th�ng c�p m�t t�ch �� trang b�/Get_Book_Update",
		"Mat tich phu/mtphu",
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
		"Nh�n 1000 Ma Tinh/Get_NL_MT",
		"Nh�n lt1 /lt1",
		"Nh�n lt2 /lt2",
		"Nh�n lt3 /lt3",
		"Nh�n lt4 /lt4",
		"Nh�n lt5 /lt5",
		"Nh�n lt6 /lt6",
		"Nh�n lt7 /lt7",
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
	AddItem(1,6,150,100);
end

function Give_GuGu()
	if gf_Judge_Room_Weight(32, 1) ~= 1 then
		return 0;
	end
  --for i = 1,31 do
	--	AddItem(2, 17, i, 99, 4);
	--end

	--if 0 >= GetItemCount(2, 0, 1063) and 1 == gf_Judge_Room_Weight(1, 1) then
	--	AddItem(2, 0, 1063, 1);
	--end
	AddItem(2, 17, 14, 9999, 4);
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
		format("%s/getJingMaiTongRen", "Nh�n Kinh M�ch ��ng Nh�n"),
		"Ra kh�i/nothing",
	};
	if MeridianGetLevel() < 4 then
		tinsert(szSay, 2, "Th�ng c�p c�nh gi�i V� T�n/GetJingMai_Update")
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
	for i = nLevel + 1, 4 do
		MeridianUpdateLevel()
	end
	local nNum = 600000 - (MeridianGetDanTian() + MeridianGetQiHai());
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

function Life_Skill()
	local tSay = {
		"Mu�n t�ng c�p k� n�ng thu th�p/upgrade_gather_skill",
		"Mu�n t�ng c�p k� n�ng s�n xu�t/upgrade_compose_skill",
--		"Nh�n nguy�n li�u ch� trang b� Linh ��/get_lingtu_equip_material",
		"Nh�n NHCT/nhct",
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
		"Nh�n Thi�n H� V� Song/thvs",
		
		"Nh�n M�u /receiveTiLi",
		"Nh�n Thi�n Ngh�a/thienghia",
		"Nh�n Thi�n Chi t�ng Ki�m/tctk",
		"HHVD/huyhoang5",
		"u�n Linh c�p 3/nhanul",
		"V� L�m b� Ch�/vlbc",
		"Nh�n C�u Chuy�n H�i H�n �an/cuuchuyen",
		"Nh�n Chi�n T��ng/chientuong",
		"Nh�n V� Kh� Nguy�n T�/vknt",
		"Nh�n �� Long ��ng Ph�ng V�/longdang",
		"Nh�n Th� M�i/nhanthucuoimoi",
		"Nh�n Th� C��i C�/thucuoipro",
		"Nh�n Thi�n Chi Vi�m ��/thienchiviemde",
		"Nh�n �� buff/dobuffhttc",
    	"Nh�n B�ch Kim Vi�m ��/bkvd",
		"Luy�n max skill tr�n ph�i/maxtranphai",
		"Nh�n Th�ng Thi�n/getTiLi",
		"Nh�n Thien Chi T��ng Qu�n/thienchituongquan",
		"Nh�n T��ng Qu�n/tuongquan",
		"Qu�n �o  TLQ/aosm",
		"C�c Lo�i Ng�c/ngoctoc",
        "C�c Lo�i Ng�c/ngocdame",
--		"Ma Dao thach 1 vs 2/madao",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."------------------", getn(tSay), tSay);
end

function vlbc()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,30025,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,30025,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,30025,1,1,-1,-1,-1,-1,-1,-1,-1,7)
	end
	
	if nBody==2 then
		AddItem(0,100,30026,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,30026,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,30026,1,1,-1,-1,-1,-1,-1,-1,-1,7)
	end
	
	if nBody==3 then
		AddItem(0,100,30027,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,30027,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,30027,1,1,-1,-1,-1,-1,-1,-1,-1,7)
	end
	
	if nBody==4 then
		AddItem(0,100,30028,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,30028,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,30028,1,1,-1,-1,-1,-1,-1,-1,-1,7)
	end
end	
function thuongung()
	local nBody 	= GetBody();

	if nBody==1 then
		AddItem(0,100,30033,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,30033,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,30033,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,102,30052,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30056,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30060,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==2 then
		AddItem(0,100,30034,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,30034,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,30034,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,102,30053,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30057,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30041,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==3 then
		AddItem(0,100,30035,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,30035,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,30035,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,102,30054,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30058,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30062,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==4 then
		AddItem(0,100,30036,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,30036,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,30036,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,102,30055,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30059,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,30063,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
end
function madao()
	AddItem(2,1,30428,100);
	AddItem(2,1,30429,100);
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
		AddItem(0,100,30013,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,30013,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,30013,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end 
	if nBody==2 then
		AddItem(0,100,30014,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,30014,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,30014,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		
	end
	if nBody==3 then
		AddItem(0,100,30014,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	    AddItem(0,101,30014,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	    AddItem(0,103,30014,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end 
	if nBody==4 then
		AddItem(0,100,30015,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	    AddItem(0,101,30015,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	    AddItem(0,103,30015,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		
	end
	
end
function aosm()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,421,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,441,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end 
	if nBody==2 then
		AddItem(0,100,422,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,442,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end
end
function thienchituongquan()
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,3016,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,3016,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,3016,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,102,3036,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3040,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3044,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==2 then
		AddItem(0,100,3017,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,3017,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,3017,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,102,3037,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3041,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3045,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	-- if nBody==3 then
		-- AddItem(0,100,3018,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,101,3018,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,103,3018,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,102,3038,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3042,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3046,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	-- end
	
	-- if nBody==4 then
		-- AddItem(0,100,3019,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,101,3019,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,103,3019,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,102,3039,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3043,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3047,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	-- end
	
	-- if nBody==1 then
		-- AddItem(0,100,30017,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,101,30017,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,103,30017,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,102,30017,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3040,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3044,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	-- end
	
	-- if nBody==2 then
		-- AddItem(0,100,30018,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,101,30018,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,103,30018,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,102,30018,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3041,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3045,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	-- end
	
	-- if nBody==3 then
		-- AddItem(0,100,30019,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,101,30019,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,103,30019,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,102,30019,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3042,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		-- AddItem(0,102,3046,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	-- end
	
	-- if nBody==4 then
		-- AddItem(0,100,30020,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,101,30020,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		-- AddItem(0,103,30020,1,1,-1,-1,-1,-1,-1,-1,-1,7)
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
	iOpt = random(5,7)
	iOpt2 = random(1,3)
	local nRoute	= GetPlayerRoute();
	if nRoute == 4 then
		AddItem(0,0,16,10,1,lvopt1[op1],opt1[op1],7,64,lvopt3[op3],opt3[op3],0,7)
	end
	if nRoute > 4  or nRoute < 3then
		AddItem(0,0,14,1,1,7,658,7,85,7,63,-1,7);
		AddItem(0,2,36,1,1,7,658,7,86,7,63,-1,15);
		AddItem(0,5,40,1,1,7,658,7,85,7,63,-1,7);
		AddItem(0,1,53,1,1,7,658,7,85,7,63,-1,7);
		AddItem(0,3,64,1,1,7,658,7,85,7,63,-1,7);
		AddItem(0,10,75,1,1,7,658,7,86,7,63,-1,7);
		AddItem(0,9,86,1,1,7,658,7,86,7,63,-1,7);
		AddItem(0,8,97,1,1,7,658,7,86,7,63,-1,7);
		AddItem(0,6,108,1,1,7,658,7,85,7,63,-1,7);
		AddItem(0,4,119,1,1,7,658,7,85,7,63,-1,7);
		AddItem(0,11,12,1,1,7,658,7,86,7,63,-1,7);
		AddItem(0,7,12,1,1,7,658,7,85,7,63,-1,7);
	end
end

function thvs()
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 12));
		return 0;
	end
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,30207,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,30207,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,30207,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end 
	if nBody==2 then
		AddItem(0,100,30208,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,30208,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,30208,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end
	if nBody==3 then
		AddItem(0,100,30209,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,30209,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,30209,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end
	if nBody==4 then
		AddItem(0,100,30210,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,30210,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,30210,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end

end

function thucuoipro()
	if gf_Judge_Room_Weight(10, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 10));
		return 0;
	end
	AddItem(0,105,30023,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30025,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30027,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30030,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10107,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10108,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10109,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10110,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10111,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,10112,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,195,1,1,-1,-1,-1,-1,-1,-1);
	AddItem(0,105,194,1,1,-1,-1,-1,-1,-1,-1);
	AddItem(0,105,139,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,138,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,149,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,148,1,1,7,403,-1,-1,-1,-1);
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
		AddItem(0,100,8055,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,8055,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,8055,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end 
	if nBody==2 then
		AddItem(0,100,8056,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,8056,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,8056,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	end
	 if nBody==3 then
		AddItem(0,100,8057,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,8057,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,8057,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	 end
	 if nBody==4 then
		AddItem(0,100,8058,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,101,8058,1,1,-1,-1,-1,-1,-1,-1,-1,7);
		AddItem(0,103,8058,1,1,-1,-1,-1,-1,-1,-1,-1,7);
	 end
end

function dobuffhttc()
	if gf_Judge_Room_Weight(3, 100) ~= 1 then
		Talk(1,"",format("T�i kh�ng �� %d � tr�ng", 3));
		return 0;
	end
	local nBody 	= GetBody();
	AddItem(0,0,6,1,1,3,292,3,293,0,0,-1,0);
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
end

function Get_Diem_Char()
	local szSay = {
		g_szTitle.."T�ng �i�m cho nh�n v�t!",
		"Nh�n Qu�n h�m nguy�n so�i/Get_NguyenSoai",
		"Nh�n Nh�n 250.000 �i�m c�ng tr�ng/Get_CongTrang",
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

function Get_CongTrang()
	SetTask(701, GetTask(701) + 250000)
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
                -- "Nh�n Danh Hi�u S�ng kh�ng y�u/Get_DelYeu",
                -- "Nh�n Danh Hi�u H�n ��i v� ��i/Get_HanDoi",
                -- "Nh�n Danh Hi�u Bu�n V� ��p Trai/Get_SadDep",
                -- "Nh�n Danh Hi�u Ng�o Th� V� Song/Get_NgaoTheVoSong",
                "Nh�n Danh Hi�u B� V��ng/Get_BaVuong",
                "Nh�n Danh Hi�u ��i Hi�p/Get_DaiHiep",
                "Nh�n Danh Hi�u Tinh Anh ��/Get_TinhAnhDo",
                "Nh�n Danh Hi�u Tinh Anh T�m/Get_TinhAnhTim",
				"Nh�n Danh Hi�u New/Get_LaHan",
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
	AddTitle(70, 2)
	AddTitle(70, 3)
	AddTitle(70, 4)
	AddTitle(70, 5)
	AddTitle(70, 6)
	AddTitle(70, 7)
	AddTitle(70, 8)
	AddTitle(71, 2);
	
--	AddTitle(71, 3)
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
	SetLevel(99,0)
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
		local npcIndex = CreateNpc("WorldBoss_HL", "��o Hoa ��o Ch� Ho�ng Long", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W2()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_CLBZ", "T�y V�c Th��ng Lang B� V��ng", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W3()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_TJ", "Ng�c S�n Chi Linh Thi�n C�u", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W4()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_MW", "U Tr�ch Chi �nh Minh V�", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 20 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end

function Thuong_LuongSon()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
			local nNpcIdx = CreateNpc(IBbaoxiang, "R��ng H�o H�n", nMap, nX + 2, nY + 2);
			SetNpcLifeTime(nNpcIdx, 3 * 60);
			SetNpcScript(nNpcIdx,"\\script\\online\\liangshanboss\\npc\\box\\box_e.lua");

end

function Boss_TuLinh()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local n = gf_GetRandItemByTable(TuLinh_BOSS_LIST, 1000, 1) or 1;
	local nNpcIndex = CreateNpc(TuLinh_BOSS_LIST[n][1],TuLinh_BOSS_LIST[n][3],  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcDeathScript(nNpcIndex,"\\script\\online_activites\\tiaozhansilingboss\\boss\\boss_death.lua");

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
	local non = random(35,51)
	AddItem(0, 148, non, 1, 1);
end
function UL3_ao()
	local non = random(35,51)
	AddItem(0, 149, non, 1, 1);
end
function UL3_quan()
	local non = random(35,51)
	AddItem(0, 150, non, 1, 1);
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

	local tSay = {
		"Non/nhanngoaitrangNMK_non",
		"Ao/nhanngoaitrangNMK_Ao",
		"Quan/nhanngoaitrangNMK_Quan",
		"T�i h� ch� xem qua th�i/nothing",
	}
	Say(g_szTitle.."------------------", getn(tSay), tSay);
	
	-- AddItem(0,110,516,1,1,7,484,3,484,7,41,-1,0);
	-- AddItem(0,109,516,1,1,7,484,7,41,7,41,-1,0);
	-- AddItem(0,108,516,1,1,7,484,7,41,7,41,-1,0);
	
	-- AddItem(0,110,517,1,1,7,484,3,484,7,41,-1,0);
	-- AddItem(0,109,517,1,1,7,484,7,41,7,41,-1,0);
	-- AddItem(0,108,517,1,1,7,484,7,41,7,41,-1,0);
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
	local ID_NON_KN = {213,214,215,216,217,218,398,399,400,401,402,476,480,484,486,512,517,521,525,529,533,537,541,553,545,557,549,561,565,569,573,30004,30008,30012,30016,621,30020,30024,30028,30032,30036,633,679,683,687,724,728,704,708,712,904,932,625,828,940,716,956,840,836,988,814,671,720,581,10004,10008,10012,10016,10020,10024,637,1008,1012,1044,1024,1056}
	local ID_NON_NGC = {207,208,209,210,211,212,408,409,410,411,412,475,479,483,485,513,516,520,524,528,532,536,540,552,544,556,548,560,564,568,572,30003,30007,30011,30015,620,30019,30023,30027,30031,30035,632,678,682,686,723,727,703,707,711,903,931,624,827,939,715,955,839,835,987,813,670,719,580,10003,10007,10011,10015,10019,10023,636,1007,1011,1043,1023,1055}

	local nBody 	= GetBody();
	
	for i = 1,10 do
		local id = random(1,67)
		---NGC
		if nBody == 3 then
			AddItem(0,108,ID_NON_NGC[id],1,1,7,484,7,41,7,41,-1,0);
		end
		--KN
		if nBody == 4 then
			AddItem(0,108,ID_NON_KN[id],1,1,7,484,7,41,7,41,-1,0);
		end
	end
end

function nhanngoaitrangNMK_Ao()
	local ID_AO_KN = {287,288,289,290,291,292,398,399,400,401,402,486,490,494,498,502,504,512,517,521,525,529,533,537,565,569,573,30004,30008,30012,30016,621,30036,633,30020,30024,30028,30032,679,683,687,724,728,704,708,712,904,932,828,940,716,956,840,836,988,814,671,720,581,10004,10008,10012,10016,10020,10024,637,1008,1012,1044,1024,1056}
	local ID_AO_NGC = {281,282,283,284,285,286,408,409,410,411,412,485,489,493,497,501,503,513,516,520,524,528,532,536,564,568,572,30003,30007,30011,30015,620,30035,632,30019,30023,30027,30031,678,682,686,723,727,703,707,711,903,931,827,939,715,955,839,835,987,813,670,719,580,10003,10007,10011,10015,10019,10023,636,1007,1011,1043,1023,1055}

	local nBody 	= GetBody();
	
	for i = 1,10 do
		local id = random(1,67)
		---NGC
		if nBody == 3 then
			AddItem(0,109,ID_AO_NGC[id],1,1,7,484,7,41,7,41,-1,0);
		end
		--KN
		if nBody == 4 then
			AddItem(0,109,ID_AO_KN[id],1,1,7,484,7,41,7,41,-1,0);
		end
	end
end

function nhanngoaitrangNMK_Quan()
	local ID_QUAN_KN = {287,288,289,290,291,292,198,199,200,201,202,216,220,224,226,512,517,521,525,529,30004,30008,30012,30016,565,569,573,621,30020,30024,30028,30032,30036,633,679,683,687,724,728,704,708,712,904,932,828,940,716,956,840,836,988,814,671,720,581,10004,10008,10012,10016,10020,10024,637,1008,1012,1044,1024,1056}
	local ID_QUAN_NGC = {281,282,283,284,285,286,208,209,210,211,212,215,219,223,225,513,516,520,524,528,30003,30007,30011,30015,564,568,572,620,30019,30023,30027,30031,30035,632,678,682,686,723,727,703,707,711,903,931,827,939,715,955,839,835,987,813,670,719,580,10003,10007,10011,10015,10019,10023,636,1007,1011,1043,1023,1055}

	local nBody 	= GetBody();
	
	for i = 1,10 do
		local id = random(1,67)
		---NGC
		if nBody == 3 then
			AddItem(0,110,ID_QUAN_NGC[id],1,1,7,484,3,484,7,41,-1,0);
		end
		--KN
		if nBody == 4 then
			AddItem(0,110,ID_QUAN_KN[id],1,1,7,484,3,484,7,41,-1,0);
		end
	end
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
		AddItem(0,100,2241,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,2241,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,2241,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,102,3036,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3040,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3044,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	
	if nBody==2 then
		AddItem(0,100,2242,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,101,2242,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,103,2242,1,1,-1,-1,-1,-1,-1,-1,-1,7)
		AddItem(0,102,3037,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3041,1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,3045,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
end

