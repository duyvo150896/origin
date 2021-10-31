--=============================================
--create by baiyun 2009.11.17
--describe:越南版12月份活动 锦囊大事件
--=============================================

Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
Include("\\script\\napthe\\tien_trang.lua")
Include("\\script\\online\\viet_event\\vng_task_control.lua")
Include("\\script\\online\\viet_event\\200912\\event_head.lua");
Include("\\script\\online\\viet_event\\ip_bonus\\ip_manager_npc.lua") -- IP bonus
Include("\\script\\online\\viet_event\\shop_tieuquyen\\tieuquyen_npc.lua");
Include("\\script\\online_activites\\2010_04\\activities_01\\npc\\npc_mrbai.lua");
Include("\\script\\task\\faction_boss\\wulinmeng_teshi.lua");
Include("\\script\\online\\viet_event\\nationality\\head.lua");
Include("\\script\\online_activites\\reborn\\tongban\\head.lua");
Include("\\script\\online\\viet_event\\firework_10\\head.lua");			-- include file ph竜 hoa 20-11-2010
Include("\\script\\online\\viet_event\\firework_10\\head1.lua");
Include("\\script\\online_activites\\2010_07\\activites_01\\item\\item_qiannian.lua");
Include("\\script\\online\\viet_event\\bhta4\\register5.lua")
Include("\\script\\online_activites\\ipbonus\\ipbonus.lua")
Include("\\script\\online_activites\\head\\activity_normal_head.lua");
Include("\\script\\online_activites\\2011_09\\activity_02\\head.lua");
Include("\\script\\online_activites\\2011_10\\activity_04\\plant_flower.lua");
Include("\\script\\online_activites\\2011_10\\activity_02\\send_flowers.lua");
Include("\\script\\online_activites\\2011_11\\activity_03\\send_gift.lua");
Include("\\script\\online_activites\\2011_11\\activity_04\\decorate_tree.lua");
--Include("\\script\\online_activites\\2011_12\\chunjie\\chunjie_interface.lua");
--Include("\\script\\online_activites\\2011_12\\lilishishi\\send_gift.lua");
--Include("\\script\\online_activites\\2011_12\\wupanguo\\silin_dogz.lua");
Include("\\script\\online\\viet_event\\ip_bonus\\ip_manager_npc.lua") 
Include("\\script\\online\\viet_event\\platinum_card\\npc_platinum.lua")
Include("\\script\\online\\viet_event\\vipcare\\vipcare.lua");
Include("\\script\\online\\viet_event\\denbuthang4\\denbuthang4.lua");
Include("\\script\\vng\\lib\\vnglib_award.lua") 
Include("\\script\\online_activites\\201211\\christmas_tree.lua") 
Include("\\script\\online_activites\\head\\activity_normal_define.lua")
Include("\\script\\online_activites\\201309\\plant_flower.lua")
Include("\\script\\online_activites\\reborn\\tongban\\head.lua")
Include("\\script\\vng\\lib\\vnglib_function.lua")
Include("\\script\\vng\\award\\traothuong3ty.lua")
Include("\\script\\function\\vip_card\\vc_head.lua")
Include("\\script\\online_activites\\201410\\plant_flower.lua")

function trongcay()
Say("Thu ho筩h c﹜ b竧 nh� l韓 : <color=green>"..GetTask(1500).."<color>/12\nThu ho筩h c﹜ b竧 nh� nh� : <color=green>"..GetTask(1501).."<color>/12\nThu ho筩h c﹜ t� linh : <color=green>"..GetTask(2677).."<color>/12", 7,
        "Nh薾 thng/kimmall",
		"K誸 th骳 i tho筰/np");
	return
end

function trongcansa()
Say("Hng d蒼 tham gia <color=green>S� Ki謓 C莕 Sa V穒 L錸<color> n� nha m蕐 con y, c k� trc khi ch琲 nghe h玭\n1. C竎 h� h穣 甶 l猲 <color=white>Vng M蓇 чng-T莕g 3<color>\n2. <color=white>Hi誴 D﹎<color> m蕐 con <color=white>Ti猲 N�<color> tr猲  v� cp <color=gold>Linh мch<color> c馻 t鬷 n鉢n3. D飊g <color=gold>20 Linh мch<color>  i l蕐 <color=green>1 M莔 C﹜ C莕 Sa<color>\n4. m tr錸g <color=green>C莕 Sa<color> t筰 <color=gold>T﹜ Bi謓 Kinh ho芻 V╪ M閚g Tr筩h<color>  t譵 l謓h b礽 i thng",7,
        "T筰 h� C莕 фi M莔 C﹜ C莕 Sa/nhancansa",
		"T筰 h� y誹 k衜, o d竚 ch琲 c莕 n猲 xin r髏 lui/np");
	return
end

function nhancansa()
	if GetItemCount(2,1,187) < 20 then
		Talk(1, "", "Чi hi謕 vui l遪g <color=white>Hi誴 D﹎<color> th猰 <color=white>Ti猲 N�<color> v� l蕐  <color=gold>Linh мch<color> r錳 h穣 quay l筰 y i <color=green>C莕 Sa<color> m� b�?")
		return
	end
	if gf_Judge_Room_Weight(2, 2," ") ~= 1 then
        	return
    end
    if DelItem(2,1,187,20) == 1 then
    		gf_AddItemEx2({2,0,30080, 1, 4}, "Xu", "Doi Dai Ngan Phieu ra Xu", "CNDSK")
    		Msg2Global("Х nh薾 1 M莔 C﹜ C莕 Sa, h穣 mang n� tr錸g � T﹜ Bi謓 Kinh ho芻 V╪ M閚g Tr筩h  t譵 ki誱 ph莕 thng v� b� c莕 c鵦 m筺h n祇")
    		PlaySound("\\sound\\sound_i017.wav");
			SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
    end
    SelectSay()
end

function SelectSay()	
	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "Th玭g tin chi ti誸 c竎 ho箃 ng ng o c� th� xem tr猲 trang ch� <color=green>https://jx2.xyz<color>. Li猲 h� Admin <color=green>https://facebook.com/jx2animal<color>  ph秐 h錳, g鉷 �."
	local nDate = tonumber(date("%Y%m%d"))
	local szNationality = get_nationality_name(GetByte(GetTask(TSK_SERVER_ID), TSK_SERVER_ID_CUR))
   	
     --tbSayDialog, szSayHead = get_tbJNDialog_info(tbSayDialog, szSayHead)
     szSayHead = szSayHead..format(". B筺 產ng l� th莕 d﹏ c馻 <color=yellow>Server Jx2 Animal<color>.", szNationality)

	if VET_CheckIpBonus() == 1 then
		szSayHead = szSayHead..". Hi謓 產ng ch琲 t筰 <color=yellow>Ph遪g M竬 Th﹏ Thi謓<color>."
	end
		--武林vip月卡
	--tinsert(tbSayDialog,"S� ki謓 C莕 Sa V穒 L錸 (M韎 Nh蕋 - Hot Nh蕋)/trongcansa"	)
	if vc_IsVipCardOpen() ~= 0 then
		tinsert(tbSayDialog, vc_GetMainTitle()) 
	end
	--------------------------------
	--Nh薾 thng l筰 trang b� di謚 dng b� l鏸 event th竛g 3/2014
	if nDate >= 20140329 and nDate <= 20140405 then
		local nCheck_ext = GetExtPoint(5)
		if nCheck_ext == 1 then
			tinsert(tbSayDialog, "Nh薾 thng l筰 event th竛g 3/get_award201403")
		end
	end
	--tinsert(tbSayDialog,"Nhi謒 v� tr錸g c﹜ m鏸 ng祔/trongcay"	)	
	----------------------------------
--	if nDate >= 20120611 and nDate <= 20120718 then
--		tinsert(tbSayDialog, "M� Rng Th莕 T礽 n Phi猲 B秐 M韎/get_Invite")
--	end	
--  	if nDate >= 20120308 and nDate <= 20120508 then
--		tinsert(tbSayDialog, "Nh薾 thng T﹏ Th� L謓h /get_NewRegis")
--	end
--   	-- Event th竛g 11
--     if nDate >= 20111111 and nDate <= 20111212 then
--    		tinsert(tbSayDialog, VET_201111_STRING_LIST[1].."/active_fire_for_warm")
--		tinsert(tbSayDialog, VET_201111_STRING_LIST[2].."/buy_match")
--		tinsert(tbSayDialog, tSTRING_201111_ACTIVITY_TWO[1].."/send_flower")
--	end
--
--	if nDate >= 20110722 and nDate <= 20110821 then
--  		tinsert(tbSayDialog, "Ch祇 m鮪g s� ki謓 Kem SoCola /ChangeSoCola")
--  	end
--  	if nDate >= 20110617 and nDate <= 20110710 then
--   		tinsert(tbSayDialog, "фi Sinh t� tr竔 c﹜ (c莕 5 tr竔 c﹜ m颽 h� + 2 V藅 ph萴 Xu)/VET_201102_Operating_SinhTo")
--   	end
--    if nDate >= 20110422 and nDate <= 20110616 then
--    		szSayHead = VET_STR_201104_LIBERATION_OPERATING_DLG[4]
--    		tinsert(tbSayDialog,gf_VnGetChangeSaySel("201104LiberationChg2").."/#VET201104CHG(2)")
--    		tinsert(tbSayDialog, "фi B� Hoa Chi課 Th緉g (c莕 5 Hoa Chi課 Th緉g + 2 V藅 ph萴 Xu)/VET_201104_304_MassExchange")
--    		tinsert(tbSayDialog, "N閜 b� hoa chi課 th緉g/VET_201104_give_Winflower")
--    end
--    
--     if nDate >= 20110121 and nDate <= 20110220 then
--     		tinsert(tbSayDialog, PB_menu[7])
--     end
     


