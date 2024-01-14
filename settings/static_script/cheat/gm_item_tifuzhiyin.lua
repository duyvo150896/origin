--Ìå·þÖ¸Òý

Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
Include("\\script\\function\\ornament\\ornament.lua")

g_szTitle = "<color=green>H­íng dÉn:<color>"

function OnUse(nItem)
ornament_add_score(50000)
	local n,m,l = GetWorldPos();
	Msg2Player(n.."-"..m.."-"..l);
	local tSay = {}
	local nRoute = GetPlayerRoute();
	if nRoute <= 0 then
		tSay = {
			"Gia nhËp m«n ph¸i/JoinRoute_UpdateLevel",
		}
	else
		tSay = {

			"Trang BÞ/Get_Mored",
			"Tiªu dïng/tieudung",
			"Linh Tinh/tieudung_orther",
			"NhËn v¨n søc/Get_Popur2",
		"Trang bÞ Kim xµ 5 (ngÉu nhiªn)/#getRandomKX5(31)",

			"TiÕn cÊp mËt tÞch/Get_Popur3",
			--"»ñÈ¡Ò«ÑîÌ××°+10/Get_YaoYang_10",
			--"Ëæ»ú»ñµÃ3¼¶½ðÉß×°±¸+10/Get_JinShe",
			--format("%s/Process_Equip_LingTu", "»ñÈ¡ÁéÍ¼+10"),
			-- format("%s/Process_Equip_HaoXia", "NhËn ®­îc Hµo HiÖp +10"),
			-- format("%s/Process_SanJianTao", format("NhËt trang søc ®eo h«ng %s sao", 5)),
			"NhËn L­u Ph¸i Ch©n QuyÓn vµ QuyÕt YÕu/Get_Book",
			-- "NhËn 1000 vµng/Get_Money",
			"NhËn ®iÓm tiÕn cÊp mËt tÞch/Get_Popur",
			--"°ï»á²Ù×÷/TongOperation",
			"Thao th¸c kinh m¹ch/GetJingMai",
			--"²¹³ä¾«Á¦/Get_Energy",
			--"Éú»î¼¼ÄÜ/Life_Skill",
			"NhËn tµi liÖu c­êng hãa/Get_Enhance",
			"NhËn ®¸ quý/Get_Gem",
			--format("%s/Get_SkillApp", "ÁìÈ¡¼¼ÄÜÊ¯"),
			-- format("%s/Pet_OP", "Phôc sinh thó c­ng"),
			--format("%s/getTiLi", "»Ö¸´ÌåÁ¦"),
			-- format("%s/getEnery", "Phôc håi tinh lùc"),
			-- format("%s/getTianJiaoLing", "NhËn Thiªn Kiªu LÖnh"),
			"NhËn danh väng thÕ lùc/GetPopValue",
			"NhËn ®iÓm kinh nghiÖm/GetExpForReborn",
			"NhËn håi tiªn ®¬n/GetItemHuiXianDan",
			format("%s/get_tong_title", "NhËt danh hiÖu bang héi"),
			--"¸´Éú3/PlayerReborn3",
			"Tham gia ThÕ Lùc Ba Phe-DiÔn Vâ ChiÕn/Join3Battle",
						"N©ng cao ®¼ng cÊp chuyÓn sinh nh©n vËt/player_reborn",
		}
		if 3 == nRoute then
			tinsert(tSay, "NhËn Thiªn PhËt Ch©u vµ Ph¸ Ma Chó/Give_ZhuzhuZhouzhou")
		end
		if 4 == nRoute then
			tinsert(tSay, "QuÇn ¸o TLQ/aosm")
		end
		if 6 == nRoute then
			tinsert(tSay, "NhËn ¸m KhÝ vµ C¬ Quan/Give_JiguanAnqi")
		end
		if 8 == nRoute then
			tinsert(tSay, "NhËn X¸ Lîi Kim §¬n/Give_Dandan")
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
	end
	tinsert(tSay, format("%s/get_something", "NhËn tµi nguyªn"));
	tinsert(tSay, "Thanh lý tói/ClearBagAllItem");
	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."Ng­¬i cÇn gióp ®ì g×?", getn(tSay), tSay);
end

function Get_Popur3()
AddItem(2,114,117,50)
AddItem(2,114,118,1)
AddItem(2,114,120,1)
end

function Get_Popur2()
AddItem(2,1,31073,1)
AddItem(2,1,31074,1)
AddItem(2,1,31075,1)
AddItem(2,1,31076,1)
AddItem(2,1,31077,1)
end

function Get_Popur()
	if GetTask(3409) >= 5000 then
	Talk(1, "", "LÞch luyÖn ®· ®¹t tèi ®a" )
	return
	end
	gf_Modify("Popur2", 5000)
end

function get_tong_title()
	if IsTitleExist(72, 10) == 0 then
		AddTitle(72, 10)
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
		local szMsg = format("Chóc mõng nhËn danh hiÖu %s thµnh c«ng", "§ång Cõu")
		Msg2Player(szMsg)
		Talk(1, "", szMsg)
	else
		Talk(1, "", "B¹n ®· nhËn danh hiÖu bang héi råi!")
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
function getEnery()
	local nCur, nMax = ModifyEnergy(0, 1);
	ModifyEnergy(nMax - nCur, 1);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end
