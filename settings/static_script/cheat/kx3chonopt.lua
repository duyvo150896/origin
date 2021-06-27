g_szTitle4 = "<color=green>Kim Xµ: <color>";
function Get_KX3chonopt_6loai()
	local tSay = {
		"Kim Xµ  ¢m chÕ - /Get_KX3Am",
		"Kim Xµ  Kim chÕ -/Get_KX3Kim",
		"Kim Xµ  Méc chÕ -/Get_KX3Moc",
		"Kim Xµ  Thñy chÕ -/Get_KX3Thuy",
		"Kim Xµ  Háa chÕ -/Get_KX3Hoa",
		"Kim Xµ  Thæ chÕ -/Get_KX3Tho",
		"Hñy/nothing",
	};
	Say(g_szTitle4, getn(tSay), tSay);
end

function Get_KX3Am()
	local tSay = {
		"Kim Xµ  ¢m chÕ - ¸o Choµng/#SetKX3SL_2  (152,9)",
		"Kim Xµ ¢m chÕ - Huy Ch­¬ng/#SetKX3SL_2(153,9)",
		"Kim Xµ ¢m chÕ - ChiÕn Hµi/#SetKX3SL_2     (154,9)",
		"Hñy/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
function Get_KX3Kim()
	local tSay = {
		"Kim Xµ  Kim chÕ - ¸o Choµng/#SetKX3SL_2  (152,4)",
		"Kim Xµ KimchÕ - Huy Ch­¬ng/#SetKX3SL_2 (153,4)",
		"Kim Xµ KimchÕ - ChiÕn Hµi/#SetKX3SL_2     (154 ,4)",
		"Hñy/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
function Get_KX3Moc()
	local tSay = {
		"Kim Xµ  Méc chÕ - ¸o Choµng/#SetKX3SL_2   (152,5)",
		"Kim Xµ  Méc chÕ - Huy Ch­¬ng/#SetKX3SL_2(153,5)",
		"Kim Xµ  Méc chÕ - ChiÕn Hµi/#SetKX3SL_2     (154,5)",
		"Hñy/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
function Get_KX3Thuy()
	local tSay = {
		"Kim Xµ  Thñy chÕ - ¸o Choµng/#SetKX3SL_2   (152,6)",
		"Kim Xµ  Thñy chÕ - Huy Ch­¬ng/#SetKX3SL_2(153,6)",
		"Kim Xµ  Thñy chÕ - ChiÕn Hµi/#SetKX3SL_2     (154,6)",
		"Hñy/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
function Get_KX3Hoa()
	local tSay = {
		"Kim Xµ  Háa chÕ - ¸o Choµng/#SetKX3SL_2   (152,7)",
		"Kim Xµ  Háa chÕ - Huy Ch­¬ng/#SetKX3SL_2(153,7)",
		"Kim Xµ  Háa chÕ - ChiÕn Hµi/#SetKX3SL_2     (154,7)",
		"Hñy/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
function Get_KX3Tho()
	local tSay = {
		"Kim Xµ  Thæ chÕ - ¸o Choµng/#SetKX3SL_2   (152,8)",
		"Kim Xµ  Thæ chÕ - Huy Ch­¬ng/#SetKX3SL_2(153,8)",
		"Kim Xµ  Thæ chÕ - ChiÕn Hµi/#SetKX3SL_2     (154,8)",
		"Hñy/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
-- function SetKX3SL_1(nType,nguhanh)
	-- local List = {
		-- [3388] = {"Linh Ho¹t"},
		-- [3389] = {"Th©n Ph¸p"},
	-- };
	
	-- local tSay = {};
	
	-- for k, v in pairs(List) do
		-- tinsert(tSay,""..v[1].."/#SetKX3SL_2("..nType..", "..k..","..nguhanh..")");
	-- end
	
	-- tinsert(tSay,"Hñy/nothing");
	-- Say(g_szTitle4.."Lùa chän thuéc tÝnh 1", getn(tSay), tSay);
-- end

function SetKX3SL_2(nType,nguhanh)
	local defaultval = 186 -- 188 -2
	local List = {
		[162] = {"Søc m¹nh"},
		[163] = {"Th©n ph¸p"},
		[164] = {"Néi c«ng" },
		[165] = {"Linh ho¹"},
		[166] = {"G©n cèt"},
		[168]= {"Néi lùc"},
	};

	local tSay = {};
	defaultval = defaultval - (nguhanh  + 1)
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKX3SL_3("..nType..","..defaultval..", "..k..","..nguhanh..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle4.."Lùa chän thuéc tÝnh 2", getn(tSay), tSay);
end

function SetKX3SL_3(nType,ID1, ID2,nguhanh)
	local List = {
		[181] = {"Ngo¹i c«ng"},
		[182] = {"Néi c«ng"},
		[178] = {"	S¸t th­¬ng t¨ng "},
		[179] = {"	§éc kÌm theo"},
		[180] = {"	§éc s¸t t¨ng"},
};
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKX3SL_4("..nType..","..ID1..", "..ID2..", "..k..","..nguhanh..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle4.."Lùa chän thuéc tÝnh 3", getn(tSay), tSay);
end

function SetKX3SL_4(nType,ID1, ID2, ID3,nguhanh)
	local List = {
		[757] ={"Søc m¹nh"},
		[758] ={"Th©n ph¸p"},
		[759] ={"Néi c«ng" },
		[760] ={"Linh ho¹"},
		[761] ={"G©n cèt"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKX3SL_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..","..nguhanh..")");
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle4.."Lùa chän thuéc tÝnh 4", getn(tSay), tSay);
end

function SetKX3SL_5(nType,ID1, ID2, ID3,ID4,nguhanh)
	local List = {
		[770] = {"Ngo¹i c«ng"},
		[771] = {"Néi c«ng"},
		[754] = {"	S¸t th­¬ng t¨ng"},
		[755] = {"	T¨ng s¸t th­¬ng ®éc"},
		[1167] = {"Tæng c«ng kÝch ngo¹i c«ng"},
		[1234] = {"Tæng c«ng kÝch néi c«ng"},
		[757] ={"Søc m¹nh"},
		[758] ={"Th©n ph¸p"},
		[759] ={"Néi c«ng" },
		[760] ={"Linh ho¹"},
		[761] ={"G©n cèt"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		if k ~= ID4 then
			tinsert(tSay,""..v[1].."/#SetKX3SL_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..","..nguhanh..")");
		end
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle4.."Lùa chän thuéc tÝnh 5", getn(tSay), tSay);
end

function SetKX3SL_6(nType,ID1, ID2, ID3,ID4,ID5,nguhanh)
	if nType == 152 then -- AC
		List = {
				[778] = {"Sinh lùc"},
				[786] = {"Ph¶n ®ßn néi c«ng"},
				[251] = {"HiÖu qu¶ mana"},
				[765] = {"HiÖu qu¶ hç trî tÊn c«ng"},
				[825	] = {"Tr¸nh mäi tr¹ng th¸i phô"},
				[757] ={"Søc m¹nh"},
				[758] ={"Th©n ph¸p"},
				[759] ={"Néi c«ng" },
				[760] ={"Linh ho¹"},
				[580] = {"HiÖu qu¶ th­¬ng d­îc"},
				[761] ={"G©n cèt"},
			};
	elseif nType == 153 then  -- HC
		List = {
				[778] = {"Sinh lùc"},
				[786] = {"Ph¶n ®ßn néi c«ng"},
				[251] = {"HiÖu qu¶ mana"},
				[765] = {"HiÖu qu¶ hç trî tÊn c«ng"},
				[757] ={"Søc m¹nh"},
				[758] ={"Th©n ph¸p"},
				[759] ={"Néi c«ng" },
				[760] ={"Linh ho¹"},
				[761] ={"G©n cèt"},
				[580] = {"HiÖu qu¶ th­¬ng d­îc"},
			};
	elseif nType == 154 then -- Giay
		List = {
				[778] = {"Sinh lùc"},
				[786] = {"Ph¶n ®ßn néi c«ng"},
				[251] = {"HiÖu qu¶ mana"},
				[765] = {"HiÖu qu¶ hç trî tÊn c«ng"},
				[1004] = {"Tèc ch¹y"},
				[757] ={"Søc m¹nh"},
				[758] ={"Th©n ph¸p"},
				[759] ={"Néi c«ng" },
				[760] ={"Linh ho¹"},
				[761] ={"G©n cèt"},
				[580] = {"HiÖu qu¶ th­¬ng d­îc"},
			};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		if k ~= ID4 and k ~= ID5 then
			tinsert(tSay,""..v[1].."/#SetKX3SL_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..","..nguhanh..")");
		end
	end
	
	tinsert(tSay,"Hñy/nothing");
	Say(g_szTitle4.."Lùa chän thuéc tÝnh 6", getn(tSay), tSay);
end

function SetKX3SL_End(nType,ID1,ID2,ID3,ID4,ID5,ID6,nguhanh)
	local pifeng,pIndex = AddItem(0,nType,nguhanh,1,1,-1,-1,-1,-1,-1,-1,0,0)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,-1,ID2,ID3,ID4,ID5,ID6);
	-- DelItem(2,1,50005,1);
end