--自动加载NPC脚本，服务器启动时调用
Include("\\script\\online\\春节活动\\newyear_head.lua")
Include("\\script\\online\\qingrenyuanxiao\\qryx_head.lua")
Include("\\script\\online\\zgc_public_fun.lua")		--村长的公共函数
Include("\\script\\online\\viet_event\\longhu\\head.lua");
Include("\\script\\online\\viet_event\\200907\\eventopen.lua");--越南09年7月活动开关头文件
Include("\\script\\lib\\missionfunctions.lua");
Include("\\script\\online\\viet_event\\vng_task_control.lua");
Include("\\script\\online\\viet_event\\nationality\\head.lua");
Include("\\script\\class\\ktabfile.lua");--tab文件处理
Include("\\script\\system_switch_config.lua")
Include("\\script\\online\\liangshanboss\\lsb_head.lua")
Include("\\script\\online\\olympic\\oly_head.lua")
Include("\\script\\online\\qianhe_tower\\qht_head.lua")
Include("\\script\\function\\zq_battles\\zq_head.lua")
Include("\\script\\vng\\config\\newserver.lua");
Include("\\settings\\static_script\\exchg_server\\exchange_server_func.lua")
Include("\\script\\missions\\kuafu_battle\\kf_head.lua")
Include("\\script\\equip_feed\\equip_feed_npc.lua")
Include("\\script\\online\\tong_feast\\tf_head.lua")
Include("\\script\\vng\\config\\vng_feature.lua")
Include("\\script\\online\\spring2014\\sp_head.lua")
Include("\\settings\\static_script\\gem\\imp_npc_gem.lua")
Include("\\script\\misc\\observer\\observer_head.lua")

function main()
	AddRuaTayNpc();
	addnpc_yanmenbattle_signup();
	init_xc_ls_sq()

	AddNpcCd();     --成都任务ADD的NPC
	AddNpcXy();    --襄阳任务ADD的NPC
	AddNpcYz();     --扬州任务ADD的NPC
	AddNpcWeekEnd();     --周末活动ADD的NPC
	AddNpcXl();     --闭关修炼ADD的NPC
	Addxinan();     --西南地图NPC
	-------------------
	AddNpcQz();     --泉州新加NPC
	AddTl();        --天牢地图添加的NPC
	Addsh();        --商会添加的NPC
	AddNpcLoDe();
	Addtj();        --通缉任务添加的NPC
	Addtaohuadao();        --进出桃花岛添加的NPC
	Addcangjian();        --藏剑使者
	Addyangmen();        --天波杨府添加的NPC
	AddChristmas()		--圣诞节活动NPC（保留给以后外国节日用）
	AddCheFu();		 --采集地图车夫
--	AddDragonBoatDay()	--端午节
	Addjiehun()	        --结婚
	Addtianshi()	        --天师秘境npc
	AddXiBei()	        --西北区Npc

	AddTxNpc()			--太虚幻境NPC添加
	ZoneInit(1010)		--太虚幻境初始化地图Trap
	ZoneInit(2010)
	ZoneInit(3010)
	ZoneInit(4010)
	ZoneInit(5010)

	Addfengdutrap()    --丰都to鬼门回廊trap
	Addmenpaibuchong() --门派trap的补充,避免一些状态无法改变的情况
	AddXinshou()  ---新手指引的查询npc
	CreateGatherNpc()		-- 替身采集托管人
	Addmenpai();     --门派bossNPC
	AddNewBattle();		--新战场NPC
	ApplyRelayInitData()	--取Gameser初始化时需要的Relay信息
	zgc_auto_fun_main()		--村长的自动函数
	--AddSnowWarNpc()		--雪仗NPC
	AddKillerHall()	--杀手堂
	AddCaijiNpc()	--采集地图物品保管人,成都东门加物品保管人
	AddGongYe(); --公冶世家
	AddTongMission();	--帮会关卡
	AddGongChengNpc();	--攻城战相关NPC
	AddLiuTudi();--刘铁匠徒弟NPC
--	AddTyTuzi(); --天涯海角兔小丫
	add_biwudahui();	--比武大会
	add_faction_back_room();	--师门秘室
	add_weizhi_npc()
	AddFirstTongNpc()	--第一帮活动
	addLonghuNpc();		--越南精英帮会战 报名npc
	Add67EventNpcs();--09年7月活动NPC添加
	AddNpcYecao();
--	add_0908_npc();--09年8月活动NPC添加
	add_0908_tuoguan_plant_npc();--离线托管种树NPC添加
--	add_0909_npc();--09年9月中秋活动NPC添加
--	add_0911_npc();
	if tonumber(date("%y%m%d")) >= 101224 and tonumber(date("%y%m%d")) <= 110113 then
		add_0912_npc();--09年12月NPC添加
	end
	get_server_id() -- Set server ID
	Add_ip_npc() -- IP Bonus
	VBonus_NPC() -- Add NPC VBonus
	Add_bachtiensinh() -- B筩h Ti猲 Sinh
	AddTuLinhNpc() -- NPC T?Linh
	if tonumber(date("%y%m%d")) >= 100924 and tonumber(date("%y%m%d")) <= 101028 then
		AddHangNga()  -- NPC H籲g Nga 2010
	end
	if tonumber(date("%y%m%d")) >= 110519 and tonumber(date("%y%m%d")) <= 110602 then
		AddIdolNpc()  -- Th莕 Tng V?L﹎
	end
	
	if tonumber(date("%y%m%d")) <= 110102 then
		AddBirthdayNpc_2010()  -- S?Gi?H鋋t чng SN JX2
	end
--	Add_1002_npc() -- Hoa Жng T誸
	Init_newres() -- T礽 Nguy猲 Chi課
	--Init_golden_chest() -- Rng HKLB
	Init_pet_fighting() -- Pet vs pet
	Add_PetNpc() -- B綾 u L穙 Nh﹏
--	if GetGlbValue(GLB_TSK_SERVER_ID) == 58 then
		Add_HoangHuynh()  -- NPC dua top Hoang Ung
--	end
	Add_GoldenCard_Manager(); -- B竛 code HKLB ingame
	Add_XaPhu() -- Thuy襫 gia
	Add_Pet_TaiXu() -- NPC Th竔 H?B筺 уng H祅h
	if tonumber(date("%y%m%d")) >= 110121 and tonumber(date("%y%m%d")) <= 110220 then
		add_1101_tet_npc()  -- NPC C﹜ N猽 T誸 2011
	end	
	Add_TianMenZhen(); --天门阵报名npc
	Liangshan_Entrance();		--2011-2-23梁山传送NPC创建
     	Add_TuBaoThuongNhan()	
	DragonBoat_2011_npc()    --201109海上龙舟战
	--LoadNpcList();--加载npc_list.txt配置的NPC
	create_treasuer_chests();--宝箱商人
	new_task_npc_create();--新任务系统NPC添加
	Ambassador_Acitivity(); --活动大使NPC添加
	new_ttd_npc_create(); --通天顶NPC创建
	new_task_npc_create2();--关卡系列任务Npc
	LSB_Exec_CleanData();--启动服务器数据清理
	shenghuotai_npc_create(); --圣火台创建
	Activity_Npc_Add_201209();--9月活动NPC创建
	Qht_Activity_Event();--激战千寻塔
	Bkl_baoruong() --B筩h Kim L謓h b秓 rng
	if tonumber(date("%y%m%d")) >= 140124 and tonumber(date("%y%m%d")) <= 140203 then
		tuyetanh_baoruong() --Qu?Ng?T? B秓 Rng
		chieuda_baoruong()
		xichtho_baoruong()
	end
	npcVanMay() --Npc t輓h n╪g V薾 May Чo H鱱
	wujiang_task_npc_create();--武将任务npc创建
	meihuayingchun_npc_create();--梅花迎春npc创建
	zhenqi_battle_init();--真气战场初始化
	--kuafu_battle_init();--跨服战场接引人
	equip_feed_OnServerStart();--养成装备功能NPC
	Vip_NPC()
	dixuangong_join_npc(); --地玄宫接引人
	biwu_3v3_init(); --3v3
	tf_CreateChef(); --帮派盛宴
	wuwang_task_createnpc(); --武王任务npc创建
	sp_CreateDecorate();--2014春节活动
	--tong_melee_npc_create(); --帮会大使
	--kuafu_lingjiang_npc_create(); --跨服功能领奖人创建
	Plus123Pay();
	AddTYNpc();	--太一关卡npc
	AddLifeSkillNpc(); --添加生活技能NPC
	gem_OnServerStart()--添加宝石系统Npc
	_kf_create_npc_server_start()--跨服相关NPC创建
	Observer:onEvent(SYSEVENT_GAMESERVER_START, 0)
	AddHeiYiZhuangShi();
end;

function ApplyRelayInitData()
	GetBattleData(0,7)			-- 取战场信息
	ApplyCityWarData(0,0)			-- 取攻城战信息
	ApplyCityWarData(1,0)			-- 取攻城战信息
	ApplyBWRankInfo()
end

tbGAME_SIGNMAP = {806, 808} --记录各等级报名点的地图ID号 ，等级按低级向高级排布
function addnpc_yanmenbattle_signup()
	for i = 1, getn(tbGAME_SIGNMAP) do
		CreatBattleSignNpc(tbGAME_SIGNMAP[i])
	end
	local npcindex7 = CreateNpc("Xa phu Trung Nguy猲", "Xa phu phe T鑞g", 806, 1754,3040)
	SetNpcScript(npcindex7, "\\script\\global\\特殊用地\\宋辽报名点\\npc\\song_transport.lua")

	local npcindex8 = CreateNpc("Xa phu", "Xa phu phe Li猽", 806, 1639,3200)
	SetNpcScript(npcindex8, "\\script\\global\\特殊用地\\宋辽报名点\\npc\\jin_transport.lua")
end

function CreatBattleSignNpc( mapid )
	if( SubWorldID2Idx( mapid ) >= 0 ) then	--初级
		local npcindex1 = CreateNpc("V?binh th祅h m玭", "M?Binh Quan phe T鑞g", mapid, 1728, 3083)
		local npcindex2 = CreateNpc("Nam nh﹏ phng B綾3", "M?Binh Quan phe Li猽", mapid, 1652,3174)
		if mapid == 806 then
			SetNpcScript(npcindex1, "\\script\\newbattles\\song_primary_npc.lua")
			SetNpcScript(npcindex2, "\\script\\newbattles\\liao_primary_npc.lua")
		else
			SetNpcScript(npcindex1, "\\script\\battles\\battlejoin1.lua")
			SetNpcScript(npcindex2, "\\script\\battles\\battlejoin2.lua")
		end;

		local npcindex3 = CreateNpc("Quan s?trung ni猲1", "T鑞g Nhu quan", mapid, 1728,3065)
		SetNpcScript(npcindex3, "\\script\\global\\特殊用地\\宋辽报名点\\npc\\song_shop.lua")

		local npcindex4 = CreateNpc("Nam nh﹏ phng B綾2", "Li猽 Nhu quan", mapid, 1634,3175)
		SetNpcScript(npcindex4, "\\script\\global\\特殊用地\\宋辽报名点\\npc\\jin_shop.lua")
		------------------

		local npcindex7 = CreateNpc("Xa phu Trung Nguy猲", "Xa phu phe T鑞g", mapid, 1754,3040)
		SetNpcScript(npcindex7, "\\script\\global\\特殊用地\\宋辽报名点\\npc\\song_transport.lua")

		local npcindex8 = CreateNpc("Xa phu", "Xa phu phe Li猽", mapid, 1639,3200)
		SetNpcScript(npcindex8, "\\script\\global\\特殊用地\\宋辽报名点\\npc\\jin_transport.lua")

	end
end

function AddNpcCd()
    local npcIndexGbdz = CreateNpc("C竔 Bang m玭 nh﹏", "е t?C竔 Bang", 209,1701,3111);
    SetNpcScript(npcIndexGbdz, "\\script\\中原一区\\丐帮\\npc\\丐帮弟子.lua");
end;