--	if nDate >= 20110304 and nDate <= 20110410 then
--		  tinsert(tbSayDialog, "T苙g k裲 S玞玪a m鮪g ng祔 qu鑓 t� ph� n� 8/3 (c莕 10 S玞玪a)/VET_201102_give_chocolate");
--	end
--	
--	--Event th竛g 12
--	if nDate >= 20111216 and nDate <= 20120108 then
--    		tinsert(tbSayDialog, tSTRING_201111_ACTIVITY_TB[1].."/send_gift")
--    		tinsert(tbSayDialog, format(tSTRING_DECORATETREE_TABLE[1],VET_201111_TREE_VALUE).."/sale_christmas_tree")
--	end
--

--	-- ****************** Event Ph竜 hoa 20101116 ******************
--	if nDate >= 20110405 and nDate <= 20110421 then
--		tinsert ( tbSayDialog, "Nh薾 bao l� x�/VET_201102_give_dahongbao" )
--	end	
--	-- ****************** Nh薾 max event � m鑓 4000******************
--	if nDate >= 20120727 and nDate <= 20120812 then		
--		tinsert ( tbSayDialog, "Nh薾 thng s� d鬾g lo筰 t鑙 產 v藅 ph萴 event/prize_max_event_thang7" )
--	end
--	
--
--	if nDate >= 20100917 and nDate <= 20101024 then
--		tinsert(tbSayDialog,"Nh薾 v藅 ph萴 K� Ni謒 1000 N╩ Th╪g Long/get_1000_tl")
--	end
	
--	if CheckTongJoinRoseWar() == 1 and nDate <= 20110410 then
--		-- фi hoa h錸g v祅g t� hoa h錸g ph蕁
--		tinsert(tbSayDialog, "Ta mu鑞 i Hoa H錸g V祅g (5 Hoa H錸g Ph蕁 + 2 Xu)/bhta5_exchange_rose")
--		tinsert(tbSayDialog, "Ta mu鑞 i Hoa H錸g V祅g (5 Hoa H錸g Ph蕁 + 7 V祅g)/bhta5_exchange_rose2")
--		-- S� d鬾g hoa h錸g v祅g
--		tinsert(tbSayDialog,"S� d鬾g hoa h錸g v祅g/UseYellowRose")
--	end
   	if nDate >= 20140318 and nDate <= 20140320 then
		tinsert(tbSayDialog, "Trao gi秈 li xi 3 t�/TraoThuong2Ty_Menu")
	end
	local tbFeatureMenu = FeatureMenu()
	if nDate >= 20141107 and nDate <= 20141130 then
--		tinsert(tbSayDialog, "Mua 1000 H� Keo (ti猽 hao 79 v祅g)/#nguyenlieu_thang4(1)")
--		tinsert(tbSayDialog, "Mua 1000 Gi蕐 Ng� S綾 (ti猽 hao 79 v祅g)/#nguyenlieu_thang4(2)")
		tinsert(tbSayDialog, "Event Ch輓h Th竛g 11/EventMenu")
		--tinsert(tbSayDialog, "Event M莔 Hoa Th竛g 10/EventMenu_MamHoa")
	end
	if nDate >= 20130919 and nDate <= 20131013 then	
--		tinsert(tbSayDialog, "Event M莔 C﹜/Event_Tree_Thang5")
	end
	if nDate >= 20130919 and nDate <= 20131013 then
		tinsert(tbSayDialog, "Event Hoa H錸g/VET_201309_AdditionDialog")
	--	tinsert(tbSayDialog, "Mua c﹜ th玭g Noel (gi� 68 v祅g/1c﹜)/buy_christmas_tree_coin")	
	--	tinsert(tbSayDialog, "Mua c﹜ th玭g Noel (gi� 19 Xu v藅 ph萴/1c﹜)/buy_christmas_tree_xu")			
	end
	if nDate >= 20130910 and nDate <= 20130915 then
		tinsert(tbSayDialog, "Nh薾 1000 nguy猲 li謚 Event ( ti猽 hao 100 v� l﹎ b秓 h筽 + 100 v祅g )/EventThang8_HoTro1")
		tinsert(tbSayDialog, "Nh薾 1000 nguy猲 li謚 Event ( ti猽 hao 39 xu v藅 ph萴 )/EventThang8_HoTro2")
	end
	for i=1,getn(tbFeatureMenu) do
		tinsert(tbSayDialog, tbFeatureMenu[i])
	end
	tinsert(tbSayDialog,"K誸 th骳 i tho筰/dialog_over"	)
	
	nSaySize = getn(tbSayDialog);
	Say(szSayHead, nSaySize, tbSayDialog);
end
function Event_Tree_Thang5()
	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "Th玭g tin chi ti誸 c竎 ho箃 ng ng o c� th� xem tr猲 trang ch� <color=green>http://volam2.zing.vn<color>."
	tbSayDialog, szSayHead = get_tbJNDialog_info(VET_XA_ACTIVITY_TABLE)
   
	tinsert(tbSayDialog,"K誸 th骳 i tho筰/do_nothing"	)
	nSaySize = getn(tbSayDialog);
	Say(szSayHead, nSaySize, tbSayDialog);
end
function EventMenu_MamHoa()

	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "Th玭g tin chi ti誸 c竎 ho箃 ng ng o c� th� xem tr猲 trang ch� <color=green>http://volam2.zing.vn<color>."
	
	tbSayDialog,szSayHead = VET_201410_AdditionDialog(tbSayDialog, szSayHead);
	
	tinsert(tbSayDialog,"K誸 th骳 i tho筰/dialog_over"	)
	nSaySize = getn(tbSayDialog);
	Say(szSayHead, nSaySize, tbSayDialog);
end
function EventMenu()
	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "Th玭g tin chi ti誸 c竎 ho箃 ng ng o c� th� xem tr猲 trang ch� <color=green>http://volam2.zing.vn<color>."
	tbSayDialog, szSayHead = get_tbJNDialog_info(VET_JN_ACTIVITY_TABLE)
	local szNationality = get_nationality_name(GetByte(GetTask(TSK_SERVER_ID), TSK_SERVER_ID_CUR))
     szSayHead = szSayHead..format(". B筺 產ng l� th莕 d﹏ c馻 <color=yellow>%s qu鑓<color>.", szNationality)
	if VET_CheckIpBonus() == 1 then
		szSayHead = szSayHead..". Hi謓 產ng ch琲 t筰 <color=yellow>Ph遪g M竬 Th﹏ Thi謓<color>."
	end
--		
--	if gf_GetTaskByte(2731, 1) < 2 then
--		tinsert(tbSayDialog, "Nh薾 thng s� d鬾g t m鑓 3000 c竎 lo筰 b竛h Trung Thu/prize_max_both_event_3000_choose")
--	elseif gf_GetTaskByte(2731, 1) < 4 then
--		tinsert(tbSayDialog, "Nh薾 thng s� d鬾g t m鑓 4000 c竎 lo筰 b竛h Trung Thu/prize_max_both_event_4000_choose")	--prize_max_event_4000_choose
--	end
--	if GetTask(2788) == 4000 and VNG_GetTaskPos(2731,1,1) == 0 then
--		tinsert(tbSayDialog, 1, "Nh薾 ph莕 thng 4000 Tranh G鑙/#EventT10_Max4000_Menu(1,1)")
--	end
--	if GetTask(2789) == 4000 and VNG_GetTaskPos(2731,2,2) == 0 then
--		tinsert(tbSayDialog, 1, "Nh薾 ph莕 thng 4000 Tranh Йng H�/#EventT10_Max4000_Menu(2,2)")
--	end
--	if GetTask(2790) == 4000 and VNG_GetTaskPos(2731,3,3) == 0 then
--		tinsert(tbSayDialog, 1, "Nh薾 ph莕 thng 4000 Tranh Th� Ph竝/#EventT10_Max4000_Menu(3,3)")
--	end
	tinsert(tbSayDialog,"K誸 th骳 i tho筰/dialog_over"	)
	nSaySize = getn(tbSayDialog);
	Say(szSayHead, nSaySize, tbSayDialog);
