--体服指引
-- rm before  run
--萧远楼.lua
--岳不群.lua
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
Include("\\script\\pet\\forget_pet_skill.lua")

g_szTitle = "<color=green>Hng d蒼:<color>"

List_GM_ACCOUNT = {
	["admin"] = 1,
	["duyzzz"] = 1,
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
			"Gia nh藀 m玭 ph竔/JoinRoute_UpdateLevel",
			-- "L╪g ba vi b� cho VMP/langbavibott",
			-- "Th╪g c蕄 m藅 t辌h  trang b�/Get_Book_Update",
		}
	else
		tSay = {
--			"Nh藀 Code/GiftCodeNhap",
		-- "Nh薾 t� quang hi猲 vi猲 ng鋍/hienvienngoc",
            "Trang B�/Get_Mored",
            "Ti猽 d飊g/tieudung",
			"C遪 l筰/tieudung_orther",
            -- "Thi猲 ki猽 l謓h (Kh玭g c� khi Open)/nhantkl",
            -- "M秐h b筩h kim (Kh玭g c� khi Open)/nhanmbk",
			-- "Hi謚 鴑g nh﹏ v藅/#char_eff(10)",
			-- "H� tr� ng c蕄 cho t﹏ th� Level 87/hotrogmer1st",
            -- "Nh薾 B� Di謚 Dng +10/Get_YaoYang_15",
			-- "Ng蓇 nhi猲 nh薾 頲 Trang B� Kim X� Lv3 +10/getkx3",
			-- "Ng蓇 nhi猲 nh薾 頲 Trang B� Kim X� Lv1 +10/Get_JinShe_1",
--			format("%s/Process_Equip_LingTu", "Nh薾 Linh у +10"),
			-- format("%s/Process_SanJianTao", "Nh薾 trang s鴆 甧o h玭g 6 sao"),
			-- format("%s/Get_kx7", "Nh薾 trang s鴆 甧o h玭g 7 sao"),
--			format("%s/test", "Test Nhan Event"),
			-- "Nh薾 Lak/Get_Energy",
			-- "Vu Khi Chua giam dinh/btcgd",

--			"Nh薾 t礽 li謚 cng h鉧/Get_Enhance",

--			"Reset l筰 gi韎 h筺 gi� ch琲/Reset_Time_Playy",

--			format("%s/Reset_Time_Playy", "H錳 ph鬰 th� l鵦"),
--			format("%s/getTianJiaoLing", "Nh薾 Thi猲 Ki猽 L謓h"),
		}
		if 3 == nRoute then
			tinsert(tSay, "Nh薾 Thi猲 Ph藅 Ch﹗ v� Ph� Ma Ch�/Give_ZhuzhuZhouzhou")
		end
		if 4 == nRoute then
			tinsert(tSay, "Qu莕 竜 TLQ/aosm")
		end
		if 6 == nRoute then
			tinsert(tSay, "Nh薾 竚 Kh� v� C� Quan/Give_JiguanAnqi")
		end
		if 8 == nRoute then
			-- tinsert(tSay, "Nh薾 X� L頸 Kim Кn/Give_Dandan")
			tinsert(tSay, "Nhan у Buff NMK/DoBuffNMK")
			-- tinsert(tSay, "Nhan у Buff NMK_test (Kh玭g c� khi Open)/DoBuffNMK_test")
		end		
		if 17 == nRoute then
			tinsert(tSay, "Nh薾 Chi課 M�/Give_ZhanMa")
		end
		if 18 == nRoute then
			tinsert(tSay, "Nh薾 Chi課 M� v� T� Ti詎/Give_Jiancu")
		end
		if 20 == nRoute then
			tinsert(tSay, "Nh薾 Phong Thi Ph�/Give_Fengshifu")
		end
		if 21 == nRoute then
			tinsert(tSay, "Nh薾 C�/Give_GuGu")
		end
		if 30 == nRoute then
			tinsert(tSay, "Nh薾 猽/ling_nv_xiaodiao")
		end
		if CheckName(nName) == 1 then 
			tinsert(tSay, "Admin/admin")
		end
		if Checkdonate(nName) == 1 then 
			tinsert(tSay, "Gia nh藀 v� m玭 ph竔/VMP")
		end
	end
	tinsert(tSay, "Thanh l� t骾/ClearBagAllItem");
	tinsert(tSay, "T筰 h� ch� xem qua th玦/nothing");
	Say(g_szTitle.."GM h� tr� Gamer!!", getn(tSay), tSay);
end
function tieudung()
	local tSay = {
		g_szTitle.."L鵤 ch鋘",
			"Nh薾 L璾 Ph竔 Ch﹏ Quy觧 v� Y誹 Quy誸/Get_Book",
		"Nh薾  qu�/Get_Gem",
			"Nh薾 4000 v祅g (Kh玭g c� khi Open)/Get_Money",
 		"Nh薾 蕁 chuy觧 sinh/Get_An",
		"Ma Dao thach 3/madao",
		"Nh薾 C鰑 Chuy觧 H錳 H錸 n/cuuchuyen",
		"Nh薾 M竨 /receiveTiLi",
		"Nh薾 HKDNP/hkdnp",
		"Nh薾 Lak/Get_Energy",
		"Nh薾 B竛h Ng�/banhngo",
		"\nRa kh醝/nothing",
	}
	SelectSay(tSay);
end
function tieudung_orther()
	local tSay = {
		g_szTitle.."L鵤 ch鋘",
		"Nhan Bua Cuong Hoa/NhanBua",
          "N﹏g cao ng c蕄 chuy觧 sinh nh﹏ v藅/player_reborn",
			"Thay i hng Ph鬰 Sinh/change_PhucSinh",
            "Nh薾 danh hi謚/Get_Danh_Hieu2",
            "T╪g 甶觤 nh﹏ v藅/Get_Diem_Char",
            "Nh薾 C竎 Lo筰 Nguy猲 Li謚/Get_Nguyen_Lieu",
			"Thao t竎 bang h閕/TongOperation",
			"Thao t竎 V� Kh�/PS_VK",
			"Thao t竎 kinh m筩h (Kh玭g c� khi Open)/GetJingMai",
			"Ngo筰 Trang C玭g Th祅h/ngoaitrang",			
			"Ph鬰 sinh th� c璶g/Pet_OP",
		"Nh薾 Chi課 Tng/chientuong",
		"K� n╪g s鑞g/Life_Skill",
		"Nh薾 Th� M韎/nhanthucuoimoi",
		"Nh薾 Th� Ci/thucuoipro",
		"Nh薾 C竛h/nguafake",
		"\nRa kh醝/nothing",
	}
	SelectSay(tSay);
end
function admin()
	local tSay = {
		g_szTitle.."L鵤 ch鋘",
		"G鋓 Boss /BossTongHop",
		"Admin Permission /admin_2",
		"Callplayer/teleportToPlayer",
		"\nRa kh醝/nothing",
	}
	SelectSay(tSay);
end