function Pet_OP()
	local tSay = {}
	if GetSkillLevel(30149) == 0 then
		tinsert(tSay, format("%s/activePet", "KÝch ho¹t phôc sinh thó c­ng"))
	end
	tinsert(tSay, format("%s/getPetEgg", "NhËn Trøng Thó C­ng"))
	tinsert(tSay, format("%s/getLingLi", "NhËn ®iÓm linh lùc"))
	tinsert(tSay, format("%s/getbook4", "NhËn Book 4"))
	tinsert(tSay, format("%s/getbook5", "NhËn Book 5"))
	tinsert(tSay, format("%s/getPet", "NhËn Pet 5"))
	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
	Say(g_szTitle.."Ng­¬i cÇn gióp ®ì g×?", getn(tSay), tSay);
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
	iPet = random(27,45)
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
		
		Msg2Player("§· häc Gi¸ng Linh ThuËt cÊp 5");
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	end
end

function Process_SanJianTao()
   if 1 ~= gf_Judge_Room_Weight(10, 1, g_szTitle) then
		return 0;
	end
	for i=29,31 do
        local pifeng,pIndex = AddItem(0,154,i,1,1,-1,-1,-1,-1,-1,-1,0,10)
        FeedItem(pIndex,1000000)
    	local huizhang,hIndex = AddItem(0,153,i,1,1,-1,-1,-1,-1,-1,-1,0,10)
    	FeedItem(hIndex,1000000)
    	local xie,xIndex = AddItem(0,152,i,1,1,-1,-1,-1,-1,-1,-1,0,10)
    	FeedItem(xIndex,1000000)
	end
	AddItem(0,155,10,1,1,-1,-1,-1,-1,-1,-1,0,0)
end

function getPetEgg()
	AddItem(2,1,30601,10)
	AddItem(2,1,30728,100);
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

function Process_Equip_HaoXia()
  if 1 ~= gf_Judge_Room_Weight(4, 1, g_szTitle) then
		return 0;
	end
	local nRoute	= GetPlayerRoute();
	local nBody 	= GetBody();
	local tHaoXia = {
		[2]  = {"Hµo HiÖp §ao", 0, 3, 30724},
    [3]  = {"Hµo HiÖp Tr­îng", 0, 8, 30725},
    [4]  = {"Hµo HiÖp Thñ", 0, 0, 30726},
    [6]  = {"Hµo HiÖp Ch©m", 0, 1, 30727},
    [8]  = {"Hµo HiÖp KiÕm", 0, 2, 30728},
    [9]  = {"Hµo HiÖp CÇm", 0,10, 30729},
    [11] = {"Hµo HiÖp Thñ", 0, 0, 30730},
    [12] = {"Hµo HiÖp C«n", 0, 5, 30731},
    [14] = {"Hµo HiÖp KiÕm", 0, 2, 30732},
    [15] = {"Hµo HiÖp Bót", 0, 9, 30733},
    [17] = {"Hµo HiÖp Th­¬ng", 0, 6, 30734},
    [18] = {"Hµo HiÖp Cung", 0, 4, 30735},
    [20] = {"Hµo HiÖp §ao", 0, 7, 30736},
    [21] = {"Hµo HiÖp Tr¶o", 0,11, 30737},
    [23] = {"Hµo HiÖp KiÕm", 0, 2, 30738},
    [25] = {"Hµo HiÖp §ao", 0, 3, 30739},
    [26] = {"Hµo HiÖp Bót", 0, 9, 30740},
    [27] = {"Hµo HiÖp Tr¶o", 0,11, 30741},
    [29] = {"Hµo HiÖp PhiÕn", 0,13, 30742},
    [30] = {"Hµo HiÖp §Þch", 0,12, 30743},
	}
	local t = tHaoXia[nRoute]
	if t then
		AddItem(t[2],t[3],t[4],1,1,-1,-1,-1,-1,-1,-1,-1,10)
	end
	AddItem(0,102,31126,1,1,-1,-1,-1,-1,-1,-1)
	AddItem(0,102,31127,1,1,-1,-1,-1,-1,-1,-1)
	AddItem(0,100,30568,1,1,-1,-1,-1,-1,-1,-1,-1,10)
	AddItem(0,101,30568,1,1,-1,-1,-1,-1,-1,-1,-1,10)
	AddItem(0,103,30568,1,1,-1,-1,-1,-1,-1,-1,-1,10)
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
		format("%s/join_mj", "Minh gi¸o"),
		"Ra khái/nothing",
	};
	Say("Ng­¬i muèn gia nhËp l­u ph¸i g×?", getn(tMenu), tMenu);
end

