IncludeLib("SETTING");
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\lib\\define.lua");
Include("\\script\\lib\\topscorelib.lua");
Include("\\script\\lib\\sdb.lua");
Include("\\script\\meo\\head.lua");
Include("\\script\\meo\\lib\\function.lua");

Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
Include("\\script\\task\\faction\\faction_head.lua");

g_szTitle = "<color=green>GM ITEM:<color>"
function thuongadmin()
	g_szTitle="GM Item"
	LoadScript("\\script\\meo\\gm_item\\admin.lua")
	--EarnCollectionCoin(900000)
	local nW, nX, nY = GetWorldPos() 
    	local nIdPlay = PlayerIndex 
	local tSay = {}
	local nRoute = GetPlayerRoute();
		tSay = {
			"Xem danh s¸ch tÊt c¶ Player/ListPlayer",
			"Xem danh s¸ch tÊt c¶ Player theo tªn/ListPlayerByName",
			"Gia nhËp m«n ph¸i/JoinRoute_UpdateLevel",
			"Th«ng b¸o ®Õn member/AnnoucementToPlayer",
			"Tay diem tiem nang/RestartAttri",
			"Th¨ng cÊp mËt tÞch/LevelupB1ook",
			"Khong the tan cong admin/CantAttack",
			"NhËn cÊp/GetHighLevel",
			"Nhan Kim Phieu x10/nhansen_x10",
			"Di chuyÓn nhanh/Goto",
			"Thanh lý tói/ClearBagAllItem",
			"Reload All Script/ReloadScript",
			"Kh«ng cã g×/nothing",
		}
		Say("Xin chµo <color=red>"..GetName().." ®©y lµ hÖ thèng qu¶n trÞ ®­îc x©y dùng bëi LoLi Sec Team<color>!"
			.."\nTäa ®é hiÖn t¹i cña admin lµ: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color>"
			.."\n<color>HiÖn cã : <color=green>"..CountPlayerOnline().." ng­êi ch¬i online<color>", getn(tSay), tSay);
end

function CantAttack()
	SetFightState(0)
end

function ListPlayerByName()
	AskClientForString("ListPlayerByName2","",1,999,"NhËp tªn") 
end

function ListPlayerByName2(name)
	oldIndex = PlayerIndex
	local tbSay = {}
		for i = 1, CountPlayerOnline() do
			PlayerIndex = i
			if(GetName() == name) then
				tinsert(tbSay,i.." - "..GetName().."/#GetInformation("..i..")")
			end
			break;
		end
		tinsert(tbSay,"Tho¸t/nothing")
		PlayerIndex = oldIndex
	Say("§©y lµ danh s¸ch toµn bé Player cña Server", getn(tbSay), tbSay)
end

function GetHighLevel()
	AskClientForString("GetHighLevel2","",1,999,"NhËp ®¼ng cÊp") 
end

function GetHighLevel2(level)
	SetLevel(tonumber(level),0)
	ExitGame()
end

function ClearBagAllItem(bTag)
	if not bTag or tonumber(bTag) ~= 1 then
		Say(g_szTitle.."Ng­¬i muèn thanh lý tói?", 2, "§ång ý/#ClearBagAllItem(1)", "Ra khái/nothing")
		return
	end
	ClearItemInPos();
	if GetItemCount(2,1,30644) < 1 and GetFreeItemRoom() > 0 then
		AddItem(2,1,30644,1)
	end
	for i=1,ADMIN_COUNT do
		if(GetAccount() == ADMIN_LIST[i] and GetItemCount(2,1,50006) < 1) then
			AddItem(2,1,50006,1)
			AddItem(0,200,40,1,0)
			break;
		end	
	end
end
function Get_Book()
	if Pay(100) == 0 then
		Talk(1, "OnUse", "Ng©n l­îng cña b¹n kh«ng ®ñ!");
		return
	end
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

function ReloadScript()
	ReloadAllScript()
end

function LevelupB1ook()
	for i =1,1000 do
		LevelUpBook()
	end
end

function RestartAttri ()
	ResetProperty()
	ExitGame()
end