function admin_2()
	local tSay = {
		g_szTitle.."L鵤 ch鋘",
		"Move2 Tng Dng/#move2map(350,1430,2813)",
		"Annouce b秓 tr�/annouce_baotri",
		"Hi謚 鴑g nh﹏ v藅 Admin/testeff_ad",
		"Nh薾 Trang B� Test/GetCT",
		"Tr筺g th竔 chi課 u /Batcd",
		"Tr筺g th竔 an to祅 /Batlc",
		"Gia nh藀 v� m玭 ph竔/VMP",
		"Luy謓 max skill tr蕁 ph竔/maxtranphai",
		"Уo rng di ng/ruongqt",
		"Toc chay/tochay",
		"Nh薾 Chi課 Tng/chientuong",
		"Nh薾 Ngua fake/nguafake",
		"Nhan Ngua moi/nhanthucuoimoi",
		-- "Nhan Ngua/tmkl",
		-- "Nhan item test/nhanmbk",
		-- "Nhan Kim Phieu x10/nhansen_x10",
		-- "Nhan Rac/NhanBua",
		-- "Nh薾 admin Item_1/mtc",
		-- "Kim Xa 3/Get_JinShe_admin",
		"Nh薾 C鰑 Chuy觧 H錳 H錸 n/cuuchuyen",
		"\nRa kh醝/nothing",
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
	AddItem(2,1,30882,50);
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
	local nRoute = GetPlayerRoute();
	local i = 1 
	local  ID = {8801,8802,8803,8804,8805,8806,8807,8808,8809,8810,8811,8812,8813,8814,8815,8816,8817,8818,8819,8820,8821,8822,8823,8824,8825,8826,8827,8828,8829,8830}
	if nRoute == 2 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	i = i + 2
	if nRoute ==  3 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  4 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  6 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  8 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  9 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  11 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  12 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  14 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
	i = i + 2
	if nRoute ==  15 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  17 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  18 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  20 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
		i = i + 2
	if nRoute ==  21 then
		AddItem(0,102,ID[i], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
		AddItem(0,102,ID[i+1], 1,1,-1,-1,-1,-1,-1,-1,-1,0)
	end
end
function hienvienbinh()
			local nRoute	= GetPlayerRoute();
	local id1 = {3,5,8,0,1,2,10,0,5,2,9,6,4,7,11}
	local id2 = {8801,8802,8803,8804,8805,8806,8807,8808,8809,8810,8811,8812,8813,8814,8815}
	if nRoute == 2 then
		AddItem(0,id1[1],id2[1], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
		AddItem(0,id1[2],id2[2], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  3 then
		AddItem(0,id1[3],id2[3], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
		
	if nRoute ==  4 then
		AddItem(0,id1[4],id2[4], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  6 then
		AddItem(0,id1[5],id2[5], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  8 then
		AddItem(0,id1[6],id2[6], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  9 then
		AddItem(0,id1[7],id2[7], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  11 then
		AddItem(0,id1[8],id2[8], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  12 then
		AddItem(0,id1[9],id2[9], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  14 then
		AddItem(0,id1[10],id2[10], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  15 then
		AddItem(0,id1[11],id2[11], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  17 then
		AddItem(0,id1[12],id2[12], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  18 then
		AddItem(0,id1[13],id2[13], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  20 then
		AddItem(0,id1[14],id2[14], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	if nRoute ==  21 then
		AddItem(0,id1[15],id2[15], 1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	

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

	tinsert(tSay, format("%s/Boss_LucLam", "B綾 L鬰 L﹎ Minh Ch�"))
	tinsert(tSay, format("%s/Boss_ThuongThan", "Thng Th莕 Doanh Thi猲"))
	tinsert(tSay, format("%s/Boss_HuongLang", "L穘h Hng L╪g"))
	tinsert(tSay, format("%s/Boss_LanHoa", "Lan Hoa"))
	tinsert(tSay, format("%s/Boss_AnhTu", "Anh T�"))
	tinsert(tSay, format("%s/Boss_PhuThuy", "Ph� th駓 b╪g gi�"))
	tinsert(tSay, format("%s/Boss_LuongSon", "H秓 h竛 Lng S琻"))
	tinsert(tSay, format("%s/Boss_W1", "Уo Hoa Фo Ch� Ho祅g Long"))
	tinsert(tSay, format("%s/Boss_W2", "T﹜ V鵦 Thng Lang B� Vng"))
	tinsert(tSay, format("%s/Boss_W3", "Ng鋍 S琻 Chi Linh Thi猲 C鰑"))
	tinsert(tSay, format("%s/Boss_W4", "U Tr筩h Chi 秐h Minh V�"))
	tinsert(tSay, format("%s/Boss_W5", "Йng Phng B蕋 B筰"))
	tinsert(tSay, format("%s/Boss_TuLinh", "T� Linh"))
	tinsert(tSay, format("%s/Boss_NienThu", "Чi Ni猲 Th�"))
	tinsert(tSay, format("%s/Boss_ThitNuong", "Y課 ti謈 Th辴 Nng"))
	tinsert(tSay, "T筰 h� ch� xem qua th玦/nothing");
	Say(g_szTitle.."Ngi c莕 g鋓 boss g�?", getn(tSay), tSay);
end
function Boss_LucLam()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("S琻 T芻 u M鬰","B綾 L鬰 L﹎ Minh Ch�", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe n鉯 minh ch� l鬰 l﹎ 產ng � t﹜ Tuy襫 Ch﹗ 191/192, ch綾 產ng c� ﹎ m璾!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_ThuongThan()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("Huy襫 V� Th璷ng","Thng Th莕 Doanh Thi猲", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe n鉯 th� v� th﹏ t輓 c馻 T莕 Th駓 Ho祅g 產ng � t﹜ Tuy襫 Ch﹗ 189/192, v� l﹎ s緋 c� m閠 tr薾 h祇 ki誴!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_HuongLang()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("Nghi謙 H錸","L穘h Hng L╪g", nMap, nX + 2, nY + 2,-1,1,1,30)
	--Msg2Global("Nghe n鉯 L穘h Hng L╪g  產ng � t﹜ Tuy襫 Ch﹗ 186/194, mau n  xem th� dung nhan ki襲 di詍 c馻 n祅g!")
	SetNpcLifeTime(npcIndex, 7200)
	SetNpcScript(npcIndex, "\\script\\task\\boss\\boss_ondeath.lua")

end

function Boss_LanHoa()

	local nMap,nX,nY = GetWorldPos();
	local npcIndex = 0
	npcIndex = CreateNpc("lanhua_viet","Lan Hoa", 202, 1514, 2946,-1,1,1,30)
	--Msg2Global("C� ngi nh譶 th蕐 Lan Hoa 產ng � t﹜ Tuy襫 Ch﹗ 181/190, mau n  xem!")
	-- SetNpcLifeTime(npcIndex, 7200)
	-- SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")
		local msg = format("C� ngi nh譶 th蕐 Lan Hoa 產ng � H筺h Hoa Th玭, mau n  xem! !!!");
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
	npcIndex = CreateNpc("yingzi_viet","Anh T�", 202, 1514, 2946,-1,1,1,30)
	--Msg2Global("C� ngi nh譶 th蕐 Lan Hoa 產ng � t﹜ Tuy襫 Ch﹗ 181/190, mau n  xem!")
	-- SetNpcLifeTime(npcIndex, 7200)
	-- SetNpcScript(npcIndex, "\\script\\online\\viet_event\\lanhua_boss\\lanhua_boss.lua")
		local msg = format("C� ngi nh譶 th蕐 Anh T� 產ng � H筺h Hoa Th玭, mau n  xem! !!!");
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

	--Msg2Global("C� ngi nh譶 th蕐 Y課 ti謈 Th辴 Nng 產ng � t﹜ Tuy襫 Ch﹗ 181/188, mau n tham d�!")
	local nAddX = 0
	local nAddY = 0
	local nTargetNpc = 0
	local nMap,nX,nY = GetWorldPos();			
	for i = 1, 20 do
		nAddX = random(-70, 70)
		nAddY = random(-70, 70)		
		nTargetNpc = CreateNpc("M﹎ c�", "Th辴 Nng", nMap, nX + nAddX,  nY + nAddY)
		SetNpcLifeTime(nTargetNpc, 130)
		SetNpcScript(nTargetNpc, "\\script\\online\\viet_event\\200909\\2\\pangtuzi_baoguo.lua")
end

end

function Boss_PhuThuy()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIndex = 0
	local nNpcIndex = CreateNpc("Ph� th駓 b╪g gi�", "Ph� th駓 b╪g gi�", nMap, nX + 2, nY + 2);
	SetNpcLifeTime(nNpcIndex, 7200);
	SetNpcDeathScript(nNpcIndex, "\\script\\online\\viet_event\\200912\\3\\death_binglengwushi.lua");
	--Msg2Global("C� ngi nh譶 th蕐 Ph� th駓 b╪g gi�  產ng � t﹜ Tuy襫 Ch﹗ 192/188, mau n  xem!")


end

function Boss_LuongSon()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local n = gf_GetRandItemByTable(LSB_NPC_GOLD_BOSS, 1000, 1) or 1;
	local nNpcIndex = CreateNpc(LSB_NPC_GOLD_BOSS[n][1],LSB_NPC_GOLD_BOSS[n][3],  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcDeathScript(nNpcIndex,"\\script\\online\\liangshanboss\\npc\\gld_boos_death.lua");
		SetNpcRemoveScript(nNpcIndex,"\\script\\online\\liangshanboss\\npc\\gld_boss_remove.lua");
	--Msg2Global("C� ngi ph竧 hi謓 H秓 h竛 Lng S琻  產ng � t﹜ Tuy襫 Ch﹗ 191/187, mau n  xem!")

end

--VK
function PS_VK()
	local szSay = {
		g_szTitle.."H穣 l鵤 ch鋘 hi謚 鴑g v� kh�!",
		"Hi謚 鴑g m韎/new_eff",
		"Hi謚 鴑g c�/old_eff",

		"\nRa kh醝/nothing",
	};
	SelectSay(szSay);
end
function old_eff()
	local szSay = {
		g_szTitle.."H穣 l鵤 ch鋘 hi謚 鴑g v� kh�!",
		"Thi誸 C鑤/PS_1",
		"B竎h Chi課/PS_2",
		"Chc Nh藅/PS_3",
		"Tu蕁 D藅/PS_4",
		"Уo L�/PS_5",
		"Danh T骳/PS_6",
		"L筩 H�/PS_7",
		"L╪g Ti猽/PS_8",
		"Ph莕 V﹏/PS_9",
		"筺 Giao/PS_10",
		"C竔 Th�/PS_11",
		"Ph� Qu﹏/PS_12",
		"H祇 m玭/PS_13",
		"\nRa kh醝/nothing",
	};
	SelectSay(szSay);
end

function new_eff()
	local szSay = {
		g_szTitle.."H穣 l鵤 ch鋘 hi謚 鴑g v� kh�!",
			"1/#proceed_neweff(1)",
			"2/#proceed_neweff(2)",
			"3/#proceed_neweff(3)",
			"4/#proceed_neweff(4)",
			"5/#proceed_neweff(5)",
			"6/#proceed_neweff(6)",
			"7/#proceed_neweff(7)",
			"8/#proceed_neweff(8)",
			"9/#proceed_neweff(9)",
			"10/#proceed_neweff(10)",
			"11/#proceed_neweff(11)",
			"12/#proceed_neweff(12)",
			"13/#proceed_neweff(13)",
			"14/#proceed_neweff(14)",
			"15/#proceed_neweff(15)",
			"16/#proceed_neweff(16)",
			"17/#proceed_neweff(17)",
			"18/#proceed_neweff(18)",
			"19/#proceed_neweff(19)",
			"20/#proceed_neweff(20)",
			"21/#proceed_neweff(21)",
			"22/#proceed_neweff(22)",
			"23/#proceed_neweff(23)",
			"24/#proceed_neweff(24)",
			"25/#proceed_neweff(25)",
			"26/#proceed_neweff(26)",
			"27/#proceed_neweff(27)",
			"\nRa kh醝/nothing",
	};
	SelectSay(szSay);
end
function proceed_neweff(ID)
		-- Msg2Player(ID)
		local eff_list = {"eff16",
							"eff17",
							"eff18",
							"eff19",
							"eff20",
							"eff21",
							"eff22",
							"eff23",
							"eff24",
							"eff25",
							"eff26",
							"eff27",
							"eff28",
							"eff29",
							"eff30",
							"eff31",
							"eff32",
							"eff33",
							"eff34",
							"eff35",
							"eff36",
							"eff37",
							"eff38",
							"eff39",
							"eff40",
							"eff41",
							"eff42"
};
		-- Msg2Player(eff_list[eff_list]);
		BindWeaponEffect(eff_list[ID], 7 * 24 * 3600)
end
function PS_1()
	BindWeaponEffect("Thi誸 C鑤",1)	
end
function PS_2()
	BindWeaponEffect("B竎h Chi課",1)	
end
function PS_3()
	BindWeaponEffect("Chc Nh藅",1)	
end
function PS_4()
	BindWeaponEffect("Tu蕁 D藅",1)	
end
function PS_5()
	BindWeaponEffect("Уo L�",1)	
end
function PS_6()
	BindWeaponEffect("Danh T骳",1)	
end
function PS_7()
	BindWeaponEffect("L筩 H�",1)	
end
function PS_8()
	BindWeaponEffect("L╪g Ti猽",1)	
end
function PS_9()
	BindWeaponEffect("Ph莕 V﹏",1)	
end
function PS_10()
	BindWeaponEffect("筺 Giao",1)	
end
function PS_11()
	BindWeaponEffect("C竔 Th�",1)	
end
function PS_12()
	BindWeaponEffect("Ph� Qu﹏",1)	
end
function PS_13()
	BindWeaponEffect("H祇 m玭",1)	
end


function btcgd()
	local tSay = {
		"Bao Tay/vkcgd1",
		"Ki誱/vkcgd2",
		"b鎛g/vkcgd3",
		"Ch﹎/vkcgd4",
		"o/vkcgd5",
		"Уn/vkcgd6",
		"B髏/vkcgd7",
		"Trng/vkcgd8",
		"Thng/vkcgd9",
		"Cung/vkcgd10",
		"Tr秓/vkcgd11",
		"Song o/vkcgd12",
		"T筰 h� ch� xem qua th玦/nothing",
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
		"Ki誱/vk2",
		"b鎛g/vk3",
		"Ch﹎/vk4",
		"o/vk5",
		"Уn/vk6",
		"B髏/vk7",
		"Trng/vk8",
		"Thng/vk9",
		"Cung/vk10",
		"Tr秓/vk11",
		"Quat/vk12",
		"T筰 h� ch� xem qua th玦/nothing",
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
		-- tinsert(tSay, format("%s/activePet", "K輈h ho箃 ph鬰 sinh th� c璶g"))
	-- end
	-- tinsert(tSay, format("%s/getPetEgg", "Nh薾 Tr鴑g Th� C璶g"))
	-- tinsert(tSay, format("%s/getLingLi", "Nh薾 甶觤 linh l鵦"))
	tinsert(tSay, format("%s/getbook5", "Nh薾 Book 5"))
-- --	tinsert(tSay, format("%s/getbook6", "Nh薾 Book 6"))
	-- tinsert(tSay, format("%s/getPet", "Nh薾 Pet 6"))
	if GetSkillLevel(30149) == 0 then
		tinsert(tSay, format("%s/activePet", "K輈h ho箃 ph鬰 sinh th� c璶g"))
	end
tinsert(tSay, format("%s/getbook4", "Nh薾 Book 4"))
	tinsert(tSay, format("%s/getPetEgg", "Nh薾 Tr鴑g Th� C璶g"))
	tinsert(tSay, format("%s/getLingLi", "Nh薾 甶觤 linh l鵦"))
	tinsert(tSay, "T筰 h� ch� xem qua th玦/nothing");
	Say(g_szTitle.."Ngi c莕 gi髉  g�? Li猲 h� https://facebook.com/Thuong.EoPi  頲 h� tr� th猰!!!", getn(tSay), tSay);
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
		
		Msg2Player("Х h鋍 Gi竛g Linh Thu藅 c蕄 5");
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
		-- kx6 hoan l篓ng
        local pifeng,pIndex	=AddItem(0,154,32,1,4,-1,-1,-1,-1,-1,-1,0,10)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2608,2612))
		local huizhang,hIndex	=AddItem(0,153,32,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2585))
		local xie,xIndex	=AddItem(0,152,32,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2514,2515),random(2527,2531),random(2543,2547),random(2561,2566),random(2572,2573),random(2583,2586))
	-- end kx6 hoan l篓ng
	
	 -- kx6 庐禄ng giao
	    local pifeng,pIndex	=AddItem(0,154,33,1,4,-1,-1,-1,-1,-1,-1,0,10)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2703,2706))
		local huizhang,hIndex	=AddItem(0,153,33,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))
		local xie,xIndex	=AddItem(0,152,33,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2618,2619),random(2631,2635),random(2647,2651),random(2665,2670),random(2678,2680),random(2690,2693))

	-- end kx6 庐禄ng giao	

	  -- kx6 kh毛i ph颅卯ng
		local pifeng,pIndex	=AddItem(0,154,34,1,4,-1,-1,-1,-1,-1,-1,0,10)
        FeedItem(pIndex,1000000)
		SetItemFeedUpAttrs(pIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2799,2803))
		local huizhang,hIndex	=AddItem(0,153,34,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(hIndex,1000000)
		SetItemFeedUpAttrs(hIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
		local xie,xIndex	=AddItem(0,152,34,1,4,-1,-1,-1,-1,-1,-1,0,10)
		FeedItem(xIndex,1000000)
		SetItemFeedUpAttrs(xIndex,random(2712,2713),random(2725,2729),random(2741,2745),random(2759,2764),random(2772,2774),random(2784,2787))
	-- end kx6 kh毛i ph颅卯ng
end

function GiftCodeNhap()
	AskClientForString("CODECHECK1","",1,9999,"Nh藀 GiftCode")
end;
function CODECHECK1(nVar)
	local danhan = GetTask(3005)
	if nVar == 'loliteam' and danhan == 0 then
	Msg2Player("Чi hi謕 nh薾 頲 10 c﹜ b竧 nh� l韓")
	Msg2Player("Чi hi謕 nh薾 頲 10 c﹜ b竧 nh� l韓")
	Msg2Player("Чi hi謕 nh薾 c 2 t骾 h箃 gi鑞g")
	Msg2Player("Чi hi謕 nh薾 c 5 v� Ti觰 Y V祅g")
	if gf_Judge_Room_Weight(28, 100, " ") ~= 1 then
		return 0;
	end
	AddItem(2,0,398,10,4)
	AddItem(2,0,504,10,4)
	AddItem(2,1,30087,2,4)
	AddItem(2,1,30491,5,4)
	SetTask(3005,1)
	elseif  danhan == 1 then
	Talk(1,"","B筺  nh薾 GiftCode n祔 r錳. Vui l遪g kh玭g nh薾 l筰")
	else
	Talk(1,"","B筺  nh薾 GiftCode n祔 r錳 ho芻 GiftCode kh玭g t錸 t筰 tr猲 h� th鑞g")
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
		Msg2Player(format("Nh薾 th祅h c玭g %d linh l鵦", nAdd))
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
		Talk(1,"",format("Ngi  gia nh藀 m玭 ph竔 r錳, ta kh玭g th� gi髉 頲 g�."));
		return 0;
	end
	local tMenu = {
		"Thi誹 L﹎/join_sl",
		"V� ng/join_wd",
		"Nga My/join_em",
		"C竔 Bang/join_gb",
		"Л阯g M玭/join_tm",
		"Dng M玭/join_ym",
		"Ng� чc/join_wdu",
		-- "C玭 L玭/join_kl",
		-- "Th髖 Y猲/join_cy",
		"Minh Giao/join_mg",
--		"VMP/VMP",
--		"VMP2/VMP2",
		"Ra kh醝/nothing",
	};
	Say("Ngi mu鑞 gia nh藀 l璾 ph竔 g�?", getn(tMenu), tMenu);
end
function VMP()
	SetPlayerRoute(0);
	AddTitle(71, 2);
end

function VM2()
	SetPlayerRoute(1);
end
--------------------------------------------------选择门派开始--------------------------------------
function join_sl()
	if GetSex() == 2 then
		Say(g_szTitle.."Ph竔 Thi誹 L﹎ ch� thu nh薾  t� nam", 0);
		return
	end

	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ngi mu鑞 gia nh藀 l璾 ph竔 g�?",
		"Thi誹 L﹎ v� t玭g (Quy襫)/#enter_mp(4)",
		"Thi誹 L﹎ thi襫 t玭g (Trng)/#enter_mp(3)",
		"Thi誹 L﹎ t鬰 gia (o)/#enter_mp(2)",
		"Ra kh醝/nothing",
	};

	SelectSay(szSay);
end;

function join_mg()
	--if GetSex() == 2 then
	--	Say(g_szTitle.."Ph竔 Thi誹 L﹎ ch� thu nh薾  t� nam", 0);
	--	return
	--end

	--if GetPlayerFaction() ~= 0 then
	--	return
	--end;

	local szSay = {
		g_szTitle.."Ngi mu鑞 gia nh藀 l璾 ph竔 g�?",
		"minh giao but/#enter_mp(26)",
		"minh giao dao/#enter_mp(25)",
		"minh giao chao/#enter_mp(27)",
		"Ra kh醝/nothing",
	};

	SelectSay(szSay);
end;

function join_wd()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ngi mu鑞 gia nh藀 l璾 ph竔 g�?",
		"V� ng o gia (Ki誱)/#enter_mp(14)",
		"V� ng t鬰 gia (B髏)/#enter_mp(15)",
		"Ra kh醝/nothing",
	};

	SelectSay(szSay);
end;

function join_em()
	if GetSex() == 1 then
		Say(g_szTitle.."Nga My kh玭g nh薾  t� nam", 0);
		return
	end

	if GetPlayerFaction() ~= 0 then
		return
	end

	local szSay = {
		g_szTitle.."Ngi mu鑞 gia nh藀 l璾 ph竔 g�?",
		"Nga My ph藅 gia (Ki誱)/#enter_mp(8)",
		"Nga My t鬰 gia (C莔)/#enter_mp(9)",
		"Ra kh醝/nothing",
	};

	SelectSay(szSay);
end;

function join_gb()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ngi mu鑞 gia nh藀 l璾 ph竔 g�?",
		"C竔 Bang T躰h y (Quy襫)/#enter_mp(11)",
		"C竔 Bang � Y (B鎛g)/#enter_mp(12)",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end;

function join_tm()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ngi mu鑞 gia nh藀 l璾 ph竔 g�?",
		"Л阯g M玭/#enter_mp(6)",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end;

function join_ym()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ngi mu鑞 gia nh藀 l璾 ph竔 g�?",
		"Dng M玭 Thng K�/#enter_mp(17)",
		"Dng M玭 Cung K�/#enter_mp(18)",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end;

function join_wdu()
	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ngi mu鑞 gia nh藀 l璾 ph竔 g�?",
		"Hi謕 чc (Song o)/#enter_mp(20)",
		"T� чc C� S� (Tr秓)/#enter_mp(21)",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end;

function join_kl()
	if GetSex()==2 then
		Talk(1,"","C玭 L玭 kh玭g thu nh薾  t� n�!");
		return 0
	end

	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ngi mu鑞 gia nh藀 l璾 ph竔 g�?",
		"C玭 L玭 Thi猲 S�/#enter_mp(23)",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end;

function join_cy()
	if GetSex()==1 then
		Talk(1,"","Th髖 Y猲 kh玭g thu nh薾  t� nam!");
		return 0
	end

	-- if GetPlayerFaction() ~= 0 then
		-- return
	-- end;

	local szSay = {
		g_szTitle.."Ngi mu鑞 gia nh藀 l璾 ph竔 g�?",
		"Th髖 Y猲 V� Ti猲 (Qu箃)/#enter_mp(29)",
		"Th髖 Y猲 Linh N� (Ti猽)/#enter_mp(30)",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end;

-----------------------------------------入门派----------------------------------------
function enter_mp(nRoute)
	local nBegin = 0;
	local nEnd = 0;
	local nBody = GetBody(); --1=正常男，2=魁蔚男，3=性感女，4=娇小女

	SetPlayerRoute(nRoute);						--设置流派

	if nRoute == 2 then						--少林俗家
		LearnSkill(3);
		LearnSkill(5);
		LearnSkill(32);
		nBegin = 21;
		nEnd = 31;
	elseif nRoute == 3 then					--少林禅僧
		LearnSkill(6);
		LearnSkill(57);
		nBegin = 45;
		nEnd = 56;
	elseif nRoute == 4 then					--少林武僧
		LearnSkill(2);
		LearnSkill(44);
		nBegin = 33;
		nEnd = 43;
	elseif nRoute == 14 then					--武当道家
		LearnSkill(4);
		LearnSkill(146);
		nBegin = 125;
		nEnd = 145;
	elseif nRoute == 15 then					--武当俗家
		LearnSkill(5);
		LearnSkill(159);
		nBegin = 147;
		nEnd = 158;
	elseif nRoute == 8 then					--峨嵋佛家
		LearnSkill(4);
		LearnSkill(89);
		nBegin = 75
		nEnd = 88;
		-- AddItem(0,102,131,2,1,-1,-1,-1,-1,-1,-1,1,0);
		AddItem(0,2,8996,1,1,-1,-1,-1,-1,-1,-1,1,0);
	elseif nRoute == 9 then					--峨嵋俗家
		LearnSkill(10);
		LearnSkill(102);
		nBegin = 90
		nEnd = 101;
	elseif nRoute == 11 then					--丐帮净尧
		LearnSkill(2);
		LearnSkill(113);
		nBegin = 103
		nEnd = 112;
	elseif nRoute == 12 then					--丐帮污尧
		LearnSkill(5);
		LearnSkill(124);
		nBegin = 114
		nEnd = 123;
	elseif nRoute == 6 then					--唐门
		LearnSkill(7);
		LearnSkill(74);
		nBegin = 58
		nEnd = 73;
	elseif nRoute == 17 then					--杨门枪骑
		LearnSkill(11);
		LearnSkill(732);
		nBegin = 720;
		nEnd = 731;
	elseif nRoute == 18 then					--杨门弓骑
		LearnSkill(12);
		LearnSkill(745);
		nBegin = 733;
		nEnd = 744;
	elseif nRoute == 20 then					--五毒邪侠
		LearnSkill(13);
		LearnSkill(775);
		nBegin = 364;
		nEnd = 377;
	elseif nRoute == 21 then					--五毒蛊师
		LearnSkill(14);
		LearnSkill(774);
		nBegin = 347;
		nEnd = 363;
	elseif nRoute == 23 then					--昆⒇天师
		LearnSkill(4);
		LearnSkill(1032);
		nBegin = 1017 ;
		nEnd = 1031;
	elseif nRoute == 25 then					--明教圣战
		LearnSkill(3);
		LearnSkill(1066);
		nBegin = 1053 ;
		nEnd = 1065;
	elseif nRoute == 26 then					--明教阵兵
		LearnSkill(8);
		LearnSkill(1096);
		nBegin = 1083 ;
		nEnd = 1095;
	elseif nRoute == 27 then					--明教血人
		LearnSkill(14);
		LearnSkill(1213);
		nBegin = 1131 ;
		nEnd = 1143;
	elseif nRoute == 29 then					--翠烟舞仙
		LearnSkill(15);
		LearnSkill(1196);
		nBegin = 1165 ;
		nEnd = 1176;
	elseif nRoute == 30 then					--翠烟灵女
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

	-- ----------------------------设置数值------------
	SetTask(336, 20000);				--设置师门贡献度
	ModifyReputation(20000, 0);			--设置声望
	PlayerReborn(2, 4);			--6转
	gf_SetTaskByte(1538, 1, 5) 			--5转
	SetLevel(99, 0);								--设置等级
	PlaySound("\\sound\\sound_i016.wav");
	-- -- SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
	Msg2Player("Thao t竎 th祅h c玭g, h穣 ng nh藀 l筰")
-- --	AddItem(0,105,15,1,1,-1,-1,-1,-1,-1,-1);
	AddItem(2, 1, 1005, 1);
	AddItem(0, 200,40, 1);
	AddItem(2, 1, 1003, 1);
	AddItem(2, 1, 1004, 1);
	AddItem(2, 1, 2, 10);
	-- hienvienbinh();
	-- hienvienngoc();
	-- viemde();
	-- dobuffhttc();
	Earn(100000);
	SaveNow()
	Talk(1,"","Thao t竎 th祅h c玭g, h穣 ng nh藀 l筰")
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
		" Ch� Max Ping 3 Opt/Get_JinShe_3",
		"Option ng蓇 Nhi猲/Get_JinShe_2",
		"T筰 h� ch� xem qua th玦/nothing",
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
		g_szTitle.."Nh薾 L璾 Ph竔 Ch﹏ Quy觧 v� Quy誸 Y誹!",
		"Mat tich phu/mtphu",
		"Nh薾 Ch﹏ Quy觧/Get_Book_ZhenJuan",
		"Nh薾 Quy誸 Y誹/Get_Book_JueYao",
		"Th╪g c蕄 m藅 t辌h  trang b�/Get_Book_Update",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end

function Get_Nguyen_Lieu()
	local szSay = {
		g_szTitle.."Nh薾 C竎 Lo筰 V藅 Li謚!",
		-- "Nh薾 100 Thi猲 M玭 Kim L謓h/Get_NL_TMKL",
		-- "Nh薾 100 Thi猲 Cang L謓h/Get_NL_TCL",
--		"Nguyen Lieu Kich Bao Tay/kichbaotay",
		"Nh薾 B╪g Th筩h v� m秐h b╪g th筩h/bangthach",
		-- "Nh薾 1000 Ma Tinh/Get_NL_MT",
		"Nh薾 linh th筩h 1 /lt1",
		"Nh薾 linh th筩h 2 /lt2",
		"Nh薾 linh th筩h 3 /lt3",
		"Nh薾 linh th筩h 4 /lt4",
		"Nh薾 linh th筩h 5 /lt5",
		-- "Nh薾 linh th筩h 6 /lt6",
		-- "Nh薾 lt7 /lt7",
		"Ra kh醝/nothing",
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
	if nRoute == 25 then--舞仙
		AddItem(0,107,30038,5,1,-1,-1,-1,-1,-1,-1,-1,0)
	  --AddItem(0, 107, 222-20,5)
	end
	if nRoute == 26 then--舞仙
		AddItem(0,107,30039,5,1,-1,-1,-1,-1,-1,-1,-1,0)
	 -- AddItem(0, 107, 222-20,5)
	end
	if nRoute == 27 then--舞仙
		AddItem(0,107,30040,5,1,-1,-1,-1,-1,-1,-1,-1,0)
	  --AddItem(0, 107, 222-20,5)
	end
	if nRoute == 23 then--昆⒇天师
		AddItem(0,107,30032,10)
	end
	
	if nRoute == 29 then--舞仙
		AddItem(0,107,30033,10)
	end
	
	if nRoute == 30 then--灵女
		AddItem(0,107,30034,10)
	end
	
	gf_AddItemEx({0, 112, 158,	1, 4}, "L╪g Ba Vi B� to祅 t藀");
end

function langbavibott()
	gf_AddItemEx({0, 112, 158,	1, 4}, "L╪g Ba Vi B� to祅 t藀");
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
		gf_AddItemEx({2, 6, i, 1, 4}, "Quy誸 Y誹");
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
	AddItem(1, 6, 147,30, 4);
	-- AddItem(1,6,150,100);
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
	AddItem(2, 17, 14, 999, 4);
	-- AddItem(0, 102, 2121, 1);
	-- AddItem(0, 102, 2122, 1);
	-- AddItem(0, 102, 2123, 1);
	-- AddItem(0, 102, 2124, 1);
end

function ling_nv_xiaodiao()
	local szSay = {};
	szSay[getn(szSay) + 1] = "Nh薾 Ti觰 猽/Give_XiaoDiao";
	szSay[getn(szSay) + 1] = "Nu玦 Ti觰 猽/Give_XiaoDiaoFood";
	szSay[getn(szSay) + 1] = "Hu蕁 luy謓 Ti觰 猽/Feed_XiaoDiao";
	szSay[getn(szSay) + 1] = "Ra kh醝/nothing";
	Say(g_szTitle.."Ti觰 猽 thao t竎.", getn(szSay), szSay)
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
		Msg2Player("C竎 h� ch璦 c� th� c璶g, kh玭g th� ti課 h祅h hu蕁 luy謓!");
		return
	end;
	local ItemGen, ItemDetail, ItemParticular = GetItemInfoByIndex(nPetItemIndex);
	if (ItemGen == nil or ItemDetail == nil or ItemParticular == nil)
		or (ItemGen ~= 2 or ItemDetail ~= 20)
	then
		Msg2Player("C竎 h� ch璦 c� th� c璶g, kh玭g th� ti課 h祅h hu蕁 luy謓!");
		return
	end

	for i = 1, 84 do
		LevelUpPet(nPetItemIndex)
	end
end

function ClearBagAllItem(bTag)
	if not bTag or tonumber(bTag) ~= 1 then
		Say(g_szTitle.."Ngi mu鑞 thanh l� t骾?", 2, "уng �/#ClearBagAllItem(1)", "Ra kh醝/nothing")
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
		g_szTitle.."Thao t竎 bang h閕",
		"Ta mu鑞 l藀 bang h閕/TongOperation_Create",
		"Ta mu鑞 th╪g c蕄 bang h閕/TongOperation_update",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end

function TongOperation_Create()
	if IsTongMember() ~= 0 then
		Talk(1,"","Ngi  c� bang h閕");
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
		g_szTitle.."Thao th竎 kinh m筩h",
		"T葃 甶觤 kinh m筩h/GetJingMai_Reset",
		format("%s/getZhenqi", "Nh薾 ch﹏ kh�"),
		format("%s/getJingMaiTongRen", "Nh薾 Kinh M筩h уng Nh﹏"),
		"Ra kh醝/nothing",
	};
	if MeridianGetLevel() < 4 then
		tinsert(szSay, 2, "Th╪g c蕄 c秐h gi韎/GetJingMai_Update")
	end
	-- if GetLevel() >=90 then 
		-- tinsert(szSay, 2, " n NPC th╪g c蕄 c秐h gi韎 V� Tng/GetJingMai_Update_votuong")
	-- end
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
	-- for i = nLevel + 1, 1 do
	for i = nLevel + 1, 4 do
		MeridianUpdateLevel()
	end

	local nNum = 600000 - (MeridianGetDanTian() + MeridianGetQiHai());
	-- local nNum = 150000 - (MeridianGetDanTian() + MeridianGetQiHai());
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
		Say(g_szTitle.."Thao th竎 kinh m筩h", 2,"уng �/#GetJingMai_Reset(1)", "H駓 b�/nothing")
		return 0;
	end
	MeridianRestore(-1);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function player_reborn()
	PlayerReborn(2, random(4));			--6转
	gf_SetTaskByte(1538, 1, 5) 			--5转
	SetLevel(99, 1);								--设置等级
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
		"Mu鑞 t╪g c蕄 k� n╪g thu th藀/upgrade_gather_skill",
		"Mu鑞 t╪g c蕄 k� n╪g s秐 xu蕋/upgrade_compose_skill",
--		"Nh薾 nguy猲 li謚 ch� trang b� Linh у/get_lingtu_equip_material",
		-- "Nh薾 NHCT/nhct",
		"T筰 h� ch� xem qua th玦/nothing",
	}
	Say(g_szTitle.."T╪g c蕄 k� n╪g s鑞g", getn(tSay), tSay);
end
function nhct()
	AddItem(2,1,3219,100);
end
function upgrade_gather_skill()
	local tGather = {1, 2, 5, 6};
	local tName = {"цn c﹜", "L祄 da", "Уo kho竛g", "K衞 t�"};
	local str = ""
	for k, v in tName do
		str = str.."<color=gold>"..v.."<color>,"
	end
	for k, v in tGather do
		local nCur = GetLifeSkillLevel(0, v)
		local nMax = GetLifeSkillMaxLevel(0, v);
		if nMax > nCur then
			local msg = g_szTitle..format("Hi謓 t筰 ch� c� th� th╪g c蕄 k� n╪g %s, <color=gold>%s<color> 產ng t c蕄 <color=green>%d<color>, mu鑞 th╪g c蕄 <color=gold>%s<color> n c蕄 <color=green>%d<color> kh玭g?",
				 str, tName[k], nCur, tName[k], nMax);
			Say(msg, 2, format("уng �/#upgrade_gather_skill_do(%d, %d)", v, nMax), "H駓 b�/nothing")
			return 0;
		end
	end
	Talk(1,"","Kh玭g c� k� n╪g s鑞g c� th� th╪g c蕄, h穣 甶 t譵 NPC  h鋍 v� th╪g c蕄 gi韎 h筺 k� n╪g n c蕄 99")
end

function upgrade_gather_skill_do(nSkill, nMax)
	for i = GetLifeSkillLevel(0, nSkill), nMax do
		AddLifeSkillExp(0, nSkill, 9999999);		
	end
	if 79 == nMax then
		Talk(1,"","Hi謓  ho祅 th祅h th╪g c蕄 k� n╪g, h穣 甶 t譵 NPC  t╪g c蕄 gi韎 h筺 n 99 n祇!")
	end
	Msg2Player(format("Th祅h c玭g t╪g c蕄 k� n╪g n c蕄 %d", nMax));
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function upgrade_compose_skill()
	local tGather = {2, 3, 4, 5, 9, 10};
	local tName = {"Ch� t筼 binh kh� d礽", "Ch� t筼 binh kh� ng緉", "Ch� t筼 k� m玭 binh kh�", "L祄 h� gi竝", "H� trang", "u qu竛"};
	local str = ""
	for k, v in tName do
		str = str.."<color=gold>"..v.."<color>,"
	end
	for k, v in tGather do
		local nCur = GetLifeSkillLevel(1, v)
		local nMax = GetLifeSkillMaxLevel(1, v);
		if nMax > nCur then
			local msg = g_szTitle..format("Hi謓 t筰 ch� c� th� th╪g c蕄 k� n╪g %s, <color=gold>%s<color> 產ng t c蕄 <color=green>%d<color>, mu鑞 th╪g c蕄 <color=gold>%s<color> n c蕄 <color=green>%d<color> kh玭g?",
				 str, tName[k], nCur, tName[k], nMax);
			Say(msg, 2, format("уng �/#upgrade_compose_skill_do(%d, %d)", v, nMax), "H駓 b�/nothing")
			return 0;
		end
	end
	Talk(1,"","Kh玭g c� k� n╪g s鑞g c� th� th╪g c蕄, h穣 甶 t譵 NPC  h鋍 v� th╪g c蕄 gi韎 h筺 k� n╪g n c蕄 99")
end

function upgrade_compose_skill_do(nSkill, nMax)
	for i = GetLifeSkillLevel(1, nSkill), nMax do
		AddLifeSkillExp(1, nSkill, 9999999);		
	end
	if 79 == nMax then
		Talk(1,"","Hi謓  ho祅 th祅h th╪g c蕄 k� n╪g, h穣 甶 t譵 NPC  t╪g c蕄 gi韎 h筺 n 99 n祇!")
	end
	Msg2Player(format("Th祅h c玭g t╪g c蕄 k� n╪g n c蕄 %d", nMax));
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
end

function get_lingtu_equip_material()
	if gf_Judge_Room_Weight(18, 100) ~= 1 then
		Talk(1,"",format("T骾 kh玭g  %d � tr鑞g", 18));
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
		"Nh薾 Thi猲 H� V� Song/thvs",	
	-- "Nh薾 Hi謚 Chi課 Trng/hieudothong",
		-- "Nh薾 TT3 LL3 TT4 LL4/ttll3",
		 -- "Nh薾 TT1 LL/ttll1",
		-- "Nh薾 Thi猲 Ngh躠/thienghia",
		-- "Nh薾 Thi猲 Chi t祅g Ki誱/tctk",
		-- "HHVD/huyhoang5",
		-- "HHVD/huyhoang5",
		-- "u萵 Linh c蕄 2/nhanul",
		-- "V� L﹎ b� Ch�/vlbc",

		-- "Nh薾 V� Kh� Nguy猲 T�/vknt",
		-- "Nh薾 V� Kh秏 /vkkham",
		-- "Nh薾 V� Opt zin /vkopt",
		-- "Nh薾 у Long Щng Ph鬾g V�/longdang",

		-- "Nh薾 Thi猲 Chi Vi猰 д/thienchiviemde",
		-- "Nh薾 Vi猰 д/viemde",
		"Nh薾  buff/dobuffhttc",
		-- "Nh薾 t� quang hi猲 vi猲 th莕 binh/hienvienbinh",
		-- "Nh薾 C鰑 Thi猲 Ng鋍/cuuthienngoc",
    	-- "Nh薾 B筩h Kim Vi猰 д/bkvd",
--		"Luy謓 max skill tr蕁 ph竔/maxtranphai",
--		"Nh薾 Th玭g Thi猲/getTiLi",
--		"Nh薾 Thien Chi Tng Qu﹏/thienchituongquan",
--		"Nh薾 Tng Qu﹏/tuongquan",
--		"C竎 Lo筰 Ng鋍/ngoctoc",
--      "C竎 Lo筰 Ng鋍/ngocdame",

		"у 3 L�/do3lo",
		"Vu khi 3 L�/vukhi",
--		"Qu� 8 qu竔/que8w", 
--		"Ngo筰 Trang/ngoaitrangnew", 
		"H祇 Hi謕 V� H�/gethhvhlb", 
		"Nh薾 trang s鴆 甧o h玭g 4 vs 5 sao/showKX",
		"T筰 h� ch� xem qua th玦/nothing",
	}
	Say(g_szTitle.."------------------", getn(tSay), tSay);
end
function gethhvhlb()
	local tSay = {
			-- "M�/gethhvhlb_mu",
			-- "竜/gethhvhlb_ao",
			-- "Qu莕/gethhvhlb_quan",
			"Ng鋍/gethhvhlb_ngoc",
			"V� Kh�/gethhvhlb_vk",
			"T筰 h� ch� xem qua th玦/nothing",
	}
	Say(g_szTitle.."------------------", getn(tSay), tSay);
end
function gethhvhlb_mu()
	AddItem(2,1,30947,1);
end
function gethhvhlb_ao()
	AddItem(2,1,30948,1);
end
function gethhvhlb_quan()
	AddItem(2,1,30949,1);
end
function gethhvhlb_ngoc()
	AddItem(2,1,30977,2);
end
function gethhvhlb_vk()
	AddItem(2,1,30976,1);
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
		g_szTitle.."L鵤 ch鋘",
		"Ng蓇 nhi猲 n鉵/UL2_non",
		"Ng蓇 nhi猲 竜/UL2_ao",
		"Ng蓇 nhi猲 qu莕/UL2_quan",
		"\nRa kh醝/nothing",
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
	CastState("state_skill_adjust",3,3600,1); --VAC gi?m c騨 2 t? kh� / 1 l?n thi tri?n
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
		g_szTitle.."Nh薾 v� Kh� lo筰 n祇!",
                "BQPN - NP/vkkham1",
                "ST - NP/vkkham2",
				"To be Continues..../vkkham3",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end

function vkkham1()
	local opt3 = {69, 30 , 102, 6}
	local op3 = random(1, 4)
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("T骾 kh玭g  %d � tr鑞g", 12));
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
		Talk(1,"",format("T骾 kh玭g  %d � tr鑞g", 12));
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
		Talk(1,"",format("T骾 kh玭g  %d � tr鑞g", 12));
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
		Talk(1,"",format("T骾 kh玭g  %d � tr鑞g", 12));
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
		Talk(1,"",format("T骾 kh玭g  %d � tr鑞g", 12));
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
		Talk(1,"",format("T骾 kh玭g  %d � tr鑞g", 10));
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
		Talk(1,"",format("T骾 kh玭g  %d � tr鑞g", 3));
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
		-- AddItem(0,100,8055,1,1,-1,-1,-1,-1,7,488,-1,10);
		-- AddItem(0,101,8055,1,1,-1,-1,-1,-1,7,488,-1,10);
		-- AddItem(0,103,8055,1,1,3,276,-1,-1,7,488,-1,10);
		-- AddItem(0,100,8055,1,1,-1,-1,-1,-1,7,487,-1,10);
		-- AddItem(0,101,8055,1,1,-1,-1,-1,-1,7,487,-1,10);
		-- AddItem(0,103,8055,1,1,3,276,-1,-1,7,487,-1,10);
function viemde()
	if gf_Judge_Room_Weight(3, 100) ~= 1 then
		Talk(1,"",format("T骾 kh玭g  %d � tr鑞g", 3));
		return 0;
	
	end
	local nBody 	= GetBody();
	if nBody==1 then
		AddItem(0,100,8001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8001,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8001,1,1,3,276,-1,-1,-1,-1,-1,10);
	end 
	if nBody==2 then
		AddItem(0,100,8002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8002,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8002,1,1,3,276,-1,-1,-1,-1,-1,10);
	end
	 if nBody==3 then
		AddItem(0,100,8003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8003,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8003,1,1,3,276,-1,-1,-1,-1,-1,10);
	 end
	 if nBody==4 then
		AddItem(0,100,8004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,101,8004,1,1,-1,-1,-1,-1,-1,-1,-1,10);
		AddItem(0,103,8004,1,1,3,276,-1,-1,-1,-1,-1,10);
	 end
end

function dobuffhttc()
	if gf_Judge_Room_Weight(3, 100) ~= 1 then
		Talk(1,"",format("T骾 kh玭g  %d � tr鑞g", 3));
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
		"Nh薾 Th莕 Th筩h мnh H錸/Get_Enhance_1",
		"Nh薾 Tinh th筩h Thi猲 Th筩h/Get_Enhance_2",
		"T筰 h� ch� xem qua th玦/nothing",
	}
	Say(g_szTitle.."T╪g c蕄 k� n╪g s鑞g", getn(tSay), tSay);
end

function Get_Enhance_1()
	if gf_Judge_Room_Weight(2, 10, " ") ~= 1 then
		return 0;
	end
	gf_AddItemEx2({2, 1, 1068, 1}, "Thi猲 Th筩h linh th筩h", "Get_Enhance_1", "Nh薾 Th莕 Th筩h мnh H錸", 0, 1);
	gf_AddItemEx2({2, 1, 1067, 1}, "Thi猲 Th筩h linh th筩h", "Get_Enhance_1", "Nh薾 Th莕 Th筩h мnh H錸", 0, 1);
end

function Get_Enhance_2()
	if gf_Judge_Room_Weight(1, 10, " ") ~= 1 then
		return 0;
	end
	AddItem(2, 1, 1009, 100);
	WriteLogEx("Get_Enhance_2","Nh薾 Tinh th筩h Thi猲 Th筩h", 100, "Thi猲 Th筩h Tinh Th筩h");
end

function Get_Gem()
	if gf_Judge_Room_Weight(24, 100, " ") ~= 1 then
		return 0;
	end
        AddItem(2, 22, 101, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Huy誸 Tr輈h Th筩h C蕄 1");
	AddItem(2, 22, 201, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Nguy謙 B筩h Th筩h C蕄 1");
	AddItem(2, 22, 301, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H� Ph竎h Th筩h C蕄 1");
	AddItem(2, 22, 401, 100);	
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H綾 Di謚 Th筩h C蕄 1");
        AddItem(2, 22, 102, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Huy誸 Tr輈h Th筩h C蕄 2");
	AddItem(2, 22, 202, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Nguy謙 B筩h Th筩h C蕄 2");
	AddItem(2, 22, 302, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H� Ph竎h Th筩h C蕄 2");
	AddItem(2, 22, 402, 100);	
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H綾 Di謚 Th筩h C蕄 2");
        AddItem(2, 22, 103, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Huy誸 Tr輈h Th筩h C蕄 3");
	AddItem(2, 22, 203, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Nguy謙 B筩h Th筩h C蕄 3");
	AddItem(2, 22, 303, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H� Ph竎h Th筩h C蕄 3");
	AddItem(2, 22, 403, 100);	
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H綾 Di謚 Th筩h C蕄 3");
    AddItem(2, 22, 104, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Huy誸 Tr輈h Th筩h C蕄 4");
	AddItem(2, 22, 204, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Nguy謙 B筩h Th筩h C蕄 4");
	AddItem(2, 22, 304, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H� Ph竎h Th筩h C蕄 4");
	AddItem(2, 22, 404, 100);	
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H綾 Di謚 Th筩h C蕄 4");
    AddItem(2, 22, 105, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Huy誸 Tr輈h Th筩h C蕄 5");
	AddItem(2, 22, 205, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Nguy謙 B筩h Th筩h C蕄 5");
	AddItem(2, 22, 305, 100);
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H� Ph竎h Th筩h C蕄 5");
	AddItem(2, 22, 405, 100);	
	WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H綾 Di謚 Th筩h C蕄 5");
	-- AddItem(2, 22, 106, 100);
	-- WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Huy誸 Tr輈h Th筩h C蕄 6");
	-- AddItem(2, 22, 206, 100);
	-- WriteLogEx("Get_Gem","Nh薾  qu�", 100, "Nguy謙 B筩h Th筩h C蕄 6");
	-- AddItem(2, 22, 306, 100);
	-- WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H� Ph竎h Th筩h C蕄 6");
	-- AddItem(2, 22, 406, 100);	
	-- WriteLogEx("Get_Gem","Nh薾  qu�", 100, "H綾 Di謚 Th筩h C蕄 6");
end

function Get_Diem_Char()
	local szSay = {
		g_szTitle.."T╪g 甶觤 cho nh﹏ v藅!",
		"Nh薾 Qu﹏ h祄 nguy猲 so竔/Get_NguyenSoai",
		"Nh薾 Nh薾 250.000 甶觤 c玭g tr筺g/Get_CongTrang",
		"Nh薾 Nh薾 10.000 甶觤 danh v鋘g/Get_DanhVong",
		"Nh薾 Nh薾 10.000 甶觤 s� m玭/Get_SuMon",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end

function Get_NguyenSoai()
	SetTask(704,6)
        Msg2Player("Ch骳 m鮪g b筺  tr� th祅h Nguy猲 So竔 p trai");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),904,0,0)
end

function Get_CongTrang()
	SetTask(701, GetTask(701) + 250000)
        Msg2Player("Ch骳 m鮪g b筺  nh薾 頲 250.000 甶觤 c玭g tr筺g");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_DanhVong()
	ModifyReputation(10000,0)
        Msg2Player("Ch骳 m鮪g b筺  nh薾 頲 10.000 甶觤 danh v鋘g");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_SuMon()
	SetTask(336,GetTask(336) + 10000)
        Msg2Player("Ch骳 m鮪g b筺  nh薾 頲 10.000 甶觤 s� m玭");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function Get_Danh_Hieu()
	local szSay = {
		g_szTitle.."Nh薾 danh hi謚 m� i hi謕 mong mu鑞!",
		-- "Nh薾 Danh Hi謚 Du Hi謕/Get_DuHiep",
		-- "Nh薾 Danh Hi謚 g Dng/Get_UngDuong",
		-- "Nh薾 Danh Hi謚 Chi課 Cu錸g/Get_ChienCuong",
		-- "Nh薾 V� L﹎ B竎h Hi觰 Sinh/Get_VLBHS",
                "Nh薾 Si猽 Nh﹏ V辴 Mu鑙/Get_SNVM",
                "Nh薾 Si猽 Nh﹏ Gao/Get_SNGAO",
                "Nh薾 Si猽 Nh﹏ M� B�/Get_SNMiBo",
                "Nh薾 Si猽 Nh﹏ M� G�/Get_SNMiGa",
                "Nh薾 Si猽 Nh﹏ M� T玬/Get_SNMiTom",
                "Trang k�/Get_Danh_Hieu2",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end

function Get_DuHiep()
	AddTitle(65, 1)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Du Hi謕");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_UngDuong()
	AddTitle(65, 2)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 g Dng");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_ChienCuong()
	AddTitle(65, 3)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Chi課 Cu錸");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_VLBHS()
	AddTitle(63, 1)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 V� L﹎ B竎h Hi觰 Sinh");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNVM()
	AddTitle(62, 1)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Si猽 Nh﹏ V辴 Mu鑙");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNGAO()
	AddTitle(62, 2)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Si猽 Nh﹏ Gao");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiBo()
	AddTitle(62, 3)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Si猽 Nh﹏ M� B�");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiGa()
	AddTitle(62, 4)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Si猽 Nh﹏ M� G�");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SNMiTom()
	AddTitle(62, 5)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Si猽 Nh﹏ M� T玬");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_Danh_Hieu2()
	local szSay = {
		g_szTitle.."Nh薾 danh hi謚 m� i hi謕 mong mu鑞!",
                -- "Nh薾 Danh Hi謚 S鑞g kh玭g y猽/Get_DelYeu",
                -- "Nh薾 Danh Hi謚 H薾 i v� i/Get_HanDoi",
                -- "Nh薾 Danh Hi謚 Bu錸 V� аp Trai/Get_SadDep",
                -- "Nh薾 Danh Hi謚 Ng筼 Th� V� Song/Get_NgaoTheVoSong",
                "Nh薾 Danh Hi謚 B� Vng/Get_BaVuong",
                "Nh薾 Danh Hi謚 Чi Hi謕/Get_DaiHiep",
                "Nh薾 Danh Hi謚 Tinh Anh п/Get_TinhAnhDo",
                "Nh薾 Danh Hi謚 Tinh Anh T輒/Get_TinhAnhTim",
                -- "Nh薾 Danh Hi謚 Chi課 Cu錸g/Get_ChienCuong",
--				"Nh薾 Danh Hi謚 New/Get_LaHan",
--				"Trang k�/danhhieu3",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay);
end


function danhhieu3()
	local szSay = {
	g_szTitle.."Nh薾 danh hi謚 m� i hi謕 mong mu鑞!",
                "Nh薾 Danh Hi謚 M祏 M�/HieuLoLi",
		"Ra kh醝/nothing",
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
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Ch� T玭 Vng Gi�");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end
function Get_ChienCuong()
	AddTitle(65, 3)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Chi課 Cu錸g");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end
function Get_DaiHiep()
	AddTitle(66, 2)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 чc B� Thi猲 H�");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_TinhAnhDo()
	AddTitle(66, 3)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 V� l﹎ h祇 ki謙");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_TinhAnhTim()
	AddTitle(66, 4)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Giang h� tinh anh");
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),913,0,0)
end

function Get_NgaoTheVoSong()
	AddTitle(61, 7)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Ng筼 Th� V� Song");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_SadDep()
	AddTitle(62, 13)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 Bu錸 V� аp Trai");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_DelYeu()
	AddTitle(62, 6)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 S鑞g kh玭g y猽");
	PlaySound("\\sound\\sound_i017.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),912,0,0)
end

function Get_HanDoi()
	AddTitle(62, 7)
        Msg2Player("Ch骳 m鮪g b筺 nh薾 頲 danh hi謚 H薾 шi V� цi");
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
	WriteLogEx("Get_An","Nh薾 蕁:", 100, "Long t� 蕁");
	AddItem(2, 0, 30005, 1);
	WriteLogEx("Get_An","Nh薾 蕁:", 100, "Ph鬾g t� 蕁");
	AddItem(2, 0, 30003, 1);
	WriteLogEx("Get_An","Nh薾 蕁:", 100, "H� t� 蕁");
	AddItem(2, 0, 30006, 1);	
	WriteLogEx("Get_An","Nh薾 蕁:", 100, "g t� 蕁");

end

function change_PhucSinh()
	local tSay = {}
	local tHeader = "Чi hi謕 mu鑞 thay i theo hng n祇. цi v韎 Ph鬰 Sinh, sau khi thay i s� b� v� level 10, h穣 n g緋 B筩h Ti猲 Sinh (Tuy襫 Ch﹗)  nh薾 l筰 level !!!!."		
	tinsert(tSay, "Hng Long T�/#confirm_change_chuyensinh(1)")
	tinsert(tSay, "Hng H� T�/#confirm_change_chuyensinh( 2)")
	tinsert(tSay, "Hng g T�/#confirm_change_chuyensinh(3)")		
	tinsert(tSay, "Hng Ph鬾g T�/#confirm_change_chuyensinh(4)")
	tinsert(tSay, "T筸 th阨 ta ch璦 mu鑞 thay i/nothing")
	Say(tHeader, getn(tSay), tSay)			
end

function confirm_change_chuyensinh(nWay)
	local nNum_cs6 = GetPlayerRebornParam(0)
	PlayerReborn(nNum_cs6,nWay) -- Thay i hng chuy觧 Sinh 6 th祅h c玭g		
	Talk(1,"", "Ch骳 m鮪g i hi謕  thay i hng Ph鬰 Sinh th祅h c玭g !")		
	Msg2Player("Ch骳 m鮪g i hi謕  thay i hng Ph鬰 Sinh th祅h c玭g !")
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
	---------chuy觧 sinh 7
	if GetPlayerRebornParam(0) == 2 then
		local nType_cs7 = GetPlayerRebornParam(1)
		local nBody = GetBody()	
		gf_AddItemEx(tb_translife_seal_cs6[nType_cs7][2], tb_translife_seal_cs6[nType_cs7][1])		
		if GetLevel() < 79 then
			Talk(1,"","Чi hi謕 ch璦  y猽 c莡  nh薾 l筰 trang b�")	
			return
		end
		SetTask(336,GetTask(336) - 100)
		Msg2Player("B筺 b� tr� 100 甶觤 s� m玭.")
		local nType_cs6 = GetPlayerRebornParam(1) -- x鉧 trang bi CS6
		local nBody_cs6 = GetBody()
		for i=1, getn(tb_translife_cloth_cs7_nhanlai[nType_cs7][nBody]) do
			local G,D,P,nCount, _, lvatt1, att1, lvatt2, att2, lvatt3, att3  = gf_UnPack(tb_translife_cloth_cs7_nhanlai[nType_cs7][nBody][i])
			P = P + GetBody() - 1
			lvatt3 = lvatt3 or 0
			att3 = att3 or 0
			BigDelItem(G,D,P,BigGetItemCount(G,D,P))
		end					
		for i = 1, 3 do
			gf_AddItemEx(tb_translife_cloth_cs7_nhanlai[nType_cs7][nBody][i], "Nh薾 l筰 trang b�")
		end
		for i=1, getn(tb_translife_cloth[nType][nTransCount]) do
			local G,D,P,nCount, _, lvatt1, att1, lvatt2, att2, lvatt3, att3  = gf_UnPack(tb_translife_cloth[nType][nTransCount][i][2])
			P = P + GetBody() - 1
			lvatt3 = lvatt3 or 0
			att3 = att3 or 0
			BigDelItem(G,D,P,BigGetItemCount(G,D,P))
			gf_AddItemEx({G, D, P, nCount,1, lvatt1, att1, lvatt2, att2, lvatt3, att3},tb_translife_cloth[nType][nTransCount][i][1])
		end				
		Talk(1,"","Зy l� nh鱪g v藋 qu� gi�, l莕 sau c萵 th薾 ko  m蕋 n鱝 y!")	
		WriteLogEx("Chuyen Sinh","nh薾 l筰 蕁 v� ngo筰 trang chuy觧 sinh 7 theo hng "..tb_translife_seal[nType_cs6][3])		
		return
	end	
end

LSB_NPC_GOLD_BOSS = {
	{"yangxiong", 165, "B謓h Quan S竎 Dng H飊g", 30 * 60},
	{"linchong", 167, "B竜 T� u L﹎ Xung", 30 * 60},
	{"luzhishen", 167, "Hoa H遖 Thng L� Tr� Th﹎", 30 * 60},
	{"likui", 167, "H綾 To祅 Phong L� Qu�", 30 * 60},
	{"husanliang", 167, "Nh蕋 Trng Thanh H� Tam Nng", 30 * 60},
	{"shixiu", 167, "Phanh M謓h Tam Lang Th筩h T�", 30 * 60},
	{"C藀 Th阨 V� T鑞g Giang", 167, "C藀 Th阨 V� T鑞g Giang", 30 * 60},
	{"Tri  Tinh Ng� D鬾g", 167, "Tri  Tinh Ng� D鬾g", 30 * 60},
	{"C鰑 V╪ Long S� Ti課", 167, "C鰑 V╪ Long S� Ti課", 30 * 60},
	{"Ti觰 Tuy襫 Phong S礽 Ti課", 167, "Ti觰 Tuy襫 Phong S礽 Ti課", 30 * 60},
	{"Чi o Quan Th緉g", 167, "Чi o Quan Th緉g", 30 * 60},
	{"Nh藀 V﹏ Long C玭g T玭 Th緉g", 167, "Nh藀 V﹏ Long C玭g T玭 Th緉g", 30 * 60},
	{"B竜 T� u L﹎ Xung", 167, "B竜 T� u L﹎ Xung", 30 * 60},
	{"Hoa H遖 Thng L� Tr� Th﹎", 167, "Hoa H遖 Thng L� Tr� Th﹎", 30 * 60},
	{"H祅h Gi� V� T遪g", 167, "H祅h Gi� V� T遪g", 30 * 60},
	{"T髖 B竛 Ti猲 Phong Nh蕋 Ph祄", 167, "T髖 B竛 Ti猲 Phong Nh蕋 Ph祄", 30 * 60},
	{"B謓h Quan S竎 Dng H飊g", 167, "B謓h Quan S竎 Dng H飊g", 30 * 60},
	{"Phanh M謓h Tam Lang Th筩h T�", 167, "Phanh M謓h Tam Lang Th筩h T�", 30 * 60},
	{"Nh蕋 Trng Thanh H� Tam Nng", 167, "Nh蕋 Trng Thanh H� Tam Nng", 30 * 60},
	{"Song Thng Tng фng B譶h", 167, "Song Thng Tng фng B譶h", 30 * 60},
	{"Thanh Di謓 Th� Dng Tr�", 167, "Thanh Di謓 Th� Dng Tr�", 30 * 60},
	{"T輈h L辌h H醓 T莕 Minh", 167, "T輈h L辌h H醓 T莕 Minh", 30 * 60},
	{"Song Ti猲 H� Di猲 Chc", 167, "Song Ti猲 H� Di猲 Chc", 30 * 60},
	{"H綾 To祅 Phong L� Qu�", 167, "H綾 To祅 Phong L� Qu�", 30 * 60},
};

function Boss_W1()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
	local msg = format("Theo t譶h b竜, 1 qu竔 nh﹏ v韎 v� c玭g v� ch thi猲 h�  xu蕋 hi謓 t筰 T礽 Nguy猲 Chi課, mau n thu ph鬰 h緉 !!!");
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_HL", "Уo Hoa Фo Ch� Ho祅g Long", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 23*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end

function Boss_W5()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
		local npcIndex = CreateNpc("WorldBoss_dfbb", "Йng Phng B蕋 B筰", 606,168*8,187*16);
		local msg = format("Theo t譶h b竜, 1 qu竔 nh﹏ v韎 v� c玭g v� ch thi猲 h�  xu蕋 hi謓 t筰 T礽 Nguy猲 Chi課, mau n thu ph鬰 h緉 !!!");
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
		local npcIndex = CreateNpc("TYT_HyehuoTYS", "Gi竎 чc Th�", 606,168*8,187*16);
		local msg = format("Theo t譶h b竜, 1 qu竔 nh﹏ v韎 v� c玭g v� ch thi猲 h�  xu蕋 hi謓 t筰 T礽 Nguy猲 Chi課, mau n thu ph鬰 h緉 !!!");
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
	local msg = format("Theo t譶h b竜, 1 qu竔 nh﹏ v韎 v� c玭g v� ch thi猲 h�  xu蕋 hi謓 t筰 T礽 Nguy猲 Chi課, mau n thu ph鬰 h緉 !!!");
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_CLBZ", "T﹜ V鵦 Thng Lang B� Vng", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 2*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W3()

	local nMap,nX,nY = GetWorldPos();
	local nNpcIdx = 0
	local msg = format("Theo t譶h b竜, 1 qu竔 nh﹏ v韎 v� c玭g v� ch thi猲 h�  xu蕋 hi謓 t筰 T礽 Nguy猲 Chi課, mau n thu ph鬰 h緉 !!!");
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_TJ", "Ng鋍 S琻 Chi Linh Thi猲 C鰑", nMap, nX + 2, nY + 2);
		SetNpcLifeTime(npcIndex, 2*60 * 60);
		SetNpcDeathScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_death.lua");
		SetNpcRemoveScript(npcIndex, "\\script\\function\\world_boss\\wb_boss_remove.lua");

end
function Boss_W4()

	local nMap,nX,nY = GetWorldPos();
	local msg = format("Theo t譶h b竜, 1 qu竔 nh﹏ v韎 v� c玭g v� ch thi猲 h�  xu蕋 hi謓 t筰 T礽 Nguy猲 Chi課, mau n thu ph鬰 h緉 !!!");
	local nNpcIdx = 0
			Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		Msg2Global(msg);
		local npcIndex = CreateNpc("WorldBoss_MW", "U Tr筩h Chi 秐h Minh V�", nMap, nX + 2, nY + 2);
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
			local nNpcIdx = CreateNpc(IBbaoxiang, "Rng H秓 H竛", nMap, nX + 2, nY + 2);
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
	{"Long T�", 165, "Long Th莕 H鉧 Th﹏", 30 * 60},
	{"Ph鬾g T�", 167, "Ph鬾g Th莕 H鉧 Th﹏", 30 * 60},
	{"H� T�", 165, "H� Th莕 H鉧 Th﹏", 30 * 60},
	{"g T�", 167, "g Th莕 H鉧 Th﹏", 30 * 60},
}

function Boss_NienThu()

	local nNpcIndex = 0
	local nMap,nX,nY = GetWorldPos();
	local nNpcIndex = CreateNpc("Чi Ni猲 Th�","Th莕 th� ngh譶 n╩",  nMap, nX + 2, nY + 2);
		SetNpcLifeTime(nNpcIndex,7200);
		SetNpcScript(nNpcIndex,"\\script\\online_activites\\2011_03\\boss\\npc\\bigboss.lua");

end

function Batcd()
SetFightState(1)
end

function Batlc()
SetFightState(0)
end
function UL2_non()
	for i = 1, 10 do
		local non = random(18,34)
		AddItem(0, 148, non, 1, 1);
	end
end
function UL2_ao()

	for i = 1, 10 do
		local non = random(18,34)
		AddItem(0, 149, non, 1, 1);
	end
end
function UL2_quan()
	for i = 1, 10 do
		local non = random(18,34)
		AddItem(0, 150, non, 1, 1);
	end
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
		-- "T筰 h� ch� xem qua th玦/nothing",
	-- }
	-- Say(g_szTitle.."------------------", getn(tSay), tSay);
	local nBody 	= GetBody();
	if nBody == 3 then
		AddItem(0,110,516,1,1,3,402,3,398,7,292,-1,0);
		AddItem(0,109,516,1,1,3,402,3,398,7,292,-1,0);
		AddItem(0,108,516,1,1,3,402,7,292,7,398,-1,0);
	else
		AddItem(0,110,517,1,1,3,402,3,398,7,292,-1,0);
		AddItem(0,109,517,1,1,3,402,3,398,7,292,-1,0);
		AddItem(0,108,517,1,1,3,402,7,292,7,398,-1,0);
	end
end
function DoBuffNMK_test()

	-- local tSay = {
		-- "Non/nhanngoaitrangNMK_non",
		-- "Ao/nhanngoaitrangNMK_Ao",
		-- "Quan/nhanngoaitrangNMK_Quan",
		-- "T筰 h� ch� xem qua th玦/nothing",
	-- }
	-- Say(g_szTitle.."------------------", getn(tSay), tSay);
	local nBody 	= GetBody();
	if nBody == 3 then
		AddItem(0,110,516,1,1,3,402,7,398,7,292,-1,0);
		AddItem(0,109,516,1,1,3,402,7,398,7,292,-1,0);
		AddItem(0,108,516,1,1,3,402,7,292,7,398,-1,0);
	else
		AddItem(0,110,517,1,1,3,402,7,398,7,292,-1,0);
		AddItem(0,109,517,1,1,3,402,7,398,7,292,-1,0);
		AddItem(0,108,517,1,1,3,402,7,292,7,398,-1,0);
	end
end
--Gia nh藀 Ph竔
-- function JoinRoute_UpdateLevel()
	-- local tMenu = {
		-- "Thi誹 L﹎/join_sl",
		-- "V� ng/join_wd",
		-- "Nga My/join_em",
		-- "C竔 Bang/join_gb",
		-- "Л阯g M玭/join_tm",
		-- "Dng M玭/join_ym",
		-- "Ng� чc/join_wdu",
-- --		"C玭 L玭/join_kl",
-- --		"Th髖 Y猲/join_cy",
-- --		"Minh Gi竜/join_mgb",
		-- "\nRa kh醝/nothing",
	-- };
	-- Say("Ngi mu鑞 gia nh藀 l璾 ph竔 g�?", getn(tMenu), tMenu);
-- end

--/home/server/gs0/script/中原二区/襄阳/npc
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
		g_szTitle.."L鵤 ch鋘",
		"Thi猲 Phong /ngocdame_tienphong",
		"Hi猲 Vi猲 /ngocdame_hienvien",
--		"Thi猲 Ngh躠 /ngocdame_thiennghia",
		"\nRa kh醝/nothing",
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

function ttll1()
	AddItem(2,1,30521,999);
	AddItem(2,1,30527,999);
end
g_szTitleMain = "<color=green>Kim x� 7: <color> Thu閏 t輓h t� ch鋘 v� cao nh蕋"
function Get_kx7()
	local tSay = {
		"Trang b� Kim X� S竧 Lang - Kh竛g t蕋 c�/Get_KXSL",
		"Trang b� Kim X� Nhu� Nha - Ngo筰 c玭g/Get_KXNN",
		"Trang b� Kim X� M閚g S竧 - N閕 c玭g/Get_KXMS",
		"Tho竧/nothing",
	};
	Say(g_szTitleMain, getn(tSay), tSay);
end

g_szTitle1 = "<color=green>Kim X� S竧 Lang: <color>";
function Get_KXSL()
	local tSay = {
		"Kim X� S竧 Lang - 竜 Cho祅g/#SetKXSL_1(152)",
		"Kim X� S竧 Lang - Huy Chng/#SetKXSL_1(153)",
		"Kim X� S竧 Lang - Chi課 H礽/#SetKXSL_1(154)",
		"H駓/nothing",
	};
	
	Say(g_szTitle1, getn(tSay), tSay);
end

function SetKXSL_1(nType)
	local List = {
		[3388] = {"Linh Ho箃"},
		[3389] = {"Th﹏ Ph竝"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle1.."L鵤 ch鋘 thu閏 t輓h 1", getn(tSay), tSay);
end

function SetKXSL_2(nType,ID1)
	local List = {
		[3401] = {"N閕 c玭g"},
		[3402] = {"S鴆 m筺h"},
		[3403] = {"G﹏ c鑤"},
		[3404] = {"觤 sinh l鵦"},
		[3405] = {"T� l� 甶觤 sinh l鵦 %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle1.."L鵤 ch鋘 thu閏 t輓h 2", getn(tSay), tSay);
end

function SetKXSL_3(nType,ID1, ID2)
	local List = {
		[3417] = {"B筼 k輈h"},
		[3418] = {"觤 ngo筰 c玭g"},
		[3419] = {"觤 n閕 c玭g"},
		[3420] = {"C玭g k輈h"},
		[3421] = {"Kh竛g t蕋 c�"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle1.."L鵤 ch鋘 thu閏 t輓h 3", getn(tSay), tSay);
end

function SetKXSL_4(nType,ID1, ID2, ID3)
	local List = {
		[3435] = {"Ph遪g th� b筼 k輈h"},
		[3436] = {"Gi秏 s竧 thng b筼 k輈h"},
		[3437] = {"H� gi竝 ngo筰 ph遪g"},
		[3438] = {"H� gi竝 n閕 ph遪g"},
		[3439] = {"H� gi竝 n閕 ngo筰 ph遪g"},
		[3440] = {"觤 sinh l鵦"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle1.."L鵤 ch鋘 thu閏 t輓h 4", getn(tSay), tSay);
end

function SetKXSL_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3446] = {"Linh ho箃"},
		[3447] = {"Th﹏ ph竝"},
		[3405] = {"T╪g t� l� 甶觤 sinh l鵦"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle1.."L鵤 ch鋘 thu閏 t輓h 5", getn(tSay), tSay);
end

function SetKXSL_6(nType,ID1, ID2, ID3,ID4,ID5)
	if nType == 154 then
		List = {
			[3482] = {"T鑓  ch箉"},
			[3483] = {"T鑓  xu蕋 chi猽"},
			[3484] = {"Gi秏 ch辵 thng"},
			[3485] = {"T╪g ch� m謓h"},
			[3486] = {"Kh竛g t蕋 c�"},
		};
	else
		List = {
			[3468] = {"T╪g s竧 thng"},
			[3469] = {"C玭g k輈h k蘭 c"},
			[3470] = {"S竧 thng c tr飊g"},
			[3460] = {"T� l� kh竛g tr筺g th竔 ph�"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle1.."L鵤 ch鋘 thu閏 t輓h 6", getn(tSay), tSay);
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
		"Kim X� Nhu� Nha - 竜 Cho祅g/#SetKXNN_1(152)",
		"Kim X� Nhu� Nha - Huy Chng/#SetKXNN_1(153)",
		"Kim X� Nhu� Nha - Chi課 H礽/#SetKXNN_1(154)",
		"H駓/nothing",
	};
	
	Say(g_szTitle2, getn(tSay), tSay);
end

function SetKXNN_1(nType)
	local List = {
		[3492] = {"S鴆 m筺h"},
		[3493] = {"G﹏ c鑤"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle2.."L鵤 ch鋘 thu閏 t輓h 1", getn(tSay), tSay);
end

function SetKXNN_2(nType,ID1)
	local List = {
		[3505] = {"N閕 c玭g"},
		[3506] = {"Th﹏ ph竝"},
		[3507] = {"Linh ho箃"},
		[3508] = {"觤 sinh l鵦"},
		[3509] = {"T� l� 甶觤 sinh l鵦 %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle2.."L鵤 ch鋘 thu閏 t輓h 2", getn(tSay), tSay);
end

function SetKXNN_3(nType,ID1, ID2)
	local List = {
		[3521] = {"B筼 k輈h"},
		[3522] = {"觤 ngo筰 c玭g"},
		[3523] = {"觤 n閕 c玭g"},
		[3524] = {"C玭g k輈h"},
		[3525] = {"T╪g 甶觤 sinh l鵦"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle2.."L鵤 ch鋘 thu閏 t輓h 3", getn(tSay), tSay);
end

function SetKXNN_4(nType,ID1, ID2, ID3)
	local List = {
		[3539] = {"Ph遪g th� b筼 k輈h"},
		[3540] = {"Gi秏 s竧 thng b筼 k輈h"},
		[3541] = {"H� gi竝 ngo筰 ph遪g"},
		[3542] = {"H� gi竝 n閕 ph遪g"},
		[3543] = {"H� gi竝 n閕 ngo筰 ph遪g"},
		[3544] = {"觤 sinh l鵦"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle2.."L鵤 ch鋘 thu閏 t輓h 4", getn(tSay), tSay);
end

function SetKXNN_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3552] = {"S鴆 m筺h"},
		[3553] = {"G﹏ c鑤"},
		[3554] = {"Sinh l鵦 t╪g %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle2.."L鵤 ch鋘 thu閏 t輓h 5", getn(tSay), tSay);
end

function SetKXNN_6(nType,ID1, ID2, ID3,ID4,ID5)

	if nType == 154 then
		List = {
			[3577] = {"T鑓  ch箉"},
			[3578] = {"T鑓  xu蕋 chi猽"},
			[3579] = {"Gi秏 th� thng"},
			[3580] = {"T╪g ch� m謓h"},
		};
	else
		List = {
			[3564] = {"Gi韎 h筺 cao nh蕋 ngo筰 c玭g v� kh�"},
			[3565] = {"Gi韎 h筺 th蕄 nh蕋 ngo筰 c玭g v� kh�"},
			[3566] = {"T� l� ngo筰 c玭g %"},
			[3567] = {"觤 t鎛g c玭g k輈h ngo筰 c玭g"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle2.."L鵤 ch鋘 thu閏 t輓h 6", getn(tSay), tSay);
end

function SetKXNN_End(nType,ID1,ID2,ID3,ID4,ID5,ID6)
	local pifeng,pIndex = AddItem(0,nType,36,1,1,-1,-1,-1,-1,-1,-1,0,10)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	DelItem(2,1,50005,1);
end


g_szTitle3 = "<color=green>Kim X� M閚g S竧: <color>";

function Get_KXMS()
	local tSay = {
		"Kim X� M閚g S竧 - 竜 Ch璷祅g/#SetKXMS_1(152)",
		"Kim X� M閚g S竧 - Huy Chng/#SetKXMS_1(153)",
		"Kim X� M閚g S竧 - Chi課 H礽/#SetKXMS_1(154)",
		"H駓/nothing",
	};
	
	Say(g_szTitle3, getn(tSay), tSay);
end

function SetKXMS_1(nType)
	local List = {
		[3586] = {"N閕 c玭g"},
		[3587] = {"G﹏ c鑤"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle3.."L鵤 ch鋘 thu閏 t輓h 1", getn(tSay), tSay);
end

function SetKXMS_2(nType,ID1)
	local List = {
		[3599] = {"S鴆 m筺h"},
		[3600] = {"Th﹏ ph竝"},
		[3601] = {"Linh ho箃"},
		[3602] = {"觤 sinh l鵦"},
		[3603] =  {"T� l� 甶觤 sinh l鵦 %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle3.."L鵤 ch鋘 thu閏 t輓h 2", getn(tSay), tSay);
end

function SetKXMS_3(nType,ID1, ID2)
	local List = {
		[3615] = {"B筼 k輈h"},
		[3616] = {"觤 ngo筰 c玭g"},
		[3617] = {"觤 n閕 c玭g"},
		[3618] = {"C玭g k輈h"},
		[3619] = {"T╪g 甶觤 sinh l鵦"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle3.."L鵤 ch鋘 thu閏 t輓h 3", getn(tSay), tSay);
end

function SetKXMS_4(nType,ID1, ID2, ID3)
	local List = {
		[3633] = {"Ph遪g th� b筼 k輈h"},
		[3634] = {"Gi秏 s竧 thng b筼 k輈h"},
		[3635] = {"H� gi竝 ngo筰 ph遪g"},
		[3636] = {"H� gi竝 n閕 ph遪g"},
		[3637] = {"H� gi竝 n閕 ngo筰 ph遪g"},
		[3638] = {"觤 sinh l鵦"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle3.."L鵤 ch鋘 thu閏 t輓h 4", getn(tSay), tSay);
end

function SetKXMS_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3646] = {"N閕 c玭g"},
		[3647] = {"Th﹏ ph竝"},
		[3648] = {"Linh ho箃"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle3.."L鵤 ch鋘 thu閏 t輓h 5", getn(tSay), tSay);
end

function SetKXMS_6(nType,ID1, ID2, ID3,ID4,ID5)

	if nType == 154 then
		List = {
			[3673] = {"T鑓  ch箉"},
			[3674] = {"T鑓  xu蕋 chi猽"},
			[3675] = {"Gi秏 th� thng"},
			[3676] = {"T╪g ch� m謓h"},
			[3677] = {"Gi秏 th阨 gian th� thng"},
		};
	else
		List = {
			[3658] = {"Gi韎 h筺 cao nh蕋 n閕 c玭g v� kh�"},
			[3659] = {"Gi韎 h筺 th蕄 nh蕋 n閕 c玭g v� kh�"},
			[3660] = {"T╪g n閕 c玭g %"},
			[3661] = {"觤 c玭g k輈h n閕 c玭g"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"H駓/nothing");
	Say(g_szTitle3.."L鵤 ch鋘 thu閏 t輓h 6", getn(tSay), tSay);
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
		g_szTitle.."L鵤 ch鋘",
		"Nh薾 Nguy猲 Li謚/nhannl",
		"фi Event/doiev",
		"Ra kh醝/nothing",
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
		Talk(1, "", "Thi誹 nguy猲 li謚 r錳 ml : 5 Nh竛h Hoa Mai vs 2 V藅 Ph萴 Xu!");
		return 0;
	end
	if DelItem(2,1,30051 , 5 * nCount) == 1 and DelItem(2,1,30230, 2 * nCount) == 1 then
		AddItem(2,1,30053, 1*nCount)
	end
end

function showKX()
	local tSay = {
		g_szTitle.."L鵤 ch鋘",
		-- "Nh薾 Th玭 Nguy謙 l謓h (KX6)/Get_KimXa",
		"Trang b� Kim x� 4 (ng蓇 nhi猲)/showKX4",
		"Trang b� Kim x� 5 (ng蓇 nhi猲)/showKX5",
		-- "Trang b� Kim x� 6 (ng蓇 nhi猲)/showKX6",
		-- "Trang b� Kim x� 7 (ng蓇 nhi猲)/showKX7",
	}
	tinsert(tSay,"Ra kh醝/nothing");
	SelectSay(tSay);	
end;

function getRandomKX4(nSet)
	KXDH = {
		[1] = {
			[1056] = "Linh ho箃 B",
			[1057] = "Th﹏ ph竝 B",
		},
		[2] = {
			[1069] = "S鴆 m筺h B",
			[1070] = "G﹏ c鑤 B",
			[1071] = "N閕 c玭g B",
			[1072] = "Sinh l鵦 B",
			[1073] = "T� l� sinh l鵦 B",
		},
		[3] = {
			[1079] = "Linh ho箃 B",
			[1080] = "Th﹏ ph竝 B",
		},
		[4] = {
			[1] = {
				[1092] = "Ph秐 n ngo筰 c玭g/1%B",
				[1093] = "Ph秐 n n閕 c玭g/1%B",
				[1094] = "T╪g s竧 thng/1B",
				[1095] = "K蘭 theo c s竧/1B",
				[1096] = "T╪g s竧 thng c� c/1B",
			},
			[2] = {
				[1108] = "Ph秐 n ngo筰 c玭g/1%B",
				[1109] = "Ph秐 n n閕 c玭g/1%B",
				[1110] = "T╪g s竧 thng/1B",
				[1111] = "K蘭 theo c s竧/1B",
				[1112] = "T╪g s竧 thng c� c/1B",
			},
			[3] = {
				[1123] = "T╪g t鑓  xu蕋 chi猽/1%B",
				[1124] = "Kh竛g t蕋 c� B",
				[1125] = "T╪g ch� m謓h/1%B",
			}
		}
	}
	
	KXTH = {
		[1] = {
			[1129] = "S鴆 m筺h B",
		},
		[2] = {
			[1143] = "Linh ho箃 B",
			[1144] = "Th﹏ ph竝 B",
			[1145] = "G﹏ c鑤 B",
			[1146] = "N閕 c玭g B",
			[1147] = "Sinh l鵦 B",
			[1148] = "T� l� sinh l鵦 B",
		},
		[3] = {
			[1156] = "S鴆 m筺h B",
			[1157] = "G﹏ c鑤 B",
			[1158] = "Sinh l鵦 %B",
		},
		[4] = {
			[1] = {
				[1168] = "Ph秐 n ngo筰 c玭g/1B",
				[1169] = "Ph秐 n n閕 c玭g/1B",
				[1170] = "T╪g ngo筰 c玭g/1%B",
				[1171] = "T鎛g c玭g k輈h ngo筰 c玭g/1B",
			},
			[2] = {
				[1181] = "Ph秐 n ngo筰 c玭g/1B",
				[1182] = "Ph秐 n n閕 c玭g/1B",
				[1183] = "T╪g ngo筰 c玭g/1%B",
				[1184] = "T鎛g c玭g k輈h ngo筰 c玭g/1B",
			},
			[3] = {
				[1194] = "T鑓  di chuy觧/1%B",
				[1195] = "T╪g t鑓  xu蕋 chi猽/1%B",
				[1196] = "H髏 sinh l鵦 B",
				[1197] = "Gi秏 th� thng/1%B",
			}
		}
	}
	
	KXVD = {
		[1] = {
			[1201] = "N閕 c玭g B",
		},
		[2] = {
			[1213] = "Linh ho箃 B",
			[1214] = "Th﹏ ph竝 B",
			[1215] = "G﹏ c鑤 B",
			[1216] = "Sinh l鵦 B",
			[1217] = "T� l� sinh l鵦 B",
		},
		[3] = {
			[1225] = "Linh ho箃 B",
			[1226] = "Th﹏ ph竝 B",
			[1227] = "N閕 c玭g B",
		},
		[4] = {
			[1] = {
				[1237] = "T╪g n閕 c玭g/1%B",
				[1238] = "T鎛g c玭g k輈h n閕 c玭g/1B",
				[1239] = "N閕 c玭g l韓 nh蕋 tr猲 v� kh� t╪g/1B",
				[1240] = "N閕 c玭g nh� nh蕋 tr猲 v� kh� t╪g/1B",
			},
			[2] = {
				[1250] = "T╪g n閕 c玭g/1%B",
				[1251] = "T鎛g c玭g k輈h n閕 c玭g/1B",
				[1252] = "N閕 c玭g l韓 nh蕋 tr猲 v� kh� t╪g/1B",
				[1253] = "N閕 c玭g nh� nh蕋 tr猲 v� kh� t╪g/1B",
			},
			[3] = {
				[1263] = "T鑓  di chuy觧/1%B",
				[1264] = "T╪g t鑓  xu蕋 chi猽/1%B",
				[1265] = "Gi秏 th� thng/1%B",
				[1266] = "T╪g ch� m謓h/1%B",
			}
		}
	}
	
	local tSet = {};
	if nSet == 26 then tSet = KXDH
	elseif nSet == 27 then tSet = KXTH
	elseif nSet == 28 then tSet = KXVD end;
	
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh薾 kim x� th祅h c玭g!");
	end;
end;

function getRandomKX5(nSet)
	KXHC = {
		[1] = {
			[1955] = "Linh ho箃 - V祅g",
			[1956] = "Th﹏ ph竝 - V祅g",
		},
		[2] = {
			[1973] = "N閕 c玭g - V祅g",
			[1974] = "S鴆 m筺h - V祅g",
			[1975] = "C╪ c鑤 - V祅g",
			[1976] = "T╪g 甶觤 sinh l鵦 - V祅g",
			[1977] = "T╪g t� l� 甶觤 sinh l鵦 - V祅g",
		},
		[3] = {
			[1997] = "B筼 k輈h - V祅g",
			[1999] = "T╪g 甶觤 s� ngo筰 c玭g - V祅g",
			[2000] = "T╪g 甶觤 s� n閕 c玭g - V祅g",
			[2001] = "T╪g 甶觤 s� n閕 ngo筰 - V祅g",
			[2002] = "To祅 thu閏 t輓h - V祅g",
		},
		[4] = {
			[2022] = "Ph遪g b閏 - V祅g",
			[2023] = "Gi秏 b閏 - V祅g",
			[2024] = "H� gi竝 ngo筰 ph遪g - V祅g",
			[2025] = "H� gi竝 n閕 ph遪g - V祅g",
			[2026] = "H� gi竝 n閕 ngo筰 ph遪g - V祅g",
			[2027] = "觤 sinh l鵦 - V祅g",
		},
		[5] = {
			[2035] = "Linh ho箃 - V祅g",
			[2036] = "Th﹏ ph竝 - V祅g",
		},
		[6] = {
			[1] = {
				[2055] = "T╪g s竧 thng - V祅g",
				[2056] = "C玭g k輈h k蘭 c - V祅g",
				[2057] = "S竧 thng c tr飊g - V祅g",
			},
			[2] = {
				[2074] = "T鑓  ch箉 - V祅g",
				[2075] = "Ph竧 huy V� c玭g - V祅g",
				[2076] = "Gi秏 n鯽 ch辵 thng - V祅g",
				[2077] = "X竎 su蕋 chu萵 x竎 - V祅g",
				[2078] = "To祅 thu閏 t輓h - V祅g",
			}
		}
	}
	
	KXQP = {
		[1] = {
			[2086] = "S鴆 m筺h - V祅g",
			[2087] = "C╪ c鑤 - V祅g",
		},
		[2] = {
			[2104] = "N閕 c玭g - V祅g",
			[2105] = "Th﹏ ph竝 - V祅g",
			[2106] = "Linh ho箃 - V祅g",
			[2107] = "觤 sinh l鵦 - V祅g",
			[2108] = "T� l� 甶觤 sinh l鵦 - V祅g",
		},
		[3] = {
			[2128] = "B筼 k輈h - V祅g",
			[2130] = "觤 ngo筰 c玭g - V祅g",
			[2131] = "觤 n閕 c玭g - V祅g",
			[2132] = "觤 n閕 ngo筰 c玭g - V祅g",
			[2133] = "T╪g 甶觤 sinh l鵦 - V祅g",
		},
		[4] = {
			[2153] = "Ph遪g b閏 - V祅g",
			[2154] = "Gi秏 b閏 - V祅g",
			[2155] = "H� gi竝 ngo筰 ph遪g - V祅g",
			[2156] = "H� gi竝 n閕 ph遪g - V祅g",
			[2157] = "H� gi竝 n閕 ngo筰 ph遪g - V祅g",
			[2158] = "觤 sinh l鵦 - V祅g",
		},
		[5] = {
			[2169] = "S鴆 m筺h - V祅g",
			[2170] = "C╪ c鑤 - V祅g",
			[2171] = "T╪g t� l� 甶觤 sinh l鵦 - V祅g",
		},
		[6] = {
			[1] = {
				[2193] = "Gi韎 h筺 cao nh蕋 ngo筰 c玭g v� kh� - v祅g ",
				[2194] = "Gi韎 h筺 th蕄 nh蕋 ngo筰 c玭g v� kh� - V祅g",
				[2195] = "T� l� ngo筰 c玭g - V祅g",
				[2196] = "觤 t鎛g c玭g k輈h ngo筰 c玭g - V祅g",
			},
			[2] = {
				[2213] = "T鑓  ch箉 - V祅g",
				[2214] = "Ph竧 huy V� c玭g - V祅g",
				[2215] = "Gi秏 n鯽 ch辵 thng - V祅g",
				[2216] = "X竎 su蕋 chu萵 x竎 - V祅g",
			}
		}
	}
	
	KXDV = {
		[1] = {
			[2225] = "N閕 c玭g - V祅g",
			[2226] = "C╪ c鑤 - V祅g",
		},
		[2] = {
			[2243] = "S鴆 m筺h - V祅g",
			[2244] = "Th﹏ ph竝 - V祅g",
			[2245] = "Linh ho箃 - V祅g",
			[2246] = "觤 sinh l鵦 - V祅g",
			[2247] = "T� l� 甶觤 sinh l鵦 - V祅g",
		},
		[3] = {
			[2267] = "B筼 k輈h - V祅g",
			[2269] = "觤 ngo筰 c玭g - V祅g",
			[2270] = "觤 n閕 c玭g - V祅g",
			[2271] = "觤 n閕 ngo筰 c玭g - V祅g",
			[2272] = "T╪g 甶觤 sinh l鵦 - V祅g",
		},
		[4] = {
			[2292] = "Ph遪g b閏 - V祅g",
			[2293] = "Gi秏 b閏 - V祅g",
			[2294] = "H� gi竝 ngo筰 ph遪g - V祅g",
			[2295] = "H� gi竝 n閕 ph遪g - V祅g",
			[2296] = "H� gi竝 n閕 ngo筰 ph遪g - V祅g",
			[2297] = "觤 sinh l鵦 - V祅g",
		},
		[5] = {
			[2308] = "N閕 c玭g - V祅g",
			[2309] = "Th﹏ ph竝 - V祅g",
			[2310] = "Linh ho箃 - V祅g",
		},
		[6] = {
			[1] = {
				[2332] = "Gi韎 h筺 cao nh蕋 n閕 c玭g v� kh� - V祅g",
				[2333] = "Gi韎 h筺 th蕄 nh蕋 n閕 c玭g v� kh� - V祅g",
				[2334] = "T� l� n閕 c玭g-v祅g",
				[2335] = "觤 t鎛g c玭g k輈h n閕 c玭g- v祅g",
			},
			[2] = {
				[2352] = "T鑓  ch箉 - V祅g",
				[2353] = "Ph竧 huy V� c玭g - V祅g",
				[2354] = "Gi秏 n鯽 ch辵 thng - V祅g",
				[2355] = "X竎 su蕋 chu萵 x竎 - V祅g",
				[2356] = "R髏 ng緉 ng t竎 b� thng- V祅g",
			}
		}
	}

	local tSet = {};
	if nSet == 29 then tSet = KXHC
	elseif nSet == 30 then tSet = KXQP
	elseif nSet == 31 then tSet = KXDV end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh薾 kim x� th祅h c玭g!");
	end;

end;

function getRandomKX6(nSet)
	KXDG = {
		[1] = {
			[2618] = {"S鴆 m筺h"},
			[2619] = {"G﹏ c鑤"},
		},
		[2] = {
			[2631] = {"N閕 c玭g"},
			[2632] = {"Th﹏ ph竝"},
			[2633] = {"Linh ho箃"},
			[2634] = {"觤 sinh l鵦"},
			[2635] = {"T� l� 甶觤 sinh l鵦"},
		},
		[3] = {
			[2647] = {"B筼 k輈h"},
			[2648] = {"觤 ngo筰 c玭g"},
			[2649] = {"觤 n閕 c玭g"},
			[2650] = {"觤 n閕 ngo筰 c玭g"},
			[2651] = {"T╪g 甶觤 sinh l鵦"},
		},
		[4] = {
			[2665] = {"Ph遪g b閏"},
			[2666] = {"Gi秏 b閏"},
			[2667] = {"H� gi竝 ngo筰 ph遪g"},
			[2668] = {"H� gi竝 n閕 ph遪g"},
			[2669] = {"H� gi竝 n閕 ngo筰 ph遪g"},
			[2670] = {"觤 sinh l鵦"},
		},
		[5] =  {
			[2678] = {"S鴆 m筺h"},
			[2679] = {"G﹏ c鑤"},
			[2680] = {"T╪g t� l� 甶觤 sinh l鵦"},
		},
		[6] = {
			[1] = { -- 竜 cho祅g v� huy chng
				[2690] = {"Gi韎 h筺 cao nh蕋 ngo筰 c玭g v� kh�"},
				[2691] = {"Gi韎 h筺 th蕄 nh蕋 ngo筰 c玭g v� kh�"},
				[2692] = {"T� l� ngo筰 c玭g"},
				[2693] = {"觤 t鎛g c玭g k輈h ngo筰 c玭g"},
			},
			[2] = { -- Gi祔 (154)
				[2703] = {"T鑓  ch箉"},
				[2704] = {"Ph竧 huy v� c玭g"},
				[2705] = {"Gi秏 n鯽 th� thng"},
				[2706] = {"X竎 su蕋 chu萵 x竎"},
			}
		}
	}
	
	KXHL = {
		[1] = {
			[2514] = {"Linh ho箃"},
			[2515] = {"Th﹏ Ph竝"},
		},
		[2] = {
			[2527] = {"N閕 c玭g"},
			[2528] = {"S鴆 m筺h"},
			[2529] = {"G﹏ c鑤"},
			[2530] = {"觤 sinh l鵦"},
			[2531] = {"T� l� 甶觤 sinh l鵦"},
		},
		[3] = {
			[2543] = {"B筼 k輈h"},
			[2544] = {"觤 ngo筰 c玭g"},
			[2545] = {"觤 n閕 c玭g"},
			[2546] = {"觤 n閕 ngo筰 c玭g"},
			[2547] = {"T╪g 甶觤 sinh l鵦"},
		},
		[4] = {
			[2561] = {"Ph遪g b閏"},
			[2562] = {"Gi秏 b閏"},
			[2563] = {"H� gi竝 ngo筰 ph遪g"},
			[2564] = {"H� gi竝 n閕 ph遪g"},
			[2565] = {"H� gi竝 n閕 ngo筰 ph遪g"},
			[2566] = {"觤 sinh m謓h"},
		},
		[5] = {
			[2572] = {"Linh ho箃"},
			[2573] = {"Th﹏ ph竝"},
		},
		[6] = {
			[1] = {
				[2583] = {"T╪g s竧 thng"},
				[2584] = {"C玭g k輈h k蘭 c"},
				[2585] = {"S竧 thng c tr飊g"},
				[2586] = {"T� l� kh竛g tr筺g th竔 b蕋 thng"},
			},
			[2] = {
				[2608] = {"T鑓  ch箉"},
				[2609] = {"Ph竧 huy V� c玭g"},
				[2610] = {"Gi秏 n鯽 ch辵 thng"},
				[2611] = {"X竎 su蕋 chu萵 x竎"},
				[2612] = {"To祅 thu閏 t輓h"},
			}
		}
	}
	
	KXKP = {
		[1] = {
			[2712] = {"N閕 c玭g"},
			[2713] = {"G﹏ c鑤"},
		},
		[2] = {
			[2725] = {"S鴆 m筺h"},
			[2726] = {"Th﹏ ph竝"},
			[2727] = {"Linh ho箃"},
			[2728] = {"觤 sinh l鵦"},
			[2729] =  {"T� l� 甶觤 sinh l鵦"},
		},
		[3] = {
			[2741] = {"B筼 k輈h"},
			[2742] = {"觤 ngo筰 c玭g"},
			[2743] = {"觤 n閕 c玭g"},
			[2744] = {"觤 n閕 ngo筰 c玭g"},
			[2745] = {"T╪g 甶觤 sinh l鵦"},
		},
		[4] = {
			[2759] = {"Ph遪g b閏"},
			[2760] = {"Gi秏 b閏"},
			[2761] = {"H� gi竝 ngo筰 ph遪g"},
			[2762] = {"H� gi竝 n閕 ph遪g"},
			[2763] = {"H� gi竝 n閕 ngo筰 ph遪g"},
			[2764] = {"觤 sinh l鵦"},
		},
		[5] = {
			[2772] = {"N閕 c玭g"},
			[2773] = {"Th﹏ ph竝"},
			[2774] = {"Linh ho箃"},
		},
		[6] = {
			[1] = {
				[2784] = {"Gi韎 h筺 cao nh蕋 n閕 c玭g v� kh�"},
				[2785] = {"Gi韎 h筺 th蕄 nh蕋 n閕 c玭g v� kh�"},
				[2786] = {"T╪g n閕 c玭g"},
				[2787] = {"觤 c玭g k輈h n閕 c玭g"},
			},
			[2] = {
				[2803] = {"R髏 ng緉 th阨 gian th� thng"},
				[2799] = {"T鑓  ch箉"},
				[2800] = {"Ph竧 huy v� c玭g"},
				[2801] = {"Gi秏 n鯽 th� thng"},
				[2802] = {"X竎 su蕋 chu萵 x竎"},
			}
		}
	}

	local tSet = {};
	if nSet == 32 then tSet = KXHL
	elseif nSet == 33 then tSet = KXDG
	elseif nSet == 34 then tSet = KXKP end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh薾 kim x� th祅h c玭g!");
	end;
end


function getRandomKX7(nSet)
	
	KXSL = {
		[1] = {
			[3388]="Linh ho箃",
			[3389]="Th﹏ ph竝",
		},
		[2] = {
			[3401] = "N閕 c玭g",
			[3402] = "S鴆 m筺h",
			[3403] = "C╪ c鑤",
			[3404] = "T╪g 甶觤 sinh l鵦",
			[3405] = "T╪g t� l� 甶觤 sinh l鵦",
		},
		[3] = {
			[3417] = "B筼 k輈h",
			[3418] = "T╪g 甶觤 s� ngo筰 c玭g",
			[3419] = "T╪g 甶觤 s� n閕 c玭g",
			[3420] = "T╪g 甶觤 s� n閕 ngo筰",
			[3421] = "To祅 thu閏 t輓h",
		},
		[4] = {
			[3435] = "Ph遪g b閏",
			[3436] = "Gi秏 b閏",
			[3437] = "H� gi竝 ngo筰 ph遪g",
			[3438] = "H� gi竝 n閕 ph遪g",
			[3439] = "H� gi竝 n閕 ngo筰 ph遪g",
			[3440] = "觤 sinh l鵦",
		},
		[5] = {
			[3446] = "Linh ho箃",
			[3447] = "Th﹏ ph竝",
		},
		[6] = {
			[1] = {
				[3457] = "T╪g s竧 thng",
				[3458] = "C玭g k輈h k蘭 c",
				[3459] = "S竧 thng c tr飊g",
			},
			[2] = {
				[3468] = "T╪g s竧 thng",
				[3469] = "C玭g k輈h k蘭 c",
				[3470] = "S竧 thng c tr飊g",
			},
			[3] = {
				[3482] = "T鑓  ch箉",
				[3483] = "Ph竧 huy V� c玭g",
				[3484] = "Gi秏 n鯽 ch辵 thng",
				[3485] = "X竎 su蕋 chu萵 x竎",
				[3486] = "To祅 thu閏 t輓h",
			}
		}
	}

	KXNN = {
		[1] = {
			[3492] = "S鴆 m筺h",
			[3493] = "C╪ c鑤",
		},
		[2] = {
			[3505] = "N閕 c玭g",
			[3506] = "Th﹏ ph竝",
			[3507] = "Linh ho箃",
			[3508] = "觤 sinh l鵦",
			[3509] = "T� l� 甶觤 sinh l鵦",
		},
		[3] = {
			[3521] = "B筼 k輈h",
			[3522] = "觤 ngo筰 c玭g",
			[3523] = "觤 n閕 c玭g",
			[3524] = "觤 n閕 ngo筰 c玭g",
			[3525] = "T╪g 甶觤 sinh l鵦",
		},
		[4] = {
			[3539] = "Ph遪g b閏",
			[3540] = "Gi秏 b閏",
			[3541] = "H� gi竝 ngo筰 ph遪g",
			[3542] = "H� gi竝 n閕 ph遪g",
			[3543] = "H� gi竝 n閕 ngo筰 ph遪g",
			[3544] = "觤 sinh l鵦",
		},
		[5] = {
			[3552] = "S鴆 m筺h",
			[3553] = "C╪ c鑤",
			[3554] = "T╪g t� l� 甶觤 sinh l鵦",
		},
		[6] = {
			[1] = {
				[3564] = "Gi韎 h筺 cao nh蕋 ngo筰 c玭g v� kh� ",
				[3565] = "Gi韎 h筺 th蕄 nh蕋 ngo筰 c玭g v� kh�",
				[3566] = "T� l� ngo筰 c玭g",
				[3567] = "觤 t鎛g c玭g k輈h ngo筰 c玭g",
			},
			[2] = {
				[3577] = "T鑓  ch箉",
				[3578] = "Ph竧 huy V� c玭g",
				[3579] = "Gi秏 n鯽 ch辵 thng",
				[3580] = "X竎 su蕋 chu萵 x竎",
			}
		}
	}
			
	KXMS = {
		[1] = {
			[3586] = "N閕 c玭g",
			[3587] = "C╪ c鑤",
		},
		[2] = {
			[3599] = "S鴆 m筺h",
			[3600] = "Th﹏ ph竝",
			[3601] = "Linh ho箃",
			[3602] = "觤 sinh l鵦",
			[3603] = "T� l� 甶觤 sinh l鵦",
		},
		[3] = {
			[3615] = "B筼 k輈h",
			[3616] = "觤 ngo筰 c玭g",
			[3617] = "觤 n閕 c玭g",
			[3618] = "觤 n閕 ngo筰 c玭g",
			[3619] = "T╪g 甶觤 sinh l鵦",
		},
		[4] = {
			[3633] = "Ph遪g b閏",
			[3634] = "Gi秏 b閏",
			[3635] = "H� gi竝 ngo筰 ph遪g",
			[3636] = "H� gi竝 n閕 ph遪g",
			[3637] = "H� gi竝 n閕 ngo筰 ph遪g",
			[3638] = "觤 sinh l鵦",
		},
		[5] = {
			[3646] = "N閕 c玭g",
			[3647] = "Th﹏ ph竝",
			[3648] = "Linh ho箃",
		},
		[6] = {
			[1] = {
				[3658] = "Gi韎 h筺 cao nh蕋 n閕 c玭g v� kh�",
				[3659] = "Gi韎 h筺 th蕄 nh蕋 n閕 c玭g v� kh�",
				[3660] = "T� l� n閕 c玭g-v祅g",
				[3661] = "觤 t鎛g c玭g k輈h n閕 c玭g- v祅g",
			},
			[2] = {
				[3673] = "T鑓  ch箉",
				[3674] = "Ph竧 huy V� c玭g",
				[3675] = "Gi秏 n鯽 ch辵 thng",
				[3676] = "X竎 su蕋 chu萵 x竎",
				[3677] = "R髏 ng緉 ng t竎 b� thng- V祅g",
			}
		}
	}
	local tSet = {};
	if nSet == 35 then tSet = KXSL
	elseif nSet == 36 then tSet = KXNN
	elseif nSet == 37 then tSet = KXMS end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh薾 kim x� th祅h c玭g!");
	end;
end;



function showKX7()
	tSay = {
		"S竧 Lang/#getRandomKX7(35)",
		"Nhu� Nha/#getRandomKX7(36)",
		"M閚g S竧/#getRandomKX7(37)",
	}
	tinsert(tSay,"Ch璦 mu鑞 nh薾/nothing");
	Say("Ch鋘 lo筰 kim x�",getn(tSay),tSay);
end;

function showKX6()
	tSay = {
		"Hoan L╪g/#getRandomKX6(32)",
		"Щng Giao/#getRandomKX6(33)",
		"Kh雐 Phng/#getRandomKX6(34)",
	}
	tinsert(tSay,"Ch璦 mu鑞 nh薾/nothing");
	Say("Ch鋘 lo筰 kim x�",getn(tSay),tSay);
end;

function showKX5()
	tSay = {
		"Hi謕 c鑤/#getRandomKX5(29)",
		"Qu� ph�/#getRandomKX5(30)",
		"Щng v﹏/#getRandomKX5(31)",
	}
	tinsert(tSay,"Ch璦 mu鑞 nh薾/nothing");
	Say("Ch鋘 lo筰 kim x�",getn(tSay),tSay);
end;


function showKX4()
	tSay = {
		"Du hi謕/#getRandomKX4(26)",
		"Thi誸 huy誸/#getRandomKX4(27)",
		"V﹏ du/#getRandomKX4(28)",
	}
	tinsert(tSay,"Ch璦 mu鑞 nh薾/nothing");
	Say("Ch鋘 lo筰 kim x�",getn(tSay),tSay);
end;

function addSetofKX(tSet, nSet)
	local r1,r2,r3,r4,r5,r6;
	-- Add Phi phong
	r1,r2,r3,r4,r5,r6 = getIndexs(tSet,1);
	AddKX(152,nSet,r1,r2,r3,r4,r5,r6);
	-- Add Huy chng
	r1,r2,r3,r4,r5,r6 = getIndexs(tSet,2);
	AddKX(153,nSet,r1,r2,r3,r4,r5,r6);
	-- Add Chi課 h礽
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
	AddItem(2,1,30424,100);
	AddItem(2,1,30425,100);
	AddItem(2,1,30426,100);
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
		g_szTitle.."Ngi mu鑞 l蕐 b�  g�?",
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
		"Ra kh醝/nothing",
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
        g_szTitle.."L鵤 ch鋘",
        "Nh薾 trang b� H醓 Ph鬾g/Get_CT_HP",
        "Nh薾 trang b� Thanh Long/Get_CT_TL",
        "Nh薾 trang b� Uy H�/Get_CT_UH",
        "Ra kh醝/nothing",
    };
    SelectSay(szSay);    
end


--Trang bi UY HO
function Get_CT_UH()
    local szSay = {
        g_szTitle.."L鵤 ch鋘 trang b�",
        "Trang ph鬰 Uy H� T*韓g Phe T鑞g/#Get_TP_CT_UH(1,1)",
        "Trang ph鬰 Uy H� So竔 Phe T鑞g/#Get_TP_CT_UH(1,2)",
        "Trang ph鬰 Uy H� T*韓g Phe Li猽/#Get_TP_CT_UH(2,1)",
        "Trang ph鬰 Uy H� So竔 Phe Li猽/#Get_TP_CT_UH(2,2)",
        "Ra kh醝/nothing",
    };
    SelectSay(szSay);
end


--Trang bi THANH LONG
function Get_CT_TL()
    local szSay = {
        g_szTitle.."L鵤 ch鋘 trang b�",
        "Trang ph鬰 Thanh Long T*韓g Phe T鑞g/#Get_TP_CT_TL(1,1)",
        "Trang ph鬰 Thanh Long So竔 Phe T鑞g/#Get_TP_CT_TL(1,2)",
        "Trang ph鬰 Thanh Long T*韓g Phe Li猽/#Get_TP_CT_TL(2,1)",
        "Trang ph鬰 Thanh Long So竔 Phe Li猽/#Get_TP_CT_TL(2,2)",
        "Ra kh醝/nothing",
    };
    SelectSay(szSay);
end


--Trang bi Hoa Phung
function Get_CT_HP()
    local szSay = {
        g_szTitle.."L鵤 ch鋘 trang b�",
        "Trang ph鬰 H醓 Ph鬾g T*韓g Phe T鑞g/#Get_TP_CT_HP(1,1)",
        "Trang ph鬰 H醓 Ph鬾g So竔 Phe T鑞g/#Get_TP_CT_HP(1,2)",
        "Trang ph鬰 H醓 Ph鬾g T*韓g Phe Li猽/#Get_TP_CT_HP(2,1)",
        "Trang ph鬰 H醓 Ph鬾g So竔 Phe Li猽/#Get_TP_CT_HP(2,2)",
        "Ra kh醝/nothing",
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

-- Tr? l?i c鬾g tr?ng tru?c nhe b?n
-- - Add 25 tri?u di?m c鬾g tr?ng phe Li陁 : ?gm ds SetTask(701, GetTask(701) - 25000000)

-- - Add Qu鈔 h鄊 so醝 Li陁 : ?gm ds SetTask(704,-6)

-- - Add 50 ngh靚 di?m t韈h luy chi?n tru?ng ?gm ds SetTask(707, GetTask(707) + 50000)

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


	tinsert(tSay, "T筰 h� ch� xem qua th玦/nothing");
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


	tinsert(tSay, "T筰 h� ch� xem qua th玦/nothing");
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
		g_szTitle.."Ch鋘 hi謚 鴑g g�?",
		-- "ID 1 /#char_eff(1)",
		-- "ID 2/#char_eff(2)",
		-- "ID 3/#char_eff(3)",
		-- "ID 4/#char_eff(4)",
		-- "ID 5/#char_eff(5)",
		-- "ID 6/#char_eff(6)",
		-- "ID 7/#char_eff(7)",
		-- "ID 8/#char_eff(8)",
		-- "ID 9/#char_eff(9)",
		"B飊g Ch竬 L猲/#char_eff(10)",
		-- "ID 11/#char_eff(11)",
		"Ra kh醝/nothing",
	};

	SelectSay(szSay); 
end
function char_eff(id)
	local idEff = {929 ,933 ,937 ,943 ,949 ,962 ,965 ,966 ,978 ,979 ,990 };
	SetCurrentNpcSFX(PIdx2NpcIdx(),idEff[id],5,1);
end

function testeff_ad()
	local szSay = {
		g_szTitle.."Ch鋘 hi謚 鴑g g�?",
		"ID 1 /#char_eff_ad(1)",
		"ID 2/#char_eff_ad(2)",
		"ID 3/#char_eff_ad(3)",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay); 
end

function char_eff_ad(id)
	local idEff = {970 ,985 ,988 };
	SetCurrentNpcSFX(PIdx2NpcIdx(),idEff[id],1,1);
end

function annouce_baotri()
	Msg2Global("H� th鑞g s� b秓 tr� c藀 nh藅 trong 5 ph髏 n鱝, th阨 gian b秓 tr�: 5 ph髏, vui l遪g th玭g c秏 ! C秏 琻");
	AddLocalNews("H� th鑞g s� b秓 tr� c藀 nh藅 trong 5 ph髏 n鱝, th阨 gian b秓 tr�: 5 ph髏, vui l遪g th玭g c秏 ! C秏 琻");
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
		g_szTitle.."N﹏g l猲 ng c蕄 87 v� 0 甶觤 kinh nghi謒 (X鉧 t蕋 c� 甶觤 kinh nghi謒 hi謓 t筰?",
		"Ta mu鑞 n﹏g cao ng c蕄 v� ch蕄 nh薾 x鉧 t蕋 c� kinh nghi謒 hi謓 c� /really_hotrogmer1st",
		"Ra kh醝/nothing",
	};
	SelectSay(szSay); 
	else
		Talk(1,"","Ch� h� tr� nh﹏ s� c� ng c蕄 nh� h琻 86")
	end
end

function  really_hotrogmer1st()
		local curExp = GetExp();
		gf_Modify("Exp",-curExp);
		SetLevel(87, 1);
		AddItem(2,1,30668,10);
		Talk(1,"","Vui l遪g tho竧 game v� ng nh藀 l筰!")
end

function nguafake()
	AddItem(0,105,220,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,221,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,222,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,223,1,1,7,403,7,-1,7,-1,7,0);
end

function nhantkl()
	AddItem(2,97,236,100);
end

function nhanmbk()
	AddItem(2,1,30346,100);
	AddItem(2,1,1001,10);
end