--------------------------------------------------Ñ¡ÔñÃÅÅÉ¿ªÊ¼--------------------------------------
function join_sl()
	if GetSex() == 2 then
		Say(g_szTitle.."Ph¸i ThiÕu L©m chØ thu nhËn ®Ö tö nam", 0);
		return
	end

	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"ThiÕu L©m vâ t«ng/#enter_mp(4)",
		"ThiÕu L©m thiÒn t«ng/#enter_mp(3)",
		"ThiÕu L©m tôc gia/#enter_mp(2)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function join_wd()
	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Vâ §ang ®¹o gia/#enter_mp(14)",
		"Vâ §ang tôc gia/#enter_mp(15)",
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
		"Nga My phËt gia/#enter_mp(8)",
		"Nga My tôc gia/#enter_mp(9)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function join_gb()
	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"C¸i Bang TÜnh y/#enter_mp(11)",
		"C¸i Bang ¤ Y/#enter_mp(12)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_tm()
	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"§­êng M«n/#enter_mp(6)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_ym()
	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"D­¬ng M«n th­¬ng Kþ/#enter_mp(17)",
		"D­¬ng M«n Cung Kþ/#enter_mp(18)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_wdu()
	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"HiÖp §éc/#enter_mp(20)",
		"Tµ §éc/#enter_mp(21)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_kl()
	if GetSex()==2 then
		Talk(1,"","C«n L«n kh«ng thu nhËn ®Ö tö n÷!");
		return 0
	end

	if GetPlayerFaction() ~= 0 then
		return
	end;

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

	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Thóy Yªn Vò Tiªn/#enter_mp(29)",
		"Thóy Yªn Linh N÷/#enter_mp(30)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_mj()
	if GetPlayerFaction() ~= 0 then
		return
	end;

	local szSay = {
		g_szTitle.."VÞ <sex> muèn theo h­íng nµo cña Minh Gi¸o?",
		format("%s/#enter_mp(25)", "Minh Gi¸o Th¸nh ChiÕn"),
		format("%s/#enter_mp(26)", "Minh Gi¸o TrËn Binh"),
		format("%s/#enter_mp(27)", "Minh Gi¸o HuyÕt Nh©n"),
		"Ra khái/nothing",
	}
	SelectSay(szSay);
end;

-----------------------------------------ÈëÃÅÅÉ----------------------------------------
function enter_mp(nRoute)
	local nBegin = 0;
	local nEnd = 0;
	local nBody = GetBody(); --1=Õý³£ÄÐ£¬2=¿ýÎàÄÐ£¬3=ÐÔ¸ÐÅ®£¬4=½¿Ð¡Å®

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
	elseif nRoute == 9 then					--¶ëáÒË×¼Ò
		LearnSkill(10);
		LearnSkill(102);
		nBegin = 90
		nEnd = 101;
	elseif nRoute == 11 then					--Ø¤°ï¾»ÒÂ
		LearnSkill(2);
		LearnSkill(113);
		nBegin = 103
		nEnd = 112;
	elseif nRoute == 12 then					--Ø¤°ïÎÛÒÂ
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
	elseif nRoute == 23 then					--À¥ÂØÌìÊ¦
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

	----------------------------ÉèÖÃÊýÖµ------------
	SetTask(336, 20000);				--ÉèÖÃÊ¦ÃÅ¹±Ï×¶È
	ModifyReputation(2000, 0);			--ÉèÖÃÉùÍû
	gf_SetTaskByte(1538, 1, 5) 			--5×ª
	PlayerReborn(3, random(4));			--7×ª
	SetLevel(90, 1);								--ÉèÖÃµÈ¼¶
	
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	Msg2Player("Thao t¸c thµnh c«ng, h·y ®¨ng nhËp l¹i")
	Talk(1,"","Thao t¸c thµnh c«ng, h·y ®¨ng nhËp l¹i! C¶m ¬n Th­¬ng Eopi ®· share")	
	ExitGame();
end

function Get_YaoYang_10()
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
		local nLevel  = 10;
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
		g_szTitle.."NhËn L­u Ph¸i Ch©n QuyÓn vµ QuyÕt YÕu!",
		"NhËn Ch©n QuyÓn/Get_Book_ZhenJuan_20",
		"NhËn QuyÕt YÕu/Get_Book_JueYao",
		"Th¨ng cÊp mËt tÞch ®· trang bÞ/Get_Book_Update",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end