function ListPlayer()
	oldIndex = PlayerIndex
	local tbSay = {}
		for i = 1, CountPlayerOnline() do
			PlayerIndex = i
			tinsert(tbSay,i.." - "..GetName().."/#GetInformation("..i..")")
		end
		tinsert(tbSay,"Tho¸t/nothing")
		PlayerIndex = oldIndex
	Say("Danh s¸ch toµn bé nh÷ng ng­êi ch¬i ®ang cã t¹i thµnh nµy!", getn(tbSay), tbSay)
end

function GetInformation(i)
	oldIndex = PlayerIndex
	PlayerIndex = i
	local account = GetAccount()
	local name = GetName()
	local w,x,y = GetWorldPos()
	local fact = GetPlayerFaction()
	local route = GetPlayerRoute()
	local level = GetLevel()
	local gold = GetCash()
	local sex = GetSex()
	local nLastip, nCurip = GetLoginIP()
	PlayerIndex = oldIndex
	SetTaskTemp(200,i)
	local tSay = {}
		tSay = {
			"Thªm vµng cho Gamer (dïng sè ©m ®Ó trõ vµng)/AddGold",
			"Thªm Item cho Gamer/AddItemToGamer",
			"Thªm danh hiÖu cho Gamer/AddtitleToGamer",
			"Kick Gamer/KickGamer",
			"§i ®Õn vÞ trÝ cña Gamer/GotoGamer",
			"TÈy thuéc tÝnh/RestartAttri",
			"V« m«n ph¸i/BlankRoute",
			"CÊm chat/BlockChat",
			"Më Chat/UnblockChat",
			"Fix route/FixRoute",
			"Gì toµn bé ®å cña Gamer ®ang mÆc/UnequipGamer",
			"Thªm hiÖu øng ®Æc biÖt vµo Gamer/AddSpecialEffect",
			"Kh«ng cã g×/Nothing",
		}
	Say("Sè thø tù:<color=green> "..GetTaskTemp(200).."<color>  -  Tªn nh©n VËt   :<color=green> "..name.."<color>\nCÊp ®é   :<color=green> "..level.."<color>  -  M«n ph¸i: <color=green>"..fact.."<color>  -  Chuyªn h­íng: <color=green>"..route.."<color>\nVÞ trÝ   : <color=green>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>  -  Ip cña ng­êi ch¬i: <color=green>"..nCurip.."<color>\n", getn(tSay), tSay);
end

function AddSpecialEffect()
	AskClientForString("AddSpecialEffect2","",1,20,"NhËp ID:")
end

function AddSpecialEffect2(id)
	local oldIndex = PlayerIndex
	local newidx = GetTaskTemp(200)
	PlayerIndex = newidx
	SetCurrentNpcSFX(PIdx2NpcIdx(),tonumber(id),1,1);
	PlayerIndex = oldIndex
end


function RestartAttri()
	local oldIndex = PlayerIndex
	local newidx = GetTaskTemp(200)
	PlayerIndex = newidx
	ResetProperty()
	ExitGame()
	PlayerIndex = oldIndex
end

function BlankRoute()
	local oldIndex = PlayerIndex
	local newidx = GetTaskTemp(200)
	PlayerIndex = newidx
	SetPlayerRoute(0)
	ExitGame()
	PlayerIndex = oldIndex
end

function FixRoute()
	local oldIndex = PlayerIndex
	local newidx = GetTaskTemp(200)
	PlayerIndex = newidx

	--SetPlayerRoute(3)
	LearnSkill(56);
	--nBegin = 45;
	--nEnd = 55;

	--for i = nBegin, nEnd do
		--LearnSkill(i);
		--while LevelUpSkill(i) == 1 do
		--end
	
	--LearnSkill(2366);LearnSkill(2367);LearnSkill(2368);
	ExitGame()
	PlayerIndex = oldIndex
end

function AddtitleToGamer() 
	AskClientForString("AddtitleToGamer_2","",1,20,"NhËp Vµo title Code:") 
end

function AddtitleToGamer_2(szItem)
	local szICode = SplitString(szItem, ",");
	local n = getn(szICode);
	local oldIndex = PlayerIndex
	local newidx = GetTaskTemp(200)
	PlayerIndex = newidx
	AddTitle(szICode[1],szICode[2])
	PlayerIndex = oldIndex