end

function FeatureMenu()
	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "Th玭g tin chi ti誸 c竎 ho箃 ng ng o c� th� xem tr猲 trang ch� <color=green>http://volam2.zing.vn<color>."
	local nNation = GetGlbValue(GLB_TSK_SERVER_ID)
	local nDate = tonumber(date("%Y%m%d"))
	local nDate1 =  tonumber(date("%Y%m%d%H"))

--     tbSayDialog, szSayHead = VET_201012_03_JingNangDaShiJiangDialog(szSayDialog, szSayHead); 
    	  	 
--	tinsert(tbSayDialog,"Mua 10 L� Th駓 = 1 v祅g/BuyWater")
--	tinsert(tbSayDialog, "Mua thu鑓 tr� b謓h/NT_Dialog2")
	
-- Den bu thang 4
--	if nDate>=20120510 and nDate<=20120512 then
--		tinsert(tbSayDialog,"бn b� th竛g 4/DenBuThang4")
--	end
	-- ****************** Quay s� Ingame th竛g 2012******************
	if nDate >= 20131219 and nDate < 20140101 then
		tinsert(tbSayDialog,"Nh薾 thng may m緉/lucky_award")		
	end	
	-- Vipcare thang 4
	if nDate>=20120420 and nDate<=20120722 then
		tinsert(tbSayDialog, "Ta mu鑞 nh薾 thng VIP/VipCareAward");
	end

--     if nDate >= 20110826 and nDate <= 20111002 then
--  		--tinsert(tbSayDialog, "Nng b竛h Trung Thu /#VET_201108_BakedCakes_Dialog(tbSayDialog, szSayHead)")
--  		tinsert(tbSayDialog, VET_201108_STRING_LIST[14].."/active_show")
--		tinsert(tbSayDialog, VET_201108_STRING_LIST[1].."/active_oven")
--		tinsert(tbSayDialog, VET_201108_STRING_LIST[2].."/buy_match_201108")
--  	end
  	
--	if nDate >= 20110624 and nDate <= 20110703 and (nNation == 10 or nNation == 52 or nNation == 17 or nNation == 3) then
--		tinsert(tbSayDialog,"Ta mu鑞 s� nh薾 ph莕 thng vinh d� server trong cu閏 thi Karaoke/reward_karaoke_2011")
--	end
--	
--	if nDate >= 20100917 and nDate <= 20100924 and (nNation == 6 or nNation == 4 or nNation == 51 or nNation == 3) then
--		tinsert(tbSayDialog,"Ta mu鑞 s� d鬾g ph竜 hoa th莕 tng V� L﹎ 2/use_firework1")
--	end
--	
--	if nDate >= 20110422 and nDate <= 20110529 then
--    		szSayHead = VET_STR_201104_LIBERATION_OPERATING_DLG[4]
--    		tinsert(tbSayDialog,VET_STR_201104_LIBERATION_OPERATING_DLG[1])
--		tinsert(tbSayDialog,VET_STR_201104_LIBERATION_OPERATING_DLG[2])
--    	end
--	
--	 if nDate >= 20110401 and nDate <= 20110417 then
--    		szSayHead = VET_TB_201103_OPERATING_DLG[1]
--    		tinsert(tbSayDialog, format("%s/%s",VET_TB_201103_OPERATING_DLG[5],"VET_201103_Operating_SetAwardModeDlg"))
--    		tinsert(tbSayDialog, format("%s/%s",VET_TB_201103_OPERATING_DLG[4],"VET_201103_Operating_GetFinalAwardDlg"))
--     end
--     
--     if nDate >= 20110125 and nDate <= 20110327 then
--     		szSayHead = "Ho箃 ng th竛g 3 di詎 ra trong th阨 gian t� ng祔 25 th竛g 2 n╩ 2011 n 24 gi� ng祔 27 th竛g 3 n╩ 2011, n閕 dung chi ti誸 t筰 trang ch� <color=red>http://volam2.zing.vn<color>"
--     		tinsert(tbSayDialog, format("%s/%s",VET_TB_201102_OPERATING_DLG[5],"VET_201102_Operating_SetAwardModeDlg"))
--     	end
     	--tinsert(tbSayDialog,"Nh薾 thng Ho祅g Kim L謓h B礽/golden_award")	
 --    if nDate >= 20121129 then
--		tinsert(tbSayDialog,"Nh薾 thng L玦 H� L謓h/platinum_award")	
--	end
	--Ph竜 hoa m鮪g phi猲 b秐 m韎 th竛g 9
	if nDate >= 20110820 and nDate <= 20151231 then
		tinsert ( tbSayDialog, "Nh薾 Ph竜 Hoa m鮪g n╩ m韎/Confirm_VET_201106_Give_Fire" )	--VET_201106_Give_Fire
	end
	tinsert(tbSayDialog,"Ta mu鑞 i 1 Чi Ng﹏ Phi誹 l蕐 100 v藅 ph萴 Xu/exchange_xu")	
	tinsert(tbSayDialog,"Nh薾 thng t輈h l騳 online/IpBonus")	
	tinsert(tbSayDialog,"B筺 уng H祅h/pet_init")
--	tinsert(tbSayDialog,"Ta mu鑞 mua m苩 n� S竧 Th� Л阯g (60 v祅g)/buy_mask")	
--	tinsert(tbSayDialog,"Ta mu鑞 n閜 C駃 Kh�/give_wood_201012")	
--	if nDate >= 20110422 and nDate <= 20110529 then
--		tinsert(tbSayDialog, format("%s/%s", format(VET_TB_201102_PLANT_DLG[1],VET_TB_201102_PLANT_NPC_NAME[1]),"VET_201102_Plant_ActiveCheck"));
--		tinsert(tbSayDialog, format("%s/%s", format(VET_TB_201102_PLANT_DLG[2],VET_TB_201102_PLANT_ITEM_TITLE[1], 1,VET_TB_201102_PLANT_ITEM_TITLE[1],20,VET_TB_201102_PLANT_ITEM_TITLE[2]),"VET_201102_Plant_BuyItem"));
--	end
	
--	tinsert(tbSayDialog,"Trang trc/SelectSay")
--	tinsert(tbSayDialog,"Trang sau/NextPage2")
--	tinsert(tbSayDialog,"K誸 th骳 i tho筰/dialog_over"	)
	return tbSayDialog
end


function NextPage()
	nSaySize = getn(tbSayDialog);
	Say(szSayHead, nSaySize, tbSayDialog);
end

function NextPage2()
	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "Th玭g tin chi ti誸 c竎 ho箃 ng ng o c� th� xem tr猲 trang ch� <color=green>http://volam2.zing.vn<color>."
	local nNation = GetGlbValue(GLB_TSK_SERVER_ID)
	local nDate = tonumber(date("%Y%m%d"))

      if nDate >= 20101210 and nDate <= 20110109 then
    		szSayHead = "<color=yellow>Ho箃 ng m鮪g Gi竛g Sinh<color> b総 u t� <color=red>ng祔 10/12/2010 n ng祔 09/1/2011<color>. N閕 dung chi ti誸 vui l遪g t譵 hi觰 t筰 trang ch� <color=green>http://volam2.zing.vn<color>"
   	 end
   	 
     if nDate >= 20110401 and nDate <= 20110417 then
    		szSayHead = VET_TB_201103_OPERATING_DLG[1]
    		tinsert(tbSayDialog, format("%s/%s",VET_TB_201103_OPERATING_DLG[4],"VET_201103_Operating_GetFinalAwardDlg"))
     end
     
     if nDate >= 20110125 and nDate <= 20110327 then
     		szSayHead = "Ho箃 ng th竛g 3 di詎 ra trong th阨 gian t� ng祔 25 th竛g 2 n╩ 2011 n 24 gi� ng祔 27 th竛g 3 n╩ 2011, n閕 dung chi ti誸 t筰 trang ch� <color=red>http://volam2.zing.vn<color>"
     		tinsert(tbSayDialog, format("%s/%s",VET_TB_201102_OPERATING_DLG[4],"VET_201102_Operating_GetFinalAwardDlg"))
     	end

--	tinsert(tbSayDialog,"фi v藅 ph萴 C玭g Th祅h/exchange_citywar")	
--	tinsert(tbSayDialog,"Chu閏 l筰 qu﹏ c玭g t鎛 th蕋 trong ng祔 (1 甶觤 = 2 b筩)/take_jungong_back")
	--tinsert(tbSayDialog,"Trang trc/NextPage")
	tinsert(tbSayDialog,"K誸 th骳 i tho筰/dialog_over"	)

	nSaySize = getn(tbSayDialog);
	Say(szSayHead, nSaySize, tbSayDialog);