function Get_Book_ZhenJuan()
	if gf_Judge_Room_Weight(7, 1, g_szTitle) ~= 1 then
		return 0;
	end

	local nRoute	= GetPlayerRoute();
	
	if nRoute == 2 then
		AddItem(0, 107, 204,5)
		AddItem(0, 107, 204-38,5)
	end
	
		if nRoute == 3 then
		AddItem(0, 107, 206,5)
		AddItem(0, 107, 206-38,5)
	end
	
		if nRoute == 4 then
		AddItem(0, 107, 205,5)
		AddItem(0, 107, 205-38,5)
	end
	
		if nRoute == 6 then
		AddItem(0, 107, 207,5)
		AddItem(0, 107, 207-38,5)
	end
	
		if nRoute == 8 then
		AddItem(0, 107, 208,5)
		AddItem(0, 107, 208-38,5)
	end
	
		if nRoute == 9 then
		AddItem(0, 107, 209,5)
		AddItem(0, 107, 209-38,5)
	end
	
		if nRoute == 11 then
		AddItem(0, 107, 210,5)
		AddItem(0, 107, 210-38,5)
	end
	
		if nRoute == 12 then
		AddItem(0, 107, 211,5)
		AddItem(0, 107, 211-38,5)
	end
	
		if nRoute == 14 then
		AddItem(0, 107, 212,5)
		AddItem(0, 107, 212-38,5)
	end
	
		if nRoute == 15 then
		AddItem(0, 107, 213,5)
		AddItem(0, 107, 213-38,5)
	end
	
		if nRoute == 17 then
		AddItem(0, 107, 214,5)
		AddItem(0, 107, 214-38,5)
	end
	
		if nRoute == 18 then
		AddItem(0, 107, 215,5)
		AddItem(0, 107, 215-38,5)
	end
	
		if nRoute == 20 then
		AddItem(0, 107, 216,5)
		AddItem(0, 107, 216-38,5)
	end
	
			if nRoute == 21 then
		AddItem(0, 107, 217,5)
		AddItem(0, 107, 217-38,5)
	end
	
	if nRoute == 23 then--À¥ÂØÌìÊ¦
		AddItem(0, 107, 218,5)
		AddItem(0, 107, 218-20,5)
	end
	
	if nRoute == 25 then--Ã÷½ÌÊ¥Õ½
		AddItem(0, 107, 219,5)
		AddItem(0, 107, 219-20,5)
	end
	if nRoute == 26 then--Ã÷½ÌÕó±ø
		AddItem(0, 107, 220,5)
		AddItem(0, 107, 220-20,5)
	end
	if nRoute == 27 then--Ã÷½ÌÑªÈË
		AddItem(0, 107, 221,5)
		AddItem(0, 107, 221-20,5)
	end
	
	if nRoute == 29 then--ÎèÏÉ
		AddItem(0, 107, 222,5)
	  AddItem(0, 107, 222-20,5)
	end
	
	if nRoute == 30 then--ÁéÅ®
		AddItem(0, 107, 223,5)
		AddItem(0, 107, 223-20,5)
	end
	
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
		AddItem(2,1,30494,1)
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
		g_szTitle.."Thao th¸c kinh m¹ch",
		"TÈy ®iÓm kinh m¹ch/GetJingMai_Reset",
		format("%s/getZhenqi", "NhËn ch©n khÝ"),
		format("%s/#getJingMaiTongRen(1)", "NhËn Kinh M¹ch §ång Nh©n"),
		format("%s/#getJingMaiTongRen(2)", "NhËn Kinh M¹ch Ng©n Nh©n"),
		--format("%s/#getJingMaiTongRen(3)", "ÁìÈ¡¾­Âö½ðÈË"),
		"Ra khái/nothing",
	};
	if MeridianGetLevel() < 5 then
		tinsert(szSay, 2, format("%s/GetJingMai_Update", "T¨ng lªn c¹nh giíi Vâ Hoµng"))
	end
	SelectSay(szSay);
end

function getZhenqi()
	AwardGenuineQi(180000);
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end
function getJingMaiTongRen(nType)
	AddItem(2, 1,30730+nType-1, 100)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
end

function GetJingMai_Update()
	local nLevel = MeridianGetLevel()
	for i = nLevel + 1, 5 do
		MeridianUpdateLevel()
	end
	local nNum = 750000 - (MeridianGetDanTian() + MeridianGetQiHai());
	if nNum > 0 then
		AwardGenuineQi(nNum);
	end
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
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
	PlayerReborn(4, random(4));			--7×ª
	gf_SetTaskByte(1538, 1, 5) 			--5×ª
	SetLevel(99, 1);								--ÉèÖÃµÈ¼¶
	
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
	ExitGame();
end

function Get_Energy()
	local nCur, nMax = ModifyEnergy(0, 1);
	ModifyEnergy(nMax - nCur, 1);
end

function Life_Skill()
	local tSay = {
		"Muèn t¨ng cÊp kü n¨ng thu thËp/upgrade_gather_skill",
		"Muèn t¨ng cÊp kü n¨ng s¶n xuÊt/upgrade_compose_skill",
		"NhËn nguyªn liÖu chÕ trang bÞ Linh §å/get_lingtu_equip_material",
		"T¹i h¹ chØ xem qua th«i/nothing",
	}
	Say(g_szTitle.."T¨ng cÊp kü n¨ng sèng", getn(tSay), tSay);
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
	if gf_Judge_Room_Weight(4, 100, " ") ~= 1 then
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
    AddItem(2, 22, 104, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "HuyÕt TrÝch Th¹ch CÊp 4");
	AddItem(2, 22, 204, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "NguyÖt B¹ch Th¹ch CÊp 4");
	AddItem(2, 22, 304, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "Hæ Ph¸ch Th¹ch CÊp 4");
	AddItem(2, 22, 404, 100);	
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "H¾c DiÖu Th¹ch CÊp 4");
    AddItem(2, 22, 105, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "HuyÕt TrÝch Th¹ch CÊp 5");
	AddItem(2, 22, 205, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "NguyÖt B¹ch Th¹ch CÊp 5");
	AddItem(2, 22, 305, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "Hæ Ph¸ch Th¹ch CÊp 5");
	AddItem(2, 22, 405, 100);	
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "H¾c DiÖu Th¹ch CÊp 5");
	AddItem(2, 22, 106, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "HuyÕt TrÝch Th¹ch CÊp 6");
	AddItem(2, 22, 206, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "NguyÖt B¹ch Th¹ch CÊp 6");
	AddItem(2, 22, 306, 100);
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "Hæ Ph¸ch Th¹ch CÊp 6");
	AddItem(2, 22, 406, 100);	
	WriteLogEx("Get_Gem","NhËn ®¸ quý", 100, "H¾c DiÖu Th¹ch CÊp 6");
end