end
function AddItemToGamer() 
	AskClientForString("AddItemToGamer_2","",1,20,"NhËp Vµo Item Code:") 
end

function AddItemToGamer_2(szItem)
	local szICode = SplitString(szItem, ",");
	local n = getn(szICode);
	local oldIndex = PlayerIndex
	local newidx = GetTaskTemp(200)
	PlayerIndex = newidx
	AddItem(szICode[1],szICode[2],szICode[3],szICode[4],szICode[5],szICode[6],szICode[7])
	PlayerIndex = oldIndex
end

function AddGold()
	AskClientForString("AddGold_2", "", 1, 10, "NhËp sè tiÒn muèn chuyÓn kho¶n");
end

function AddGold_2(num)
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		Earn(num)
	Msg2Player("B¹n ®­îc GM chuyÓn kho¶n cho "..num.." l­îng!!!")
	PlayerIndex=oldIndex 
	Msg2Player("B¹n ®· chuyÓn kho¶n thµnh c«ng")
end

function KickGamer() 
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		ExitGame()
	PlayerIndex=oldIndex 
	Msg2Player("Kick gamer thµnh c«ng")
end; 

function UnblockChat() 
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200) 
	SetChatFlag(0) 
		Msg2Player("B¹n ®­îc më khãa chat trªn mäi tÇn sè !") 
	PlayerIndex=oldIndex
	Msg2Player("Më chat thµnh c«ng!!!")
end

function BlockChat() 
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200) 
	SetChatFlag(1) 
		Msg2Player("Th»ng ngu ®· bÞ khãa mâm trªn mäi tÇn sè !") 
	PlayerIndex=oldIndex
	Msg2Player("CÊm chat thµnh c«ng!!!")
end 

function UnequipGamer()
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		for i = 0, 20 do
			UnEquipAtPosition(i)
		end
		Msg2Player("B¹n bÞ GM gì hÕt ®å xuèng råi")
	PlayerIndex=oldIndex 
	Msg2Player("§· gì hÕt ®å cña Gamer")	
end

function GotoGamer()
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		local w,x,y = GetWorldPos()
	PlayerIndex=oldIndex 
	NewWorld(w,x,y)
	Msg2Player("Di chuyÓn ®Õn gamer thµnh c«ng")
end

function Goto()
	local tSay = {}
	local nRoute = GetPlayerRoute();
		tSay = {
			"B¶n ®å míi/NewMaps",
			"M«n ph¸i/Factions",
			"Kh«ng cã g×/Nothing",
		}
	Say(g_szTitle.."Ng­¬i muèn ®i n¬i ®©u?", getn(tSay), tSay);
end

function Factions()
	local tSay = {}
	local nRoute = GetPlayerRoute();
		tSay = {
			"ThiÕu L©m/#Go_Faction(1)",
			"Vâ §ang/#Go_Faction(2)",
			"Nga My/#Go_Faction(3)",
			"C¸i Bang/#Go_Faction(4)",
			"§­êng M«n/#Go_Faction(5)",
			"Thiªn Ba D­¬ng Phñ/#Go_Faction(6)",
			"Ngò §éc Gi¸o/#Go_Faction(7)",
			"C«n L«n/#Go_Faction(8)",
			"Minh Gi¸o/#Go_Faction(9)",
			"Thóy Yªn/#Go_Faction(10)",
			"Kh«ng cã g×/Nothing",
		}
	Say(g_szTitle.."Ng­¬i cÇn gióp ®ì g×?", getn(tSay), tSay);
end

function Go_Faction(i)
	if (i == 1) then
		NewWorld(204,1501,3328)
	end
	if (i == 2) then
		NewWorld(312,1713,3469)
	end
	if (i == 3) then
		NewWorld(303,1603,3240)
	end
	if (i == 4) then
		NewWorld(209,1528,3246)
	end
	if (i == 5) then
		NewWorld(305,1532,2915)
	end
	if (i == 6) then
		NewWorld(219,1630,3274)
	end
	if (i == 7) then
		NewWorld(407,1555,3282)
	end
	if (i == 8) then
		NewWorld(509,1513,3285)
	end
	if (i == 9) then
		NewWorld(152,1518,3078)
	end
	if (i == 10) then
		NewWorld(404,1507,2788)
	end
	SetFightState(0)
	PlaySound("\\sound\\sound_i016.wav");

	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