end


function Viet_0912_GetXiangCaoDanGao()
	local SourceTable = {{"C﹜ K裲 Gi竛g Sinh", {2, 1, 30138, 4}}, {"g gi� tuy誸", {2, 1, 30125, 1}}};
	local DestTable = {{"B竛h Kem Vani", 100, {2, 1, 30124, 1}}};
	if GetItemCount(2,1,30138) < 4 or GetItemCount(2,1,30125) < 1 then
		Talk(1,"SelectSay","Nguy猲 li謚 kh玭g !")
		return
	end
	local szFullTitle = VIET_0912_STR_EVENT_LOG_TITLE
	gf_ExchangeItem(SourceTable, DestTable, szFullTitle, 0, 0, 1, 10, VIET_0912_NPC_NAME_1, 1);
	SelectSay()	
end

function Viet_0912_GetMaxXiangCaoDanGao()
	if GetTask(VIET_0912_TASK_XIANGCAODANGAO_COUNT) > VIET_0912_XIANGCAODANGAO_MAX_COUNT then
		Talk(1, "", "B筺  nh薾 ph莕 thng n祔 r錳!")
		return 0;
	end
	if GetTask(VIET_0912_TASK_XIANGCAODANGAO_COUNT) == VIET_0912_XIANGCAODANGAO_MAX_COUNT then
		if GetFreeItemRoom() < 2 then	
			Talk(1, "", "H祅h trang ngi kh玭g  2 � tr鑞g!")
			return 0;
		end
		SetTask(VIET_0912_TASK_XIANGCAODANGAO_COUNT, VIET_0912_TASK_XIANGCAODANGAO_COUNT + 1)
		ModifyExp(20000000)
		local szFullLogTitle = VIET_0912_STR_EVENT_LOG_TITLE
		gf_EventGiveRandAward(VIET_0912_XIANGCAODANGAO_AWARD_FULL, 10000, 2, szFullLogTitle, "Max Event");
	else
		Talk(1, "", "B筺 ch璦 s� d鬾g  s� lng B竛h Kem Vani!");
	end
end

function clear_pk_value()
	local nPK = GetPKValue()
	if nPK == 0 then
		Talk(1, "", "觤 PK hi謓 t筰 c馻 c竎 h� 產ng l� 0, kh玭g c莕 ph秈 t葃 PK!")
		return
	else	
		local tbSayDialog = {}
		local nSaySize = 0
		local szSayHead = format("觤 PK c馻 c竎 h� 產ng l� %d, c莕 c� %d gi� 駓 th竎 B筩h C﹗ Ti猲 Кn, %d gi� 駓 th竎 Tam Thanh Ti猲 Кn, %d gi� 駓 th竎 L鬰 Th莕 Ti猲 Кn  ti課 h祅h t葃 甶觤. C� mu鑞 t葃 甶觤 PK kh玭g?", nPK, nPK*2, nPK, nPK)
		tinsert(tbSayDialog,"уng �/clear_pk")
		tinsert(tbSayDialog,"Kh玭g i n鱝/dialog_over")
		nSaySize = getn(tbSayDialog)
		Say(szSayHead, nSaySize, tbSayDialog)
	end
end

function clear_pk()
	local nPK = GetPKValue()
	local nExBigBCH = GetTask(2508)
	local nExBigLTH = EatLiushen(3,0)
	local nExBigTTH = EatSanqin(3,0)
	
	if nExBigBCH < (120 * nPK) then
		Talk(1,"",szNpcName.."Kh玭g  gi� 駓 th竎 B筩h C﹗ Ti猲 Кn!")
		return
	elseif nExBigTTH < (60 * nPK) then
		Talk(1,"",szNpcName.."Kh玭g  gi� 駓 th竎 Tam Thanh Ti猲 Кn!")
		return
	elseif nExBigLTH < (60 * nPK) then
		Talk(1,"",szNpcName.."Kh玭g  gi� 駓 th竎 L鬰 Th莕 Ti猲 Кn!")
		return
	else
		SetTask(2508,nExBigBCH - (120 * nPK))
		EatLiushen(3,-(60 * nPK))
		EatSanqin(3,-(60 * nPK))
		AddPKValue(nPK * (-1))
		WriteLogEx("Hoat dong thang 5","t葃 "..nPK.." 甶觤 PK")			
	end
end

function exchange_xu()
	if GetItemCount(2,1,199) < 1 then
		Talk(1, "", "Чi hi謕 ch璦 mang theo Чi Ng﹏ Phi誹 m� i i Xu �?")
		return
	end
	if gf_Judge_Room_Weight(2, 2," ") ~= 1 then
        	return
    end
    if DelItem(2,1,199,1) == 1 then
    		gf_AddItemEx2({2,1,30230, 100}, "Xu", "Doi Dai Ngan Phieu ra Xu", "CNDSK")
    end
    SelectSay()
end

function dialog_over()
end

  --Nh薾 ph竜 hoa m鮪g phi猲 b秐 TMT
function VET_201106_Give_Fire()
	local tbSayDialog = {}
	local nSaySize = 0
	local szSayHead ="Nh薾 ph竜 hoa m鏸 ng祔. Чi hi謕 c� th� s� d鬾g ch鴆 n╪g VIP  nh﹏ i 甶觤 khi s� d鬾g ph竜 hoa."
	
	tinsert(tbSayDialog,"Nh薾 ph竜 hoa m鏸 ng祔/Confirm_VET_201106_Give_Fire")	
	--tinsert(tbSayDialog,"K輈h ho箃 s� d鬾g ph竜 hoa d筺g VIP (ti猽 hao 12 Xu v藅 ph萴)/Active_VET_201106_Give_Fire")		
	tinsert(tbSayDialog,"K誸 th骳 i tho筰/dialog_over"	)

	nSaySize = getn(tbSayDialog);
	Say(szSayHead, nSaySize, tbSayDialog);
end


function Active_VET_201106_Give_Fire()
	VietResetDate()
	if GetTask(TSK_ACTIVE_VIP_PHAOHOA) == 1 then
		Talk(1, "", "H玬 nay b筺  k輈h ho箃 s� d鬾g ph竜 hoa d筺g VIP r錳 !!!!")
		return
	end
	if GetTask(TSK_ACTIVE_VIP_PHAOHOA) ~= 0 then
		Talk(1, "", "H玬 nay b筺  k輈h ho箃 s� d鬾g ph竜 hoa d筺g Thng r錳 !!!!")
		return
	end

	if GetItemCount(2,1,30230) < 12 then
		Talk(1, "", "Чi hi謕 kh玭g mang theo  Xu v藅 ph萴  kick ho箃 VIP?")
		return
	end
	DelItem(2,1,30230,12)
	SetTask(TSK_ACTIVE_VIP_PHAOHOA, 1)
	gf_WriteLogEx("KICK HOAT VIP", "kick ho箃 th祅h c玭g", 1, "VIP ph竜 hoa")
end


function Confirm_VET_201106_Give_Fire()
	local nUsedDate = floor(GetTask(TSK_DAHONGBAO_201101) / 1000)
	local nDate = tonumber(date("%y%m%d"))
	if gf_Judge_Room_Weight(2, 100," ") ~= 1 then
        	return
    end	
	if GetLevel() < 73 then
		Talk(1, "", "Ъng c蕄 73 tr� l猲 m韎 c� th� tham gia ho箃 ng n祔!")
		return
	end
	
--	if nDate > 121230 then
--		Talk(1,"","Х h誸 th阨 h筺 s� ki謓!")
--		return
--	end
	
	if nUsedDate ~= nDate then
		SetTask ( TSK_DAHONGBAO_201101, nDate * 1000 )
		SetTask ( TSK_DAHONGBAO_201101_TIME, 0 )
	end
	
	local nCount = floor(mod(GetTask(TSK_DAHONGBAO_201101), 1000) / 100)
	local nMaxRecv = 60
	if nCount >= 1 then
		Talk(1,"","H玬 nay i hi謕  h誸 l莕 nh薾 ph竜 hoa !!!")
		return
	end
	