function Get_SkillApp()
	if gf_Judge_Room_Weight(10, 100, " ") ~= 1 then
		return 0;
	end
	for i=1,10 do
		AddItem(2, 23, i, 1);
		WriteLogEx("Get_SkillApp","Get_SkillApp", 1, i);
	end
end

function GetPopValue()
	local nShili = GetTask(3286) - 1;
	if nShili < 0 or nShili > 2 then
		Talk(1,"","Ng­¬i ch­a gia nhËp thÕ lùc,kh«ng thÓ nhËn danh väng thÕ lùc");
		return 0;
	end
	AddPop(nShili, 1000);
	WriteLogEx("Get_Pop","NhËn danh väng thÕ lùc", 1000, "Danh väng thÕ lùc 1000");
end

function GetExpForReborn()
	gf_ModifyExp(2000000000);
	WriteLogEx("Get_Exp","NhËn ®iÖm kinh nghiÖm", 2000000000, "2 tû ®iÓm kinh nghiÖm");
end

function GetItemHuiXianDan()
	if gf_Judge_Room_Weight(1, 100, " ") ~= 1 then
		return 0;
	end
	gf_AddItemEx2({2, 1, 30847, 150}, "Håi Tiªn §¬n", "Get_Item", "NhËn håi tiªn ®¬n", 0, 1);
end

function PlayerReborn3()
	if GetItemCount(2,1,30862) < 1 then
		Talk(1,"","Xin hoµn thµnh nhiÖm vô phôc sinh 3, sau khi nhËn ®­îc Th­ TiÕn Cö Phôc Sinh h·y quay l¹i!");
		return 0;
	end
	if gf_CheckLevel(7, 99) ~= 1 then
		Talk(1,"","Nh©n vËt ®¹t ®Õn cÊp 99 chuyÓn sinh 7, kh«ng thÓ hoµn thµnh phôc sinh 3");
		return 0;
	end
	if DelItem(2, 1, 30862, 1) ~= 1 then
		return 0;
	end
	PlayerReborn(3, random(4));
end

Include("\\script\\isolate\\functions\\tong_title\\head.lua")
tThings = {
		{"LÞch luyÖn", function() 
				gf_Modify('Popur2', 10000)
			end
		},
		{"§é cèng hiÕn Bang héi", function() 
				add_tong_gxd(1000)
			end
		},
		{"V¨n Søc-§Çu (Kh¾c b¶n)", function()
			AddItem(2,1,31068,10)
			end
		},
		{"V¨n Søc-ƒo (Kh¾c b¶n)", function()
			AddItem(2,1,31069,10)
			end
		},
		{"V¨n Søc-QuÇn (Kh¾c b¶n)", function()
			AddItem(2,1,31070,10)
			end
		},
		{"V¨n Søc-NhÉn (Kh¾c b¶n)", function()
			AddItem(2,1,31071,10)
			end
		},
		{"V¨n Søc-Béi (Kh¾c b¶n)", function()
			AddItem(2,1,31072,10)
			end
		},
		{"L­u Kim", function()
			AddItem(2,1,31096,999)
			AddItem(2,201,13,999)
			end
		},
	}
function get_something(nType)
	if not nType then
  	local tSay = {}
  	for i=1,getn(tThings) do
  		local t = tThings[i]
  		tinsert(tSay, format("%s/#get_something(%d)", t[1], i));
  	end
  	tinsert(tSay, "T¹i h¹ chØ xem qua th«i/nothing");
  	Say(g_szTitle.."Ng­¬i muèn nhËn g×?", getn(tSay), tSay)
  	return
  end
  local t = tThings[nType]
  if t then
  	t[2]()
  	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0);
  end
end

function Join3Battle()
	local nHour = tonumber(date("%H"))
	if nHour ~= 20 then
		Talk(1,"","ThÕ Lùc Ba Phe-DiÔn Vâ ChiÕn sÏ b¾t ®Çu tõ 20h, lóc ®ã mêi c¸c b¹n tham gia.");
		return 0;
	end
	if SubWorldID2Idx(7119) == -1 then
		Talk(1,"","§i b¶n ®é thÕ lùc ba phe míi cã thÓ vµo chiÕn tr­êng.");
		return 0;
	end
	local nProtect = GetGlbValue(2079);
	if nProtect == 0 then
		nProtect = random(1, 3);
		SetGlbValue(2079, nProtect);
		SendScript2VM("\\script\\missions\\yp\\ywz\\mission.lua", "StartYwzMission()")
		local tCamp2Name = {
			[1] = "ThÕ Lùc §¹i Lý",
			[2] = "ThÕ Lùc Thæ Phån",
			[3] = "ThÕ Lùc T©y H¹",
		}
		local nCampNext1 = 2;
		local nCampNext2 = 3;
		if nProtect == 2 then
			nCampNext1 = 3;
			nCampNext2 = 1;
		elseif nProtect == 3 then
			nCampNext1 = 1;
			nCampNext2 = 2;
		end
		local msg = format("ThÕ Lùc Ba Phe-DiÔn Vâ ChiÕn s¾p b¾t ®Çu, thÕ lùc phe thñ lµ %s, thÕ lùc phe c«ng lµ %s, %s.", 
			tCamp2Name[nProtect], tCamp2Name[nCampNext1], tCamp2Name[nCampNext2]);
		Msg2Global(msg);
		AddGlobalNews(msg, 1);
	end
	local nSelfCamp = GetTask(3286);
	if nSelfCamp < 1 or nSelfCamp > 3 then
		Talk(1,"","ChØ cã nh©n vËt gia nhËp thÕ lùc míi ®­îc vµo Ch­íng KhÝ S¬n Cèc.");
		return 0;
	end
	local nFightCamp = 2;
	if nSelfCamp == nProtect then
		nFightCamp = 1;
	end
	SetPlayerScript("\\script\\missions\\yp\\ywz\\mission.lua");
	SendScript2VM("\\script\\missions\\yp\\ywz\\mission.lua", format("JoinYwzMission(%d)", nFightCamp));