end

function NewMaps()
	local tSay = {}
	local nRoute = GetPlayerRoute();
		tSay = {
			"§iÖn Ngäc LÖnh/Go_HomeTown",
			"T©y Thôc §¹o/Go_8907",
			"ChiÕn Tr­êng Moba/Go_8905",
			"HuÖ An TrÊn/Go_9002",
			"Minh Gi¸o/Go_9003",
			"T­¬ng D­¬ng/Go_9004",
			"BLH/Go_9005",
			"BLH JX1/Go_9006",
			"L©m An/Go_9007",
			"Nam Nh¹c TrÊn/Go_9008",			
			"Kh«ng cã g×/Nothing",
		}
	Say(g_szTitle.."Ng­¬i cÇn gióp ®ì g×?", getn(tSay), tSay);
end
function Go_9008()
	NewWorld(9008,1586,3095)
	SetFightState(0)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
end
function Go_9007()
	NewWorld(9007,1653,3949)
	SetFightState(0)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
end
function Go_9006()
	NewWorld(9006,1623,3183)
	SetFightState(0)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
end
function Go_9005()
	NewWorld(9005,1697,3377)
	SetFightState(0)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
end
function Go_9004()
	NewWorld(9004,1718,3443)
	SetFightState(0)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
end
function Go_9003()
	NewWorld(9003,1656,3372)
	SetFightState(0)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
end
function Go_9002()
	NewWorld(9002,1576,3178)
	SetFightState(0)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
end
function Go_8905()
	NewWorld(8905,1633,3243)
	SetFightState(1)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
end

function Go_8907()
	NewWorld(8907,1638,3727)
	SetFightState(0)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
end

function Go_HomeTown()
	NewWorld(426,1579,3037)
	SetFightState(0)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0);
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
function AnnoucementToPlayer()
	AskClientForString("AnnoucementToPlayer2","",1,999,"NhËp néi dung") 
end
function AnnoucementToPlayer2(string)
	AddLocalNews("Admin "..GetName()..": "..string);
	Msg2SubWorld("Admin "..GetName()..": "..string);
end

function TongOperation_update()
	if GetTongLevel() < 3 then
		AddTongLevel();
		PlaySound("\\sound\\sound_i016.wav");
		SetCurrentNpcSFX(PIdx2NpcIdx(),905,0,0)
	end
end

function AutoTele()
	for x = 1000,2000 do
		for y = 1000,4000 do
			NewWorld(101,x,y)
			local map = GetWorldPos()
			if(map == 101) then
				break;
			end
		end
	end
end

function JoinRoute_UpdateLevel()
	local tMenu = {
		"ThiÕu L©m/join_sl",
		"Vâ §ang/join_wd",
		"Nga My/join_em",
		"Ngò §éc/join_wdu",
		"C¸i Bang/join_gb",
		"§­êng M«n/join_tm",
		"D­¬ng M«n/join_ym",
		"C«n L«n/join_kl",
		"Thóy Yªn/join_cy",
		"Minh Gi¸o/join_mg",
		"Ra khái/nothing",
	};
	Say("Ng­¬i muèn gia nhËp l­u ph¸i g×?", getn(tMenu), tMenu);
end

function join_sl()
	if(GetSex() == 2)then
		return 1;
	end
	local tSay = {}
		tinsert(tSay, "ThiÕu L©m Tôc Gia (§ao)/#enter_mp(2)")
		tinsert(tSay, "ThiÕu L©m ThiÒn T«ng (Tr­îng)/#enter_mp(3)")
		tinsert(tSay, "ThiÕu L©m Vâ T«ng (QuyÒn)/#enter_mp(4)")
		tinsert(tSay, "Kh«ng cã g×/nothing")
	Say(g_szTitle.."Ng­¬i cÇn gióp ®ì g×?", getn(tSay), tSay);