--	if nCount == 1 then
--		if GetCash() < 1600000 then
--			Talk(1,"","Чi hi謕 kh玭g mang theo  v祅g !!!")
--			return
--		end
--		Pay(1600000)
--		gf_AddItemEx2({2, 1, 30297, nMaxRecv, 4}, "Ph竜 Hoa m鮪g phi猲 b秐 m韎 l莕 2", "Phao hoa phien ban moi thang 6", "nh薾 "..nMaxRecv.." Ph竜 hoa")
--	elseif nCount ==2 then
--			if GetItemCount(2,1,30230) < 40 then
--			Talk(1,"","Чi hi謕 kh玭g mang theo  Xu v藅 ph萴 !!!")
--			return
--		end
--		DelItem(2,1,30230,40)
--		gf_AddItemEx2({2, 1, 30297, nMaxRecv, 4}, "Ph竜 Hoa m鮪g phi猲 b秐 m韎 l莕 3", "Phao hoa phien ban moi thang 6", "nh薾 "..nMaxRecv.." Ph竜 hoa")
--	else
		gf_AddItemEx2({2, 1, 30297, nMaxRecv, 4}, "Nh薾 Ph竜 Hoa m鏸 ng祔", "Phao hoa CNDSK 2013 bk", "nh薾 "..nMaxRecv.." Ph竜 hoa")
		gf_WriteLogEx("Phao hoa CNDSK 2013", "nh薾 60 ph竜 hoa", 1, "Nh薾 Ph竜 Hoa m鏸 ng祔")
--	end
	
	Msg2Player("B筺 nh薾 頲 "..nMaxRecv.." ph竜 hoa.")
	SetTask(TSK_DAHONGBAO_201101, GetTask(TSK_DAHONGBAO_201101) + 100)
end

function reward_karaoke_2011()
	local nNation = GetGlbValue(GLB_TSK_SERVER_ID)
	local nNationality = GetByte(GetTask(TSK_SERVER_ID), TSK_SERVER_ID_CUR)
	local nDate = tonumber(date("%y%m%d"))
	
	if nDate > 110703 then
		Talk(1,"","Х h誸 th阨 gian nh薾 thng!")
		return
	end
	
	if nNationality ~= nNation then
		Talk(1, "", "B筺 kh玭g ph秈 l� th莕 d﹏ b鎛 qu鑓 n猲 kh玭g th� nh薾 thng!")
		return
	end
	
	if gf_GetTaskBit(TSK_GIVE_AWARD_CNDSK, BIT_KARAOKE2011) == 1 then
		Talk(1, "","B筺  nh薾 ph莕 thng r錳")
		return
	end
	
	if GetLevel() < 73 then
		Talk(1, "", "Ъng c蕄 73 tr� l猲 m韎 c� th� nh薾 thng!")
		return
	end
	
	if ( GetPlayerRoute() == 0 )  then
		Talk ( 1, "" , "Thi誹 hi謕 ch璦 v� m玭 ph竔 n猲 kh玭g th� nh薾 thng!" )
		return
	end
	
	local tKaraokeAward = 
	{
		[3]   = 30000000,
		[10] = 10000000,
		[17] = 20000000,
		[52] = 10000000,
	}
	
	local nExp = tKaraokeAward[nNationality]
	gf_SetTaskBit(TSK_GIVE_AWARD_CNDSK, BIT_KARAOKE2011, 1)
	ModifyExp(nExp)
	Msg2Player("B筺 nh薾 頲 "..nExp.." 甶觤 kinh nghi謒")
end	
------------------------
-- фi Kem Socola l蕐 甶觤 kinh nghi謒
function ChangeSoCola()
	local nDate = tonumber(date("%y%m%d"))
	local nCurdate = floor(GetTask(TKS_KSOCOLA_TIMES)/100)
	if nDate ~= nCurdate then
		SetTask(TKS_KSOCOLA_TIMES , nDate*100)
	end
	if GetItemCount(2,1,30325) < 10 then
		Talk(1,"","Чi hi謕 mang kh玭g  10 Kem Socola")
		return
	end
	local nUse = mod(GetTask(TKS_KSOCOLA_TIMES),100)
	if nUse >= 4 then
		Talk(1,"","H玬 nay i hi謕 i 4 l莕 r錳. Ng祔 mai quay l筰")
		return
	end
	
	if DelItem(2,1,30325,10) == 1 then
		ModifyExp(2500000)
		Msg2Player("B筺  nh薾 頲 2500000 甶觤 kinh nghi謒")
		SetTask(TKS_KSOCOLA_TIMES,GetTask(TKS_KSOCOLA_TIMES)+1)
	end
end

tbItem = {
	{{2,1,30086,24,4}, "H箃 gi鑞g", 7*24*60*60},
	{{2,1,9999,1,4},"Qu﹏ c玭g chng", 7*24*60*60},
	{{2,1,9998,1,4},"Qu﹏ c玭g Чi", 7*24*60*60},
	{{2,1,9977,1,4},"Qu﹏ c玭g Huy Ho祅g", 7*24*60*60},
	{{2,1,1017,1,4}, "S� m玭 l謓h k�", 7*24*60*60},

}
function get_NewRegis()
	if IsPlayerDeath() ~= 0 then 
		Talk(1, "", "Hi謓 t筰 kh玭g th� nh薾 thng!!!")
		return
	end
	if gf_Judge_Room_Weight(30, 100," ") ~= 1 then
        	return
    end
	if gf_GetExtPointByte(1,1) <= 0 then
		Talk(1, "", "Чi hi謕 ch璦 k輈h ho箃 code ho芻  nh薾 thng r錳 n猲 kh玭g th� nh薾 thng 頲 n鱝!!!")
		return
	end 
	if  gf_GetExtPointByte(1,1) == 1 then
		if gf_SetExtPointByte(1, 1, 0) == 1 then
			for i = 1, getn(tbItem) do
				gf_AddItemEx2(tbItem[i][1], tbItem[i][2], "NHAN THUONG TAN THU", "nh薾 th祅h c玭g", tbItem[i][3])
			end		
			Earn(240000)	
		end
	else
		Talk(1, "", "Чi hi謕 ch璦 k輈h ho箃 code ho芻  nh薾 thng r錳 n猲 kh玭g th� nh薾 thng 頲 n鱝!!!")
		return
	end
end