end

function Get_Mored()
	local tSay = {
		-- "NhËn Thiªn H¹ V« Song/thvs",	
	-- "NhËn HiÖu ChiÕn Tr­êng/hieudothong",
		-- "NhËn TT3 LL3 TT4 LL4/ttll3",
		 -- "NhËn TT1 LL/ttll1",
		-- "NhËn Thiªn NghÜa/thienghia",
		-- "NhËn Thiªn Chi tµng KiÕm/tctk",
		-- "HHVD/huyhoang5",
		-- "HHVD/huyhoang5",
		-- "uÈn Linh cÊp 2/nhanul",
		-- "Vâ L©m b¸ Chñ/vlbc",

		"NhËn Vò KhÝ Nguyªn Tö/vknt",
		-- "NhËn Vò Kh¶m /vkkham",
		-- "NhËn Vò Opt zin /vkopt",
		-- "NhËn §å Long §»ng Phông Vò/longdang",

		-- "NhËn Thiªn Chi Viªm §Õ/thienchiviemde",
		-- "NhËn Viªm §Õ/viemde",
		"NhËn ®å buff/dobuffhttc",
		-- "NhËn tö quang hiªn viªn thÇn binh/hienvienbinh",
		-- "NhËn Cöu Thiªn Ngäc/cuuthienngoc",
    	-- "NhËn B¹ch Kim Viªm §Õ/bkvd",
--		"LuyÖn max skill trÊn ph¸i/maxtranphai",
--		"NhËn Th«ng Thiªn/getTiLi",
--		"NhËn Thien Chi T­íng Qu©n/thienchituongquan",
--		"NhËn T­íng Qu©n/tuongquan",
--		"C¸c Lo¹i Ngäc/ngoctoc",
--      "C¸c Lo¹i Ngäc/ngocdame",

		-- "§å 3 Lç/do3lo",
		-- "Vu khi 3 Lç/vukhi",
--		"QuÎ 8 qu¸i/que8w", 
--		"Ngo¹i Trang/ngoaitrangnew", 
		-- "Hµo HiÖp V« H¹/gethhvhlb", 
				"LÖnh Bµi Hµo HiÖp V« H¹/gethhvhlb", 
						"TÝn VËt 15/tinvat15", 
		"NhËn trang søc ®eo h«ng 4 vs 5 sao/showKX",
		"Trang søc c¸nh /trangsuccanh",
		"T¹i h¹ chØ xem qua th«i/nothing",
	}
	Say(g_szTitle.."------------------", getn(tSay), tSay);
end


function vknt()
	-- local opt1 = {86, 268, 27}
	-- local lvopt1 = {6, 3, 3}
	local opt1 = {252}
	local lvopt1 = {5}
	-- local opt3 = {69, 30 , 102, 6}
	local opt3 = {69, 30 , 102, 6}
	local lvopt3 = {5, 5, 7, 3}

	local op1 = random(1)
	local op3 = random(1, 4)
	local op2 = 64
	if gf_Judge_Room_Weight(12, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 12));
		return 0;
	end
	iOpt = random(5,10)
	iOpt2 = random(1,3)
	local nRoute	= GetPlayerRoute();
	if nRoute == 4 then
		AddItem(0,0,16,3,1,lvopt1[op1],opt1[op1],7,op2,lvopt3[op3],opt3[op3],0,10)
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