end;

function join_tm()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"§­êng M«n B¹o Vò (Phi Tiªu - BÉy)/#enter_mp(6)",
		"§­êng M«n NhËm HiÖp (Dao G¨m)/#enter_mp(31)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_em()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Nga My PhËt Gia (KiÕm)/#enter_mp(8)",
		"Nga My Tôc Gia (CÇm)/#enter_mp(9)",
		"Ra khái/nothing",
	};

	SelectSay(szSay);
end;

function join_gb()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"C¸i Bang TÜnh Y (QuyÒn)/#enter_mp(11)",
		"C¸i Bang ¤ Y (C«n)/#enter_mp(12)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_wd()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Vâ §ang §¹o Gia (KiÕm)/#enter_mp(14)",
		"Vâ §ang Tôc Gia (Bót)/#enter_mp(15)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_ym()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"D­¬ng M«n Th­¬ng Kþ (Th­¬ng)/#enter_mp(17)",
		"D­¬ng M«n Cung Kþ (Cung Tªn)/#enter_mp(18)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_wdu()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Ngò §éc Cæ S­ (Tr¶o)/#enter_mp(20)",
		"Ngò §éc HiÖp §éc (Song §ao)/#enter_mp(21)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_kl()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"C«n L«n Thiªn S­ (KiÕm)/#enter_mp(23)",
		"C«n L«n KiÕm T«n (KiÕm)/#enter_mp(32)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_mg()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Minh Gi¸o Th¸nh ChiÕn (§ao)/#enter_mp(25)",
		"Minh Gi¸o TrËn Binh (Bót)/#enter_mp(26)",
		"Minh Gi¸o HuyÕt Nh©n (Tr¶o)/#enter_mp(27)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function join_cy()
	local szSay = {
		g_szTitle.."Ng­¬i muèn gia nhËp l­u ph¸i g×?",
		"Thóy Yªn Vò Tiªn (S¸o)/#enter_mp(29)",
		"Thóy Yªn Linh N÷ (Linh Chi)/#enter_mp(30)",
		"Ra khái/nothing",
	};
	SelectSay(szSay);
end;

