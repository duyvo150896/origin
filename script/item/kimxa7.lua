Include("\\script\\lib\\globalfunctions.lua");

function OnUse(nItem)
	Get();
end

g_szTitleMain = "<color=green>Kim xµ 7: <color> Thuéc tÝnh tù chän vµ cao nhÊt"
function Get()
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
	local pifeng,pIndex = AddItem(0,nType,35,1,1,-1,-1,-1,-1,-1,-1,0,15)
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
	local pifeng,pIndex = AddItem(0,nType,36,1,1,-1,-1,-1,-1,-1,-1,0,15)
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
	local pifeng,pIndex = AddItem(0,nType,37,1,1,-1,-1,-1,-1,-1,-1,0,15)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	DelItem(2,1,50005,1);
end