function showKX()
	local tSay = {
		g_szTitle.."Lùa chän",
		-- "NhËn Th«n NguyÖt lÖnh (KX6)/Get_KimXa",
		-- "Trang bÞ Kim xµ 4 (ngÉu nhiªn)/showKX4",
		"Trang bÞ Kim xµ 5 (ngÉu nhiªn)/showKX5",
		-- "Trang bÞ Kim xµ 6 (ngÉu nhiªn)/showKX6",
		-- "Trang bÞ Kim xµ 7 (ngÉu nhiªn)/showKX7",
	}
	tinsert(tSay,"Ra khái/nothing");
	SelectSay(tSay);	
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
			-- [2243] = "Søc m¹nh - Vµng",
			[2244] = "Th©n ph¸p - Vµng",
			[2245] = "Linh ho¹t - Vµng",
			[2246] = "§iÓm sinh lùc - Vµng",
			[2247] = "Tû lÖ ®iÓm sinh lùc - Vµng",
		},
		[3] = {
			[2267] = "B¹o kÝch - Vµng",
			-- [2269] = "§iÓm ngo¹i c«ng - Vµng",
			[2270] = "§iÓm néi c«ng - Vµng",
			[2271] = "§iÓm néi ngo¹i c«ng - Vµng",
			[2272] = "T¨ng ®iÓm sinh lùc - Vµng",
		},
		[4] = {
			[2292] = "Phßng béc - Vµng",
			[2293] = "Gi¶m béc - Vµng",
			-- [2294] = "Hé gi¸p ngo¹i phßng - Vµng",
			-- [2295] = "Hé gi¸p néi phßng - Vµng",
			-- [2296] = "Hé gi¸p néi ngo¹i phßng - Vµng",
			[2297] = "§iÓm sinh lùc - Vµng",
		},
		[5] = {
			[2308] = "Néi c«ng - Vµng",
			[2309] = "Th©n ph¸p - Vµng",
			[2310] = "Linh ho¹t - Vµng",
		},
		[6] = {
			[1] = {
				-- [2332] = "Giíi h¹n cao nhÊt néi c«ng vò khÝ - Vµng",
				-- [2333] = "Giíi h¹n thÊp nhÊt néi c«ng vò khÝ - Vµng",
				[2334] = "Tû lÖ néi c«ng-vµng",
				-- [2335] = "§iÓm tæng c«ng kÝch néi c«ng- vµng",
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

function gethhvhlb()
	AddItem(2,1,30944,1);
	AddItem(2,1,30945,1);
	AddItem(2,1,30946,1);
	AddItem(2,1,30973,1);
	AddItem(2,1,30974,2);
end;

function Vevang()
	AddItem(2,1,30491,10,4)
end;

function tieudung_orther()
	local tSay = {
		g_szTitle.."Lùa chän",
		"Nhan Bua Cuong Hoa/NhanBua",
          -- "N©ng cao ®¼ng cÊp chuyÓn sinh nh©n vËt/player_reborn",
			"Thay ®æi h­íng Phôc Sinh/change_PhucSinh",
            -- "NhËn danh hiÖu/Get_Danh_Hieu2",
            "T¨ng ®iÓm nh©n vËt/Get_Diem_Char",
            -- "NhËn C¸c Lo¹i Nguyªn LiÖu/Get_Nguyen_Lieu",
			"Thao t¸c bang héi/TongOperation",
			-- "Thao t¸c Vò KhÝ/PS_VK",
			-- "Thao t¸c kinh m¹ch (Kh«ng cã khi Open)/GetJingMai",
			-- "Ngo¹i Trang C«ng Thµnh/ngoaitrang",			
			"Phôc sinh thó c­ng/Pet_OP",
		-- "NhËn ChiÕn T­îng/chientuong",
		-- "Kü n¨ng sèng/Life_Skill",
		-- "NhËn Thó Míi/nhanthucuoimoi",
		"NhËn Thó C­ìi/thucuoipro",
		-- "NhËn C¸nh/nguafake",
				"VÐ vµng/Vevang",
		"\nRa khái/nothing",
	}
	SelectSay(tSay);
end


function tieudung()
	local tSay = {
		g_szTitle.."Lùa chän",
			 "NhËn L­u Ph¸i Ch©n QuyÓn vµ YÕu QuyÕt/Get_Book",
		 "NhËn ®¸ quý/Get_Gem",
			"NhËn 4000 vµng (Kh«ng cã khi Open)/Get_Money",
 		"NhËn Ên chuyÓn sinh/Get_An",
		"Ma Dao thach 3/madao",
		 "NhËn Cöu ChuyÓn Håi Hån §an/cuuchuyen",
		 "NhËn M¸u /receiveTiLi",
		 "NhËn HKDNP/hkdnp",
		 "NhËn Lak/Get_Energy",
		 "NhËn B¸nh Ng«/banhngo",
		"\nRa khái/nothing",
	}
	SelectSay(tSay);
end
function madao()
	-- AddItem(2,1,30428,100);
	-- AddItem(2,1,30429,100);
	AddItem(2,1,30430,999);
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

function trungthucao()
	AddItem(2,1,30728,100);
end;
function banhngo()
	AddItem(1,1,1,999);
end

function cuuchuyen()
	AddItem(1, 0, 32, 999, 0, 999);
end
function Get_Energy()
	AddItem(1,1,19,200);
	AddItem(1,1,15,200);
	AddItem(1,1,17,200);
end

function  tinvat15()
	AddItem(0,155,15,1);
end;
function NhanBua()
	AddItem(2,1,30424,100);
	AddItem(2,1,30425,100);
	AddItem(2,1,30426,100);
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
	SetLevel(99,0)
	NewWorld(200,1353, 2876)
end

function thucuoipro()
	if gf_Judge_Room_Weight(10, 100) ~= 1 then
		Talk(1,"",format("Tói kh«ng ®ñ %d « trèng", 10));
		return 0;
	end
	AddItem(0,105,30046,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,10107,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,10108,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,10109,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,10110,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,10111,1,1,7,403,-1,-1,-1,-1);
	AddItem(0,105,10122,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30050,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30055,1,1,7,403,7,-1,7,-1,7,0);
	AddItem(0,105,30054,1,1,7,403,7,-1,7,-1,7,0);
end

function  trangsuccanh()
	-- Vâ T­¬ng Kim Lu©n
	AddItem(0,120,121,1);
	AddItem(0,121,85,1);
	AddItem(0,119,97,1);
	-- Vâ T­¬ng Kim Lu©n
		AddItem(0,120,120,1);
	AddItem(0,121,84,1);
	AddItem(0,119,96,1);
	
		-- Phong Háa Liªn Thµn
	AddItem(0,120,122,1);
	AddItem(0,121,86,1);
	AddItem(0,119,98,1);
	--Nh­ ý
	AddItem(0,119,17,1);
	-- AddItem(0,119,18,1);
	-- AddItem(0,119,19,1);
	-- AddItem(0,119,20,1);
	-- sieuphong
	AddItem(0,121,17,1);
	-- AddItem(0,121,18,1);
	-- AddItem(0,121,19,1);
	-- AddItem(0,121,20,1);
	--Oanh TrÇn Vò
	AddItem(0,120,17,1);
	-- AddItem(0,120,18,1);
	-- AddItem(0,120,19,1);
	-- AddItem(0,120,20,1);
	--L­u Quang
	AddItem(0,119,21,1);
	-- AddItem(0,119,22,1);
	-- AddItem(0,119,23,1);
	-- AddItem(0,119,24,1);	
	--Tinh Th¸
	AddItem(0,121,21,1);
	-- AddItem(0,121,22,1);
	-- AddItem(0,121,23,1);
	-- AddItem(0,121,24,1);	
	--Trî Ph­îng T­êng Loan
	AddItem(0,120,21,1);
	-- AddItem(0,120,22,1);
	-- AddItem(0,120,23,1);
	-- AddItem(0,120,24,1);	
	--Lª TuyÕt
	AddItem(0,120,235,1);
	-- AddItem(0,120,236,1);
	-- AddItem(0,120,237,1);
	-- AddItem(0,120,238,1);	
	--Lª v©n
	AddItem(0,119,235,1);
	-- AddItem(0,119,236,1);
	-- AddItem(0,119,237,1);
	-- AddItem(0,119,238,1);		
	--lª song
	AddItem(0,121,235,1);
	-- AddItem(0,121,236,1);
	-- AddItem(0,121,237,1);
	-- AddItem(0,121,238,1);	
	-- --c¸nh xanh
	AddItem(0,120,227,1)
	-- AddItem(0,120,228,1)
	-- AddItem(0,120,229,1)
	-- AddItem(0,120,230,1)
	
	AddItem(0,121,227,1)
	-- AddItem(0,121,228,1)
	-- AddItem(0,121,229,1)
	-- AddItem(0,121,230,1)
	
	AddItem(0,119,227,1)
	-- AddItem(0,119,228,1)
	-- AddItem(0,119,229,1)
	-- AddItem(0,119,230,1)
	--Han vs Can
		AddItem(0,119,299,1)
		AddItem(0,120,299,1)
		AddItem(0,121,299,1)
	
	AddItem(0,119,303,1)
	AddItem(0,120,303,1)
	AddItem(0,121,303,1)
	
	AddItem(0,119,323,1)
	AddItem(0,120,323,1)
	AddItem(0,121,323,1)
	
	AddItem(0,119,327,1)
	AddItem(0,120,327,1)
	AddItem(0,121,327,1)
	
	AddItem(0,119,331,1)
	AddItem(0,120,331,1)
	AddItem(0,121,331,1)

	AddItem(0,119,367,1)
	AddItem(0,120,367,1)
	AddItem(0,121,367,1)

	AddItem(0,119,387,1)
	AddItem(0,120,387,1)
	AddItem(0,121,387,1)
	-- AddItem(0,119,229,1)
	-- AddItem(0,119,230,1)
	
	AddItem(0,119,251,1)
	AddItem(0,120,251,1)
	AddItem(0,121,251,1)
	
	AddItem(0,119,271,1)
	AddItem(0,120,271,1)
	AddItem(0,121,271,1)
end

function Get_Book_ZhenJuan_20()
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
	if nRoute == 25 then--ÎèÏÉ
		AddItem(0,107,30038,5,1,-1,-1,-1,-1,-1,-1,-1,0)
	  --AddItem(0, 107, 222-20,5)
	end
	if nRoute == 26 then--ÎèÏÉ
		AddItem(0,107,30039,5,1,-1,-1,-1,-1,-1,-1,-1,0)
	 -- AddItem(0, 107, 222-20,5)
	end
	if nRoute == 27 then--ÎèÏÉ
		AddItem(0,107,30040,5,1,-1,-1,-1,-1,-1,-1,-1,0)
	  --AddItem(0, 107, 222-20,5)
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

function hkdnp()
	AddItem(2,1,30490,5);
end

function receiveTiLi()
	-- AddItem(1, 0, 30009, 999);
	-- AddItem(1, 0, 30010, 999);
	-- AddItem(1, 0, 30011, 999);
	 AddItem(1, 0, 30006, 999);
	 AddItem(1, 0, 30007, 999);
end

function Get_Diem_Char()
	local szSay = {
		g_szTitle.."T¨ng ®iÓm cho nh©n vËt!",
		-- "NhËn Qu©n hµm nguyªn so¸i/Get_NguyenSoai",
		"NhËn NhËn 250.000 ®iÓm c«ng tr¹ng/Get_CongTrang",
		"NhËn NhËn 10.000 ®iÓm danh väng/Get_DanhVong",
		"NhËn NhËn 10.000 ®iÓm s­ m«n/Get_SuMon",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
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
	-- CastState("state_skill_adjust",3,3600,1); --VAC gi?m còn 2 t? khí / 1 l?n thi tri?n
end