function enter_mp(nRoute)
	local nBegin = 0;
	local nEnd = 0;
	local nBody = GetBody(); --1 = nam kh«i ng«, 2 = nam tiªu chuÈn, 3 = n÷ gîi c¶m, 4 = kiÒu n÷

	SetPlayerRoute(nRoute);						--Gia nhËp ph¸i

	if nRoute == 2 then						--"ThiÕu L©m tôc gia"
		LearnSkill(3);
		LearnSkill(5);
		LearnSkill(32);
		nBegin = 21;
		nEnd = 31;
	elseif nRoute == 3 then					--ThiÕu L©m thiÒn t¨ng
		LearnSkill(6);
		LearnSkill(57);
		nBegin = 45;
		nEnd = 56;
	elseif nRoute == 4 then					--ThiÕu L©m vâ t¨ng
		LearnSkill(2);
		LearnSkill(44);
		nBegin = 33;
		nEnd = 43;
	elseif nRoute == 14 then					--Vâ §ang ®¹o gia
		LearnSkill(4);
		LearnSkill(146);
		nBegin = 125;
		nEnd = 145;
	elseif nRoute == 15 then					--Vâ §ang tôc gia
		LearnSkill(5);
		LearnSkill(159);
		nBegin = 147;
		nEnd = 158;
	elseif nRoute == 8 then					--Nga My PhËt gia
		LearnSkill(4);
		LearnSkill(89);
		nBegin = 75
		nEnd = 88;
	elseif nRoute == 9 then					--Nga My tôc gia
		LearnSkill(10);
		LearnSkill(102);
		nBegin = 90
		nEnd = 101;
	elseif nRoute == 11 then					--C¸i Bang TÜnh y
		LearnSkill(2);
		LearnSkill(113);
		nBegin = 103
		nEnd = 112;
	elseif nRoute == 12 then					--C¸i Bang ¤ Y
		LearnSkill(5);
		LearnSkill(124);
		nBegin = 114
		nEnd = 123;
	elseif nRoute == 6 then					--§­êng M«n Ch©m
		LearnSkill(7);
		LearnSkill(74);
		nBegin = 58
		nEnd = 73;
	elseif nRoute == 17 then					--D­¬ng M«n th­¬ng Kþ
		LearnSkill(11);
		LearnSkill(732);
		nBegin = 720;
		nEnd = 731;
	elseif nRoute == 18 then					--D­¬ng M«n Cung Kþ
		LearnSkill(12);
		LearnSkill(745);
		nBegin = 733;
		nEnd = 744;
	elseif nRoute == 20 then					--HiÖp §éc
		LearnSkill(13);
		LearnSkill(775);
		nBegin = 364;
		nEnd = 377;
	elseif nRoute == 21 then					--Tµ §éc
		LearnSkill(14);
		LearnSkill(774);
		nBegin = 347;
		nEnd = 363;
	elseif nRoute == 23 then					--C«n L«n Thiªn S­
		LearnSkill(4);
		LearnSkill(1032);
		nBegin = 1017 ;
		nEnd = 1031;
	elseif nRoute == 25 then					--Minh Gi¸o Th¸nh ChiÕn
		LearnSkill(3);
		LearnSkill(1066);
		nBegin = 1053 ;
		nEnd = 1065;
	elseif nRoute == 26 then					--Minh Gi¸o TrËn Binh
		LearnSkill(8);
		LearnSkill(1096);
		nBegin = 1083 ;
		nEnd = 1095;
	elseif nRoute == 27 then					--minh giao huyet nhan
		LearnSkill(14);
		LearnSkill(1213);
		nBegin = 1131 ;
		nEnd = 1143;
	elseif nRoute == 29 then					--Thóy Yªn Vò Tiªn
		LearnSkill(15);
		LearnSkill(1196);
		nBegin = 1165 ;
		nEnd = 1176;
	elseif nRoute == 30 then					--Thóy Yªn Linh N÷
		LearnSkill(16);
		LearnSkill(1230);
		AddItem(2,20,1,1)
		nBegin = 1217 ;
		nEnd = 1229;
	elseif nRoute == 31 then					--§­êng M«n NhËm HiÖp
		LearnSkill(17);
		nBegin = 1872;
		nEnd = 1883;
	elseif nRoute == 32 then					-- C«n L«n KiÕm T«n
		LearnSkill(4);
		AddItem(2,20,100,1)
		nBegin = 1885;
		nEnd = 1897;
	else
		return
	end;

	LearnSkill(20); --Khinh c«ng

	for i = nBegin, nEnd do
		LearnSkill(i);
		while LevelUpSkill(i) == 1 do
		end
	end;
	
	local myroute  = GetPlayerRoute()
	if(myroute == 2) then
		LearnSkill(2359);
		LearnSkill(2360);
		LearnSkill(2361);
	elseif(myroute == 3) then
		LearnSkill(2366);
		LearnSkill(2367);
		LearnSkill(2368);
	elseif(myroute == 4) then
		LearnSkill(2374);
		LearnSkill(2375);
		LearnSkill(2376);
	elseif(myroute == 6) then
		LearnSkill(2300);
		LearnSkill(2301);
		LearnSkill(2302);
	elseif(myroute == 8) then
		LearnSkill(2410);
		LearnSkill(2411);
	elseif(myroute == 9) then
		LearnSkill(2403);
		LearnSkill(2404);
		LearnSkill(2405);	
	elseif(myroute == 11) then LearnSkill(2328);LearnSkill(2329);LearnSkill(2330);
	elseif(myroute == 12) then LearnSkill(2336);LearnSkill(2337);LearnSkill(2338);
	elseif(myroute == 14) then LearnSkill(2314);LearnSkill(2315);LearnSkill(2316);
	elseif(myroute == 15) then LearnSkill(2321);LearnSkill(2322);LearnSkill(2323);
	elseif(myroute == 17) then LearnSkill(2422);LearnSkill(2423);LearnSkill(2424);
	elseif(myroute == 18) then LearnSkill(2415);LearnSkill(2416);LearnSkill(2417);
	elseif(myroute == 20) then LearnSkill(2428);LearnSkill(2429);LearnSkill(2430);
	elseif(myroute == 21) then LearnSkill(2438);LearnSkill(2439);LearnSkill(2440);
	elseif(myroute == 23) then LearnSkill(2343);LearnSkill(2344);LearnSkill(2345);
	elseif(myroute == 25) then LearnSkill(2457);LearnSkill(2458);LearnSkill(2459);
	elseif(myroute == 26) then LearnSkill(2444);LearnSkill(2445);LearnSkill(2446);
	elseif(myroute == 27) then LearnSkill(2450);LearnSkill(2451);LearnSkill(2452);
	elseif(myroute == 29) then LearnSkill(2396);LearnSkill(2397);LearnSkill(2398);
	elseif(myroute == 30) then LearnSkill(2381);LearnSkill(2382);LearnSkill(2383);
	elseif(myroute == 31) then LearnSkill(2307);LearnSkill(2308);LearnSkill(2309);
	elseif(myroute == 32) then LearnSkill(2350);LearnSkill(2351);LearnSkill(2352);
	end
	SetSuMon()
	NhanMatTich(45)
	PlaySound("\\sound\\sound_i016.wav");
	SetCurrentNpcSFX(PIdx2NpcIdx(),1008,0,0)

	Msg2Player("Thao t¸c thµnh c«ng")
	Talk(1,"ExitGame","Thao t¸c thµnh c«ng")