function prize_max_event_4000()
	if gf_Judge_Room_Weight(5,100) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end
	if GetTask(2731) < 1 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  4000 Cua Rang Mu鑙 v� 4000 C祅g Gh� Nng Mu鑙 韙!!!!")
		return 0
	end
	if GetTask(2731) > 1 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0		
	end

	LIB_Award.szLogTitle = "Hoat dong thang 7 nam 2012"
	LIB_Award.szLogAction = "Nh薾 m鑓 event 4000"
	
	local tbAward1 = {item = {{gdp={2,1,30341,5}, name = "T祅g Rng"}}, nChankhi = 10000}
	local tbAward2 = {item = {{gdp={2,1,30341,10}, name = "T祅g Rng"}}, nChankhi = 10000}
	local tbAward3 = {item = {{gdp={2,1,30341,15}, name = "T祅g Rng"}}, nChankhi = 10000}
	local tbAward4 = {item = {{gdp={2,1,30341,20}, name = "T祅g Rng"}}, nChankhi = 10000}
	local tbAward5 = {item = {{gdp={2,1,30341,25}, name = "T祅g Rng"}}, nChankhi = 10000}
	local tbAwardSet = {
		[1] = {[1] = tbAward1, nRate = 55.550},
		[2] = {[1] = tbAward2, nRate = 33.330},
		[3] = {[1] = tbAward3, nRate = 10.100},
		[4] = {[1] = tbAward4, nRate = 1.019},
		[5] = {[1] = tbAward5, nRate = 0.001},
	}
    	if LIB_Award:AwardByRate(tbAwardSet) == 1 then
		SetTask(2731,2)
    	end
 end
 
 
 function prize_max_event_6000()
 	if gf_Judge_Room_Weight(5,100) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end
	if GetTask(2731) < 3 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  6000 Cua Rang Mu鑙 v� 6000 C祅g Gh� Nng Mu鑙 韙!!!!")
		return 0
	end
	if GetTask(2731) > 3 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0		
	end

	LIB_Award.szLogTitle = "Hoat dong thang 7 nam 2012"
	LIB_Award.szLogAction = "Nh薾 m鑓 event 6000"
	
	local tbAward1 = {item = {{gdp={2,1,30346,1}, name = "M秐h B筩h Kim"}}, nChankhi = 10000}
	local tbAward2 = {item = {{gdp={2,1,30346,2}, name = "M秐h B筩h Kim"}}, nChankhi = 10000}
	local tbAward3 = {item = {{gdp={2,1,30346,3}, name = "M秐h B筩h Kim"}}, nChankhi = 10000}
	local tbAward4 = {item = {{gdp={2,1,30346,4}, name = "M秐h B筩h Kim"}}, nChankhi = 10000}
	local tbAward5 = {item = {{gdp={2,1,30346,5}, name = "M秐h B筩h Kim"}}, nChankhi = 10000}
	local tbAward6 = {item = {{gdp={2,1,30346,6}, name = "M秐h B筩h Kim"}}, nChankhi = 10000}
	local tbAward7 = {item = {{gdp={2,1,30346,7}, name = "M秐h B筩h Kim"}}, nChankhi = 10000}
	local tbAward8 = {item = {{gdp={2,1,30346,8}, name = "M秐h B筩h Kim"}}, nChankhi = 10000}
	local tbAward9 = {item = {{gdp={2,1,30346,9}, name = "M秐h B筩h Kim"}}, nChankhi = 10000}
	local tbAward10 = {item = {{gdp={2,1,30346,10}, name = "M秐h B筩h Kim"}}, nChankhi = 10000}
	local tbAwardSet = {
		[1] = {[1] = tbAward1, nRate = 50.551},
		[2] = {[1] = tbAward2, nRate = 30.551},
		[3] = {[1] = tbAward3, nRate = 15.551},
		[4] = {[1] = tbAward4, nRate = 0.999},
		[5] = {[1] = tbAward5, nRate = 0.888},
		[6] = {[1] = tbAward6, nRate = 0.777},
		[7] = {[1] = tbAward7, nRate = 0.666},
		[8] = {[1] = tbAward8, nRate = 0.010},
		[9] = {[1] = tbAward9, nRate = 0.006},
		[10] = {[1] = tbAward10, nRate = 0.001},
	}
    	if LIB_Award:AwardByRate(tbAwardSet) == 1 then
		SetTask(2731,4)
    	end
 end
 
 
 function prize_max_event_8000()
 	if gf_Judge_Room_Weight(5,100) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end
	if GetTask(2731) < 5 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  8000 Cua Rang Mu鑙 v� 8000 C祅g Gh� Nng Mu鑙 韙!!!!")
		return 0
	end
	if GetTask(2731) > 5 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0		
	end

	LIB_Award.szLogTitle = "Hoat dong thang 7 nam 2012"
	LIB_Award.szLogAction = "Nh薾 m鑓 event 10000"
	
	local tbAward1 = {item = {{gdp={2,95,204,2}, name = "Thi猲 Cang L謓h"}}, nChankhi = 10000}
	local tbAward2 = {item = {{gdp={2,95,204,4}, name = "Thi猲 Cang L謓h"}}, nChankhi = 10000}
	local tbAward3 = {item = {{gdp={2,95,204,6}, name = "Thi猲 Cang L謓h"}}, nChankhi = 10000}
	local tbAward4 = {item = {{gdp={2,95,204,8}, name = "Thi猲 Cang L謓h"}}, nChankhi = 10000}
	local tbAward5 = {item = {{gdp={2,95,204,10}, name = "Thi猲 Cang L謓h"}}, nChankhi = 10000}
	
	local tbAwardSet = {
		[1] = {[1] = tbAward1, nRate = 88.888},
		[2] = {[1] = tbAward2, nRate = 10.123},
		[3] = {[1] = tbAward3, nRate = 0.696},
		[4] = {[1] = tbAward4, nRate = 0.292},
		[5] = {[1] = tbAward5, nRate = 0.001},
	}
    	if LIB_Award:AwardByRate(tbAwardSet) == 1 then
		SetTask(2731,6)
    	end
 end

 function prize_max_event_3000_choose()
 	local nCheckKinhMach = MeridianGetLevel()
 	local nCheckPet = mod(GetTask(TASK_VNG_PET), 100)
 	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "Ch鋘 1 trong 3 lo筰 ph莕 thng:  !!!!"
	
	tinsert(tbSayDialog, "Ph莕 thng 1.000.000.000 甶觤 kinh nghi謒/#confirm_prize_max_event_3000_choose(1)")
	tinsert(tbSayDialog, "Ph莕 thng 1 chuy觧 sinh n (60 ng祔 s� d鬾g)/#confirm_prize_max_event_3000_choose(2)")
	tinsert(tbSayDialog, "Ph莕 thng 30.000 甶觤 ch﹏ kh�/#confirm_prize_max_event_3000_choose(3)")
	tinsert(tbSayDialog,"Ta ch� h醝 th╩/dialog_over"	)
	nSaySize = getn(tbSayDialog);
	
	Say(szSayHead, nSaySize, tbSayDialog); 
 end
 function confirm_prize_max_event_3000_choose(nType) 
  	local nCheckKinhMach = MeridianGetLevel()
 	local nCheckMaxEvent1 = gf_GetTaskByte(2731, 1)
 	local nPetLevel = mod(GetTask(TASK_VNG_PET), 100)

	if nCheckMaxEvent1 < 1 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  3000 Sinh T� v� 3000 Tr竔 C﹜ d莔!!!!")
		return 0
	end
	if nCheckMaxEvent1 > 1 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0
	end
 	if gf_Judge_Room_Weight(2,50) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end	
	if nType == 3 then
		if nCheckKinhMach < 1 then
			Talk(1,"","Чi hi謕 ch璦 k輈h ho箃 kinh m筩h n猲 kh玭g th� nh薾 thng !!!!")
			return 0
		end
	end
	--SetTask(2731,2)
	gf_SetTaskByte(2731, 1, 2)		
	if nType == 1 then
		ModifyExp(1000000000)
		gf_WriteLogEx("Hoat dong thang 07 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 3000 lo筰 1 t� 甶觤 kinh nghi謒�")
	end
	if nType == 2 then
		gf_AddItemEx2({2,1,30345, 1}, "Chuy觧 sinh n", "Log phu Hoat dong thang 07 nam 2013", "Chuy觧 Sinh Кn", 60 * 24 * 3600)
		gf_WriteLogEx("Hoat dong thang 07 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 3000 lo筰 chuy觧 sinh n")
	end
	if nType == 3 then
		AwardGenuineQi(30000);
		gf_WriteLogEx("Hoat dong thang 07 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 3000 lo筰 ch﹏ kh�")
	end	

---ph莕 thng
	Msg2Player("Ch骳 m鮪g i hi謕 nh薾 thng m鑓 3000 th祅h c玭g")
	gf_WriteLogEx("Hoat dong thang 07 nam 2013", "nh薾 thng th祅h c玭g", 1, "T鎛g nh薾 m鑓 event 3000")
 end
 function prize_max_event_4000_choose()
 	local nCheckKinhMach = MeridianGetLevel()
 	local nCheckPet = mod(GetTask(TASK_VNG_PET), 100)
 	local tbSayDialog = {};
	local nSaySize = 0;
	local szSayHead = "Ch鋘 1 trong 3 lo筰 ph莕 thng:  !!!!"
	
	tinsert(tbSayDialog, "Ph莕 thng 2.000.000.000 甶觤 kinh nghi謒/#confirm_prize_max_event_4000_choose(1)")
	tinsert(tbSayDialog, "Ph莕 thng 2 chuy觧 sinh n (60 ng祔 s� d鬾g)/#confirm_prize_max_event_4000_choose(2)")
	tinsert(tbSayDialog, "Ph莕 thng 60.000 甶觤 ch﹏ kh�/#confirm_prize_max_event_4000_choose(3)")
	tinsert(tbSayDialog,"Ta ch� h醝 th╩/dialog_over"	)
	nSaySize = getn(tbSayDialog);
	
	Say(szSayHead, nSaySize, tbSayDialog); 
 end
 function confirm_prize_max_event_4000_choose(nType) 
  	local nCheckKinhMach = MeridianGetLevel()
 	local nCheckMaxEvent1 = gf_GetTaskByte(2731, 1)
 	local nPetLevel = mod(GetTask(TASK_VNG_PET), 100)

	if nCheckMaxEvent1 < 3 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  4000 Sinh T� v� 4000 Tr竔 C﹜ d莔!!!!")
		return 0
	end
	if nCheckMaxEvent1 > 3 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0
	end
 	if gf_Judge_Room_Weight(4,50) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end	
	if nType == 3 then
		if nCheckKinhMach < 1 then
			Talk(1,"","Чi hi謕 ch璦 k輈h ho箃 kinh m筩h n猲 kh玭g th� nh薾 thng !!!!")
			return 0
		end
	end
	--SetTask(2731,2)
	gf_SetTaskByte(2731, 1, 4)		
	if nType == 1 then
		ModifyExp(2000000000)
		gf_WriteLogEx("Hoat dong thang 07 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 3000 lo筰 1 t� 甶觤 kinh nghi謒�")
	end
	if nType == 2 then
		gf_AddItemEx2({2,1,30345, 2}, "Chuy觧 sinh n", "Log phu Hoat dong thang 07 nam 2013", "Chuy觧 Sinh Кn", 60 * 24 * 3600)
		gf_WriteLogEx("Hoat dong thang 07 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 3000 lo筰 chuy觧 sinh n")
	end
	if nType == 3 then
		AwardGenuineQi(60000);
		gf_WriteLogEx("Hoat dong thang 07 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 3000 lo筰 ch﹏ kh�")
	end	