function AddNpcXy()
    local npcIndexDyx_1 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1382, 3186);
    local npcIndexDyx_2 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1299, 3193);
    local npcIndexDyx_3 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1358, 3016);
    local npcIndexDyx_4 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1426, 2916);

    local npcIndexDyx_5 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1143, 2931);
    local npcIndexDyx_6 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1219, 2910);
    local npcIndexDyx_7 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1271, 2974);
    local npcIndexDyx_8 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1222, 2985);
    local npcIndexDyx_9 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1116, 3020);
    local npcIndexDyx_10 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1269, 3092);
    local npcIndexDyx_11 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1236, 3147);
    local npcIndexDyx_12 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1356, 3149);
    local npcIndexDyx_13 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1352, 3087);
    local npcIndexDyx_14 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1307, 3079);
    local npcIndexDyx_15 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1404, 2968);
    local npcIndexDyx_16 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1326, 2949);
    local npcIndexDyx_17 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1386, 2926);
    local npcIndexDyx_18 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1428, 2966);
    local npcIndexDyx_19 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1501, 2915);
    local npcIndexDyx_20 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1525, 2935);
    local npcIndexDyx_21 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1573, 2979);
    local npcIndexDyx_22 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1552, 3028);
    local npcIndexDyx_23 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1539, 3110);
    local npcIndexDyx_24 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1571, 3166);
    local npcIndexDyx_25 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1540, 3198);
    local npcIndexDyx_26 = CreateNpc("Rng c?th?m?, "Rng c dc", 309, 1501, 3174);
	local npcIndexJwyh = CreateNpc("Ng﹏ H?, "Ng﹏ H?, 324, 1822, 3005);
	SetNpcScript(npcIndexJwyh, "\\script\\中原二区\\七星洞一层\\npc\\九尾银狐.lua");

	local npcIndexYlby = CreateNpc("u l躰h S琻 t芻", "u l躰h S琻 t芻", 322, 1491, 3323);
    SetNpcScript(npcIndexYlby, "\\script\\中原二区\\龙虎洞一层\\npc\\伏牛山大王.lua");
	local npcIndexZh1 = CreateNpc("Ph竝 S?T﹜ H?, "Ph竝 S?T﹜ H?, 311, 1352, 3117);
    SetNpcScript(npcIndexZh1, "\\script\\中原二区\\伏牛山\\npc\\西夏咒师.lua");

	local npcIndexZh2 = CreateNpc("Ph竝 S?T﹜ H?, "Ph竝 S?T﹜ H?, 311, 1439, 3144);
    SetNpcScript(npcIndexZh2, "\\script\\中原二区\\伏牛山\\npc\\西夏咒师.lua");

	local npcIndexZh3 = CreateNpc("Ph竝 S?T﹜ H?, "Ph竝 S?T﹜ H?, 311, 1442, 3033);
    SetNpcScript(npcIndexZh3, "\\script\\中原二区\\伏牛山\\npc\\西夏咒师.lua");
end;

function AddNpcYz()
    local npcIndexLs = CreateNpc("x竎 L玦 Th緉g", "Thi th?c馻 L玦 Th緉g", 111, 1849, 2887);
    SetNpcScript(npcIndexLs, "\\script\\江南区\\清溪洞\\npc\\雷胜的尸体.lua");

    local npcIndexLshw1 = CreateNpc("X竎 h?v?L玦 Th緉g", "Thi th?h?v?c馻 L玦 Th緉g", 111, 1854, 2887);
    local npcIndexLshw2 = CreateNpc("X竎 h?v?L玦 Th緉g", "Thi th?h?v?c馻 L玦 Th緉g", 111, 1847, 2889);
    local npcIndexLshw3 = CreateNpc("X竎 h?v?L玦 Th緉g", "Thi th?h?v?c馻 L玦 Th緉g", 111, 1851, 2877);

--    local npcIndexZbh = CreateNpc("Du Phng i phu", "Trng B?H竛", 150, 1711, 3115);
--    SetNpcScript(npcIndexZbh, "\\script\\江南区\\扬州\\npc\\张伯汉.lua");

    local npcIndexBg = CreateNpc("T骾 r竛h", "T骾 t莔 thng", 107, 1573, 2939);

    local npcIndexTn = CreateNpc("Hi謕 n?, "Л阯g Ninh", 107,1417,2946);
    SetNpcScript(npcIndexTn, "\\script\\江南区\\武夷山\\npc\\唐宁.lua");

--    local npcIndexLjy = CreateNpc("Du Phng Tng S?,"L?Ti課 D騨g",150,1767,3111);
--    SetNpcScript(npcIndexLjy, "\\script\\江南区\\扬州\\npc\\李进勇.lua");

--    local npcIndexLxq = CreateNpc("V﹏ Du Чo Nh﹏","L璾 Huy襫 Thanh",150,1579,3110);
--    SetNpcScript(npcIndexLxq, "\\script\\江南区\\扬州\\npc\\刘玄清.lua");

 --   local npcIndexQr = CreateNpc("B?ch?, "Thu Dung", 150,1678,3028);
 --   SetNpcScript(npcIndexQr, "\\script\\江南区\\扬州\\npc\\秋蓉.lua");

    local npcIndexHql = CreateNpc("Thng C?H醓 K?L﹏", "Thng C?H醓 K?L﹏", 113, 1669, 3225);
    SetNpcScript(npcIndexHql, "\\script\\江南区\\两水洞二层\\npc\\火麒麟.lua");

    local npcIndexThj = CreateNpc("x竎 L玦 Th緉g", "Thi th?Th竔 H錸g Tuy謙", 113, 1668, 3230);
    local npcIndexJt01 = CreateNpc("X竎 h?v?L玦 Th緉g", "Thi th?Xi H醓 gi竜 ", 113, 1669, 3231);
    local npcIndexJt02 = CreateNpc("X竎 h?v?L玦 Th緉g", "Thi th?Xi H醓 gi竜 ", 113, 1664, 3225);
    local npcIndexJt03 = CreateNpc("X竎 h?v?L玦 Th緉g", "Thi th?Xi H醓 gi竜 ", 113, 1670, 3224);
    local npcIndexJt04 = CreateNpc("X竎 h?v?L玦 Th緉g", "Thi th?Xi H醓 gi竜 ", 113, 1661, 3231);

 --   local npcIndexJw = CreateNpc("Thi誹 ni猲 nam1", "Tng Duy", 150, 1679, 3237);
 --   SetNpcScript(npcIndexJw, "\\script\\江南区\\扬州\\npc\\蒋维.lua");

    local npcIndexWyq = CreateNpc("T?Ho祅 Ch﹏", "Vi詎 Tinh", 108, 1585, 3195);
    SetNpcScript(npcIndexWyq, "\\script\\江南区\\泉州府北\\npc\\邬远晴.lua");

    local npcIndexYg = CreateNpc("Ng?Qu竔 u M鬰", "Ng?Qu竔 u M鬰", 103, 1673, 3431);
    SetNpcScript(npcIndexYg, "\\script\\江南区\\东海海滨一\\npc\\鱼怪头目.lua");
end;

function AddNpcWeekEnd()
    local npcIndexZzd = CreateNpc("T鑞g Tng Qu﹏", "Чi s?ho箃 ng cu鑙 tu莕", 200, 1380, 2872);
    SetNpcScript(npcIndexZzd, "\\script\\task\\WeekEnd\\甄子丹.lua");

    local npcXyZzd = CreateNpc("T鑞g Tng Qu﹏", "Чi s?ho箃 ng cu鑙 tu莕", 350, 1452, 2967);
    SetNpcScript(npcXyZzd, "\\script\\task\\WeekEnd\\甄子丹.lua");

    local npcXyBm1 = CreateNpc("V?binh th祅h m玭", "Ch?huy s?, 350, 1503, 3024);
    SetNpcScript(npcXyBm1, "\\script\\task\\WeekEnd\\兵马指挥使.lua");

    local npcYzZzd = CreateNpc("T鑞g Tng Qu﹏", "Чi s?ho箃 ng cu鑙 tu莕", 150, 1714, 3137);
    SetNpcScript(npcYzZzd, "\\script\\task\\WeekEnd\\甄子丹.lua");

   	local npcYzBm1 = CreateNpc("V?binh th祅h m玭", "Ch?huy s?, 150, 1682, 3161);
    SetNpcScript(npcYzBm1, "\\script\\task\\WeekEnd\\兵马指挥使.lua");

    local npcIndexBm = CreateNpc("V?binh th祅h m玭", "Ch?huy s?, 100, 1423, 2985);
    SetNpcScript(npcIndexBm, "\\script\\task\\WeekEnd\\兵马指挥使.lua");

    --倭寇地图的初始化NPC
    local npc1 = CreateNpc("V?binh th祅h m玭", "Tng l躰h ti襫 tuy課", 951, 1333, 2844);
    SetNpcScript(npc1, "\\script\\task\\WeekEnd\\man_killwk.lua");
    local npc2 = CreateNpc("V?binh th祅h m玭", "Tng l躰h ti襫 tuy課", 952, 1333, 2844);
    SetNpcScript(npc2, "\\script\\task\\WeekEnd\\man_killwk.lua");
	local npc3 = CreateNpc("V?binh th祅h m玭", "Tng l躰h ti襫 tuy課", 953, 1333, 2844);
    SetNpcScript(npc3, "\\script\\task\\WeekEnd\\man_killwk.lua");
	local npc4 = CreateNpc("V?binh th祅h m玭", "Tng l躰h ti襫 tuy課", 954, 1333, 2844);
    SetNpcScript(npc4, "\\script\\task\\WeekEnd\\man_killwk.lua");
	local npc5 = CreateNpc("V?binh th祅h m玭", "Tng l躰h ti襫 tuy課", 955, 1333, 2844);
    SetNpcScript(npc5, "\\script\\task\\WeekEnd\\man_killwk.lua");
	local npc6 = CreateNpc("V?binh th祅h m玭", "Tng l躰h ti襫 tuy課", 956, 1333, 2844);
    SetNpcScript(npc6, "\\script\\task\\WeekEnd\\man_killwk.lua");
	local npc7 = CreateNpc("V?binh th祅h m玭", "Tng l躰h ti襫 tuy課", 957, 1333, 2844);
    SetNpcScript(npc7, "\\script\\task\\WeekEnd\\man_killwk.lua");
	local npc8 = CreateNpc("V?binh th祅h m玭", "Tng l躰h ti襫 tuy課", 958, 1333, 2844);
    SetNpcScript(npc8, "\\script\\task\\WeekEnd\\man_killwk.lua");
 	local npc9 = CreateNpc("V?binh th祅h m玭", "Tng l躰h ti襫 tuy課", 959, 1333, 2844);
    SetNpcScript(npc9, "\\script\\task\\WeekEnd\\man_killwk.lua");
	local npc10 = CreateNpc("V?binh th祅h m玭", "Tng l躰h ti襫 tuy課", 960, 1333, 2844);
    SetNpcScript(npc10, "\\script\\task\\WeekEnd\\man_killwk.lua");

	local liguan1 = CreateNpc("T?Thanh Thng Nh﹏", "L?quan", 100, 1512, 2990);
	SetNpcScript(liguan1, "\\script\\中原一区\\汴京\\npc\\大内总管.lua");

	local liguan2 = CreateNpc("T?Thanh Thng Nh﹏", "L?quan", 300, 1787, 3497);
	SetNpcScript(liguan2, "\\script\\中原一区\\汴京\\npc\\大内总管.lua")
    --AddWk(15, 10);
end;

function AddNpcXl()
    local npcIndexSl = CreateNpc("Thi誹 L﹎ T╪g Nh﹏","Qu?秈 h?t鑞g nh﹏",814,1626,3149);  --修炼地图的少林传送人
    SetNpcScript(npcIndexSl, "\\script\\task\\practice\\出关传送人.lua");

    local npcIndexWd = CreateNpc("V?ng  m玭 nh﹏","Qu?秈 h?t鑞g nh﹏",812,1622,3093);  --修炼地图的武当传送人
    SetNpcScript(npcIndexWd, "\\script\\task\\practice\\出关传送人.lua");

    local npcIndexEm = CreateNpc("Nga My m玭 nh﹏","Qu?秈 h?t鑞g nh﹏",816,1626,3149);  --修炼地图的峨嵋传送人
    SetNpcScript(npcIndexEm, "\\script\\task\\practice\\出关传送人.lua");

    local npcIndexGb = CreateNpc("C竔 Bang m玭 nh﹏","Qu?秈 h?t鑞g nh﹏",815,1373,3118);  --修炼地图的丐帮传送人
    SetNpcScript(npcIndexGb, "\\script\\task\\practice\\出关传送人.lua");

    local npcIndexTm = CreateNpc("Л阯g M玭 T﹏ m玭 nh﹏","Qu?秈 h?t鑞g nh﹏",813,1677,2983);  --修炼地图的唐门传送人
    SetNpcScript(npcIndexTm, "\\script\\task\\practice\\出关传送人.lua");

		local npcIndexYm = CreateNpc("V?binh th祅h m玭", "Qu?秈 h?t鑞g nh﹏", 817,1457,2972);	--修炼地图的杨门传送人
    SetNpcScript(npcIndexYm, "\\script\\task\\practice\\出关传送人.lua");

    local npcIndexWp = CreateNpc("Ng?чc h?ph竝", "Qu?秈 h?t鑞g nh﹏", 422,1628,3508);	--修炼地图五毒传送人
    SetNpcScript(npcIndexWp, "\\script\\task\\practice\\出关传送人.lua");

end;

function AddNpcQz()
    local npcIndexLfs = CreateNpc("Thi誹 ni猲 trong th玭", "L?Phong Thu", 100, 1607, 2970);
    SetNpcScript(npcIndexLfs, "\\script\\中原二区\\成都\\npc\\收耕学习.lua");

    local npcIndexLys = CreateNpc("Du Phng i phu", "L﹎ Dc S?, 100, 1558, 2958);
    SetNpcScript(npcIndexLys, "\\script\\中原一区\\汴京\\npc\\采药学习.lua");
end;
function AddXsTg()
    local npcIndexCd = CreateNpc("B竛 s竎h", "S?gi?, 300, 1638, 3575);
    SetNpcScript(npcIndexCd, "\\script\\中原二区\\成都\\npc\\新手推广员.lua");

    local npcIndexQz = CreateNpc("B竛 s竎h", "S?gi?, 100, 1451, 2821);
    SetNpcScript(npcIndexQz, "\\script\\江南区\\泉州\\npc\\新手推广员.lua");

    local npcIndexBj = CreateNpc("B竛 s竎h", "S?gi?, 200, 1159, 2839);
    SetNpcScript(npcIndexBj, "\\script\\中原一区\\汴京\\npc\\新手推广员.lua");

end;
function AddTl()
    local npcIndex = CreateNpc("Nha d辌h", " Ng鬰 t鑤", 701, 1376, 3143);
    SetNpcScript(npcIndex, "\\script\\task\\prison\\jailer_npc.lua");
 	npcIndex = CreateNpc("Nha d辌h", "B?kho竔", 200, 1397, 2653);
    SetNpcScript(npcIndex, "\\script\\task\\prison\\gaoler_npc.lua");
end;

function AddWk(nDistanceX, nDistanceY)
    rect_table = {
        {1294, 2854, 1501, 3119},
        {1294, 3119, 1482, 3169},
        {1508, 2973, 1534, 3034},
        {1534, 2842, 1578, 2894},
        {1554, 2901, 1580, 2908},
        {1519, 2913, 1538, 2926}
    };
    local sp = {   --每地图的开始坐标，地图ID，NPC模板名字
        {1294, 2854, 907, "Oa Kh蕌"},
        {1294, 2854, 908, "Oa Kh蕌 Binh s?},
        {1294, 2854, 909, "Oa Kh蕌 Th駓 Binh"},
        {1294, 2854, 910, "Oa Kh蕌 L鬰 Binh"},
        {1294, 2854, 911, "Oa Kh蕌 V?S?}
    };
    for index, v in sp do
        local nCount = getn(rect_table);
        for i = 1, nCount do
            for nX = rect_table[i][1], rect_table[i][3], nDistanceX do
                for nY = rect_table[i][2], rect_table[i][4], nDistanceY do
                    CreateNpc(v[4], v[4], v[3], nX, nY);
                end;
            end;
        end;
    end;

end;
function Addsh()
    local npcIndexshxjqz = CreateNpc("G竛h h祅g", "H祅h Cc Thng Nh﹏", 100, 1462, 2922);
    SetNpcScript(npcIndexshxjqz, "\\script\\中原一区\\汴京\\npc\\行脚商人.lua");

    local npcIndexshxjyz = CreateNpc("G竛h h祅g", "H祅h Cc Thng Nh﹏", 150, 1698, 3203);
    SetNpcScript(npcIndexshxjyz, "\\script\\中原一区\\汴京\\npc\\行脚商人.lua");

    local npcIndexshxy = CreateNpc("Ch?c莔  Trung Nguy猲", "Ch?thng h閕", 350, 1456, 2925);
    SetNpcScript(npcIndexshxy, "\\script\\中原一区\\汴京\\npc\\商会老板.lua");

    local npcIndexshyz = CreateNpc("Ch?c莔  Trung Nguy猲", "Ch?thng h閕", 150, 1636, 3139);
    SetNpcScript(npcIndexshyz, "\\script\\中原一区\\汴京\\npc\\商会老板.lua");

    local npcIndexsmsr = CreateNpc("L穙 ph?h?, "Thng Nh﹏ th莕 b?, 200, 1488, 2826);
    SetNpcScript(npcIndexsmsr, "\\script\\中原一区\\汴京\\npc\\神秘商人.lua");
end;

function Addtj()
    local npcIndextjqz = CreateNpc("Nha d辌h", "B?u", 100, 1518, 2988);
    SetNpcScript(npcIndextjqz, "\\script\\中原二区\\成都\\npc\\捕头.lua");

    local npcIndextjyz = CreateNpc("Nha d辌h", "B?u", 150, 1739, 3158);
    SetNpcScript(npcIndextjyz, "\\script\\中原二区\\成都\\npc\\捕头.lua");

    local npcIndextjxy = CreateNpc("Nha d辌h", "B?u", 350, 1507, 2997);
    SetNpcScript(npcIndextjxy, "\\script\\中原二区\\成都\\npc\\捕头.lua");

    local npcIndextjztx = CreateNpc("C?gi?, "Tr竎 Thi猲 H祅h", 350, 1427, 3024);
    SetNpcScript(npcIndextjztx, "\\script\\中原二区\\襄阳\\npc\\卓天行.lua");
end;

function Addtaohuadao()
    local npcIndextaohuadao1 = CreateNpc("Xa phu Trung Nguy猲", "Thuy襫 phu H秈 T﹏", 104,1568,2975);
    SetNpcScript(npcIndextaohuadao1, "\\script\\江南区\\东海海滨二\\npc\\东海海滨2船夫.lua");

    local npcIndextaohuadao2 = CreateNpc("Xa phu Trung Nguy猲", "Thuy襫 Phu Уo Hoa o", 102,1459,3163);
    SetNpcScript(npcIndextaohuadao2, "\\script\\江南区\\桃花岛\\npc\\桃花岛船夫.lua");
end;


function Addcangjian()
    local npcIndexcangjian1 = CreateNpc("Vng An Th筩h", "S?gi?T祅g Ki誱", 300,1776,3703);
    SetNpcScript(npcIndexcangjian1, "\\script\\藏剑山庄\\task_script\\成都\\藏剑使者.lua");

    local npcIndexcangjian2 = CreateNpc("Vng An Th筩h", "S?gi?T祅g Ki誱", 200,1229,2762);
    SetNpcScript(npcIndexcangjian2, "\\script\\藏剑山庄\\task_script\\汴京\\藏剑使者.lua");

    local npcIndexcangjian3 = CreateNpc("Vng An Th筩h", "S?gi?T祅g Ki誱", 100,1510,3106);
    SetNpcScript(npcIndexcangjian3, "\\script\\藏剑山庄\\task_script\\泉州\\藏剑使者.lua");

    local npcIndexcangjian4 = CreateNpc("Vng An Th筩h", "S?gi?T祅g Ki誱", 350,1395,2851);
    SetNpcScript(npcIndexcangjian4, "\\script\\藏剑山庄\\task_script\\襄阳\\藏剑使者.lua");

    local npcIndexcangjian5 = CreateNpc("Vng An Th筩h", "S?gi?T祅g Ki誱", 150,1745,3119);
    SetNpcScript(npcIndexcangjian5, "\\script\\藏剑山庄\\task_script\\扬州\\藏剑使者.lua");

end;


function Addyangmen()
    local npcIndexyangmen1 = CreateNpc("Dng Di猲 Chi猽", "Dng Di猲 Chi猽", 219,1543,2939);
    SetNpcScript(npcIndexyangmen1, "\\script\\中原一区\\天波杨府\\npc\\杨延昭.lua");

    local npcIndexyangmen2 = CreateNpc("Dng B礽 Phong", "Dng B礽 Phong", 219,1454,3107);
    SetNpcScript(npcIndexyangmen2, "\\script\\中原一区\\天波杨府\\npc\\杨排风.lua");

    local npcIndexyangmen3 = CreateNpc("Dng T玭 B秓", "Dng T玭 B秓", 219,1559,3084);
    SetNpcScript(npcIndexyangmen3, "\\script\\中原一区\\天波杨府\\npc\\杨宗保.lua");

    local npcIndexyangmen4 = CreateNpc("M閏 Qu?Anh", "M閏 Qu?Anh", 219,1481,3184);
    SetNpcScript(npcIndexyangmen4, "\\script\\中原一区\\天波杨府\\npc\\穆桂英.lua");

    local npcIndexyangmen5 = CreateNpc("Qu秐 gia", "Dng H錸g", 219,1634,3278);
    SetNpcScript(npcIndexyangmen5, "\\script\\中原一区\\天波杨府\\npc\\杨洪.lua");

    local npcIndexyangmen6 = CreateNpc("Xa Th竔 Qu﹏", "Xa Th竔 Qu﹏", 219,1529,3137);
    SetNpcScript(npcIndexyangmen6, "\\script\\中原一区\\天波杨府\\npc\\佘太君.lua");

    local npcIndexyangmen7 = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 219,1599,3140);
    SetNpcScript(npcIndexyangmen7, "\\script\\中原一区\\天波杨府\\npc\\中原储物柜.lua");

end;

function AddChristmas()
		local npcIndexWilson = CreateNpc("Truy襫 gi竜 s?,"Uy Nh?T鑞",100,1308,2930);	--泉州
		SetNpcScript(npcIndexWilson,"\\script\\online\\zgc_npc_dialog.lua");
		local npcIndexchurchman1 = CreateNpc("Truy襫 gi竜 s?,"Gi竜 s?,200,1333,2811);
		--SetNpcScript(npcIndexchurchman1,"\\script\\online\\zgc_npc_dialog.lua");
		--SetNpcScript(npcIndexchurchman1,"\\script\\online_activites\\2011_11\\activity_02\\missionaries_npc.lua")
		SetNpcScript(npcIndexchurchman1, "\\script\\中原一区\\汴京\\npc\\西洋传教士.lua");
		local npcIndexchurchman2 = CreateNpc("Truy襫 gi竜 s?,"Gi竜 s?,300,1707,3546);
		SetNpcScript(npcIndexchurchman2, "\\script\\中原一区\\汴京\\npc\\西洋传教士.lua");
		local npcIndexRosa = CreateNpc("Phu nh﹏ T﹜ Dng","La Sa",100,1526,2948);
		--SetNpcScript(npcIndexRosa,"\\script\\online\\viet_event\\binhchon_sangtac\\head.lua");
		--SetNpcScript(npcIndexRosa,"\\script\\online_activites\\2011_12\\qingrenjie\\sale_chocolate.lua");
		--SetNpcScript(npcIndexRosa,"\\script\\online_activites\\201202\\zengsongpifeng\\send_pifeng.lua");
		--SetNpcScript(npcIndexRosa,"\\script\\vng\\lasa\\la_sa.lua");
		--SetNpcScript(npcIndexRosa,"\\script\\online\\viet_event\\DuaTopBangHoiLienServer\\DuaTop.lua");
		SetNpcScript(npcIndexRosa,"\\script\\江南区\\泉州\\npc\\罗莎.lua");
end

function Addxinan()
    local npcIndexxinan1 = CreateNpc("Xi H醓 Чi h?ph竝", "Xi H醓 Чi h?ph竝", 417,1642,3382);
    SetNpcScript(npcIndexxinan1, "\\script\\西南区\\白水洞二层\\npc\\蚩火大护法.lua");

    local npcIndexxinan2 = CreateNpc("D?Xoa Nha", "D?Xoa", 417,1815,3412);
    SetNpcScript(npcIndexxinan2, "\\script\\西南区\\白水洞二层\\npc\\夜叉.lua");

    local npcIndexxinan3 = CreateNpc("T╪g 竎", "Xi H醓 竎 t╪g", 416,1724,2821);
    SetNpcScript(npcIndexxinan3, "\\script\\西南区\\白水洞一层\\npc\\蚩火僧恶.lua");

    local npcIndexxinan4 = CreateNpc("Quan s?trung ni猲1", "Cao Th╪g Tuy襫", 400,1537,3050);
    SetNpcScript(npcIndexxinan4, "\\script\\西南区\\大理府\\npc\\高升泉.lua");

    local npcIndexxinan5 = CreateNpc("B?ch?, "Tr辬h Qu竛 Chi", 400,1593,2928);
    SetNpcScript(npcIndexxinan5, "\\script\\西南区\\大理府\\npc\\郑贯之.lua");

    local npcIndexxinan6 = CreateNpc("C?gi?, "фng Gi?La", 400,1522,2848);
    SetNpcScript(npcIndexxinan6, "\\script\\西南区\\大理府\\npc\\董迦罗.lua");

    local npcIndexxinan7 = CreateNpc("Qu秐 gia", "Tr莕 L藀 H祅h", 400,1470,2847);
    SetNpcScript(npcIndexxinan7, "\\script\\西南区\\大理府\\npc\\陈立衡.lua");

    local npcIndexxinan8 = CreateNpc("Thi誹 ni猲 nam1", "L璾 觧", 400,1443,3018);
    SetNpcScript(npcIndexxinan8, "\\script\\西南区\\大理府\\npc\\刘典.lua");

    local npcIndexxinan9 = CreateNpc("Ng鬰 H醓 Cu錸g Nh﹏", "Ng鬰 H醓 Cu錸g Nh﹏", 401,1568,3085);
    SetNpcScript(npcIndexxinan9, "\\script\\西南区\\点苍山\\npc\\狱火狂人.lua");

    local npcIndexxinan10 = CreateNpc("Xi H醓 T鎛g n ch?, "Xi H醓 T鎛g n ch?, 413,1697,3192);
    SetNpcScript(npcIndexxinan10, "\\script\\西南区\\龙眼洞二层\\npc\\蚩火教总坛主.lua");

    local npcIndexxinan11 = CreateNpc("A Tu La", "A Tu La", 413,1701,3474);
    SetNpcScript(npcIndexxinan11, "\\script\\西南区\\龙眼洞二层\\npc\\阿修罗.lua");

    local npcIndexxinan12 = CreateNpc("Xi H醓 Чi trng l穙", "Xi H醓 Чi trng l穙", 412,1553,2976);
    SetNpcScript(npcIndexxinan12, "\\script\\西南区\\龙眼洞一层\\npc\\蚩火大长老.lua");

    local npcIndexxinan13 = CreateNpc("Mi猽 L躰h D騨g S?, "Mi猽 L躰h D騨g S?, 408,1321,3004);
    SetNpcScript(npcIndexxinan13, "\\script\\西南区\\苗岭\\npc\\苗岭勇士.lua");

    local npcIndexxinan14 = CreateNpc("Nam nh﹏ T﹜ Nam", "T閏 trng Mi猽 L躰h", 408,1300,3140);
    SetNpcScript(npcIndexxinan14, "\\script\\西南区\\苗岭\\npc\\苗岭族长.lua");

    local npcIndexxinan15 = CreateNpc("чi trng h?v?, "чi trng h?v?, 409,1820,3518);
    SetNpcScript(npcIndexxinan15, "\\script\\西南区\\千寻塔一层\\npc\\护卫队长.lua");

    local npcIndexxinan16 = CreateNpc("Ki襫 Чt B?, "Ki襫 Чt B?, 409,1849,3598);
    SetNpcScript(npcIndexxinan16, "\\script\\西南区\\千寻塔一层\\npc\\乾达婆.lua");

    local npcIndexxinan17 = CreateNpc("Thi猲 T莔 N筽 S?, "Thi猲 T莔 N筽 S?, 410,1694,3134);
    SetNpcScript(npcIndexxinan17, "\\script\\西南区\\千寻塔二层\\npc\\千寻衲师.lua");

    local npcIndexxinan18 = CreateNpc("Kh萵 Na La", "Kh萵 Na La", 410,1693,3183);
    SetNpcScript(npcIndexxinan18, "\\script\\西南区\\千寻塔二层\\npc\\紧那罗.lua");

    local npcIndexxinan19 = CreateNpc("Ng?чc  C?, "Ng?чc  C?, 419,1774,3129);
    SetNpcScript(npcIndexxinan19, "\\script\\西南区\\入门迷宫二\\npc\\驭毒阴姬.lua");

    local npcIndexxinan20 = CreateNpc("H?C鑤 чc Nh﹏", "H?C鑤 чc Nh﹏", 418,1512,2825);
    SetNpcScript(npcIndexxinan20, "\\script\\西南区\\入门迷宫一\\npc\\腐骨毒人.lua");

    local npcIndexxinan21 = CreateNpc("Ng鬰 H醓 Nh﹏", "Ng鬰 H醓 Nh﹏", 406,1404,2770);
    SetNpcScript(npcIndexxinan21, "\\script\\西南区\\武陵山\\npc\\狱火人.lua");

    local npcIndexxinan22 = CreateNpc("B竛 謕 Nh﹏", "B竛 謕 Nh﹏", 405,1555,2959);
    SetNpcScript(npcIndexxinan22, "\\script\\西南区\\武陵山脚\\npc\\半蝶人.lua");

    local npcIndexxinan23 = CreateNpc("Ma H?La Gi?, "Ma H?La Gi?, 402,1319,2955);
    SetNpcScript(npcIndexxinan23, "\\script\\西南区\\西双版纳北部\\npc\\摩呼罗迦.lua");

    local npcIndexxinan24 = CreateNpc("Nh?Ho祅g T鯻Чi L?, "Nh?ho祅g t?祅 T?Thu薾", 403,1458,2842);
    SetNpcScript(npcIndexxinan24, "\\script\\西南区\\西双版纳南部\\npc\\大理二皇子.lua");

    local npcIndexxinan25 = CreateNpc("祅 Th鮝 ", "祅 Th鮝 ", 403,1537,2967);
    SetNpcScript(npcIndexxinan25, "\\script\\西南区\\西双版纳南部\\npc\\段承恩.lua");

    local npcIndexxinan26 = CreateNpc("Mi猽 L躰h Th?l躰h", "Mi猽 L躰h Th?l躰h", 421,1576,3469);
    SetNpcScript(npcIndexxinan26, "\\script\\西南区\\燕子洞二层\\npc\\苗岭首领.lua");

    local npcIndexxinan27 = CreateNpc("Ng?чc T﹏ Chng M玭", "B筩h Doanh Doanh", 407,1615,3182);
    SetNpcScript(npcIndexxinan27, "\\script\\西南区\\五毒教\\npc\\白莹莹.lua");

    local npcIndexxinan28 = CreateNpc("Xi H醓 Y猽 N?, "Xi H醓 Y猽 N?, 404,1346,3144);
    SetNpcScript(npcIndexxinan28, "\\script\\西南区\\翠烟\\npc\\蚩火妖妇.lua");

    local npcIndexxinan29 = CreateNpc("T﹜ Nam Mi猽 Nh﹏", "C﹗ S竎h", 407,1572,3159);
    SetNpcScript(npcIndexxinan29, "\\script\\西南区\\五毒教\\npc\\勾册.lua");

    local npcIndexxinan30 = CreateNpc("Nam nh﹏ T﹜ Nam", "Phng Vi猲", 407,1549,3184);
    SetNpcScript(npcIndexxinan30, "\\script\\西南区\\五毒教\\npc\\方猿.lua");

    local npcIndexxinan31 = CreateNpc("Ng?чc gi竜 ch?, "V璾 Dung", 407,1643,3233);
    SetNpcScript(npcIndexxinan31, "\\script\\西南区\\五毒教\\npc\\尤榕.lua");

    local npcIndexxinan32 = CreateNpc("Ng?чc gi竜 ", "T﹜ у", 407,1606,3279);
    SetNpcScript(npcIndexxinan32, "\\script\\西南区\\五毒教\\npc\\西图.lua");

    local npcIndexxinan33 = CreateNpc("Ch?ti謒 v秈 T﹜ Nam", "Li評 T﹏ Tr骳", 407,1606,3220);
    SetNpcScript(npcIndexxinan33, "\\script\\西南区\\五毒教\\npc\\柳新竹.lua");

    local npcIndexxinan34 = CreateNpc("Ng?чc Ph?gi竜 ch?, "Ng?Ng玭", 407,1594,3171);
    SetNpcScript(npcIndexxinan34, "\\script\\西南区\\五毒教\\npc\\吴言.lua");

    local npcIndexxinan35 = CreateNpc("Ng?чc Ph?gi竜 ch?, "H飊g L藀", 407,1551,3265);
    SetNpcScript(npcIndexxinan35, "\\script\\西南区\\五毒教\\npc\\熊立.lua");

    local npcIndexxinan36 = CreateNpc("Ng?чc gi竜 ", "Th竔 Quang", 407,1556,3216);
    SetNpcScript(npcIndexxinan36, "\\script\\西南区\\五毒教\\npc\\泰光.lua");


    local npcIndexxinan37 = CreateNpc("S礽 Ho祅g Nhi", "S礽 Ho祅g Nhi", 404,1570,2725);
    SetNpcScript(npcIndexxinan37, "\\script\\西南区\\翠烟\\npc\\柴凰儿.lua");

    local npcIndexxinan38 = CreateNpc("Th髖 Y猲 h?ph竝", "H?M蒼", 404,1599,2760);
    SetNpcScript(npcIndexxinan38, "\\script\\西南区\\翠烟\\npc\\扈敏.lua");

    local npcIndexxinan39 = CreateNpc("Th髖 Y猲 chng m玭", "L璾 Thanh Mi", 404,1543,2693);
    SetNpcScript(npcIndexxinan39, "\\script\\西南区\\翠烟\\npc\\刘青眉.lua");

    local npcIndexxinan40 = CreateNpc("Hi謕 n?, "Chu T?V╪",404,1524,2719);
    SetNpcScript(npcIndexxinan40, "\\script\\西南区\\翠烟\\npc\\周子雯.lua");

    local npcIndexxinan41 = CreateNpc("T?Ho祅 Ch﹏", "H?Man Th祅h", 404,1577,2784);
    SetNpcScript(npcIndexxinan41, "\\script\\西南区\\翠烟\\npc\\胡曼成.lua");

    local npcIndexxinan42 = CreateNpc("Th髖 Y猲 m玭 nh﹏", "H?H礽", 404,1493,2746);
    SetNpcScript(npcIndexxinan42, "\\script\\西南区\\翠烟\\npc\\何谐.lua");

    local npcIndexxinan43 = CreateNpc("Th髖 Y猲 h?ph竝", "X秓 X秓", 404,1474,2838);
    SetNpcScript(npcIndexxinan43, "\\script\\西南区\\翠烟\\npc\\巧巧.lua");

    local npcIndexxinan44 = CreateNpc("Xa phu T﹜ Nam", "Xa phu Чi L?, 400,1549,2882);
    SetNpcScript(npcIndexxinan44, "\\script\\西南区\\大理府\\npc\\大理车夫.lua");

    local npcIndexxinan45 = CreateNpc("Ch?ti謒  T﹜ Nam", "Ch?Kim ho祅", 400,1497,2940);
    SetNpcScript(npcIndexxinan45, "\\script\\西南区\\大理府\\npc\\饰品店老板.lua");

    local npcIndexxinan46 = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 400,1553,2914);
    SetNpcScript(npcIndexxinan46, "\\script\\西南区\\大理府\\npc\\物品保管人北.lua");

    local npcIndexxinan47 = CreateNpc("Ch?c莔  T﹜ Nam", "Ch?t鰑 l莡", 400,1524,2894);
    SetNpcScript(npcIndexxinan47, "\\script\\西南区\\大理府\\npc\\酒楼老板.lua");

    local npcIndexxinan48 = CreateNpc("T?Thanh Thng Nh﹏", "L?quan", 400,1506,2847);
    SetNpcScript(npcIndexxinan48, "\\script\\中原一区\\汴京\\npc\\大内总管.lua");

    local npcIndexxinan49 = CreateNpc("Chng dc Th?Ph錸", "Ch?T筽 h鉧", 400,1511,2955);
    SetNpcScript(npcIndexxinan49, "\\script\\西南区\\大理府\\npc\\杂货店老板.lua");

    local npcIndexxinan50 = CreateNpc("Tr譶h Di", "Ch?thng h閕", 400,1486,2924);
    SetNpcScript(npcIndexxinan50, "\\script\\西南区\\大理府\\npc\\商会老板.lua");

    local npcIndexxinan51 = CreateNpc("Chng dc T﹜ Nam", "Ch?Dc 甶誱", 400,1522,3007);
    SetNpcScript(npcIndexxinan51, "\\script\\西南区\\大理府\\npc\\药店老板.lua");

    local npcIndexxinan52 = CreateNpc("V?L﹎ Minh Ch?", "S?gi?m玭 ph竔", 400,1548,2981);
    SetNpcScript(npcIndexxinan52, "\\script\\西南区\\大理府\\npc\\门派接引人.lua");

    local npcIndexxinan53 = CreateNpc("Ch?ti謒 v?kh?T﹜ Nam", "Ch?Ti謒 Nam ph鬰", 400,1471,2956);
    SetNpcScript(npcIndexxinan53, "\\script\\西南区\\大理府\\npc\\男装店老板.lua");

    local npcIndexxinan54 = CreateNpc("Ch?ti謒 v秈 T﹜ Nam", "Ch?Ti謒 N?ph鬰", 400,1498,2969);
    SetNpcScript(npcIndexxinan54, "\\script\\西南区\\大理府\\npc\\女装店老板.lua");

    local npcIndexxinan55 = CreateNpc("Xa phu T﹜ Nam", "Xa phu Чi L?, 400,1574,3110);
    SetNpcScript(npcIndexxinan55, "\\script\\西南区\\大理府\\npc\\大理车夫.lua");

    local npcIndexxinan56 = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 400,1527,3112);
    SetNpcScript(npcIndexxinan56, "\\script\\西南区\\大理府\\npc\\物品保管人东.lua");

    local npcIndexxinan57 = CreateNpc("Xa phu T﹜ Nam", "Xa phu Чi L?, 400,1465,3110);
    SetNpcScript(npcIndexxinan57, "\\script\\西南区\\大理府\\npc\\大理车夫.lua");

    local npcIndexxinan58 = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 400,1456,3071);
    SetNpcScript(npcIndexxinan58, "\\script\\西南区\\大理府\\npc\\物品保管人南.lua");

    local npcIndexxinan59 = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 407,1621,3249);
    SetNpcScript(npcIndexxinan59, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local npcIndexxinan60 = CreateNpc("Ch?V?kh?Trung Nguy猲", "Ch?Ti謒 v?kh?, 400,1566,3005);
    SetNpcScript(npcIndexxinan60, "\\script\\西南区\\大理府\\npc\\武器店老板.lua");

    local npcIndexxinan61 = CreateNpc("Ch?V?kh?Trung Nguy猲", "Minh S?Ph?, 350,1546,2930);
    SetNpcScript(npcIndexxinan61, "\\script\\中原二区\\襄阳\\npc\\制帽技能.lua");

    local npcIndexxinan62 = CreateNpc("Thi誹 n?Mi猽 T閏", "T?Quy猲", 400,1409,2980);
    SetNpcScript(npcIndexxinan62, "\\script\\西南区\\大理府\\npc\\制裤技能.lua");

    local npcIndexxinan63 = CreateNpc("V﹏ Du Чo Nh﹏", "M筩 Qu﹏ o trng", 100,1390,2965);
    SetNpcScript(npcIndexxinan63, "\\script\\江南区\\泉州\\npc\\集灵技能.lua");

    local npcIndexxinan64 = CreateNpc("V?L﹎ Minh Ch?", "S?gi?m玭 ph竔", 350,1434,2963);
    SetNpcScript(npcIndexxinan64, "\\script\\西南区\\大理府\\npc\\门派接引人.lua");

    local npcIndexxinan65 = CreateNpc("V?L﹎ Minh Ch?", "S?gi?m玭 ph竔", 150,1723,3143);
    SetNpcScript(npcIndexxinan65, "\\script\\西南区\\大理府\\npc\\门派接引人.lua");
end;

function AddCheFu()		 --采集地图车夫
	local npcIndex = CreateNpc("Xa phu Trung Nguy猲","Xa phu",714,1425,2847);
	SetNpcScript(npcIndex,"\\script\\世界地图\\南槐谷\\npc\\车夫.lua");
	npcIndex = CreateNpc("Xa phu Trung Nguy猲","Xa phu",714,1585,3166);
	SetNpcScript(npcIndex,"\\script\\世界地图\\南槐谷\\npc\\车夫.lua");

	npcIndex = CreateNpc("Xa phu Trung Nguy猲","Xa phu",719,1624,3269);
	SetNpcScript(npcIndex,"\\script\\世界地图\\含幽谷\\npc\\车夫.lua");
	npcIndex = CreateNpc("Xa phu Trung Nguy猲","Xa phu",719,1785,3516);
	SetNpcScript(npcIndex,"\\script\\世界地图\\含幽谷\\npc\\车夫.lua");

	npcIndex = CreateNpc("Xa phu Trung Nguy猲","Xa phu",724,1656,3554);
	SetNpcScript(npcIndex,"\\script\\世界地图\\轩辕谷\\npc\\车夫.lua");
	npcIndex = CreateNpc("Xa phu Trung Nguy猲","Xa phu", 724,1814,3554);
	SetNpcScript(npcIndex,"\\script\\世界地图\\轩辕谷\\npc\\车夫.lua");
end

function AddDragonBoatDay()
	local npcIndex = CreateNpc("V?L﹎ Minh Ch?","Long Chu s?gi?,100,1465,2794);
	SetNpcScript(npcIndex,"\\script\\online\\dragonboat06\\room_manager.lua");
	npcIndex = CreateNpc("V?L﹎ Minh Ch?","Long Chu s?gi?,200,1170,2828);
	SetNpcScript(npcIndex,"\\script\\online\\dragonboat06\\room_manager.lua");
	npcIndex = CreateNpc("V?L﹎ Minh Ch?","Long Chu s?gi?,300,1640,3526);
	SetNpcScript(npcIndex,"\\script\\online\\dragonboat06\\room_manager.lua");

	for i=0,7 do
		npcIndex = CreateNpc("V?L﹎ Minh Ch?","Long Chu s?gi?,1070+i,2051,3249);
		SetNpcScript(npcIndex,"\\script\\online\\dragonboat06\\room_worker.lua");
	end;
	for i=0,7 do
		npcIndex = CreateNpc("V?L﹎ Minh Ch?","Long Chu s?gi?,2070+i,2051,3249);
		SetNpcScript(npcIndex,"\\script\\online\\dragonboat06\\room_worker.lua");
	end;
	for i=0,7 do
		npcIndex = CreateNpc("V?L﹎ Minh Ch?","Long Chu s?gi?,3070+i,2051,3249);
		SetNpcScript(npcIndex,"\\script\\online\\dragonboat06\\room_worker.lua");
	end;
end;

function AddTxNpc()
	local npcIndex = CreateNpc("V?ng  chng m玭", "Th莕 Du Ch﹏ Nh﹏", 200, 1151, 2850)
	SetNpcScript(npcIndex, "\\script\\太虚幻境\\空空和尚.lua")
	npcIndex = CreateNpc("V?ng  chng m玭", "Th莕 Du Ch﹏ Nh﹏", 300, 1975, 3552)
	SetNpcScript(npcIndex, "\\script\\太虚幻境\\空空和尚.lua")
	npcIndex = CreateNpc("V?ng  chng m玭", "Th莕 Du Ch﹏ Nh﹏", 100, 1379, 2858)
	SetNpcScript(npcIndex, "\\script\\太虚幻境\\空空和尚.lua")
end

function ZoneInit(nMapid)
	--动态加上Trap
	for i = 1515, 1570 do
		AddMapTrap(nMapid, i * 32, 3235 * 32, "\\script\\太虚幻境\\trap_冰雪天地.lua")
	end

	for i = 1515, 1570 do
		AddMapTrap(nMapid, i * 32, 3330 * 32, "\\script\\太虚幻境\\trap_冰雪天地.lua")
	end

	for i = 3235, 3330 do
		AddMapTrap(nMapid, 1515 * 32, i * 32, "\\script\\太虚幻境\\trap_冰雪天地.lua")
	end

	for i = 3235, 3330 do
		AddMapTrap(nMapid, 1570 * 32, i * 32, "\\script\\太虚幻境\\trap_冰雪天地.lua")
	end

	-----------------------------------------------------------------------------------

	for i = 1600, 1650 do
		AddMapTrap(nMapid, i * 32, 3230 * 32, "\\script\\太虚幻境\\trap_江南春色.lua")
	end

	for i = 1600, 1650 do
		AddMapTrap(nMapid, i * 32, 3330 * 32, "\\script\\太虚幻境\\trap_江南春色.lua")
	end

	for i = 3230, 3330 do
		AddMapTrap(nMapid, 1600 * 32, i * 32, "\\script\\太虚幻境\\trap_江南春色.lua")
	end

	for i = 3230, 3330 do
		AddMapTrap(nMapid, 1650 * 32, i * 32, "\\script\\太虚幻境\\trap_江南春色.lua")
	end

	-----------------------------------------------------------------------------------

	for i = 1515, 1570 do
		AddMapTrap(nMapid, i * 32, 3395 * 32, "\\script\\太虚幻境\\trap_熔岩地狱.lua")
	end

	for i = 1515, 1570 do
		AddMapTrap(nMapid, i * 32, 3495 * 32, "\\script\\太虚幻境\\trap_熔岩地狱.lua")
	end

	for i = 3395, 3495 do
		AddMapTrap(nMapid, 1515 * 32, i * 32, "\\script\\太虚幻境\\trap_熔岩地狱.lua")
	end

	for i = 3395, 3495 do
		AddMapTrap(nMapid, 1570 * 32, i * 32, "\\script\\太虚幻境\\trap_熔岩地狱.lua")
	end

	-----------------------------------------------------------------------------------

	for i = 1600, 1650 do
		AddMapTrap(nMapid, i * 32, 3390 * 32, "\\script\\太虚幻境\\trap_瀚海黄沙.lua")
	end

	for i = 1600, 1650 do
		AddMapTrap(nMapid, i * 32, 3500 * 32, "\\script\\太虚幻境\\trap_瀚海黄沙.lua")
	end

	for i = 3390, 3500 do
		AddMapTrap(nMapid, 1600 * 32, i * 32, "\\script\\太虚幻境\\trap_瀚海黄沙.lua")
	end

	for i = 3390, 3500 do
		AddMapTrap(nMapid, 1650 * 32, i * 32, "\\script\\太虚幻境\\trap_瀚海黄沙.lua")
	end
end

function Addfengdutrap()
	for i = 1587, 1592 do
		AddMapTrap(307, i * 32, 2687 * 32, "\\script\\中原二区\\丰都\\trap\\丰都to十八层地狱.lua")
	end

	for i = 1587, 1592 do
		AddMapTrap(307, i * 32, 2686 * 32, "\\script\\中原二区\\丰都\\trap\\丰都to十八层地狱.lua")
	end
end

function Addmenpaibuchong()
	for i = 1625, 1630 do
		AddMapTrap(303, i * 32, 3180 * 32, "\\script\\中原二区\\峨嵋\\trap\\进峨嵋.lua")
	end

	for i = 1571, 1577 do
		AddMapTrap(209, i * 32, 3217 * 32, "\\script\\中原一区\\丐帮\\trap\\进丐帮.lua")
	end

	for i = 1585, 1591 do
		AddMapTrap(407, i * 32, 3287 * 32, "\\script\\西南区\\五毒教\\trap\\入五毒教.lua")
	end

	for i = 1891, 1896 do
		AddMapTrap(312, i * 32, 3422 * 32, "\\script\\中原二区\\武当\\trap\\进武当.lua")
	end
end

function AddXinshou()
	local npcIndex = CreateNpc("Thi謚 Ung", "V筺 S?Th玭g", 200, 1397, 2849)
	SetNpcScript(npcIndex, "\\script\\task\\teach\\新手指引npc.lua")
	npcIndex = CreateNpc("Thi謚 Ung", "V筺 S?Th玭g", 300, 1750, 3524)
	SetNpcScript(npcIndex, "\\script\\task\\teach\\新手指引npc.lua")
	npcIndex = CreateNpc("Thi謚 Ung", "V筺 S?Th玭g", 100, 1440, 2964)
	SetNpcScript(npcIndex, "\\script\\task\\teach\\新手指引npc.lua")
	npcIndex = CreateNpc("Thi謚 Ung", "V筺 S?Th玭g", 350, 1452, 2991)
	SetNpcScript(npcIndex, "\\script\\task\\teach\\新手指引npc.lua")
	npcIndex = CreateNpc("Thi謚 Ung", "V筺 S?Th玭g", 150, 1694, 3146)
	SetNpcScript(npcIndex, "\\script\\task\\teach\\新手指引npc.lua")
end

function CreateGatherNpc()
	local nIndex = 0
	nIndex = CreateNpc("Du Phng i phu", "Ngi 駓 th竎 h竔 thu鑓", 724,1737,3377)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Du Phng i phu", "Ngi 駓 th竎 h竔 thu鑓", 714, 1500, 3018)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Du Phng i phu", "Ngi 駓 th竎 h竔 thu鑓", 719, 1708, 3376)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Xa phu Trung Nguy猲", "Ngi 駓 th竎 thu th藀", 710, 1711, 3395)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Xa phu Trung Nguy猲", "Ngi 駓 th竎 thu th藀", 715, 1500, 2992)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Xa phu Trung Nguy猲", "Ngi 駓 th竎 thu th藀", 720, 1727, 3346)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Thi誹 ni猲 trong th玭", "Ngi 駓 th竎 canh t竎", 713, 1481, 2944)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Thi誹 ni猲 trong th玭", "Ngi 駓 th竎 canh t竎", 718, 1703, 3410)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Thi誹 ni猲 trong th玭", "Ngi 駓 th竎 canh t竎", 723, 1701, 3456)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Ch?V?kh?Trung Nguy猲", "Ngi 駓 th竎 o kh鉧ng", 711, 1721, 3373)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Ch?V?kh?Trung Nguy猲", "Ngi 駓 th竎 o kh鉧ng", 716, 1707, 3038)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Ch?V?kh?Trung Nguy猲", "Ngi 駓 th竎 o kh鉧ng", 721, 1682, 3336)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Th莥 luy謓 th?, "Ngi 駓 th竎 thu th藀", 712, 1480, 2919)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Ph?n?", "Ngi 駓 th竎 thu th藀", 717, 1744, 2957)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")

	nIndex = CreateNpc("Th莥 luy謓 th?, "Ngi 駓 th竎 thu th藀", 722, 1755, 3430)
	SetNpcScript(nIndex, "\\script\\tishencaiji\\tishen_npc.lua")
end
--====================================村长的自动函数================================================
--*****************************村长自动执行函数主函数*************************
function zgc_auto_fun_main()
	ZgcNpcCreate()					--NPC自动创建
	randomseed(GetTime())		--随机种子添加
end
function ZgcNpcCreate()
	local npc_index = 0
	--******************************增加战场报名npc*************************
	--npc_index = CreateNpc("B竛 s竎h","Tri謚 Di猲 Ni猲",200,1386,3076);	--汴京：173,192
	--npc_index = CreateNpc("T?Ho祅 Ch﹏","Ti觰 Phng",350,1446,2941);	
	npc_index = CreateNpc("T?Ho祅 Ch﹏","Ti觰 Phng",200,1347,2863);		
	SetNpcScript(npc_index, "\\script\\online\\viet_event\\Battle_TieuPhuong\\TieuPhuong.lua")
	--npc_index = CreateNpc("B竛 s竎h","Tri謚 Di猲 Ni猲",200,1466,2830);	--汴京：183,176
	--SetNpcScript(npc_index, "\\script\\中原一区\\汴京\\npc\\赵延年.lua")
	--npc_index = CreateNpc("Giang h?tu蕁 ki謙","Ti猽 Vi詎 L﹗",200,1409,2772);	--汴京：176,173
	--npc_index = CreateNpc("Ch?qu秐 H醓 Kh?ph遪g","Ti觰 Ng鋍",350,1469,2970);	
	npc_index = CreateNpc("Ch?qu秐 H醓 Kh?ph遪g","Ti觰 Ng鋍",200,1377,2895);		
	SetNpcScript(npc_index, "\\script\\中原一区\\汴京\\npc\\萧远楼.lua")
	--npc_index = CreateNpc("Giang h?tu蕁 ki謙","Ti猽 Vi詎 L﹗",200,1402,2918);	--汴京：175,182
	--SetNpcScript(npc_index, "\\script\\中原一区\\汴京\\npc\\萧远楼.lua")
	--*****************************NPC信息表*********************************
	local zgc_npc_inf = {
	--华山传出NPC
	--角色删除功能NPC
	{"Tr輈h Th莕","V?L﹎ 萵 s?,200,1313,2686,"\\script\\online\\zgc_npc_dialog.lua"},
	--结婚二期
	{"L?S?S?,"X秓 n?,150,1588,3143,"\\script\\task\\marriage\\qiao_girl.lua"},
	--帮会攻城战资源保护相关NPC
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",304,1532,2892,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",304,1543,2897,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",304,1533,2913,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",304,1540,2998,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",304,1551,2997,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",304,1551,3014,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",304,1541,3015,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",304,1505,2980,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",304,1494,2980,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",304,1493,2994,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},

	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",308,1451,3180,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",308,1442,3181,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",308,1451,3167,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",308,1501,3124,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",308,1490,3122,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",308,1490,3104,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",308,1500,3104,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",308,1433,3078,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",308,1421,3076,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",308,1421,3058,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
	--会试
	{"V?ng  ph?chng m玭","Long Quang Ch﹏ Nh﹏",500,1633,3185,"\\script\\online_activites\\reborn\\effect\\npc\\npc_add_effect.lua"},
	{"M藅 th竚 Чi T鑞g T﹜ V鵦","M藅 th竚 Чi T鑞g T﹜ V鵦",500,1759,3142,"\\script\\missions\\northwest_mission\\npc\\npc_log_in.lua"},
	}

	for i = 1, getn(zgc_npc_inf) do
		npc_index = CreateNpc(zgc_npc_inf[i][1],zgc_npc_inf[i][2],zgc_npc_inf[i][3],zgc_npc_inf[i][4],zgc_npc_inf[i][5])
		SetNpcScript(npc_index,zgc_npc_inf[i][6])
		--资源保护的时候需要把箱子索引的值初始设置为0
		if zgc_npc_inf[i][2] == "B秓 rng T礽 nguy猲" then
			SetUnitCurStates(npc_index,2,1)
			SetUnitCurStates(npc_index,4,0)
			SetUnitCurStates(npc_index,5,0)
		end
	end
		CreateNpcList({
			--明教相关
--			{"方腊","方腊",152,1452,3008,"\\script\\江南区\\明教\\npc\\方腊.lua"},
--			{"侯盾","侯盾",152,1508,2956,"\\script\\江南区\\明教\\npc\\侯盾.lua"},
--			{"王寅","王寅",152,1560,3025,"\\script\\江南区\\明教\\npc\\王寅.lua"},
--			{"石宝","石宝",152,1349,2870,"\\script\\江南区\\明教\\npc\\石宝.lua"},
--			{"司行方","司行方",152,1455,3132,"\\script\\江南区\\明教\\npc\\司行方.lua"},
--			{"邓元觉","邓元觉",152,1284,2748,"\\script\\江南区\\明教\\npc\\邓元觉.lua"},
--			{"厉天闰","厉天闰",152,1397,3059,"\\script\\江南区\\明教\\npc\\厉天闰.lua"},
--			{"方七佛","方七佛",152,1480,3038,"\\script\\江南区\\明教\\npc\\方七佛.lua"},
--			{"方百花","方百花",152,1686,3284,"\\script\\江南区\\明教\\npc\\方百花.lua"},
--			{"方百花","出关传送人",153,1779,3452,"\\script\\task\\practice\\出关传送人.lua"},
--			{"中原储物柜","物品保管人",152,1508,3074,"\\script\\江南区\\明教\\npc\\物品保管人.lua"},
			--翠烟相关
			{"Уo Hoa th?,"Уo Hoa th?,404,1462,2835,"\\script\\西南区\\翠烟\\npc\\桃花树.lua"},
			{"S礽 Phong Nhi","S礽 Phong Nhi",404,1552,2815,"\\script\\西南区\\翠烟\\npc\\柴风儿.lua"},
--			{"巧巧","出关传送人",423,1497,2950,"\\script\\task\\practice\\出关传送人.lua"},
			{"N?thi誹 ni猲1","Th?kh?,404,1537,2758,"\\script\\西南区\\翠烟\\npc\\物品保管人.lua"},
			--昆仑相关
			{"tianyuanshizhu","Thi猲 Nguy猲 Ph竝 Tr薾 Th筩h Tr?,509,1577,3098,"\\script\\西北区\\昆仑\\npc\\石柱.lua"},
			{"tianyuanshizhu","Thi猲 Nguy猲 Ph竝 Tr薾 Th筩h Tr?,509,1587,3099,"\\script\\西北区\\昆仑\\npc\\石柱.lua"},
			{"tianyuanshizhu","Thi猲 Nguy猲 Ph竝 Tr薾 Th筩h Tr?,509,1589,3115,"\\script\\西北区\\昆仑\\npc\\石柱.lua"},
			{"tianyuanshizhu","Thi猲 Nguy猲 Ph竝 Tr薾 Th筩h Tr?,509,1580,3120,"\\script\\西北区\\昆仑\\npc\\石柱.lua"},
			{"tianyuanshizhu","Thi猲 Nguy猲 Ph竝 Tr薾 Th筩h Tr?,509,1572,3112,"\\script\\西北区\\昆仑\\npc\\石柱.lua"},
			{"H?Y猽","Y猽 H?,509,1581,3109,"\\script\\西北区\\昆仑\\npc\\妖狐.lua"},
--			{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",108,1514,3073,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
--			{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",108,1522,3072,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
--			{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",108,1521,3058,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
--			{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",108,1485,3128,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
--			{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",108,1485,3146,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
--			{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",108,1473,3128,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
--			{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",108,1497,3128,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
--			{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",108,1538,3127,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
--			{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",108,1549,3126,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
--			{"B秓 rng T礽 nguy猲","B秓 rng T礽 nguy猲",108,1549,3142,"\\script\\gongcheng\\npc\\conf_res_protect.lua"},
		});
end
--======================================结束================================
function Addmenpai()
	local nNpcIndex = 0;
	nNpcIndex = CreateNpc("V?L﹎ Minh Ch?","c s?V?L﹎",150,1705,3173);	--扬州 213, 198
	SetNpcScript(nNpcIndex, "\\script\\task\\faction_boss\\wulinmeng_teshi.lua");
end;

function AddNewBattle()
	local tChannel =
	{								--频道名字与ID
		[1] = {"Nh筺 M玭 Quan-chi課 d辌h Th玭 trang",12},
		[2] = {"Nh筺 M玭 Quan-chi課 d辌h th秓 c鑓",13},
		[3] = {"Nh筺 M玭 Quan-chi課 d辌h ph竜 i",14},
		[4] = {"Nh筺 M玭 Quan-chi課 d辌h ch輓h",15},
		[5] = {"Nh筺 M玭 Quan-chi課 d辌h Th玭 trang phe T鑞g",16},
		[6] = {"Nh筺 M玭 Quan-chi課 d辌h Th玭 trang phe Li猽",17},
		[7] = {"Nh筺 M玭 Quan-chi課 d辌h th秓 c鑓 phe T鑞g",18},
		[8] = {"Nh筺 M玭 Quan-chi課 d辌h th秓 c鑓 phe Li猽",19},
		[9] = {"Nh筺 M玭 Quan-chi課 d辌h ph竜 i phe T鑞g",20},
		[10] = {"Nh筺 M玭 Quan-chi課 d辌h ph竜 i phe Li猽",21},
		[11] = {"Nh筺 M玭 Quan-chi課 d辌h ch輓h phe T鑞g",22},
		[12] = {"Nh筺 M玭 Quan-chi課 d辌h ch輓h phe Li猽",23},
		[13] = {"Chi課 trng Ng鋍 M玭 quan",36},
		[14] = {"Chi課 trng Ng鋍 M玭 quan-T鑞g",37},
		[15] = {"Chi課 trng Ng鋍 M玭 quan-Li猽-",38},
	}
	for i=1,getn(tChannel) do
		CreateChannel(tChannel[i][1],tChannel[i][2],180);
	end;
	SetGlbValue(31,0)	--开启新战场
	local nNpcIdx = 0;
end;

function Addjiehun()
	local nNpcIndex = CreateNpc("B?mai", "B?mai", 150, 1600, 3136)
	SetNpcScript(nNpcIndex, "\\script\\结婚\\npc\\媒婆.lua");
	nNpcIndex = CreateNpc("Thng nh﹏", "S?gi?h玭 l?, 150, 1711, 3046)
	SetNpcScript(nNpcIndex, "\\script\\结婚\\npc\\婚庆传送人.lua");
	nNpcIndex = CreateNpc("Nguy謙 L穙", "Nguy謙 L穙", 404, 1642, 2603)
	SetNpcScript(nNpcIndex, "\\script\\结婚\\npc\\月老.lua");
	--预览场地媒婆
	nNpcIndex = CreateNpc("B?mai", "B?mai", 855, 1554, 3232)
	SetNpcScript(nNpcIndex, "\\script\\结婚\\npc\\媒婆2.lua");
	nNpcIndex = CreateNpc("B?mai", "B?mai", 856, 1615, 3276)
	SetNpcScript(nNpcIndex, "\\script\\结婚\\npc\\媒婆2.lua");
	nNpcIndex = CreateNpc("B?mai", "B?mai", 857, 1550, 3217)
	SetNpcScript(nNpcIndex, "\\script\\结婚\\npc\\媒婆2.lua");
	nNpcIndex = CreateNpc("B?mai", "B?mai", 858, 1612, 3324)
	SetNpcScript(nNpcIndex, "\\script\\结婚\\npc\\媒婆2.lua");

	CreateChannel("Khu v鵦 k誸 h玭",26);
end

function AddSnowWarNpc()
    if tonumber(date("%y%m%d")) >= 091218 and tonumber(date("%y%m%d")) < 100117 then
	--汴京雪仗传送人
	local npcIndex = CreateNpc("Giang h?h祇 ki謙","Xa phu_n衜 tuy誸",200,1413,3056)
	SetNpcScript(npcIndex,"\\script\\online\\春节活动\\汴京雪仗传送人in.lua")
	--成都雪仗传送人
	npcIndex = CreateNpc("Giang h?h祇 ki謙","Xa phu_n衜 tuy誸",300,1831,3577)
	SetNpcScript(npcIndex,"\\script\\online\\春节活动\\成都雪仗传送人in.lua")
	--泉州雪仗传送人
	npcIndex = CreateNpc("Giang h?h祇 ki謙","Xa phu_n衜 tuy誸",100,1364,2928)
	SetNpcScript(npcIndex,"\\script\\online\\春节活动\\泉州雪仗传送人in.lua")
    end
end;

function Addtianshi()
	local npcIndex = CreateNpc("C玭 L玭 T﹏ M玭 Nh﹏", "е t?C玭 L玭 th莕 b?, 314,1584,2856)
	SetNpcScript(npcIndex, "\\script\\中原二区\\天师秘境\\npc\\秘境传送人.lua")

end

function AddKillerHall()
    local nNpcIdx = CreateNpc("Giang h?tu蕁 ki謙", "Nam nh﹏ th莕 b?, 318,1567,2753);
    SetNpcScript(nNpcIdx, "\\script\\task\\killer_hall\\entrance_npc.lua");
end;

function AddCaijiNpc()
    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 710,1700,3391);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 711,1730,3368);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 712,1467,2926);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 713,1485,2952);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 714,1514,3018);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 715,1493,2992);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 716,1719,3037);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 717,1755,2976);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 718,1713,3394);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 719,1698,3377);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 720,1717,3342);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua");

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 721,1691,3323);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua")

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 722,1743,3427);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua")

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 723,1698,3445);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua")

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 724,1725,3384);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua")

    local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 300,1913,3615);
    SetNpcScript(nNpcIdx, "\\script\\西南区\\五毒教\\npc\\物品保管人.lua")
end;

function AddZGDaShi()
	local nNpcIdx = CreateNpc("C?gi?,"Tinh Hoa T?Quang s?gi?,200,1498,2781);
	SetNpcScript(nNpcIdx,"\\script\\online\\dragon_boat_07\\qinghuaziguangshizhe_npc.lua");
end;

function AddTongMission()	--帮会关卡
	local nNpcIdx = CreateNpc("C?gi?,"T?Quang C竎 L穙 Nh﹏",150,1651,3174);
	SetNpcScript(nNpcIdx,"\\script\\missions\\tong_mission\\npc\\npc_mission_entrance.lua");
end;

function AddBaiHuaNpc()
	local npcIndex = CreateNpc("L?S?S?, "B竎h Hoa s?gi?, 200,1378,2854)
	SetNpcScript(npcIndex, "\\script\\online\\qixi07\\baihua_npc.lua")
	local npcIndex = CreateNpc("L?S?S?, "B竎h Hoa s?gi?, 300,1735,3523)
	SetNpcScript(npcIndex, "\\script\\online\\qixi07\\baihua_npc.lua")
	local npcIndex = CreateNpc("L?S?S?, "B竎h Hoa s?gi?, 100,1435,2988)
	SetNpcScript(npcIndex, "\\script\\online\\qixi07\\baihua_npc.lua")
end;

function AddGongChengNpc()
	local tChannel =
	{								--频道名字与ID
		[1] = {"Tuy襫 Ch﹗ th祅h ",27},
		[2] = {"Th祅h Й th祅h ",28},
		[3] = {"Tng Dng th祅h ",29},
		[4] = {"Phe c玭g Tuy襫 Ch﹗",30},
		[5] = {"Phe th?Tuy襫 Ch﹗ th祅h",31},
		[6] = {"Phe c玭g Th祅h Й th祅h",32},
		[7] = {"Phe th?Th祅h Й th祅h",33},
		[8] = {"Phe c玭g Tng Dng th祅h",34},
		[9] = {"Phe th?Tng Dng th祅h",35},
	}
	for i=1,getn(tChannel) do
		CreateChannel(tChannel[i][1],tChannel[i][2]);
	end;
	local nNpcIdx = CreateNpc("V?L﹎ Minh Ch?","Th祅h Й Чi s?c玭g th祅h",300,1742,3548)
	SetNpcScript(nNpcIdx,"\\script\\gongcheng\\npc\\gongchengdashi_npc.lua");
	-- 攻城战城市管理,牢房相关NPC

	-- 攻城战牢房
	local nNpcIdx = CreateNpc("Nha d辌h", "Bang h閕 Ng鬰 t鑤", 730, 1376, 3143);
    SetNpcScript(nNpcIdx, "\\script\\gongcheng\\prison\\jailer_npc.lua")
    nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 730, 1378, 3139)
    SetNpcScript(nNpcIdx, "\\script\\battles\\openbox.lua")

   	nNpcIdx = CreateNpc("Nha d辌h", "Bang h閕 Ng鬰 t鑤", 731, 1376, 3143);
    SetNpcScript(nNpcIdx, "\\script\\gongcheng\\prison\\jailer_npc.lua")
    nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 731, 1378, 3139)
    SetNpcScript(nNpcIdx, "\\script\\battles\\openbox.lua")
 	nNpcIdx = CreateNpc("Nha d辌h", "Bang h閕 Ng鬰 t鑤", 300, 1792, 3489)
    SetNpcScript(nNpcIdx, "\\script\\gongcheng\\prison\\gaoler_npc.lua")

    nNpcIdx = CreateNpc("Nha d辌h", "Bang h閕 Ng鬰 t鑤", 732, 1376, 3143);
    SetNpcScript(nNpcIdx, "\\script\\gongcheng\\prison\\jailer_npc.lua")
    nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 732, 1378, 3139)
    SetNpcScript(nNpcIdx, "\\script\\battles\\openbox.lua")

    nNpcIdx = CreateNpc("Nha d辌h", "Bang h閕 Ng鬰 t鑤", 733, 1376, 3143);
    SetNpcScript(nNpcIdx, "\\script\\gongcheng\\prison\\jailer_npc.lua")
    nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 733, 1378, 3139)
    SetNpcScript(nNpcIdx, "\\script\\battles\\openbox.lua")

    nNpcIdx = CreateNpc("Nha d辌h", "Bang h閕 Ng鬰 t鑤", 734, 1376, 3143);
    SetNpcScript(nNpcIdx, "\\script\\gongcheng\\prison\\jailer_npc.lua")
    nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Th?kh?, 734, 1378, 3139)
    SetNpcScript(nNpcIdx, "\\script\\battles\\openbox.lua")

	nNpcIdx = CreateNpc("B?ch?, "Th祅h Й Qu秐 th祅h s?, 300, 1729, 3536)
	SetNpcScript(nNpcIdx, "\\script\\gongcheng\\city_manage\\manage_npc.lua")
	nNpcIdx = CreateNpc("V?binh th祅h m玭","S?gi?H錳 Phong tr筰",889,1762,3805)
	SetNpcScript(nNpcIdx, "\\script\\gongcheng\\personal_task\\task_npc.lua")

	-- 加trap

	for i=1805,1821 do
		AddMapTrap(889, i * 32, 3591 * 32, "\\script\\gongcheng\\personal_task\\changefarm_trap.lua")
	end

	for i=1800,1815 do
		AddMapTrap(889, i * 32, 3584 * 32, "\\script\\gongcheng\\personal_task\\changepk_trap.lua")
	end

	for i=1728,1740 do
		AddMapTrap(889, i * 32, 3599 * 32, "\\script\\gongcheng\\personal_task\\changefarm_trap.lua")
	end

	for i=1720,1732 do
		AddMapTrap(889, i * 32, 3591 * 32, "\\script\\gongcheng\\personal_task\\changepk_trap.lua")
	end

	for i=1605,1624 do
		AddMapTrap(889, i * 32, 3774 * 32, "\\script\\gongcheng\\personal_task\\changefarm_trap.lua")
	end

	for i=1598, 1610 do
		AddMapTrap(889, i * 32, 3765 * 32, "\\script\\gongcheng\\personal_task\\changepk_trap.lua")
	end
end;

function AddXiBei()

	--凤翔府府

	--主线任务&其他Npc
	local nNpcIdx = CreateNpc("g gi?phng B綾2", "Di謕 L穙", 500,1808,3125);
  SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\叶老.lua");

	local nNpcIdx = CreateNpc("Trng Tr筩h an", " Dng H鋋 ", 500,1727,3262);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\欧阳画.lua");

	local nNpcIdx = CreateNpc("Thng nh﹏ Ba T?, "Thng nh﹏ Ba T?, 500,1686,3252);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\波斯商人.lua");

	local nNpcIdx = CreateNpc("K裲 h?l?, "Л阯g H?L?, 500,1675,3168);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\唐葫芦.lua");

	local nNpcIdx = CreateNpc("Gi竜 ch?Minh Gi竜", "T?M?Minh Phong", 500,1600,3157);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\司马鸣风.lua");

	local nNpcIdx = CreateNpc("Du Phng i phu", "T玭 Phng Nh﹏ ", 500,1807,3045);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\孙方仁.lua");

	local nNpcIdx = CreateNpc("Л阯g M玭 T﹏ m玭 nh﹏", "Li評 T飊g V﹏ ", 500,1717,2986);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\柳纵云.lua");

	local nNpcIdx = CreateNpc("Nam nh﹏ phng B綾3", "Th竎 B箃 Ho籲g ", 500,1808,2994);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\拓拔弘.lua");

	local nNpcIdx = CreateNpc("Ch?qu秐 H醓 Kh?ph遪g", "Л阯g Thi猲 Thi猲", 500,1768,3256);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\唐芊芊.lua");

	--职能Npc
	local nNpcIdx = CreateNpc("Th?r蘮 Th?Ph錸", "Ch?Ti謒 v?kh?, 500,1747,3092);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\武器店老板.lua");

	local nNpcIdx = CreateNpc("Ch?ti謒 v?kh?Th?Ph錸", "Ch?Ti謒 Nam ph鬰", 500,1739,3098);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\男装店老板.lua");

	local nNpcIdx = CreateNpc("Ch?ti謒 v秈", "Ch?Ti謒 N?ph鬰", 500,1701,3114);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\女装店老板.lua");

	local nNpcIdx = CreateNpc("Ch?c莔  Th?Ph錸", "Ch?T筽 h鉧", 500,1730,3109);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\杂货店老板.lua");

	local nNpcIdx = CreateNpc("Ch?ti謒  Th?Ph錸", "Ch?Kim ho祅", 500,1721,3115);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\饰品店老板.lua");

	local nNpcIdx = CreateNpc("Chng dc Th?Ph錸", "Ch?Dc 甶誱", 500,1763,3091);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\药店老板.lua");

	local nNpcIdx = CreateNpc("Ch?c莔  Th?Ph錸", "Ch?t鰑 l莡", 500,1700,3176);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\酒楼老板.lua");

	local nNpcIdx = CreateNpc("Tr譶h Di", "Ch?thng h閕", 500,1772,3186);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\商会老板.lua");

	local nNpcIdx = CreateNpc("Quan vi猲", "Ph鬾g Tng ph馮h竔 th?", 500,1886,3102);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\凤翔府太守.lua");

	local nNpcIdx = CreateNpc("L鬰 Phi課 cao th?", "B?u", 500,1893,3114);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\捕头.lua");

	local nNpcIdx = CreateNpc("V?L﹎ Minh Ch?", "S?gi?m玭 ph竔", 500,1751,3141);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\门派接引人.lua");

	--府北车夫
	local nNpcIdx = CreateNpc("Xa phu", "Xa phu Ph鬾g Tng", 500,1849,3061);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\凤翔车夫.lua");

	--东门车夫
	local nNpcIdx = CreateNpc("Xa phu", "Xa phu Ph鬾g Tng", 500,1803,3220);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\凤翔车夫.lua");

	--西门车夫
	local nNpcIdx = CreateNpc("Xa phu", "Xa phu Ph鬾g Tng", 500,1671,3089);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\凤翔车夫.lua");

	--南门车夫
	local nNpcIdx = CreateNpc("Xa phu", "Xa phu Ph鬾g Tng", 500,1671,3202);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\凤翔车夫.lua");

	--北门箱子
	local nNpcIdx = CreateNpc("Rng  Tr.Nguy猲", "Th?kh?, 500,1828,3048);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\物品保管人北.lua");

	--东门箱子
	local nNpcIdx = CreateNpc("Rng  Tr.Nguy猲", "Th?kh?, 500,1798,3216);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\物品保管人东.lua");

	--西门箱子
	local nNpcIdx = CreateNpc("Rng  Tr.Nguy猲", "Th?kh?, 500,1678,3095);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\物品保管人西.lua");

	--南门箱子
	local nNpcIdx = CreateNpc("Rng  Tr.Nguy猲", "Th?kh?, 500,1656,3214);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\凤翔府\\npc\\物品保管人南.lua");

	--龙门镇
	local nNpcIdx = CreateNpc("Ti觰 nh?Th?Ph錸", "Ti觰 nh?, 507,1660,3293);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\龙门镇\\npc\\店小二.lua");

	local nNpcIdx = CreateNpc("Thi誹 ni猲 nam1", "T玭 Nh?Li猲", 507,1649,3293);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\龙门镇\\npc\\孙二琏.lua");

	local nNpcIdx = CreateNpc("Xa Lu﹏ B?Vng", "Xa Lu﹏ B?Vng", 507,1791,3173);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\龙门镇\\npc\\车轮霸王.lua");

	local nNpcIdx = CreateNpc("Xu﹏ Th藀 Tam nng", "Xu﹏ Th藀 Tam nng", 507,1884,3317);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\龙门镇\\npc\\春十三娘.lua");

	--昆仑
	local nNpcIdx = CreateNpc("Chu B蕋 Ho芻", "Chu B蕋 Ho芻", 509,1597,3203);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\昆仑\\npc\\周不惑.lua");

	local nNpcIdx = CreateNpc("T莕 B蕋 Tri", "T莕 B蕋 Tri", 509,1578,3194);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\昆仑\\npc\\秦不智.lua");

	local nNpcIdx = CreateNpc("Tr莕 B蕋 Vi", "Tr莕 B蕋 Vi", 509,1536,3228);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\昆仑\\npc\\陈不为.lua");

		local nNpcIdx = CreateNpc("M?B蕋 Ti襫", "M?B蕋 Ti襫", 509,1581,3249);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\昆仑\\npc\\马不前.lua");

	local nNpcIdx = CreateNpc("Vng B蕋 Ph祄", "Vng B蕋 Ph祄", 509,1427,3443);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\昆仑\\npc\\王不凡.lua");

	local nNpcIdx = CreateNpc("C玭 L玭 T﹏ Ph?Chng M玭", "Mai B蕋 Dung",509,1561,3270);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\昆仑\\npc\\梅不容.lua");

	local nNpcIdx = CreateNpc("C玭 Lu﹏ Nam  t?, "Di謕 T?Thu", 509,1551,3214);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\昆仑\\npc\\叶子秋.lua");

	local nNpcIdx = CreateNpc("C玭 Lu﹏ Nam  t?, "Tri謚 T?B譶h", 509,1432,3305);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\昆仑\\npc\\赵子平.lua");
	
	local nNpcIdx = CreateNpc("V﹏ Hi H遖", "V﹏ Hi H遖", 509,1615,3213);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\昆仑\\npc\\云羲和.lua");	
	
--	local nNpcIdx = CreateNpc("V鋘g Th?Ki誱", "V鋘g Th?Ki誱", 509,1620,3211);
--	SetNpcScript(nNpcIdx, 	
	
--	local nNpcIdx = CreateNpc("V﹏ V鋘g Th?, "V﹏ V鋘g Th?, 509,1618,3160);
--	SetNpcScript(nNpcIdx, 
	
	local nNpcIdx = CreateNpc("Rng  Trung Nguy猲","Th?kh?,509,1600,3229);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\昆仑\\npc\\物品保管人.lua");

	--光明顶
	local nNpcIdx = CreateNpc("H?ph竝 Minh Gi竜", " Minh ", 508,1691,2962);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\光明顶\\npc\\殷铭.lua");

	local nNpcIdx = CreateNpc("Di Tu kh竎h", "Di Tu Чi h竛", 508,1792,3306);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\光明顶\\npc\\虬须大汉.lua");

	--古阳洞一层
	local nNpcIdx = CreateNpc("Phi Thng Чo nh﹏", "Phi Thng Чo nh﹏", 511,1702,3365);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\古阳洞一层\\npc\\非常道人.lua");

	--古阳洞二层
	local nNpcIdx = CreateNpc("C玭 Lu﹏ Nam  t?, "е T?C玭 L玭", 512,2061,3404);
	SetNpcScript(nNpcIdx, "\\script\\missions\\northwest_mission\\npc\\npc_log_in.lua");

	--药王谷
	local nNpcIdx = CreateNpc("Thi誹 ni猲 trong th玭", "L璾 Tam ", 505,1482,2996);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\药王谷\\npc\\刘三.lua");

	local nNpcIdx = CreateNpc("T﹜ H?Ph竝 vng", "T﹜ H?Ph竝 vng", 505,1538,3146);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\药王谷\\npc\\西夏法王.lua");

	--药王洞
	local nNpcIdx = CreateNpc("Dc th蕋 th?v?, "Dc th蕋 th?v?, 510,1575,2853);
	SetNpcScript(nNpcIdx, "\\script\\missions\\northwest_mission\\npc\\npc_log_in.lua");

	--沙漠迷宫
	local nNpcIdx = CreateNpc("Ng?H祅h Tr薾 S?, "Ng?H祅h Tr薾 S?, 506,1325,2715);
	SetNpcScript(nNpcIdx, "\\script\\missions\\northwest_mission\\npc\\npc_log_in.lua");

	local nNpcIdx = CreateNpc("чc H祅h l穙 x?, "чc H祅h l穙 x?, 506,1545,2958);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\沙漠迷宫\\npc\\独行老陀.lua");

	local nNpcIdx = CreateNpc("Nam nh﹏ T﹜ B綾", "B筩h Thi猲 Th祅h", 506,1554,2658);
	SetNpcScript(nNpcIdx, "\\script\\missions\\northwest_mission\\npc\\npc_log_in.lua");

	--秦始皇陵
	local nNpcIdx = CreateNpc("чc t?, "筺 T?, 503,1412,2742);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\秦始皇陵\\npc\\断臂.lua");

	local nNpcIdx = CreateNpc("L譨 ch﹏", "L譨 ch﹏", 503,1588,2976);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\秦始皇陵\\npc\\残腿.lua");

	--皇陵一层
	local nNpcIdx = CreateNpc("Tr秓 Vng", "Tr秓 Vng", 513,1464,2998);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\皇陵墓室一层\\npc\\爪王.lua");

	local nNpcIdx = CreateNpc("Th?m?nh﹏", "Th?m?nh﹏", 513,1591,3178);
	SetNpcScript(nNpcIdx, "\\script\\missions\\northwest_mission\\npc\\npc_log_in.lua");

	--皇陵二层
	local nNpcIdx = CreateNpc("Th?M?Tng Qu﹏", "Th?M?Tng Qu﹏", 514,1733,2863);
	SetNpcScript(nNpcIdx, "\\script\\missions\\northwest_mission\\npc\\npc_log_in.lua");

	local nNpcIdx = CreateNpc("Tr蕁 m?l穘h qu﹏", "T﹜ Tr蕁 m?Tng qu﹏", 514,1475,2977);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\皇陵墓室二层\\npc\\镇墓将军西.lua");

	local nNpcIdx = CreateNpc("Tr蕁 m?l穘h qu﹏", "B綾 Tr蕁 m?Tng qu﹏", 514,1624,2822);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\皇陵墓室二层\\npc\\镇墓将军北.lua");

	local nNpcIdx = CreateNpc("Tr蕁 m?l穘h qu﹏", "Йng Tr蕁 m?Tng qu﹏", 514,1803,2983);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\皇陵墓室二层\\npc\\镇墓将军东.lua");

	local nNpcIdx = CreateNpc("Tr蕁 m?l穘h qu﹏", "Nam Tr蕁 m?Tng qu﹏", 514,1629,3169);
	SetNpcScript(nNpcIdx, "\\script\\西北区\\皇陵墓室二层\\npc\\镇墓将军南.lua");

	--鬼门回廊
	local nNpcIdx = CreateNpc("C玭 Lu﹏ Nam  t?, "е T?C玭 L玭", 328,1711,3258);
	SetNpcScript(nNpcIdx, "\\script\\中原二区\\鬼门回廊\\npc\\昆仑弟子.lua");

	--天师秘境
	local nNpcIdx = CreateNpc("C玭 Lu﹏ Nam  t?, "е T?C玭 L玭", 329,1731,3429);
	SetNpcScript(nNpcIdx, "\\script\\中原二区\\天师秘境\\npc\\昆仑弟子.lua");

	local nNpcIdx = CreateNpc("C?L﹗ vng", "C?L﹗ vng", 329,1620,3354);
	SetNpcScript(nNpcIdx, "\\script\\中原二区\\天师秘境\\npc\\骷髅王.lua");

end
function AddGongYe()
	local npcIndex = CreateNpc("Ch?V?kh?Trung Nguy猲", "C玭g D?binh ", 350,1399,2997)
	SetNpcScript(npcIndex, "\\script\\gongyeshijia.lua")
	local npcIndex = CreateNpc("Ch?V?kh?Trung Nguy猲", "C玭g D?kh?", 150,1647,3149)
	SetNpcScript(npcIndex, "\\script\\gongyeshijia.lua")
	local npcIndex = CreateNpc("Ch?V?kh?Trung Nguy猲", "C玭g D?c?", 400,1493,3053)
	SetNpcScript(npcIndex, "\\script\\gongyeshijia.lua")
end

function AddLiuTudi()
	local npcIndex = CreateNpc("Thi誹 ni猲 trong th玭", "H鋍 tr?Th?r蘮 L璾", 350,1410,2925)
	SetNpcScript(npcIndex, "\\script\\中原二区\\襄阳\\npc\\liutiejiangdizi.lua")
end


function Add3Festival()
	local npcIndex = CreateNpc("Thi猲 Vng Bang Ch?, "Chu ni猲 kh竛h s?,100,1440,2785)
	SetNpcScript(npcIndex, "\\script\\online\\3festival\\emissary_npc.lua")
	npcIndex = CreateNpc("Thi猲 Vng Bang Ch?, "Chu ni猲 kh竛h s?,200,1179,2845)
	SetNpcScript(npcIndex, "\\script\\online\\3festival\\emissary_npc.lua")
	npcIndex = CreateNpc("Thi猲 Vng Bang Ch?, "Chu ni猲 kh竛h s?,300,1649,3537)
	SetNpcScript(npcIndex, "\\script\\online\\3festival\\emissary_npc.lua")
	npcIndex = CreateNpc("V?L﹎ Minh Ch?", "c s?V?L﹎", 200,1167,2847)
	SetNpcScript(npcIndex, "\\script\\online\\3festival\\wulinmeng_npc.lua")
	npcIndex = CreateNpc("V?L﹎ Minh Ch?", "c s?V?L﹎", 300,1653,3565)
	SetNpcScript(npcIndex, "\\script\\online\\3festival\\wulinmeng_npc.lua")
	npcIndex = CreateNpc("V?L﹎ Minh Ch?", "c s?V?L﹎", 100,1439,2807)
	SetNpcScript(npcIndex, "\\script\\online\\3festival\\wulinmeng_npc.lua")
end;

function AddTyTuzi()
	local npcIndex = CreateNpc("Th?Ti觰 Nha", "Th?Ti觰 Nha",117,1663,3083)
	SetNpcScript(npcIndex, "\\script\\online\\abluemoon\\tianya_npc.lua")
end

function AddNewYearNpc()
	local npcIndex = CreateNpc("Thi猲 Vng Bang Ch?, "S?gi?ho箃 ng t﹏ ni猲 ",200,1167,2858)
	SetNpcScript(npcIndex, "\\script\\online\\newyear08\\newyear08_npc.lua")
	npcIndex = CreateNpc("Thi猲 Vng Bang Ch?, "S?gi?ho箃 ng t﹏ ni猲 ",100,1440,2808)
  SetNpcScript(npcIndex, "\\script\\online\\newyear08\\newyear08_npc.lua")
	npcIndex = CreateNpc("Thi猲 Vng Bang Ch?, "S?gi?ho箃 ng t﹏ ni猲 ",300,1649,3560)
  SetNpcScript(npcIndex, "\\script\\online\\newyear08\\newyear08_npc.lua")
	npcIndex = CreateNpc("Thi猲 Vng Bang Ch?, "S?gi?ho箃 ng t﹏ ni猲 ",350,1462,2974)
  SetNpcScript(npcIndex, "\\script\\online\\newyear08\\newyear08_npc.lua")
	npcIndex = CreateNpc("Thi猲 Vng Bang Ch?, "S?gi?ho箃 ng t﹏ ni猲 ",150,1679,3143)
  SetNpcScript(npcIndex, "\\script\\online\\newyear08\\newyear08_npc.lua")
	npcIndex = CreateNpc("Thi猲 Vng Bang Ch?, "S?gi?ho箃 ng t﹏ ni猲 ",400,1560,2963)
  SetNpcScript(npcIndex, "\\script\\online\\newyear08\\newyear08_npc.lua")
end

function add_biwudahui()
	ClearMapNpc(974)
	ClearMapNpc(975)
	ClearMapNpc(976)
	ClearMapNpc(7100)
	CreateNpcList({
		{"Ch﹏ T?Кn h祇 hoa","c s?Чi H閕 T?V?,200,1391,2816,"\\script\\biwudahui\\tournament\\npc\\npc_zhenzidan.lua"},
		{"Vng An Th筩h","Th莕 V?Vi謓 T?Nghi謕 (Tuy襫 Ch﹗)",974,1620,3180,"\\script\\biwudahui\\tournament\\npc\\npc_field_keeper.lua"},
		{"Vng An Th筩h","Th莕 V?Vi謓 T?Nghi謕 (Bi謓 Kinh)",975,1620,3180,"\\script\\biwudahui\\tournament\\npc\\npc_field_keeper.lua"},
		{"Vng An Th筩h","Th莕 V?Vi謓 T?Nghi謕 (Th祅h Й)",976,1620,3180,"\\script\\biwudahui\\tournament\\npc\\npc_field_keeper.lua"},
		{"Vng An Th筩h","Th莕 V?Vi謓 T?Nghi謕 (To祅 qu鑓)",7100,1404,2858,"\\script\\biwudahui\\tournament\\npc\\npc_field_keeper.lua"},
	});
end;
function add_faction_back_room()
	local nNpcIdx = 0;
	nNpcIdx = CreateNpc("Thi誹 L﹎ Th?T鋋","Huy襫 Kh玭g",204,1645,3270);	--少林
	SetNpcScript(nNpcIdx,"\\script\\task\\faction_back_room\\npc_master.lua");
	nNpcIdx = CreateNpc("Л阯g M玭 i  ","Л阯g T?M筩",305,1674,2936);	--唐门
	SetNpcScript(nNpcIdx,"\\script\\task\\faction_back_room\\npc_master.lua");
	nNpcIdx = CreateNpc("Nga My ph?chng m玭","Tu?V﹏ S?Th竔",303,1715,3059);	--峨嵋
	SetNpcScript(nNpcIdx,"\\script\\task\\faction_back_room\\npc_master.lua");
	nNpcIdx = CreateNpc("C竔 Bang ph?chng m玭","B祅g L?V鋘g",209,1530,3209);	--丐帮
	SetNpcScript(nNpcIdx,"\\script\\task\\faction_back_room\\npc_master.lua");
	nNpcIdx = CreateNpc("V?ng  m玭 nh﹏","Ti誸 V﹏ Tranh",312,1871,3276);	--武当
	SetNpcScript(nNpcIdx,"\\script\\task\\faction_back_room\\npc_master.lua");
end;

function Add_wuyi_npc()
	local nNpcIdx = 0;
	nNpcIdx = CreateNpc("Giang h?tu蕁 ki謙","Hi猲 Vi猲 Trung",200,1176,2825);
	SetNpcScript(nNpcIdx,"\\script\\online\\laborday08\\mah_jong_npc.lua");
	nNpcIdx = CreateNpc("Giang h?tu蕁 ki謙","Hi猲 Vi猲 Nh﹏",300,1649,3538);
	SetNpcScript(nNpcIdx,"\\script\\online\\laborday08\\mah_jong_npc.lua");
	nNpcIdx = CreateNpc("Giang h?tu蕁 ki謙","Hi猲 Vi猲 L?,100,1436,2791);
	SetNpcScript(nNpcIdx,"\\script\\online\\laborday08\\mah_jong_npc.lua");
end

function add_weizhi_npc()
	local n = CreateNpc("Quan s?trung ni猲1","Qu鑓 T?gi竚",200,1463,2758)
	SetNpcScript(n, "\\script\\master_prentice\\国子监学官.lua")
	n = CreateNpc("Ch?qu秐 H醓 Kh?ph遪g","L﹎ T辌h",106,1557,3069);
	SetNpcScript(n, "\\script\\江南区\\龙泉村\\npc\\linxi_npc.lua");
end

function init_xc_ls_sq()
	-- \script\item\xiancao.lua 注意：此表应该与该文件内的表保持一致！
	local tXclInfo =
	{
		{2, 1, 1012, 7200, 150, "B錸g Lai Ti猲 Th駓",1},
		{2, 0, 109, 7200, 200, "B錸g Lai Ti猲 L?,1.5},
		{2, 1, 1013, 7200, 300, "B錸g Lai Ti猲 Кn",2},
		{2, 1, 1052, 7200, 120, "B錸g Lai L?Th駓",0},
	}
	for index, value in tXclInfo do
		InitXclSpeed(index, value[5])
	end

	-- \script\item\item_billing\shengwangwan.lua 注意：此表应该与该文件内的表保持一致！
	local tLsInfo =
	{
		{2, 1, 1064, 480, 1, "L鬰 Th莕 ho祅"},
		{2, 1, 1065, 480, 2, "Cng L鬰 Th莕 ho祅"},
		{2, 1, 1066, 480, 3, "L鬰 Th莕 Ti猲 n"},
	}
	for index, value in tLsInfo do
		InitLiushenSpeed(index, value[5])
	end
	InitLiushenInterval(6)

	-- \script\item\item_billing\sanqingwan.lua 注意：此表应该与该文件内的表保持一致！
	local tSqInfo =
	{
		{2, 1, 1097, 480, 1, "Tam Thanh ho祅"},
		{2, 1, 1098, 480, 2, "Cng Tam Thanh ho祅"},
		{2, 1, 1099, 480, 3, "Tam Thanh Ti猲 n"},
	}
	for index, value in tSqInfo do
		InitSanqinSpeed(index, value[5])
	end
	InitSanqinInterval(20)
end

function Add_aoyun_npc()
	local nNpcIdx = 0;
	nNpcIdx = CreateNpc("Tr輈h Th莕","Trng l穙 V?L﹎",200,1412,2807);
	SetNpcScript(nNpcIdx,"\\script\\online\\jiuzhuanxuangong\\jiuzhuan_head.lua");
end
function Add_AoYunQiXi08()
	local nNpcIdx = CreateNpc("Vng An Th筩h","c s?Чi H閕 V?l﹎",100,1435,2973);
	SetNpcScript(nNpcIdx,"\\script\\online\\qixi08\\npc.lua");
	nNpcIdx = CreateNpc("Vng An Th筩h","c s?Чi H閕 V?l﹎",200,1394,2874);
	SetNpcScript(nNpcIdx,"\\script\\online\\qixi08\\npc.lua");
	nNpcIdx = CreateNpc("Vng An Th筩h","c s?Чi H閕 V?l﹎",300,1752,3541);
	SetNpcScript(nNpcIdx,"\\script\\online\\qixi08\\npc.lua");
	for i=0,2 do
		nNpcIdx = CreateNpc("L?S?S?,"X秓 n?,966+i,1636,3300);
		SetNpcScript(nNpcIdx,"\\script\\online\\qixi06\\qiaonv_npc.lua");
	end;
end;

function AddLaborDay()
	local npcIndex = CreateNpc("G竛h h祅g","Nh?bu玭 T?B秓 Trai",100,1433,2792);	--泉州
	SetNpcScript(npcIndex,"\\script\\online\\laborday06\\collector_npc_BJ.lua");
	npcIndex = CreateNpc("G竛h h祅g","Nh?bu玭 T?B秓 Trai",200,1176,2827);	--汴京
	SetNpcScript(npcIndex,"\\script\\online\\laborday06\\collector_npc_BJ.lua");
	npcIndex = CreateNpc("G竛h h祅g","Nh?bu玭 T?B秓 Trai",300,1652,3540);	--成都
	SetNpcScript(npcIndex,"\\script\\online\\laborday06\\collector_npc_BJ.lua");

	npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲","g ch?T?B秓 Trai", 350,1578,2965);	--襄阳
	SetNpcScript(npcIndex,"\\script\\online\\laborday06\\awardprize_npc_XY.lua");
	npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲","g ch?T?B秓 Trai", 150,1783,3148);	--扬州
	SetNpcScript(npcIndex,"\\script\\online\\laborday06\\awardprize_npc_XY.lua");
end;

function add_mail_carrier()
	local script_name = "\\script\\misc\\mail_carrier.lua"
	local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Ch?B璾 c鬰", 200, 1332, 2792);
	SetNpcScript(nNpcIdx, script_name);
	local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Ch?B璾 c鬰", 300, 1760, 3630);
	SetNpcScript(nNpcIdx, script_name);
	local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Ch?B璾 c鬰", 100, 1476, 2905);
	SetNpcScript(nNpcIdx, script_name);
	local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Ch?B璾 c鬰", 350, 1380, 3015);
	SetNpcScript(nNpcIdx, script_name);
	local nNpcIdx = CreateNpc("Rng  Trung Nguy猲", "Ch?B璾 c鬰", 400, 1425, 3052);
	SetNpcScript(nNpcIdx, script_name);
end

--******************************第一帮活动*******************************
function AddFirstTongNpc()
	local nNpcIndex = 0;
	nNpcIndex = CreateNpc("V?L﹎ Minh Ch?","V?L﹎ c S?,106,1305,2989);	--龙泉村163/186
	SetNpcScript(nNpcIndex, "\\script\\online\\jpz_event\\first_tong\\wulinteshi_npc.lua");

	nNpcIndex = CreateNpc("Rng ti襫","B秓 rng Hoa s琻",969,1597,2981,-1,1,1,100)			--宝箱
	SetNpcScript(nNpcIndex,"\\script\\online\\jpz_event\\first_tong\\huashan_box_npc.lua")
	SetGlbValue(501,nNpcIndex)

	nNpcIndex = CreateNpc("V?L﹎ Minh Ch?","V?L﹎ c S?,969,1643,3225)		--华山npc
	SetNpcScript(nNpcIndex,"\\script\\online\\jpz_event\\first_tong\\huashan_npc.lua")
end;
function AddVuPhuong()
	if tonumber(date("%y%m%d%H")) >= 09061900 and tonumber(date("%y%m%d%H")) <= 09113024 then
	--创建武芳将军NPC--NPC模板是？？
		local npcIndex = 0;
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 200, 1412, 2864);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 300, 1770, 3560);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 100, 1455, 2979);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 350, 1467, 2987);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 150, 1709, 3161);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 400, 1479, 3031);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
	end
end

function Add_0910_npc()
	if tonumber(date("%y%m%d%H")) >= 09092800 and tonumber(date("%y%m%d%H")) < 09102524 then
		local npcIndex = 0;
		npcIndex = CreateNpc("уng n?","Ti觰 Quy猲",350,1424,2973);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\8\\npc_xiao_quyen.lua");
		npcIndex = CreateNpc("уng n?","Ti觰 Ch﹗",350,1428,2977);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\8\\npc_xiao_chau.lua");
		npcIndex = CreateNpc("уng n?","Ti觰 Anh",350,1422,2977);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\8\\npc_xiao_anh.lua");
		
		npcIndex = CreateNpc("уng n?","Ti觰 Quy猲",400,1493,3013);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\8\\npc_xiao_quyen.lua");
		npcIndex = CreateNpc("уng n?","Ti觰 Ch﹗",400,1498,3018);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\8\\npc_xiao_chau.lua");
		npcIndex = CreateNpc("уng n?","Ti觰 Anh",400,1492,3021);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\8\\npc_xiao_anh.lua");
		
		npcIndex = CreateNpc("уng n?","Ti觰 Quy猲",100,1447,2990);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\8\\npc_xiao_quyen.lua");
		npcIndex = CreateNpc("уng n?","Ti觰 Ch﹗",100,1450,2997);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\8\\npc_xiao_chau.lua");
		npcIndex = CreateNpc("уng n?","Ti觰 Anh",100,1444,2996);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\8\\npc_xiao_anh.lua");
	end
end

----越南2009年6、7月份活动NPC添加
function Add67EventNpcs()
	if EventOpen0906() == 0 then
		return
	end
	if tonumber(date("%y%m%d%H")) >= 09061900 and tonumber(date("%y%m%d%H")) < 09071924 then
		local npcIndex = 0;
	--创建夜草NPC
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 200, 1392, 2844);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 300, 1745, 3540);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 100, 1435, 2959);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 350, 1447, 2987);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 150, 1689, 3141);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 400, 1486, 3011);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_yecao.lua");

	--创建夜草金库老板NPC
		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Ch?Ng﹏ Kh?, 200, 1402, 2854);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_jinkulaoban.lua");
		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Ch?Ng﹏ Kh?, 300, 1760, 3550);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_jinkulaoban.lua");
		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Ch?Ng﹏ Kh?, 100, 1445, 2969);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_jinkulaoban.lua");
		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Ch?Ng﹏ Kh?, 350, 1457, 2997);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_jinkulaoban.lua");
		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Ch?Ng﹏ Kh?, 150, 1699, 3151);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_jinkulaoban.lua");
		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Ch?Ng﹏ Kh?, 400, 1491, 3031);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\2\\npc_jinkulaoban.lua");

	--创建复原真人NPC
		npcIndex = CreateNpc("V?ng  chng m玭", "Ph鬰 Nguy猲 Ch﹏ Nh﹏", 200, 1402, 2864);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\1\\npc_fuyuanzheren.lua");
		npcIndex = CreateNpc("V?ng  chng m玭", "Ph鬰 Nguy猲 Ch﹏ Nh﹏", 300, 1758, 3529);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\1\\npc_fuyuanzheren.lua");
		npcIndex = CreateNpc("V?ng  chng m玭", "Ph鬰 Nguy猲 Ch﹏ Nh﹏", 100, 1440, 2976);--
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\1\\npc_fuyuanzheren.lua");
		npcIndex = CreateNpc("V?ng  chng m玭", "Ph鬰 Nguy猲 Ch﹏ Nh﹏", 350, 1442, 2997);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\1\\npc_fuyuanzheren.lua");
		npcIndex = CreateNpc("V?ng  chng m玭", "Ph鬰 Nguy猲 Ch﹏ Nh﹏", 150, 1699, 3161);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\1\\npc_fuyuanzheren.lua");
		npcIndex = CreateNpc("V?ng  chng m玭", "Ph鬰 Nguy猲 Ch﹏ Nh﹏", 400, 1494, 3016);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\1\\npc_fuyuanzheren.lua");
		--创建胖兔子NPC
				
		local nSets1 = {{1691, 3081}, {1644, 3124}, {1688, 3194}, {1643, 3282}, {1718, 3263}};
		for i = 1, 5 do--千寻塔一层 Thi猲 T莔 Th竝 
			local nRand = random(1, getn(nSets1));
			CreateNpc("Th?M藀", "Th?M藀", 116, nSets1[nRand][1], nSets1[nRand][2]);
		end
		
		local nSets2 = {{1500, 2903}, {1424, 2896}, {1387, 3053}, {1443, 3066}, {1532, 3153}};
		for i = 1, 5 do--千寻塔一层 Thi猲 T莔 Th竝 
			local nRand = random(1, getn(nSets2));
			CreateNpc("Th?M藀", "Th?M藀", 403, nSets2[nRand][1], nSets2[nRand][2]);
		end
		
		local nSets3 = {{1528, 3115}, {1584, 2912}, {1488, 2646}, {1390, 2702}, {1392, 2912}};
		for i = 1, 5 do--千寻塔一层 Thi猲 T莔 Th竝 
			local nRand = random(1, getn(nSets3));
			CreateNpc("Th?M藀", "Th?M藀", 102, nSets3[nRand][1], nSets3[nRand][2]);
		end
		
		local nSets4 = {{1664, 3424}, {1728, 3504}, {1872, 3264}, {2064, 3456}, {1776, 3696}};
		for i = 1, 5 do--千寻塔一层 Thi猲 T莔 Th竝 
			local nRand = random(1, getn(nSets4));
			CreateNpc("Th?M藀", "Th?M藀", 409, nSets4[nRand][1], nSets4[nRand][2]);
		end
		
		local nSets5 = {{1552, 2752}, {1496, 3056}, {1456, 2864}, {1392, 3087}, {1376, 2752}};
		for i = 1, 5 do--千寻塔一层 Thi猲 T莔 Th竝 
			local nRand = random(1, getn(nSets5));
			CreateNpc("Th?M藀", "Th?M藀", 151, nSets5[nRand][1], nSets5[nRand][2]);
		end
	end

	if tonumber(date("%y%m%d%H")) >= 09061900 and tonumber(date("%y%m%d%H")) < 09080224 then
	--创建武芳将军NPC--NPC模板是？？
		local npcIndex = 0;
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 200, 1412, 2864);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 300, 1770, 3560);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 100, 1455, 2979);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 350, 1467, 2987);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 150, 1709, 3161);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
		npcIndex = CreateNpc("T鑞g Tng Qu﹏", "V?Phng Tng Qu﹏", 400, 1479, 3031);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\6\\npc_wufangjiangjun.lua");
	end
	
	if tonumber(date("%y%m%d%H")) >= 09061900 and tonumber(date("%y%m%d%H")) < 09080524 then
	--创建逍遥使者NPC
		npcIndex = CreateNpc("V?L﹎ Minh Ch?", "S?Gi?Ti猽 Giao", 200, 1422, 2874);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\7\\npc_xiaoyaoshizhe.lua");
		npcIndex = CreateNpc("V?L﹎ Minh Ch?", "S?Gi?Ti猽 Giao", 300, 1750, 3570);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\7\\npc_xiaoyaoshizhe.lua");
		npcIndex = CreateNpc("V?L﹎ Minh Ch?", "S?Gi?Ti猽 Giao", 100, 1465, 2989);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\7\\npc_xiaoyaoshizhe.lua");
		npcIndex = CreateNpc("V?L﹎ Minh Ch?", "S?Gi?Ti猽 Giao", 350, 1447, 3007);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\7\\npc_xiaoyaoshizhe.lua");
		npcIndex = CreateNpc("V?L﹎ Minh Ch?", "S?Gi?Ti猽 Giao", 150, 1689, 3171);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\7\\npc_xiaoyaoshizhe.lua");
		npcIndex = CreateNpc("V?L﹎ Minh Ch?", "S?Gi?Ti猽 Giao", 400, 1501, 3005);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200907\\7\\npc_xiaoyaoshizhe.lua");
	end
end

function AddNpcYecao()
--	if tonumber(date("%y%m%d%H")) >= 09073100 and tonumber(date("%y%m%d%H")) <= 09090624 then
		local npcIndex = 0;
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 200, 1392, 2844);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200908\\yecao\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 300, 1745, 3540);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200908\\yecao\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 100, 1435, 2959);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200908\\yecao\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 350, 1447, 2987);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200908\\yecao\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 150, 1689, 3141);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200908\\yecao\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 400, 1486, 3011);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200908\\yecao\\npc_yecao.lua");
		npcIndex = CreateNpc("Ch?T?l鬭 Trung Nguy猲", "D?Th秓", 500, 1733, 3142);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200908\\yecao\\npc_yecao.lua");
--	end
end
--越南09年8月NPC添加
function add_0908_npc()
	local nDate = tonumber(date("%y%m%d"));
	local npcIndex = 0;
	if nDate >= 090807 and nDate < 090907 then
		npcIndex = CreateNpc("Ch?c莔  Th?Ph錸", "Nh?S璾 T莔 M藅 T辌h", 500, 1774, 3124);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200908\\6\\npc_mijishoucangjia.lua");
	end
	if nDate >= 090830 and nDate < 090907 then
		npcIndex = CreateNpc("B?mai", "B?x?Th?r蘮 L璾", 350, 1412, 2928);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200908\\quockhanh\\npc_quockhanh.lua");
	end
end

--越南09年8月调整，离线托管种树NPC添加
function add_0908_tuoguan_plant_npc()
	local nNpcIndex = 0;
	nNpcIndex = CreateNpc("V?L﹎ Minh Ch?", "V?L﹎ S?Gi?, 200, 1433, 2857);
	SetNpcScript(nNpcIndex, "\\script\\task\\plant_tuoguan\\npc_wulinshizhe.lua");
	nNpcIndex = CreateNpc("V?L﹎ Minh Ch?", "V?L﹎ S?Gi?, 300, 1747, 3490);
	SetNpcScript(nNpcIndex, "\\script\\task\\plant_tuoguan\\npc_wulinshizhe.lua");
	nNpcIndex = CreateNpc("V?L﹎ Minh Ch?", "V?L﹎ S?Gi?, 350, 1358, 2907);
	SetNpcScript(nNpcIndex, "\\script\\task\\plant_tuoguan\\npc_wulinshizhe.lua");
	nNpcIndex = CreateNpc("V?L﹎ Minh Ch?", "V?L﹎ S?Gi?, 150, 1668, 3133);
	SetNpcScript(nNpcIndex, "\\script\\task\\plant_tuoguan\\npc_wulinshizhe.lua");
	nNpcIndex = CreateNpc("V?L﹎ Minh Ch?", "V?L﹎ S?Gi?, 100, 1464, 2987);
	SetNpcScript(nNpcIndex, "\\script\\task\\plant_tuoguan\\npc_wulinshizhe.lua");
	nNpcIndex = CreateNpc("V?L﹎ Minh Ch?", "V?L﹎ S?Gi?, 500, 1729, 3161);
	SetNpcScript(nNpcIndex, "\\script\\task\\plant_tuoguan\\npc_wulinshizhe.lua");
	nNpcIndex = CreateNpc("V?L﹎ Minh Ch?", "V?L﹎ S?Gi?, 400, 1523, 2974);
	SetNpcScript(nNpcIndex, "\\script\\task\\plant_tuoguan\\npc_wulinshizhe.lua");
end

--越南09年9月中秋活动NPC添加
function add_0909_npc()
	local nDate = tonumber(date("%y%m%d"));
	local npcIndex = 0;
	if nDate >= 090918 and nDate < 091026 then
		--宝箱管理
--		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Qu秐 L?B秓 Rng", 100, 1443, 2975);
--		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\7\\npc_baoxiangguanli.lua");
--		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Qu秐 L?B秓 Rng", 200, 1405, 2858);
--		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\7\\npc_baoxiangguanli.lua");
--		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Qu秐 L?B秓 Rng", 150, 1697, 3159);
--		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\7\\npc_baoxiangguanli.lua");
--		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Qu秐 L?B秓 Rng", 350, 1462, 2980);
--		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\7\\npc_baoxiangguanli.lua");
--		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Qu秐 L?B秓 Rng", 300, 1758, 3529);
--		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\7\\npc_baoxiangguanli.lua");
--		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲", "Qu秐 L?B秓 Rng", 500, 1743, 3122);
--		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\7\\npc_baoxiangguanli.lua");
		--中心灯笼
		npcIndex = CreateNpc("n K衞 Qu﹏","n K衞 Qu﹏", 100,1439,2993);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\6\\npc_zhongxindenglong.lua");
		npcIndex = CreateNpc("n K衞 Qu﹏","n K衞 Qu﹏", 300,1728,3516);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\6\\npc_zhongxindenglong.lua");
		npcIndex = CreateNpc("n K衞 Qu﹏","n K衞 Qu﹏", 200,1378,2854);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\6\\npc_zhongxindenglong.lua");
		npcIndex = CreateNpc("n K衞 Qu﹏","n K衞 Qu﹏", 400,1486,3025);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\6\\npc_zhongxindenglong.lua");
		npcIndex = CreateNpc("n K衞 Qu﹏","n K衞 Qu﹏", 150,1683,3134);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\6\\npc_zhongxindenglong.lua");
		npcIndex = CreateNpc("n K衞 Qu﹏","n K衞 Qu﹏", 350,1419,2981);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200909\\6\\npc_zhongxindenglong.lua");
	end
end


--越南09年11月NPC添加
function add_0911_npc()
	local nDate = tonumber(date("%y%m%d"));
	local npcIndex = 0;
	if nDate >= 091113 and nDate < 091130 then
		npcIndex = CreateNpc("Ch?c莔  Th?Ph錸", "Nh?S璾 T莔 M藅 T辌h", 500, 1774, 3124);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\4\\npc_mijishoucangjia.lua");
		npcIndex = CreateNpc("Ch?c莔  Th?Ph錸", "Nh?S璾 T莔 M藅 T辌h", 200,1376,2862);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\4\\npc_mijishoucangjia.lua");
		npcIndex = CreateNpc("Ch?c莔  Th?Ph錸", "Nh?S璾 T莔 M藅 T辌h", 300,1731,3511);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\4\\npc_mijishoucangjia.lua");
		npcIndex = CreateNpc("Ch?c莔  Th?Ph錸", "Nh?S璾 T莔 M藅 T辌h", 100,1420,2975);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\4\\npc_mijishoucangjia.lua");
		npcIndex = CreateNpc("Ch?c莔  Th?Ph錸", "Nh?S璾 T莔 M藅 T辌h", 150,1693,3137);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\4\\npc_mijishoucangjia.lua");
		npcIndex = CreateNpc("Ch?c莔  Th?Ph錸", "Nh?S璾 T莔 M藅 T辌h", 350,1441,2959);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\4\\npc_mijishoucangjia.lua");
		npcIndex = CreateNpc("Ch?c莔  Th?Ph錸", "Nh?S璾 T莔 M藅 T辌h", 400,1507,2982);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\4\\npc_mijishoucangjia.lua");
	end
end

function Add_ip_npc()
		local npcIndex = 0;
		npcIndex = CreateNpc("Phu nh﹏-ph?th玭g","Ch?Ch?Ph遪g M竬", 200,1372,2865);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\ip_bonus\\ip_manager_npc.lua");		
		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲","Anh Ch?Ph遪g M竬", 300,1732,3517);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\ip_bonus\\ip_manager_npc.lua");		
		npcIndex = CreateNpc("Phu nh﹏-ph?th玭g","Ch?Ch?Ph遪g M竬", 100,1432,2994);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\ip_bonus\\ip_manager_npc.lua");		
		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲","Anh Ch?Ph遪g M竬", 350,1431,2973);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\ip_bonus\\ip_manager_npc.lua");		
		npcIndex = CreateNpc("Phu nh﹏-ph?th玭g","Ch?Ch?Ph遪g M竬", 150,1688,3169);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\ip_bonus\\ip_manager_npc.lua");		
		npcIndex = CreateNpc("Ch?c莔  Trung Nguy猲","Anh Ch?Ph遪g M竬", 400,1547,2991);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\ip_bonus\\ip_manager_npc.lua");		
end

function Add_bachtiensinh()
		local npcIndex = 0
		npcIndex = CreateNpc("Nguy謙 L穙", "B筩h Ti猲 Sinh", 200, 1372, 2851);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\6\\npc_bachtiensinh.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "B筩h Ti猲 Sinh", 300, 1726, 3522);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\6\\npc_bachtiensinh.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "B筩h Ti猲 Sinh", 350, 1426, 2982);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\6\\npc_bachtiensinh.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "B筩h Ti猲 Sinh", 150, 1694, 3161);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\6\\npc_bachtiensinh.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "B筩h Ti猲 Sinh", 100, 1441, 2983);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\6\\npc_bachtiensinh.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "B筩h Ti猲 Sinh", 400, 1531, 2964);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\6\\npc_bachtiensinh.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "B筩h Ti猲 Sinh", 500, 1743, 3152);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200911\\6\\npc_bachtiensinh.lua");
end

--越南09年12月NPC添加
function add_0912_npc()
	local nDate = tonumber(date("%y%m%d"));
	local npcIndex = 0;
	if nDate >= 091218 and nDate < 100117 then
		npcIndex = CreateNpc("Nguy謙 L穙", "V筺 Ni猲 Gia", 200, 1402, 2863);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200912\\2\\npc_wannianjia.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "V筺 Ni猲 Gia", 300, 1741, 3513);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200912\\2\\npc_wannianjia.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "V筺 Ni猲 Gia", 100, 1439, 2964);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200912\\2\\npc_wannianjia.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "V筺 Ni猲 Gia", 150, 1696, 3140);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200912\\2\\npc_wannianjia.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "V筺 Ni猲 Gia", 350, 1427, 2972);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200912\\2\\npc_wannianjia.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "V筺 Ni猲 Gia", 400, 1510, 2988);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200912\\2\\npc_wannianjia.lua");
		npcIndex = CreateNpc("Nguy謙 L穙", "V筺 Ni猲 Gia", 500, 1742, 3138);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\200912\\2\\npc_wannianjia.lua");
	end
end
function Add_TianMenZhen()
	local tNpcInfo = {
		"Dng V╪ Si猽",
		"Phi猽 k?tng qu﹏ Qu竎h Qu﹏ B籲g ",
		{
			{350,1429,2816},
			{300,1855,3672},
			{400,1437,2869},
		},
		"\\script\\missions\\tianmenzhen\\tmz_npc.lua"
	}
	for i = 1,getn(tNpcInfo[3]) do
		local nNpcIndex = CreateNpc(tNpcInfo[1],tNpcInfo[2],tNpcInfo[3][i][1],tNpcInfo[3][i][2],tNpcInfo[3][i][3])
		SetNpcScript(nNpcIndex,tNpcInfo[4])
	end
	local nNpcIndex = CreateNpc("D?Lu藅 B秓 у","Li猽 Qu﹏ Quan",604,1554,3125);
	SetNpcDeathScript(nNpcIndex,"\\script\\missions\\tianmenzhen\\tmz_task_npc.lua");
end

--梁山传送NPC创建
function Liangshan_Entrance()
		local tPoes = {
		{200, 1161, 2862},
		{100, 1368, 2873},
		{300, 1967, 3537},
	}
	for _, tPos in tPoes do
		local npcIndex = CreateNpc("Th莕 H祅h Th竔 B秓 ыi T玭g", "Th莕 H祅h Th竔 B秓 ыi T玭g", tPos[1], tPos[2], tPos[3])
		AddUnitStates(npcIndex, 7, 0);
		AddUnitStates(npcIndex, 8, -GetUnitCurStates(npcIndex, 8));
		SetNpcScript(npcIndex, "\\script\\missions\\liangshan\\npc\\entrynpc_.lua");
	end
end

function Add_TuBaoThuongNhan()
  	local npcIndex111 = CreateNpc("Chng dc Th?Ph錸", "T?B秓 Thng Nh﹏", 200, 1449, 2911);
    	SetNpcScript(npcIndex111, "\\script\\vng\\saleoff\\proday.lua");
end

--加载npc_list.txt配置的NPC
function LoadNpcList()
	
	--------------------------------------------------------------------
	do
		--暂时把代币商店NPC在这里创建吧
    	local npcIndex111 = CreateNpc("Chng dc Th?Ph錸", "T?B秓 Thng Nh﹏", 200, 1449, 2911);
    	SetNpcScript(npcIndex111, "\\script\\equip_shop\\bianjing_npc.lua");
    	return
	end
	--------------------------------------------------------------------
	
	
	---以下机制暂时先不开放吧以后再整理
	local SZ_NPC_LIST_FILE = "\\settings\\npc\\npc_list.txt"
	local tbNpcListFile = new(KTabFile, SZ_NPC_LIST_FILE);
	if tbNpcListFile then
		if tbNpcListFile.__bOpen ~= 0 then
			local nRowCnt = tbNpcListFile:getRow() or 0;
			local nCurDate = tonumber(date("%Y%m%d"));
			
			local szTemplateName, szNpcName = "", "";
			local nCreateStartDate, nCreateEndDate = 0, 0;
			local nMapId, nPosX, nPosY = 0, 0, 0;
			local szScript = "";
			for i = 3, nRowNum do
				nCreateStartDate = tonumber(tbNpcListFile:getCell(i, "CreateStartDate")) or 0;
				nCreateEndDate = tonumber(tbNpcListFile:getCell(i, "CreateEndDate")) or 0;
				if _IsInCreateDate(nCurDate, nCreateStartDate, nCreateEndDate) == 1 then--只有在有效期的NPC才创建
					szTemplateName = tbNpcListFile:getCell(i, "TemplateName");
					szNpcName = tbNpcListFile:getCell(i, "NpcName");
					szScript = tbNpcListFile:getCell(i, "DialogScript");
					nMapId = tonumber(tbNpcListFile:getCell(i, "MapId")) or 0 
					nPosX = tonumber(tbNpcListFile:getCell(i, "MapX")) or 0 
					nPosY = tonumber(tbNpcListFile:getCell(i, "MapY")) or 0 
					
					local nNpcIndex = CreateNpc(szTemplateName, szNpcName, nMapId, nPosX, nPosY);
					if szScript and szScript ~= "" and nNpcIndex > 0 then
						SetNpcScript(nNpcIndex, szScript);
					end
				end
			end
		end
		tbNpcListFile:close();--关闭文件
	end
end

--判断当前日期是否在有效期
function _IsInCreateDate(nCurDate, nStartDate, nFinishDate)
	if  not nCurDate or nCurDate <= 0 then
		return 0;
	end
	if nStartDate and nStartDate > 0 and nCurDate < nStartDate then
		return 0;
	end
	if nFinishDate and nFinishDate > 0 and nCurDate >= nFinishDate then
		return 0;
	end
	return 1;
end

function DragonBoat_2011_npc()
	local tPos = {
			{150,1691,3159}, --{300,1648,3534} 单服上没有此地图
		}
	local tPosinfo
	for _,tPosinfo in tPos do
		local nNpcIndex = CreateNpc("Thi猲 Vng Bang у","H秈 Chi課 Ti誴 D蒼 S?,tPosinfo[1],tPosinfo[2],tPosinfo[3])
		SetNpcScript(nNpcIndex,"\\script\\missions\\dragonboat2011\\npc_entrance.lua")
	end
end

function Init_newres()
--	if SubWorldID2Idx(606) >= 0 then	
	if mf_GetMissionV(24, 1,606) == 0 then			
    		mf_OpenMission(24, 606)
    		AddGlobalNews("Thi猲 M玭 Tr薾-T礽 nguy猲 chi課  b総 u. M阨 c竎 v?anh h飊g mau ch鉵g n Tng Dng t譵 T?M?T蕁 Nguy猲  tham gia!")
    		Msg2SubWorld("Thi猲 M玭 Tr薾-T礽 nguy猲 chi課  b総 u. M阨 c竎 v?anh h飊g mau ch鉵g n Tng Dng t譵 T?M?T蕁 Nguy猲  tham gia!")
    	end
--    	end
end

function Init_pet_fighting()
	if mf_GetMissionV(44, 1,101) == 0 then			
    		mf_OpenMission(44, 101)    		    		
    	end
end

function Init_golden_chest()
	local tPos = 	{
							{513,1645,2983},{513,1649,2979},{513,1636,2993},{513,1642,2972},{513,1666,2772},{513,1666,2780},{513,1666,2786},{513,1665,2790},{513,1558,3090},{513,1567,3084},{513,1573,3093},{513,1567,3108},{513,1627,3160},{513,1621,3172},{513,1632,3177},{513,1604,3158},
							{514,1721,3074},{514,1715,3080},{514,1728,3067},{514,1721,3056},{514,1742,2887},{514,1736,2892},{514,1743,2899},{514,1752,2895},{514,1809,2987},{514,1808,2995},{514,1820,2990},{514,1822,2981},{514,1819,2971},{514,1814,2958},{514,1824,2961},{514,1836,2972},
							{108,1422,3187},{108,1425,3180},{108,1434,3187},{108,1471,3004},
							{301,1565,3110},{301,1569,3102},{301,1564,3090},{301,1510,2977},
						}											
	local nNpcIndex = 0;	
	for i=1, getn(tPos) do 	
		nNpcIndex = CreateNpc("Rng n竧", "Rng Ho祅g Kim", tPos[i][1],  tPos[i][2],  tPos[i][3]);
		SetNpcScript(nNpcIndex, "\\script\\online\\viet_event\\golden_card\\npc_golden_chest.lua");
		SetUnitCurStates(nNpcIndex,2,i)
	end
end

function AddTuLinhNpc()
local nNation =GetGlbValue(GLB_TSK_SERVER_ID)
	local szName = "Jx2 Animal"
	local nDate = tonumber(date("%Y%m%d"))
	local nGroup = 2
	for i = 1, getn(tb_server_group) do
		for j = 1, getn(tb_server_group[i]) do
			if nNation == tb_server_group[i][j] then
				nGroup = i
				break 
			end
		end
	end
	--for i = 1, getn(TB_NATION_SERVERLIST) do
		--if nNation == TB_NATION_SERVERLIST[i][1] then
			--szName = TB_NATION_SERVERLIST[i][2]
		--	break
	--	end
	--end
	
	npcIndex = CreateNpc(tb_npc_type[nGroup], szName, 100, 1416, 2965)
	AddUnitStates(npcIndex, 6, nGroup)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\tulinhthu_npc\\head.lua")
	-- Add NPC dua top
	if tbNPC_TopServer[GetGlbValue(GLB_TSK_SERVER_ID)] ~= nil then
		if nDate < tbNPC_TopServer[GetGlbValue(GLB_TSK_SERVER_ID)] then
			npcIndex = CreateNpc(tb_npc_type[nGroup], szName, 200,1405,2840)
			SetNpcScript(npcIndex, "\\script\\online\\viet_event\\top_server\\npc_top.lua")
		end
	end
end


function AddIdolNpc()
	local nNpcIndex = CreateNpc("C玭 L玭 T﹏ Ph?Chng M玭", "Th莕 Tng V?L﹎", 300, 1789, 3534)
	SetNpcScript(nNpcIndex, "\\script\\online\\viet_event\\karaoke\\head.lua")
end

function get_server_id()
	if GetGlbValue(GLB_TSK_SERVER_ID) == 0 then
		local fileName = ""
		if strlower(strsub(getenv("os") or "",1,3)) == 'win' then
			fileName = "data\\serverid.txt";
		else
			fileName = "data/serverid.txt";
		end		
		local pf = openfile(fileName, "r");
		if not pf then 			
			return
		end		
		local str = read(pf, "*l");
		if not str then
			closefile(pf);
			return 
		end
		local nsid = tonumber(str) or 1;
		closefile(pf);
		SetGlbValue(GLB_TSK_SERVER_ID,nsid)
	end
end

function Add_HoangHuynh()
	local nDate = tonumber(date("%y%m%d"))
	local npcIndex = 0
	if nDate >= 100716 then
		npcIndex = CreateNpc("Tr莕 B蕋 Vi", "Jx2 Animal", 200,1407,2857);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\top_server\\npc_top.lua");
	end
end

function Add_GoldenCard_Manager()
	local nDate = tonumber(date("%y%m%d"))
	local npcIndex = 0
--	if nDate >= 100928 and nDate <= 121231 then
		npcIndex = CreateNpc("Nh?Ho祅g T鯻Чi L?, "L玦 H?Thng Nh﹏", 200,1378,2857);
		SetNpcScript(npcIndex, "\\script\\online\\viet_event\\golden_card\\npc_golden_saleman.lua");
--	end
end

function Add_XaPhu()
    local npcIdx = CreateNpc("Xa phu Trung Nguy猲", "Thuy襫 phu Йng H秈", 200,1396,2874);
    SetNpcScript(npcIdx, "\\script\\online\\viet_event\\oversea\\oversea_npc.lua");
    
    local tFighting_pos = {
			{101, 1656, 3081},
			{101, 1638, 3146},
			{101, 1600, 3183},
			{101, 1573, 3176},
			{101, 1543, 3195},
			{101, 1516, 3309},
			{101, 1526, 3244},
			{101, 1547, 3272},
			{101, 1506, 3116},
			{101, 1544, 3131},
    }
    
    for i=1,getn(tFighting_pos) do
    		npcIdx = CreateNpc("Ti猽 s?i tho筰", "T?th?k?, tFighting_pos[i][1],tFighting_pos[i][2],tFighting_pos[i][3]);
    		SetNpcScript(npcIdx, "\\script\\online\\viet_event\\pet_fighting\\fighting_npc.lua");
    		SetUnitCurStates(npcIdx,2,i)
    end    
end


function Add_PetNpc()
	local npcIndex = 0
--	npcIndex = CreateNpc("Chu B蕋 Ho芻","B綾 u L穙 Nh﹏",  300, 1786, 3532)
--	SetNpcScript(npcIndex, "\\script\\online_activites\\reborn\\tongban\\npc\\bacdaulaonhan.lua")
--	npcIndex = CreateNpc("Chu B蕋 Ho芻","B綾 u L穙 Nh﹏",  200, 1392, 2810)
--	SetNpcScript(npcIndex, "\\script\\online_activites\\reborn\\tongban\\npc\\bacdaulaonhan.lua")
	npcIndex = CreateNpc("Chu B蕋 Ho芻","B綾 u L穙 Nh﹏",  100, 1453, 2939)
	SetNpcScript(npcIndex, "\\script\\online_activites\\reborn\\tongban\\npc\\bacdaulaonhan.lua")
--	npcIndex = CreateNpc("Chu B蕋 Ho芻","B綾 u L穙 Nh﹏",  150, 1731, 3151)
--	SetNpcScript(npcIndex, "\\script\\online_activites\\reborn\\tongban\\npc\\bacdaulaonhan.lua")
--	npcIndex = CreateNpc("Chu B蕋 Ho芻","B綾 u L穙 Nh﹏",  350, 1428, 2940)
--	SetNpcScript(npcIndex, "\\script\\online_activites\\reborn\\tongban\\npc\\bacdaulaonhan.lua")
--	npcIndex = CreateNpc("Chu B蕋 Ho芻","B綾 u L穙 Nh﹏",  400, 1565, 2978)
--	SetNpcScript(npcIndex, "\\script\\online_activites\\reborn\\tongban\\npc\\bacdaulaonhan.lua")
--	npcIndex = CreateNpc("Chu B蕋 Ho芻","B綾 u L穙 Nh﹏",  500, 1747, 3129)
--	SetNpcScript(npcIndex, "\\script\\online_activites\\reborn\\tongban\\npc\\bacdaulaonhan.lua")
end

function AddHangNga()
	local npcIndex = 0
	npcIndex = CreateNpc("Phi Y課 Ti猲 T?,"H籲g Nga Ti猲 T?,  100, 1428, 2939)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\nop_event\\hangnga.lua")
end

function AddBirthdayNpc_2010()
	local npcIndex = 0
	npcIndex = CreateNpc("V?L﹎ Minh Ch?","S?Gi?Ho箃 чng",  100, 1426, 3012)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\birthday\\sugia.lua")
end

function Add_Pet_TaiXu()
	local npcIndex = CreateNpc("V?ng  chng m玭", "V﹏ Du Ch﹏ Nh﹏", 200, 1387, 2879)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\pet_instance\\reg_npc.lua")
	local npcIndex = CreateNpc("V?ng  chng m玭", "V﹏ Du Ch﹏ Nh﹏", 300, 1749, 3535)
	SetNpcScript(npcIndex, "\\script\\online\\viet_event\\pet_instance\\reg_npc.lua")
end

function Add_TianMenZhen()
	local nNpcIndex = 0;
	--nNpcIndex = CreateNpc("Dng V╪ Si猽","Phi猽 k?tng qu﹏ Qu竎h Qu﹏ B籲g ",350,1429,2816);
	nNpcIndex = CreateNpc("Dng V╪ Si猽","Phi猽 k?tng qu﹏ Qu竎h Qu﹏ B籲g ",300,1854,3672);
	SetNpcScript(nNpcIndex,"\\script\\missions\\tianmenzhen\\tmz_npc.lua");
	nNpcIndex = CreateNpc("Dng V╪ Si猽","Phi猽 k?tng qu﹏ Qu竎h Qu﹏ B籲g ",400,1435,2864);
	SetNpcScript(nNpcIndex,"\\script\\missions\\tianmenzhen\\tmz_npc.lua");
	nNpcIndex = CreateNpc("D?Lu藅 B秓 у","Li猽 Qu﹏ Quan",604,1554,3125);
	SetNpcDeathScript(nNpcIndex,"\\script\\missions\\tianmenzhen\\tmz_task_npc.lua");
end

--宝箱商人
function create_treasuer_chests()
	local tPos = {
		{300,1723,3537},
		{350,1453,2974},
		{150,1675,3153},
		{200,1379,2852},
		{500,1760,3131},
		{100,1413,2975},
		{400,1517,2968},
	}
	local tPosinfo
	for _,tPosinfo in tPos do
		local nNpcIndex = CreateNpc("Ch?c莔  T﹜ Nam","Thng Nh﹏ B秓 Rng",tPosinfo[1],tPosinfo[2],tPosinfo[3])
		SetNpcScript(nNpcIndex,"\\script\\online_activites\\treasure_box\\npc_treasuer_chests.lua")
	end
end

function dialog_npc_create()
	local nNpcIndex;
	--对话NPC创建
	nNpcIndex = CreateNpc("Trng Чi H鱱","Trng Чi H鱱",106,1307,2983);
	SetNpcScript(nNpcIndex,"\\script\\江南区\\龙泉村\\npc\\张大友.lua");
	nNpcIndex = CreateNpc("C玭g t綾 nguy謙 lng","C玭g t綾 nguy謙 lng",111,1665,2826);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\月亮机关.lua");
	nNpcIndex = CreateNpc("Nh筩 B蕋 Qu莕","Nh筩 B蕋 Qu莕",502,1682,3102);
	SetNpcScript(nNpcIndex,"\\script\\西北区\\华山\\npc\\岳不群.lua");
	nNpcIndex = CreateNpc("Dng M玭  t?,"Dng M玭  t?,6012,1588,3207);
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\少林议事厅\\杨门弟子.lua");
	nNpcIndex = CreateNpc("Nh筺 Kha","Nh筺 Kha",218,1627,3245);
	SetNpcScript(nNpcIndex,"\\script\\中原一区\\灵宝山\\npc\\颜柯.lua");
	nNpcIndex = CreateNpc("Hng V蕁 Thi猲","Hng V蕁 Thi猲",6009,1598,3200);
	SetNpcScript(nNpcIndex,"\\script\\江南区\\桃花岛\\向问天.lua");
	nNpcIndex = CreateNpc("Hng V蕁 Thi猲","Hng V蕁 Thi猲",6010,1598,3200);
	SetNpcScript(nNpcIndex,"\\script\\江南区\\桃花岛\\向问天.lua");
	nNpcIndex = CreateNpc("Hng V蕁 Thi猲","Hng V蕁 Thi猲",6011,1598,3200);
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\桃花小栈\\向问天.lua");
	nNpcIndex = CreateNpc("Ng?чc  t?,"Ng?чc  t?,6012,1591,3204);
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\少林议事厅\\五毒弟子.lua");
	nNpcIndex = CreateNpc("V?ng  t?,"V?ng  t?,6012,1595,3202);
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\少林议事厅\\武当弟子.lua");
	nNpcIndex = CreateNpc("V?Danh T╪g","V?Danh T╪g",6012,1601,3200);
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\少林议事厅\\无名僧.lua");
	nNpcIndex = CreateNpc("C玭g t綾 ?ya","C玭g t綾 ?ya",111,1698,3114);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\乌鸦机关.lua");
	nNpcIndex = CreateNpc("T?B髏 g","T?B髏 g",6016,1562,2938);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\梅庄\\秃笔翁.lua");
	nNpcIndex = CreateNpc("Л阯g M玭  t?,"Л阯g M玭  t?,6012,1598,3211);
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\少林议事厅\\唐门弟子.lua");
	nNpcIndex = CreateNpc("C玭g t綾 th竔 dng","C玭g t綾 th竔 dng",111,1862,3040);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\太阳机关.lua");
	nNpcIndex = CreateNpc("Nh薽 Doanh Doanh","Nh薽 Doanh Doanh",6014,1580,3115);
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\西岛\\任盈盈.lua");
	nNpcIndex = CreateNpc("Nh薽 Doanh Doanh","Nh薽 Doanh Doanh",6011,1602,3204);
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\桃花小栈\\任盈盈.lua");
	nNpcIndex = CreateNpc("Nh薽 Ng?H祅h","Nh薽 Ng?H祅h",6013,1634,3216);
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\梅庄地牢\\任我行.lua");
	nNpcIndex = CreateNpc("Nh薽 Ng?H祅h","Nh薽 Ng?H祅h",6010,1600,3202);
	SetNpcScript(nNpcIndex,"\\script\\江南区\\桃花岛\\任我行.lua");
	nNpcIndex = CreateNpc("Nh薽 Ng?H祅h","Nh薽 Ng?H祅h",6011,1600,3201)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\桃花小栈\\任我行.lua")
	nNpcIndex = CreateNpc("L鬰 Tr骳 g","L鬰 Tr骳 g",350,1574,2904)
	SetNpcScript(nNpcIndex,"\\script\\中原二区\\襄阳\\npc\\绿竹翁.lua")
	nNpcIndex = CreateNpc("L?L穙","L?L穙",507,1686,3322)
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\李老.lua")
	nNpcIndex = CreateNpc("Ho祅g Chung C玭g","Ho祅g Chung C玭g",6016,1488,2938)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\梅庄\\黄钟公.lua")
	nNpcIndex = CreateNpc("H綾 T鎛g Qu秐","H綾 T鎛g Qu秐",6015,1503,3179)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\黑总管.lua")
	nNpcIndex = CreateNpc("H綾 B筩h T?,"H綾 B筩h T?,6016,1460,2988)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\梅庄\\黑白子.lua")
	nNpcIndex = CreateNpc("H祅 T?Phi","H祅 T?Phi",400,1587,3081)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\大理府\\npc\\韩飞子.lua")
	nNpcIndex = CreateNpc("е t?C竔 Bang","е t?C竔 Bang",6012,1596,3214)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\少林议事厅\\丐帮弟子.lua")
	nNpcIndex = CreateNpc("Nga Mi  t?,"Nga Mi  t?,6012,1601,3209)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\少林议事厅\\峨眉弟子.lua")
	nNpcIndex = CreateNpc("n Thanh Sinh","n Thanh Sinh",6016,1517,3003)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\梅庄\\丹青生.lua")
	nNpcIndex = CreateNpc("Th玭 trng","Th玭 trng",202,1411,2997)
	SetNpcScript(nNpcIndex,"\\script\\中原一区\\杏花村\\npc\\村长.lua")
	nNpcIndex = CreateNpc("B?t竛h Ti觰 Th髖","Ti觰 Th髖",507,1706,3384)
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\百姓小翠.lua")
	nNpcIndex = CreateNpc("B?t竛h L?Hoa","L?Hoa",507,1632,3374)
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\百姓李华.lua")
	nNpcIndex = CreateNpc("C玭g t綾 b筩h v﹏","C玭g t綾 b筩h v﹏",111,1830,2849)
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\白云机关.lua")
	nNpcIndex = CreateNpc("Nh薽 Ng?H祅h","Nh薽 Ng?H祅h",6017,1631,3270);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\任我行.lua");
	nNpcIndex = CreateNpc("Hng V蕁 Thi猲","Hng V蕁 Thi猲",6017,1628,3274);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\向问天.lua");
	nNpcIndex = CreateNpc("Nh薽 Doanh Doanh","Nh薽 Doanh Doanh",6017,1636,3273);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\任盈盈.lua");
	nNpcIndex = CreateNpc("Nh薽 Ng?H祅h","Nh薽 Ng?H祅h",6018,1621,2897);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖2\\任我行.lua");
	nNpcIndex = CreateNpc("Hng V蕁 Thi猲","Hng V蕁 Thi猲",6018,1596,3040);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖2\\向问天.lua");
	nNpcIndex = CreateNpc("Nh薽 Doanh Doanh","Nh薽 Doanh Doanh",6018,1581,2889);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖2\\任盈盈.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h Lam K?,"B?c?Nh薽 Ng?H祅h",6017,1623,3285);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\任我行旧部.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h B筩h K?,"B?c?Nh薽 Ng?H祅h",6017,1619,3281);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\任我行旧部.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h H綾 K?,"B?c?Nh薽 Ng?H祅h",6017,1633,3286);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\任我行旧部.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h H錸g K?,"B?c?Nh薽 Ng?H祅h",6017,1639,3277);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\任我行旧部.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h Lam K?,"N閕 鴑g",6017,1715,2957);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\内应.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h B筩h K?,"N閕 鴑g",6017,1726,2967);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\内应.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h H綾 K?,"N閕 鴑g",6017,1734,2979);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\内应.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h H錸g K?,"N閕 鴑g",6017,1743,2985);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\内应.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h Ho祅g K?,"N閕 鴑g",6017,1752,2992);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\内应.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h Lam K?,"N閕 鴑g",6017,1764,2996);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\内应.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h B筩h K?,"N閕 鴑g",6017,1744,3005);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\内应.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h H綾 K?,"N閕 鴑g",6017,1731,3011);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\内应.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h H錸g K?,"N閕 鴑g",6017,1716,3017);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\内应.lua");
	nNpcIndex = CreateNpc("цi tho筰 Th輈h Kh竎h Ho祅g K?,"N閕 鴑g",6017,1699,3001);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\内应.lua");
	nNpcIndex = CreateNpc("Dng Li猲 ёnh","Dng Li猲 ёnh",6017,1622,2897);
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\杨莲亭.lua");
	nNpcIndex = CreateNpc("Dng Li猲 ёnh","Dng Li猲 ёnh",105,1555,3040)
	SetNpcScript(nNpcIndex,"\\script\\江南区\\泉州府西\\npc\\杨莲亭.lua")
	nNpcIndex = CreateNpc("Bao trng l穙","Bao trng l穙",215,1748,3066)
	SetNpcScript(nNpcIndex,"\\script\\中原一区\\黑风洞\\npc\\鲍长老.lua")
	--物资
	local nMapInfo;
	local tbPos = {
		{6017,1730,3139},		{6017,1736,3146},
		{6017,1741,3157},		{6017,1747,3164},
		{6017,1721,3185},		{6017,1715,3191},
		{6017,1700,3182},		{6017,1676,3164},
		{6017,1680,3148},		{6017,1691,3139},
		{6017,1702,3138},		{6017,1711,3130},
		{6017,1720,3135},		{6017,1718,3156},
		{6017,1716,3171},		{6017,1702,3163},
	}
	for _,nMapInfo in tbPos do
		nNpcIndex = CreateNpc("Nhi謒 v?v藅 ch蕋","Tr?b?v藅 t?,nMapInfo[1],nMapInfo[2],nMapInfo[3])
		SetNpcScript(nNpcIndex,"\\script\\task\\npc\\储备物资.lua")
	end
end

function fight_npc_create()
	--战斗NPC创建
	local nNpcIndex;
	nNpcIndex = CreateNpc("Nhi謒 v?Huy誸 L﹏ чc M穘g","Huy誸 L﹏ чc M穘g",6013,1636,3147)
	--小野猪创建
	local nMapInfo,nMapInfo1,nMapInfo2;
	local tbPos = {
		{420, 1611, 3573},
		{420, 1512, 3308},
		{420, 1492, 3316},
		{420, 1473, 3643},
		{420, 1430, 3611},
		{420, 1717, 3590},
		{420, 1658, 3655},
		{420, 1730, 3432},
		{420, 1669, 3343},
		{420, 1573, 3573},
	}
	for _,nMapInfo in tbPos do
		CreateNpc("H綾 d?tr?,"Ti觰 H綾 tr?,nMapInfo[1],nMapInfo[2],nMapInfo[3],0,3,1,6)
	end
	--火狐创建
	local tbPos1 = {
		{412, 1719, 3002},
		{412, 1572, 2976},
		{412, 1778, 2910},
		{412, 1769, 3051},
		{412, 1680, 3133},
		{412, 1597, 3238},
		{412, 1707, 3243},
		{412, 1778, 3135},
		{412, 1740, 3257},
		{412, 1868, 3064},
	}
	for _,nMapInfo1 in tbPos1 do
		CreateNpc("H醓 h?,"H醓 h?,nMapInfo1[1],nMapInfo1[2],nMapInfo1[3],0,3,1,6)
	end
	--教徒
	local tbPos2 = {
		{6014, 1547, 3088},
		{6014, 1536, 3136},
		{6014, 1598, 3155},
		{6014, 1559, 3214},
		{6014, 1542, 3197},
		{6014, 1606, 3130},
		{6014, 1563, 3204},
		{6014, 1540, 3202},
		{6014, 1609, 3135},
	}
	for _,nMapInfo2 in tbPos2 do
		CreateNpc("Gi竜 ","Gi竜 ",nMapInfo2[1],nMapInfo2[2],nMapInfo2[3],0,3,1,6)
	end
	--泉州府西，教徒
	nNpcIndex = CreateNpc("Gi竜 ","Gi竜 ",105,1557,3027,0,6,1,6);
	nNpcIndex = CreateNpc("Ho祅g Trng L穙","Ho祅g Trng L穙",6015,1744,3155)
	nNpcIndex = CreateNpc("Йng Phng B蕋 B筰","Йng Phng B蕋 B筰",6015,1626,2896)
	nNpcIndex = CreateNpc("Ho祅g K?K?Ch?,"Trng l穙 Ho祅g H鱱 Vi",6017,1509,3218);
	nNpcIndex = CreateNpc("H錸g K?K?Ch?,"Trng l穙 Ti猽 Nh?H錸g",6017,1601,3048);
	nNpcIndex = CreateNpc("T?h?ph竝 M?L藀 o","T?h?ph竝 M?L藀 o",6017,1624,3056);
	nNpcIndex = CreateNpc("Lam K?K?Ch?,"Trng l穙 Phi Thi猲 Lam Mi猽",6017,1709,3161);
	nNpcIndex = CreateNpc("B筩hK?K?Ch?,"Trng l穙 B筩h Linh Linh",6017,1720,2980);
	nNpcIndex = CreateNpc("H綾 K?K?Ch?,"Trng l穙 H綾 V?Thng",6017,1487,3029);
	SetNpcDeathScript(nNpcIndex,"\\script\\task\\npc\\黑无常.lua");
end

function trap_npc_create()
	--地图传送NPC
	local nNpcIndex;
	nNpcIndex = CreateNpc("Nh筩 Linh San","Nh筩 Linh San",502,1645,3224)
	SetNpcScript(nNpcIndex,"\\script\\西北区\\华山\\npc\\岳灵珊.lua")
	nNpcIndex = CreateNpc("уng t?3","M玭 уng",102,1456,3066)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\桃花小栈\\童子3.lua")
	nNpcIndex = CreateNpc("уng t?","M玭 уng",6009,1579,3218)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\桃花小栈\\童女2.lua")
	nNpcIndex = CreateNpc("уng t?","M玭 уng",6010,1579,3218)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\桃花小栈\\童女2.lua")
	nNpcIndex = CreateNpc("уng t?","M玭 уng",6011,1579,3218)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\桃花小栈\\童女2.lua")
	nNpcIndex = CreateNpc("Thi誹 L﹎ T╪g Nh﹏","T辬h T?,6012,1579,3218)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\少林议事厅\\净慈.lua")
	nNpcIndex = CreateNpc("Giang h?tu蕁 ki謙","Gi竜  th莕 b?,504,1343,2840)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\神秘教徒.lua")
	nNpcIndex = CreateNpc("Xa phu","Th莕 gi竜 gi竜  m韎",6015,1632,3242)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\神秘新教徒.lua")
	nNpcIndex = CreateNpc("Xa phu","Th莕 gi竜 gi竜  m韎",6017,1632,3242)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\神秘新教徒.lua")
	nNpcIndex = CreateNpc("Xa phu","Th莕 gi竜 gi竜  m韎",6018,1632,3242)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\黑木崖\\神秘新教徒.lua")
	nNpcIndex = CreateNpc("уng t?","Mai Trang Th?уng",106,1300,3110)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\梅庄\\梅庄书童1.lua")
	nNpcIndex = CreateNpc("уng t?","Mai Trang Th?уng",6016,1490,3094)
	SetNpcScript(nNpcIndex,"\\script\\西南区\\梅庄\\梅庄书童2.lua")
	nNpcIndex = CreateNpc("Thi猲 Vng Bang у","Canh gi?,6016,1586,3140)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\梅庄地牢\\看守1.lua")
	nNpcIndex = CreateNpc("Thi猲 Vng Bang у","Canh gi?,6013,1606,3206)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\梅庄地牢\\看守2.lua")
	nNpcIndex = CreateNpc("Xa phu","Thuy襫 phu",6014,1536,3291)
	SetNpcScript(nNpcIndex,"\\script\\世界地图\\西岛\\船夫.lua")
end

function new_task_npc_create()
	--gtask关闭
	if IsNewTaskSystemOpen() ~= 1 then
		return 1;
	end
	dialog_npc_create();
	fight_npc_create();
	trap_npc_create();
end

function Ambassador_Acitivity()
	local tPos = {
		{300,1734,3523},
		{350,1441,2954},
		{100,1427,2958},
		{200,1382,2845},
	}
	local tPosinfo
	for _,tPosinfo in tPos do
		local nNpcIndex = CreateNpc("V?L﹎ Minh Ch?","Чi S?ho箃 ng",tPosinfo[1],tPosinfo[2],tPosinfo[3])
		SetNpcScript(nNpcIndex,"\\script\\online\\activity_ambassador.lua")
	end
end

function CreateNpcList(tNpcList)
	for _, tNpc in tNpcList do
		local npc = CreateNpc(tNpc[1], tNpc[2], tNpc[3], tNpc[4], tNpc[5]);
		SetNpcScript(npc, tNpc[6] or "");
		if npc > 0 then
		else
			WriteLogEx(format("Create[%s] Npc[%s][%s] fail", tNpc[1], tNpc[2], tNpc[6] or ""))
		end
		
	end
end

function new_ttd_npc_create()
	--任盈盈
	local nNpcIndex = CreateNpc("Nh薽 Doanh Doanh","Th竛h N?Nh薽 Doanh Doanh",150,1664,3165);
	SetNpcScript(nNpcIndex, "\\script\\江南区\\扬州\\npc\\renyingying.lua");
	--任盈盈位置移动
	nNpcIndex = CreateNpc("Nh薽 Doanh Doanh","Th竛h N?Nh薽 Doanh Doanh",500, 1742, 3039);
	SetNpcScript(nNpcIndex,"\\script\\missions\\hunduantongtianding\\ttd_mission_entry_npc.lua");
end

function new_task_npc_create2()
	local nNpcIndex = CreateNpc("цi tho筰 v韎 Giang Bi謙 H筩","Giang Bi謙 H筩",500,1745,3123);
	SetNpcScript(nNpcIndex,"\\script\\西北区\\凤翔府\\npc\\江别鹤.lua");
	nNpcIndex = CreateNpc("L?S?S?,"L璾 T?Anh",150,1668,3225);
	SetNpcScript(nNpcIndex,"\\script\\江南区\\扬州\\npc\\刘思英.lua");
	nNpcIndex = CreateNpc("Th莕 gi竜 H綾 T鎛g Qu秐","Th莕 gi竜 H綾 T鎛g Qu秐",500,1699,3059);
	--SetNpcScript(nNpcIndex,"\\script\\西北区\\凤翔府\\npc\\日月神教黑总管.lua");
	SetNpcScript(nNpcIndex,"\\script\\missions\\cangjianshanzhuang\\wjz_mission_entry_npc.lua");
	
	nNpcIndex = CreateNpc("H竚 S琻 i vng","H竚 S琻 i vng",508,1750,3331);
	SetNpcScript(nNpcIndex,"\\script\\task\\npc\\撼山大王Death.lua");
end

function shenghuotai_npc_create()
	if oly_IsActivityOpen() == 1 then
		local npcIndex = CreateNpc("aoyunshenghuotai","Th竛h H醓 Tuy襫 Ch﹗",100,1327,3077);
		SetNpcScript(npcIndex,"\\script\\online\\olympic\\npc\\red_sh.lua");
		local npcIndex = CreateNpc("aoyunshenghuotai","Th竛h H醓 Чi L?,400,1444,2876);
		SetNpcScript(npcIndex,"\\script\\online\\olympic\\npc\\black_sh.lua");
		local npcIndex = CreateNpc("aoyunshenghuotai","Th竛h H醓 Th祅h Й",300,1853,3553);
		SetNpcScript(npcIndex,"\\script\\online\\olympic\\npc\\green_sh.lua");
		local npcIndex = CreateNpc("aoyunshenghuotai","Th竛h H醓 Phng Tng",500,1768,3136);
		SetNpcScript(npcIndex,"\\script\\online\\olympic\\npc\\yellow_sh.lua");
		local npcIndex = CreateNpc("aoyunshenghuotai","Th竛h H醓 Tng Dng ",350,1431,2810);
		SetNpcScript(npcIndex,"\\script\\online\\olympic\\npc\\blue_sh.lua");
		local npcIndex = CreateNpc("aoyunshenghuotai","Th竛h H醓 Bi謓 Kinh",200,1470,2778);
		SetNpcScript(npcIndex,"\\script\\online\\olympic\\npc\\wuhuan_sh.lua");
	end
end

function Activity_Npc_Add_201209()
	--NPC create time，test modify
	if gf_CheckEventDateEx(71) == 1 then
		local npcIndex = CreateNpc("change","H籲g Nga",400,1480,3024);
		SetNpcScript(npcIndex,"\\script\\online_activites\\201208\\change.lua");
	end
end

function Qht_Activity_Event()
	--NPC创建
	qht_create_npc_ds();
	--清理
	qht_gs_daily_clean();
	--创建mission
	qht_create_mission();
end

function Bkl_baoruong()
	local tbBKL_BaoRuong_Pos = {
					{508,1622,3247},	--Quang Minh жnh
					{508,1622,3238},
					{508,1632,3257},
					{508,1641,3259},
					{508,1632,3230},
					{508,1640,3229},
					{508,1649,3237},
					{508,1650,3247},
					{507,1614,3224},	--Long M玭 Tr蕁
					{507,1609,3230},
					{507,1614,3236},
					{507,1618,3230},
					{403,1478,2939},	--T﹜ Song B秐 N筽 Nam
					{403,1473,2947},
					{403,1478,2957},
					{403,1482,2947},
					{402,1493,2987},	--T﹜ Song B秐 N筽 B綾
					{402,1475,3024},
					{402,1464,3012},
					{513,1472,2989},	--Ho祅g L╪g 1
					{513,1477,2983},
					{513,1482,2990},
					{514,1478,2984},	--Ho祅g L╪g 2
					{514,1485,2975},
					{514,1492,2967},
					{514,1471,2990},
					{410,1647,3278},	--Thi猲 T莔 Th蕄 2
					{410,1631,3295},
					{410,1647,3310},
					{410,1662,3295},
					{411,1619,3269},	--Thi猲 T莔 Th蕄 3
					{411,1611,3276},
					{411,1611,3261},
					{411,1603,3284},					
					{411,1603,3252},					
					{411,1603,3269},	
					{506,1375,2748},	--M?Cung Sa M筩
					{506,1367,2732},
					{506,1382,2763},
					{506,1357,2721},
					{510,1506,3025},	--Dc Vng чng
					{510,1506,3037},
					{510,1498,3025},
					{510,1514,3025},
		}
	for i = 1, getn(tbBKL_BaoRuong_Pos) do
		local npcIndex = CreateNpc("Rng ti襫","V?L﹎ B筩h Kim Rng",tbBKL_BaoRuong_Pos[i][1],tbBKL_BaoRuong_Pos[i][2],tbBKL_BaoRuong_Pos[i][3]);
	--	local npcIndex = CreateNpc("Rng ti襫","B秓 rng B筩h Kim L謓h",507,1614,3224)
		SetNpcScript(npcIndex,"\\script\\vng\\bkl_box\\bkl_box_npc.lua");
	end
end

function tuyetanh_baoruong()	--QuyTy_baoruong
	local tbQT_BaoRuong_Pos = {
					{100, 1289, 3105},	--Tuy謙 秐h
					{100, 1294, 3109}, 
					{100, 1302, 3115},
					{100, 1304, 3101},
					{500, 1810, 3014},
					{500, 1810, 2996},
					{500, 1803, 3007},
					{500, 1816, 3003},
					{400, 1400, 2934},
			}
	for i = 1, getn(tbQT_BaoRuong_Pos) do
		local npcIndex = CreateNpc("Rng ti襫","Tuy謙 秐h B?B秓",tbQT_BaoRuong_Pos[i][1],tbQT_BaoRuong_Pos[i][2],tbQT_BaoRuong_Pos[i][3]);
		SetNpcScript(npcIndex,"\\script\\vng\\quyty_box\\quyty2013_box_npc.lua");
	end
end
function chieuda_baoruong()	
	local tbQT_BaoRuong_Pos = {
					{300, 1824, 3670},	--Chi誹 D?
					{300, 1836, 3666},
					{300, 1829, 3660},
					{300, 1829, 3675},
					{350, 1603, 2935},
					{350, 1603, 2945},
					{350, 1613, 2948},
					{350, 1612, 2935},		
					{400, 1406, 2925},		
			}
	for i = 1, getn(tbQT_BaoRuong_Pos) do
		local npcIndex = CreateNpc("Rng ti襫","Chi誹 D?Ph竝 B秓",tbQT_BaoRuong_Pos[i][1],tbQT_BaoRuong_Pos[i][2],tbQT_BaoRuong_Pos[i][3]);
		SetNpcScript(npcIndex,"\\script\\vng\\quyty_box\\quyty2013_box_npc.lua");
	end
end
function xichtho_baoruong()	
	local tbQT_BaoRuong_Pos = {
					{200, 1439, 2716},	-- X輈h Th?
					{200, 1445, 2722},
					{200, 1438, 2728},
					{200, 1430, 2722},	
					{150, 1772, 3118}, 		
					{150, 1772, 3129}, 		
					{150, 1784, 3129}, 		
					{150, 1783, 3116}, 		
					{400, 1412, 2915},		
			}
	for i = 1, getn(tbQT_BaoRuong_Pos) do
		local npcIndex = CreateNpc("Rng ti襫","X輈h Th?C?V藅",tbQT_BaoRuong_Pos[i][1],tbQT_BaoRuong_Pos[i][2],tbQT_BaoRuong_Pos[i][3]);
		SetNpcScript(npcIndex,"\\script\\vng\\quyty_box\\quyty2013_box_npc.lua");
	end
end
function npcVanMay()
    local npcIndexVanMay = CreateNpc("Du Phng Tng S?, "Th莥 B鉯 Si猽 H筺g",100,1274,2962);
    SetNpcScript(npcIndexVanMay, "\\script\\vng\\vanmay_daohuu\\vanmay_npc.lua");
end

function wujiang_task_npc_create()
	local npcIndex;
	local tbNpcPos = {
		{218, 1767, 3567},
		{218, 1778, 3562},
		{218, 1781, 3581},
		{218, 1731, 3550},
		{218, 1744, 3531},
		{218, 1749, 3502},
		{218, 1766, 3517},
		{218, 1775, 3486},
		{218, 1760, 3637},
		{218, 1769, 3564},
		{218, 1788, 3573},
		{218, 1805, 3535},
		{218, 1696, 3573},
		{218, 1663, 3589},
		{218, 1645, 3613},
		{218, 1695, 3556},
		{218, 1756, 3540},
		{218, 1711, 3530},
		{218, 1683, 3536},
		{218, 1810, 3523},
	};
	for i = 1, getn(tbNpcPos) do
			CreateNpc("shenmigongjianshou", "Th莕 b?cung ti詎 th?, tbNpcPos[i][1], tbNpcPos[i][2], tbNpcPos[i][3]);
	end
	CreateNpc("chunyizhang", "Thu莕 Nh蕋 Chng", 107, 1453, 3006, 6);
	CreateNpc("chengfeng", "Tr譶h Phong", 304, 1463, 2844);
	npcIndex = CreateNpc("Nh筩 B蕋 Qu莕", "(Nh筩 B蕋 Qu莕)", 6024, 1658, 3094);
	SetNpcScript(npcIndex, "\\script\\世界地图\\铁掌山庄\\npc\\yuebuqun.lua");
	npcIndex = CreateNpc("jiguan1", "C?quan", 6024, 1610, 2984);
	SetNpcScript(npcIndex, "\\script\\task\\npc\\jiguan1.lua");
	npcIndex = CreateNpc("jiguan2", "C?quan", 6024, 1503, 3099);
	SetNpcScript(npcIndex, "\\script\\task\\npc\\jiguan2.lua");
	npcIndex = CreateNpc("juchihu", "C?X?H?, 6024, 1603, 2982);
	SetNpcDeathScript(npcIndex, "\\script\\task\\npc\\juchihu.lua");
	npcIndex = CreateNpc("shouwei", "Th?V?th?1", 6024, 1528, 3140);
	SetNpcScript(npcIndex, "\\script\\task\\npc\\shouwei.lua");
	npcIndex = CreateNpc("shouwei", "Th?v?th?2", 6024, 1451, 3065);
	SetNpcScript(npcIndex, "\\script\\task\\npc\\shouwei.lua");
	npcIndex = CreateNpc("shouwei", "Th?v?th?3", 6024, 1370, 2986);
	SetNpcScript(npcIndex, "\\script\\task\\npc\\shouwei.lua");
	npcIndex = CreateNpc("shouwei", "Th?v?th?4", 6024, 1441, 2912);
	SetNpcScript(npcIndex, "\\script\\task\\npc\\shouwei.lua");
	npcIndex = CreateNpc("shouwei", "Th?v?th?5", 6024, 1516, 2837);
	SetNpcScript(npcIndex, "\\script\\task\\npc\\shouwei.lua");
	npcIndex = CreateNpc("shouwei", "Th?v?th?6", 6024, 1593, 2909);
	SetNpcScript(npcIndex, "\\script\\task\\npc\\shouwei.lua");
	npcIndex = CreateNpc("shouwei", "Th?v?th?7", 6024, 1681, 2989);
	SetNpcScript(npcIndex, "\\script\\task\\npc\\shouwei.lua");
	npcIndex = CreateNpc("shouwei", "Th?v?th?8", 6024, 1600, 3070);
	SetNpcScript(npcIndex, "\\script\\task\\npc\\shouwei.lua");
	npcIndex = CreateNpc("linqinghai", "L﹎ Thanh H秈", 502, 1579, 3218);
	SetNpcScript(npcIndex, "\\script\\西北区\\华山\\npc\\linqinghai.lua");
	npcIndex = CreateNpc("Nh筩 Linh San", "(Nh筩 Linh San)", 6025, 1588, 3172);
	SetNpcScript(npcIndex, "\\script\\世界地图\\神殿\\npc\\yuelingshan.lua");
	tbNpcPos = {
		{6025, 1599, 3156},
		{6025, 1591, 3161},
		{6025, 1606, 3163},
		{6025, 1602, 3172},
		{6025, 1609, 3175},
		{6025, 1563, 3190},
		{6025, 1573, 3197},
		{6025, 1572, 3181},
		{6025, 1585, 3195},
		{6025, 1587, 3211},
		{6025, 1594, 3226},
		{6025, 1586, 3219},
		{6025, 1611, 3209},
		{6025, 1599, 3204},
		{6025, 1630, 3186},
		{6025, 1623, 3206},
		{6025, 1613, 3192},
		{6025, 1622, 3177},
		{6025, 1606, 3198},
		{6025, 1600, 3206},
		}
	for i = 1, getn(tbNpcPos) do
			CreateNpc("tiezhangyinshi", "Thi誸 Chng 萵 S?, tbNpcPos[i][1], tbNpcPos[i][2], tbNpcPos[i][3]);
	end
end

function meihuayingchun_npc_create()
	if gf_CheckEventDateEx(81) ~= 1 then
		return 0;
	end
	local npcIdnex;
	npcIndex = CreateNpc("C﹜ T?Linh 3_2", "Mai V祅g", 300, 1768, 3536);
	SetNpcScript(npcIndex, "\\script\\online_activites\\201212\\meihuashu.lua");
	npcIndex = CreateNpc("C﹜ T?Linh 3_2", "Mai V祅g", 200, 1407, 2832);
	SetNpcScript(npcIndex, "\\script\\online_activites\\201212\\meihuashu.lua");
	npcIndex = CreateNpc("C﹜ T?Linh 3_2", "Mai V祅g", 100, 1401, 2992);
	SetNpcScript(npcIndex, "\\script\\online_activites\\201212\\meihuashu.lua");
	npcIndex = CreateNpc("C﹜ T?Linh 3_2", "Mai V祅g", 150, 1703, 3136);
	SetNpcScript(npcIndex, "\\script\\online_activites\\201212\\meihuashu.lua");
	npcIndex = CreateNpc("C﹜ T?Linh 3_2", "Mai V祅g", 350, 1464, 2960);
	SetNpcScript(npcIndex, "\\script\\online_activites\\201212\\meihuashu.lua");
	npcIndex = CreateNpc("C﹜ T?Linh 3_2", "Mai V祅g", 400, 1512, 2977);
	SetNpcScript(npcIndex, "\\script\\online_activites\\201212\\meihuashu.lua");
	npcIndex = CreateNpc("C﹜ T?Linh 3_2", "Mai V祅g", 500, 1768, 3136);
	SetNpcScript(npcIndex, "\\script\\online_activites\\201212\\meihuashu.lua");
end

function zhenqi_battle_init()
	ZQ_NpcCreate();
	ZQ_CreateChannel();
end

--function kuafu_battle_init()
--	KF_Battle_BMR();
--end
function VBonus_NPC()
	local nVBONUS_STARTDATE = 13062000
	local nVBONUS_ENDDATE = 13080900
	local nDate = tonumber(date("%y%m%d%H"))
	if nDate >= nVBONUS_STARTDATE and nDate <= nVBONUS_ENDDATE then
		if GetGlbValue(1023) == 80 then
			npcIndex = CreateNpc("Rng ti襫","B秓 Rng Ph遪g M竬 Th﹏ Thi謓",200,1433,2866)
			SetNpcScript(npcIndex, "\\script\\vng\\vbonus\\top_chuyensinh.lua");
		end
	end
end


function Vip_NPC()
	if CFG_VipCare == 1 then
		local npcIndex = CreateNpc("Nh?Ho祅g T鯻Чi L?, "Чi S?Vip", 300,1776,3552);
		SetNpcScript(npcIndex, "\\script\\vng\\vipcare\\daisuvip.lua");	
	end
end

function dixuangong_join_npc()
	local npcIndex = CreateNpc("KLyunxihe", "C玭 L玭 Ph竔 V﹏ Hi H遖", 500, 1778, 3097);
	SetNpcScript(npcIndex, "\\script\\missions\\dixuangong\\npc\\entrynpc.lua");
end

function biwu_3v3_init()
	if Is3v3SystemOpen() ~= 1 then
		return 0;
	end
	local nVersion,nCurGs = GetRealmType();
	if nCurGs == 1 then
		ClearMapNpc(8000)
		P3v3_Enable(1);
		local npcIndex = CreateNpc("KLyunxihe", "c s?Чi H閕 T?V?, 8000,1404,2858);
		SetNpcScript(npcIndex, "\\script\\missions\\nvn\\3v3npc.lua");
	end
end

--武王任务
function wuwang_task_createnpc()
	local npcIndex;
	npcIndex = CreateNpc("Chu B蕋 Ho芻", "Chu B蕋 Ho芻", 6073, 1589, 3213);
	SetNpcScript(npcIndex, "\\script\\世界地图\\镇妖室\\zhoubuhuo.lua");
	npcIndex = CreateNpc("S礽 Ho祅g Nhi", "S礽 Ho祅g Nhi", 6073, 1592, 3213)
	SetNpcScript(npcIndex, "\\script\\世界地图\\镇妖室\\caifenger.lua");
end

----帮会大使
--function tong_melee_npc_create()
--	local nVersion,nCurGs = GetRealmType();
--	if SubWorldID2Idx(6028) ~= -1 and nCurGs == 1 then
--		local nNpcIndex = CreateNpc("宋将军", "帮会大使", 6028, 1624, 3221);
--		SetNpcScript(nNpcIndex, "\\script\\世界地图\\跨服演武场\\npc\\tong_ambassagor.lua");
--	end
--end

----在成都创建跨服功能领奖人npc
--function kuafu_lingjiang_npc_create()
--	local nVersion,nCurGs = GetRealmType();
--	if SubWorldID2Idx(300) ~= -1 and nCurGs == 0 then
--			local nNpcIndex = CreateNpc("ZM_jieyingren", "跨服领奖人", 300, 1855, 3556);
--			SetNpcScript(nNpcIndex, "\\script\\中原二区\\成都\\npc\\kuafu_lingjiang_npc.lua");
--	end
--end

function AddTYNpc()
	--先锋杨宗保（200 1378 3063） （100 1430 2791）（300,1807,3349）（350，1407，2853）
	--先锋穆桂英（200 1372 3068）（100 1436 2784）（300,1803,3353）（350，1413，2856）
	local tNpcs = {
		{"TYT_XianfengYZB", "Ti猲 Phong Dng T玭 B秓", {350, 1407, 2853}, "\\script\\missions\\taiyi\\yangzongbao_npc.lua"},
		{"TYT_XianfengYZB", "Ti猲 Phong Dng T玭 B秓", {300, 1807, 3349}, "\\script\\missions\\taiyi\\yangzongbao_npc.lua"},
		{"TYT_XianfengYZB", "Ti猲 Phong Dng T玭 B秓", {200, 1378, 3063}, "\\script\\missions\\taiyi\\yangzongbao_npc.lua"},
		{"TYT_XianfengYZB", "Ti猲 Phong Dng T玭 B秓", {100, 1430, 2791}, "\\script\\missions\\taiyi\\yangzongbao_npc.lua"},
		{"TYT_XianfengMGY", "Ti猲 Phong M閏 Qu?Anh", {350, 1413, 2856}, "\\script\\missions\\taiyi\\muguiying_npc.lua"},
		{"TYT_XianfengMGY", "Ti猲 Phong M閏 Qu?Anh", {300, 1803, 3353}, "\\script\\missions\\taiyi\\muguiying_npc.lua"},
		{"TYT_XianfengMGY", "Ti猲 Phong M閏 Qu?Anh", {200, 1372, 3068}, "\\script\\missions\\taiyi\\muguiying_npc.lua"},
		{"TYT_XianfengMGY", "Ti猲 Phong M閏 Qu?Anh", {100, 1436, 2784}, "\\script\\missions\\taiyi\\muguiying_npc.lua"},
	};
	for i = 1, getn(tNpcs) do
		if SubWorldID2Idx(tNpcs[i][3][1]) ~= -1 then
			local nIndex = CreateNpc(tNpcs[i][1], tNpcs[i][2], tNpcs[i][3][1], tNpcs[i][3][2], tNpcs[i][3][3]);
			SetNpcScript(nIndex, tNpcs[i][4]);
		end
	end
end

function AddLifeSkillNpc()
	local npcIdx = CreateNpc("B?ch?, "х T?Nng", 350, 1441, 2914);
	SetNpcScript(npcIdx, "\\script\\中原二区\\成都\\npc\\杜四娘.lua");
end

function Plus123Pay()
	local npcIndexZzd = CreateNpc("V?L﹎ Minh Ch?", "Ngi V薾 Chuy觧", 100, 1408, 3008);
    SetNpcScript(npcIndexZzd, "\\script\\vng\\plus123pay.lua");
end

function AddHeiYiZhuangShi()
	local tPos = {
		{219, 1671, 3217},
		{219, 1666, 3222},
		{219, 1663, 3229},
		{219, 1656, 3235},
		{219, 1663, 3246},
		{219, 1671, 3258},
		{219, 1682, 3249},
		{219, 1690, 3239},
		{219, 1683, 3226},
		{219, 1675, 3219},
	}
	for i =1, getn(tPos) do
		CreateNpc("heiyizhuangshi", "H綾 Y Tr竛g S?, tPos[i][1], tPos[i][2], tPos[i][3]);
	end
	tPos = {
		{413,1863,3269},
		{8010,1601,3222},
	}
	for i =1, getn(tPos) do
		local npcIndex =CreateNpc("Thi猲 Vng Bang у", "Xi H醓 Gi竜 Kh竛 Th?, tPos[i][1], tPos[i][2], tPos[i][3])
		SetNpcScript(npcIndex, "\\script\\西南区\\龙眼洞二层\\npc\\蚩火教看守.lua");
	end
	CreateNpc("Thng g", "Thng g", 8010, 1599, 3188, 6);
end

function AddRuaTayNpc()
return
end

function AddNpcLoDe()
	local npcIndexshxy = CreateNpc("Ch?c莔  Trung Nguy猲", "Ch?S遪g B礽", 200,171*8,178*16);
	SetNpcScript(npcIndexshxy, "\\script\\owner\\lode.lua");
end