end

function NhanMatTich(levelofbook)
	tBook = new(KTabFile, "\\settings\\item\\book.txt");
	myroute = GetPlayerRoute()
	for i=1, tBook:getRow() do
		if (tBook:getCell(i,28) == tostring(myroute)  and tBook:getCell(i,25) == tostring(levelofbook)) then
			AddItem(tBook:getCell(i,2),tBook:getCell(i,3),tBook:getCell(i,4),1)
			Msg2Player("B¹n nhËn ®­îc: "..tBook:getCell(i,1))
			break;
		end
	end
end


function SetSuMon()
	local tBook = new(KTabFile,"\\settings\\item\\cloth.txt");
	local weapon = new(KTabFile,"\\settings\\item\\weapon.txt");
	route = GetPlayerRoute()
	body = GetBody()
	for i=1, tBook:getRow() do
		if (tBook:getCell(i,28) == tostring(route)  and tBook:getCell(i,17) == tostring(body) and tBook:getCell(i,15) == "80") then
--			AddItem(tBook:getCell(i,2),100,tBook:getCell(i,4),1)
--			AddItem(tBook:getCell(i,2),101,tBook:getCell(i,4),1)
--			AddItem(tBook:getCell(i,2),103,tBook:getCell(i,4),1)
--			AddItem(tBook:getCell(i,2),102,tBook:getCell(i,4),1)
--			AddItem(tBook:getCell(i,2),102,tBook:getCell(i,4)+4,1)

			for y=1, weapon:getRow() do
				if (weapon:getCell(y,4) == tBook:getCell(i,4)) then
					AddItem(weapon:getCell(y,2),weapon:getCell(y,3),weapon:getCell(y,4),1,1,-1,-1,-1,-1,-1,-1)
					break;
				end
			end
			
			break;
		end
	end
	AddItem(0,102,101,1,1,7,340,7,341,7,102,-1,0)
	AddItem(0,105,9,1,1,-1,-1,-1,-1,-1,-1,-1,0)
	if (body == 1) then
		AddItem(0,100,2351,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,101,2351,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,102,2351,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,103,2351,1,1,-1,-1,-1,-1,-1,-1)
	end
	if (body == 2) then
		AddItem(0,100,2352,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,101,2352,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,102,2352,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,103,2352,1,1,-1,-1,-1,-1,-1,-1)
	end
	if (body == 3) then
		AddItem(0,100,2353,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,101,2353,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,102,2353,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,103,2353,1,1,-1,-1,-1,-1,-1,-1)
	end
	if (body == 4) then
		AddItem(0,100,2354,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,101,2354,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,102,2354,1,1,-1,-1,-1,-1,-1,-1)
		AddItem(0,103,2354,1,1,-1,-1,-1,-1,-1,-1)
	end
end