---ph莕 thng
	Msg2Player("Ch骳 m鮪g i hi謕 nh薾 thng m鑓 4000 th祅h c玭g")
	gf_WriteLogEx("Hoat dong thang 07 nam 2013", "nh薾 thng th祅h c玭g", 1, "T鎛g nh薾 m鑓 event 4000")
 end
 
function prize_max_both_event_3000_choose()
 	local nCheckMaxEvent1 = gf_GetTaskByte(2731, 1)
 	if gf_Judge_Room_Weight(10,250) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end
 	if nCheckMaxEvent1 < 1 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  3000 c竔 m鏸 lo筰 B竛h Trung Thu!!!!")
		return 0
	end
	if nCheckMaxEvent1 > 1 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0
	end
	
	gf_SetTaskByte(2731, 1, 2)
	gf_AddItemEx2({2, 95,  204, 1}, "Thi猲 Cang L謓h", "Log phu Hoat dong thang 09 nam 2013", "1 Thi猲 Cang L謓h")
	gf_AddItemEx2({2,1,30370, 1}, "Thi猲 M玭 Kim L謓h", "Log phu Hoat dong thang 09 nam 2013", "1Thi猲 M玭 Kim L謓h")
	Msg2Player("B筺 nh薾 頲 1 t� 500 tri謚 甶觤 kinh nghi謒, 1 thi猲 cang l謓h, 1 thi猲 m玭 kim l謓h")	
	if GetTask(701) >= 0 then
		SetTask(701,GetTask(701) + 50000)
	else
		SetTask(701,GetTask(701) - 50000)
	end
	Msg2Player("B筺 nh薾 頲 50000 甶觤 c玭g tr筺g")	
--	AwardGenuineQi(50000)
	ModifyExp(1500000000)
	Pet_AddGP(200)
	WriteLogEx("Hoat dong thang 09 nam 2013", "nh薾 thng m鑓 3000 頲 200 linh l鵦 ", 1, "200 甶觤 linh l鵦")
	Msg2Player("B筺 nh薾 頲 200 觤 Linh L鵦 B筺 уng H祅h")
	Msg2Player("Ch骳 m鮪g i hi謕 nh薾 thng m鑓 3000 th祅h c玭g")
	gf_WriteLogEx("Hoat dong thang 09 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 3000")
 end	
function prize_max_both_event_4000_choose()
 	local nCheckMaxEvent1 = gf_GetTaskByte(2731, 1)
 	if gf_Judge_Room_Weight(10,250) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end
 	if nCheckMaxEvent1 < 3 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  4000 c竔 m鏸 lo筰 B竛h Trung Thu!!!!")
		return 0
	end
	if nCheckMaxEvent1 > 3 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0
	end
	
	gf_SetTaskByte(2731, 1, 4)
	gf_AddItemEx2({2, 95,  204, 2}, "Thi猲 Cang L謓h", "Log phu Hoat dong thang 09 nam 2013", "2 Thi猲 Cang L謓h")
	gf_AddItemEx2({2,1,30370, 2}, "Thi猲 M玭 Kim L謓h", "Log phu Hoat dong thang 09 nam 2013", "2Thi猲 M玭 Kim L謓h")
	Msg2Player("B筺 nh薾 頲 2 t� 甶觤 kinh nghi謒, 2 thi猲 cang l謓h, 2 thi猲 m玭 kim l謓h")		
	if GetTask(701) >= 0 then
		SetTask(701,GetTask(701) + 50000)
	else
		SetTask(701,GetTask(701) - 50000)
	end
	Msg2Player("B筺 nh薾 頲 50000 甶觤 c玭g tr筺g")	
--	AwardGenuineQi(50000)
	ModifyExp(2000000000)
	Pet_AddGP(200)
	WriteLogEx("Hoat dong thang 09 nam 2013", "nh薾 thng m鑓 3000 頲 200 linh l鵦 ", 1, "200 甶觤 linh l鵦")
	Msg2Player("B筺 nh薾 頲 200 觤 Linh L鵦 B筺 уng H祅h")
	Msg2Player("Ch骳 m鮪g i hi謕 nh薾 thng m鑓 4000 th祅h c玭g")
	gf_WriteLogEx("Hoat dong thang 09 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 4000")
 end	
  
 function prize_max_both_event_6000_choose()
 	local nCheckMaxEvent1 = gf_GetTaskByte(2731, 1)
 	if gf_Judge_Room_Weight(5,100) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end
 	if nCheckMaxEvent1 < 5 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  3000 v藅 ph萴 Hu﹏ Chng v� 3000 v藅 ph萴 B籲g Khen!!!!")
		return 0
	end
	if nCheckMaxEvent1 > 5 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0
	end
	--SetTask(2731,1)
	gf_SetTaskByte(2731, 1, 6)
	gf_AddItemEx2({2,1,30344, 2}, "Th莕 T礽 B秓 Rng", "Log phu Hoat dong thang 04 nam 2013", "2 Th莕 T礽 B秓 Rng")
	AwardGenuineQi(35000)
	Msg2Player("Ch骳 m鮪g i hi謕 nh薾 thng m鑓 3000 th祅h c玭g")
	gf_WriteLogEx("Hoat dong thang 04 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 3000")
 end	
 	
 
 function prize_max_event_6000_choose()
 	local nCheckMaxEvent1 = gf_GetTaskByte(2731, 2)
 	if gf_Judge_Room_Weight(5,100) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end
	if nCheckMaxEvent1 < 1 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  1111 v藅 ph萴 蕁 L穘h Th�!!!!")
		return 0
	end
	if nCheckMaxEvent1 > 1 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0
	end
	--SetTask(2731,2)
	gf_SetTaskByte(2731, 2, 2)
	
	--gf_AddItemEx2({2,1,30390, 1000}, "1000 M秐h Thi猲 Cang", "Log phu Hoat dong thang 03 nam 2013", "1000 M秐h Thi猲 Cang")
	--gf_AddItemEx2({2,1,30071, 10}, "10 Nh﹏ s﹎ v筺 n╩", "Log phu Hoat dong thang 03 nam 2013", "10 Nh﹏ s﹎ v筺 n╩")
	gf_AddItemEx2({2,95,204, 1}, "Thi猲 Cang L謓h", "Log phu Hoat dong thang 04 nam 2013", "1 Thi猲 Cang L謓h")
	gf_AddItemEx2({2,1,30344, 3}, "Th莕 T礽 B秓 Rng", "Log phu Hoat dong thang 04 nam 2013", "1 Th莕 T礽 B秓 Rng")
	Msg2Player("Ch骳 m鮪g i hi謕 nh薾 thng m鑓 1111 th祅h c玭g")
	gf_WriteLogEx("Hoat dong thang 04 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 1111")
 end
 
 function prize_max_event_1500_anlanhtho()
 	local nCheckMaxEvent1 = gf_GetTaskByte(2731, 2)
 	if gf_Judge_Room_Weight(5,100) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end
	if nCheckMaxEvent1 < 3 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  1500 v藅 ph萴 蕁 L穘h Th�!!!!")
		return 0
	end
	if nCheckMaxEvent1 > 3 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0
	end
	--SetTask(2731,2)
	gf_SetTaskByte(2731, 2, 4)
	gf_AddItemEx2({2,1,30344, 3}, "Th莕 T礽 B秓 Rng", "Log phu Hoat dong thang 04 nam 2013", "Th莕 T礽 B秓 Rng")
	AwardGenuineQi(39000)
	Msg2Player("Ch骳 m鮪g i hi謕 nh薾 thng m鑓 1500 th祅h c玭g")
	gf_WriteLogEx("Hoat dong thang 04 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 1500")
 end
 

 function prize_max_event_10000_choose()
 	local nCheckMaxEvent2 = gf_GetTaskByte(2731, 1)
 	if gf_Judge_Room_Weight(12,100) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end
	if nCheckMaxEvent2 < 5 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  10000 v藅 ph萴 Kh╪ сng v� 10000 v藅 ph萴 Phi Phong N� Tng!!!!")
		return 0
	end
	if nCheckMaxEvent2 > 5 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0
	end
	
	--SetTask(2731,4)
	gf_SetTaskByte(2731, 1, 6)
	
	local nKinhNghiem = 390000000
	ModifyExp(nKinhNghiem)
	gf_AddItemEx2({2,1,30427, 10}, "Cng h鉧 quy觧 15", "Log phu Hoat dong thang 03 nam 2013", "10 Cng h鉧 quy觧 15", 30 * 24 * 3600)
	gf_AddItemEx2({2,1,30071, 10}, "10 Nh﹏ s﹎ v筺 n╩", "Log phu Hoat dong thang 03 nam 2013", "10 Nh﹏ s﹎ v筺 n╩")
	Msg2Player("Ch骳 m鮪g i hi謕 nh薾 thng m鑓 10000 th祅h c玭g")
	gf_WriteLogEx("Hoat dong thang 03 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 10000")
 end
 function prize_max_event_lixi_choose()
 	local nCheckMaxLixi = gf_GetTaskByte(2731, 2)
 	if gf_Judge_Room_Weight(5,100) ~= 1 then
 		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.");
 		return 0
 	end
	if nCheckMaxLixi < 1 then
		Talk(1,"","Чi hi謕 ch璦 s� d鬾g  6800 v藅 ph萴 L� x� n╩ m韎!!!!")
		return 0
	end
	if nCheckMaxLixi > 1 then
		Talk(1,"","Чi hi謕  nh薾 ph莕 thng n祔 r錳 !!!!")
		return 0
	end
	if GetItemCount(2,1,539,8) < 8 then
		Talk(1,"","Чi hi謕 kh玭g c�  8 bao Ho祅g Kim Чi H錸g Bao (ch鴄 999 v祅g)i !!!!")
		return 0
	end
	gf_SetTaskByte(2731, 2, 2)
	DelItem(2,1,539,8)
	gf_WriteLogEx("Hoat dong thang 01 nam 2013", "nh薾 thng th祅h c玭g", 1, "Nh薾 m鑓 event 6800 l� x�")
	gf_AddItemEx2({0,102,8844, 1,1,-1,-1,-1,-1,-1,-1,-1,0}, "Huy Ho祅g Qu藅 Kh雐", "Log phu Hoat dong thang 01 nam 2013", "Huy Ho祅g Qu藅 Kh雐")
	gf_AddItemEx2({0,102,8845, 1,1,-1,-1,-1,-1,-1,-1,-1,0}, "Vinh D� Qu藅 Kh雐", "Log phu Hoat dong thang 01 nam 2013", "Vinh D� Qu藅 Kh雐")
	local nKinhNghiem = 666666666
	ModifyExp(nKinhNghiem)
 end
 function buy_NoelTree(nType)
 	do return 0 end
 	local tCheck = {{68, 0}, {0, 19}}
 	if GetItemCount(2,1,30230) < tCheck[nType][2] then
 		Talk(1,"","B筺 kh玭g  Xu  mua c﹜ th玭g !!!!")
		return 0
 	end
 	if GetCash() < tCheck[nType][1] * 10000 then
 		Talk(1,"","B筺 kh玭g  V祅g  mua c﹜ th玭g !!!!")
		return 0
 	end
 	if nType == 1 then
 		Pay(680000)
 		AddItem(2,1,30471,1)
 	elseif nType == 2 then
 		DelItem(2,1,30230,19)
 		AddItem(2,1,30471,1)
 	else
  		Talk(1,"","B筺 kh玭g  甶襲 ki謓  mua c﹜ th玭g !!!!")
		return 0	
 	end
 end
 
 
function EventThang8_HoTro1()
	if gf_Judge_Room_Weight(2,1) ~= 1 then
		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.")
        	return 0
	end
	if GetItemCount(2,1,30132) < 100 then
		Talk(1,"","C竎 h� kh玭g  100 v� l﹎ b秓 h筽.")
        	return 0
	end
	if GetCash() < 1000000 then
		Talk(1,"","C竎 h� kh玭g c�  100 v祅g.")
        	return 0
	end
	if DelItem(2,1,30132,100) == 1 and Pay(1000000) == 1 then
		gf_AddItemEx2({2,1,30563,1000}, "Gi蕐 Tr緉g", "Hoat dong thang 08 nam 2013", "nh薾 m� r閚g event b籲g v祅g + VLBH")
	end
 end
 function EventThang8_HoTro2()
 	if gf_Judge_Room_Weight(2,1) ~= 1 then
		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.")
        	return 0
	end
	if GetItemCount(2,1,30230) < 39 then
		Talk(1,"","C竎 h� kh玭g  39 xu v藅 ph萴.")
        	return 0
	end
	if DelItem(2,1,30230,39) == 1 then
		gf_AddItemEx2({2,1,30563,1000}, "Gi蕐 Tr緉g", "Hoat dong thang 08 nam 2013", "nh薾 m� r閚g event b籲g xu")
		WriteLogEx("LOG XU VAT PHAM","M� r閚g event th竛g 8/2013 b籲g 39 xu")	
	end	
 end
 
 
 function EventT10_Max4000_Menu(nPos2, nPos1)
 	if VNG_GetTaskPos(2731,nPos1,nPos2) ~= 0 then
 		Talk(1,"","C竎 h�  nh薾 ph莕 thng n祔 r錳.")
 		return 0
 	end
 	if gf_Judge_Room_Weight(1,100) ~= 1 then
		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.")
        	return 0
	end
	local tbSay = {}
	tinsert(tbSay, "Nh薾 chuy觧 sinh n/#EventT10_Max4000_Done(1,"..nPos2..",".. nPos1..")")
	tinsert(tbSay, "Nh薾 600.000.000 甶觤 kinh nghi謒/#EventT10_Max4000_Done(2,"..nPos2..",".. nPos1..")")
	tinsert(tbSay, "Ta mu鑞 suy ngh� th猰/gf_DoNothing")
	Say("C竎 h� h穣 ch鋘 ph莕 thng m譶h th輈h.", getn(tbSay), tbSay)
 end
 
 
 function EventT10_Max4000_Done(nOpt,nPos2,nPos1)
 	local tbAward = {
		[1] = {item={{gdp={2,1,30345,1}, name="Chuy觧 Sinh Кn", nExpired = 60*24*3600}}},
		[2] = {nCheck = 0, nExp = 600000000},
 	}
 	if VNG_GetTaskPos(2731,nPos2,nPos1) ~= 0 then
 		Talk(1,"","C竎 h�  nh薾 ph莕 thng n祔 r錳.")
 		return 0
 	end
 	if gf_Judge_Room_Weight(1,100) ~= 1 then
		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.")
        	return 0
	end
	VNG_SetTaskPos(2731,1,nPos1,nPos2)
	LIB_Award.szLogTitle = "EVENT THANG 10 MO RONG"
	LIB_Award.szLogAction = "nh薾"
	LIB_Award:Award(tbAward[nOpt])
	Talk(1,"","C竎 h�  nh薾 thng th祅h c玭g")
 end
 
 function get_award201403()
 	local nCheckExt = GetExtPoint(5)
 	if nCheckExt ~= 1 then
 		Talk(1, "", "B筺 kh玭g c� trong danh s竎h nh薾 thng ho芻  nh薾 thng r錳 !!!!")
 		return
 	end
 	if AddExtPoint(5,2) == 1 then
 		gf_WriteLogEx("NHAN LAI VAT PHAM EVENT 201403", "nh薾 v藅 ph萴", 1, "Nh薾 th祅h c玭g")
 	else
 		gf_WriteLogEx("NHAN LAI VAT PHAM EVENT 201403", "th蕋 b筰", 1, "Nh薾 th蕋 b筰")
 	end
 	if Vet_Activity_YaoYang_Rand() == 1 then
 		gf_WriteLogEx("NHAN LAI VAT PHAM EVENT 201403 BK", "nh薾 v藅 ph萴", 1, "Nh薾 th祅h c玭g")
 	else
 		gf_WriteLogEx("NHAN LAI VAT PHAM EVENT 201403 BK", "th蕋 b筰", 1, "Nh薾 th蕋 b筰")
 	end
 end
 function nguyenlieu_thang4(nType)
 	if gf_Judge_Room_Weight(2,100) ~= 1 then
		Talk(1,"","H祅h trang ho芻 s鴆 l鵦 kh玭g , vui l遪g s緋 x誴 l筰.")
        	return 0
	end
 	if GetCash() < 790000 then
 		Talk(1, "", "Чi hi謕 kh玭g  79 v祅g")
 		return
 	end
 	if Pay(790000) == 1 then
 		if nType == 1 then
 			gf_AddItemEx2({2,1,30638,1000}, "h� keo", "MUA NGUYEN LIEU THANG 4 bk", "mua h� keo")
 			gf_WriteLogEx("MUA NGUYEN LIEU THANG 4", "th祅h c玭g", 1, "mua h� keo")
 		elseif nType == 2 then
 			gf_AddItemEx2({2,1,30637,1000}, "gi蕐 ng� s綾", "MUA NGUYEN LIEU THANG 4 bk", "mua gi蕐 ng� s綾")
 			gf_WriteLogEx("MUA NGUYEN LIEU THANG 4", "th祅h c玭g", 1, "mua gi蕐 ng� s綾")
 		else
 			gf_WriteLogEx("MUA NGUYEN LIEU THANG 4", "th蕋 b筰", 1, "mua v藅 ph萴")
 		end
 	end
 	
 end
 