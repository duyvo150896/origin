g_szTitle4 = "<color=green>Kim X�: <color>";
function Get_KX3chonopt_6loai()
	local tSay = {
		"Kim X�  �m ch� - /Get_KX3Am",
		"Kim X�  Kim ch� -/Get_KX3Kim",
		"Kim X�  M�c ch� -/Get_KX3Moc",
		"Kim X�  Th�y ch� -/Get_KX3Thuy",
		"Kim X�  H�a ch� -/Get_KX3Hoa",
		"Kim X�  Th� ch� -/Get_KX3Tho",
		"H�y/nothing",
	};
	Say(g_szTitle4, getn(tSay), tSay);
end

function Get_KX3Am()
	local tSay = {
		"Kim X�  �m ch� - �o Cho�ng/#SetKX3SL_2  (152,9)",
		"Kim X� �m ch� - Huy Ch��ng/#SetKX3SL_2(153,9)",
		"Kim X� �m ch� - Chi�n H�i/#SetKX3SL_2     (154,9)",
		"H�y/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
function Get_KX3Kim()
	local tSay = {
		"Kim X�  Kim ch� - �o Cho�ng/#SetKX3SL_2  (152,4)",
		"Kim X� Kimch� - Huy Ch��ng/#SetKX3SL_2 (153,4)",
		"Kim X� Kimch� - Chi�n H�i/#SetKX3SL_2     (154 ,4)",
		"H�y/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
function Get_KX3Moc()
	local tSay = {
		"Kim X�  M�c ch� - �o Cho�ng/#SetKX3SL_2   (152,5)",
		"Kim X�  M�c ch� - Huy Ch��ng/#SetKX3SL_2(153,5)",
		"Kim X�  M�c ch� - Chi�n H�i/#SetKX3SL_2     (154,5)",
		"H�y/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
function Get_KX3Thuy()
	local tSay = {
		"Kim X�  Th�y ch� - �o Cho�ng/#SetKX3SL_2   (152,6)",
		"Kim X�  Th�y ch� - Huy Ch��ng/#SetKX3SL_2(153,6)",
		"Kim X�  Th�y ch� - Chi�n H�i/#SetKX3SL_2     (154,6)",
		"H�y/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
function Get_KX3Hoa()
	local tSay = {
		"Kim X�  H�a ch� - �o Cho�ng/#SetKX3SL_2   (152,7)",
		"Kim X�  H�a ch� - Huy Ch��ng/#SetKX3SL_2(153,7)",
		"Kim X�  H�a ch� - Chi�n H�i/#SetKX3SL_2     (154,7)",
		"H�y/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
function Get_KX3Tho()
	local tSay = {
		"Kim X�  Th� ch� - �o Cho�ng/#SetKX3SL_2   (152,8)",
		"Kim X�  Th� ch� - Huy Ch��ng/#SetKX3SL_2(153,8)",
		"Kim X�  Th� ch� - Chi�n H�i/#SetKX3SL_2     (154,8)",
		"H�y/nothing",
	};
	
	Say(g_szTitle4, getn(tSay), tSay);
end
-- function SetKX3SL_1(nType,nguhanh)
	-- local List = {
		-- [3388] = {"Linh Ho�t"},
		-- [3389] = {"Th�n Ph�p"},
	-- };
	
	-- local tSay = {};
	
	-- for k, v in pairs(List) do
		-- tinsert(tSay,""..v[1].."/#SetKX3SL_2("..nType..", "..k..","..nguhanh..")");
	-- end
	
	-- tinsert(tSay,"H�y/nothing");
	-- Say(g_szTitle4.."L�a ch�n thu�c t�nh 1", getn(tSay), tSay);
-- end

function SetKX3SL_2(nType,nguhanh)
	local defaultval = 186 -- 188 -2
	local List = {
		[162] = {"S�c m�nh"},
		[163] = {"Th�n ph�p"},
		[164] = {"N�i c�ng" },
		[165] = {"Linh ho�"},
		[166] = {"G�n c�t"},
		[168]= {"N�i l�c"},
	};

	local tSay = {};
	defaultval = defaultval - (nguhanh  + 1)
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKX3SL_3("..nType..","..defaultval..", "..k..","..nguhanh..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle4.."L�a ch�n thu�c t�nh 2", getn(tSay), tSay);
end

function SetKX3SL_3(nType,ID1, ID2,nguhanh)
	local List = {
		[181] = {"Ngo�i c�ng"},
		[182] = {"N�i c�ng"},
		[178] = {"	S�t th��ng t�ng "},
		[179] = {"	��c k�m theo"},
		[180] = {"	��c s�t t�ng"},
};
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKX3SL_4("..nType..","..ID1..", "..ID2..", "..k..","..nguhanh..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle4.."L�a ch�n thu�c t�nh 3", getn(tSay), tSay);
end

function SetKX3SL_4(nType,ID1, ID2, ID3,nguhanh)
	local List = {
		[757] ={"S�c m�nh"},
		[758] ={"Th�n ph�p"},
		[759] ={"N�i c�ng" },
		[760] ={"Linh ho�"},
		[761] ={"G�n c�t"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKX3SL_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..","..nguhanh..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle4.."L�a ch�n thu�c t�nh 4", getn(tSay), tSay);
end

function SetKX3SL_5(nType,ID1, ID2, ID3,ID4,nguhanh)
	local List = {
		[770] = {"Ngo�i c�ng"},
		[771] = {"N�i c�ng"},
		[754] = {"	S�t th��ng t�ng"},
		[755] = {"	T�ng s�t th��ng ��c"},
		[1167] = {"T�ng c�ng k�ch ngo�i c�ng"},
		[1234] = {"T�ng c�ng k�ch n�i c�ng"},
		[757] ={"S�c m�nh"},
		[758] ={"Th�n ph�p"},
		[759] ={"N�i c�ng" },
		[760] ={"Linh ho�"},
		[761] ={"G�n c�t"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		if k ~= ID4 then
			tinsert(tSay,""..v[1].."/#SetKX3SL_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..","..nguhanh..")");
		end
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle4.."L�a ch�n thu�c t�nh 5", getn(tSay), tSay);
end

function SetKX3SL_6(nType,ID1, ID2, ID3,ID4,ID5,nguhanh)
	if nType == 152 then -- AC
		List = {
				[778] = {"Sinh l�c"},
				[786] = {"Ph�n ��n n�i c�ng"},
				[251] = {"Hi�u qu� mana"},
				[765] = {"Hi�u qu� h� tr� t�n c�ng"},
				[825	] = {"Tr�nh m�i tr�ng th�i ph�"},
				[757] ={"S�c m�nh"},
				[758] ={"Th�n ph�p"},
				[759] ={"N�i c�ng" },
				[760] ={"Linh ho�"},
				[580] = {"Hi�u qu� th��ng d��c"},
				[761] ={"G�n c�t"},
			};
	elseif nType == 153 then  -- HC
		List = {
				[778] = {"Sinh l�c"},
				[786] = {"Ph�n ��n n�i c�ng"},
				[251] = {"Hi�u qu� mana"},
				[765] = {"Hi�u qu� h� tr� t�n c�ng"},
				[757] ={"S�c m�nh"},
				[758] ={"Th�n ph�p"},
				[759] ={"N�i c�ng" },
				[760] ={"Linh ho�"},
				[761] ={"G�n c�t"},
				[580] = {"Hi�u qu� th��ng d��c"},
			};
	elseif nType == 154 then -- Giay
		List = {
				[778] = {"Sinh l�c"},
				[786] = {"Ph�n ��n n�i c�ng"},
				[251] = {"Hi�u qu� mana"},
				[765] = {"Hi�u qu� h� tr� t�n c�ng"},
				[1004] = {"T�c ch�y"},
				[757] ={"S�c m�nh"},
				[758] ={"Th�n ph�p"},
				[759] ={"N�i c�ng" },
				[760] ={"Linh ho�"},
				[761] ={"G�n c�t"},
				[580] = {"Hi�u qu� th��ng d��c"},
			};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		if k ~= ID4 and k ~= ID5 then
			tinsert(tSay,""..v[1].."/#SetKX3SL_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..","..nguhanh..")");
		end
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle4.."L�a ch�n thu�c t�nh 6", getn(tSay), tSay);
end

function SetKX3SL_End(nType,ID1,ID2,ID3,ID4,ID5,ID6,nguhanh)
	local pifeng,pIndex = AddItem(0,nType,nguhanh,1,1,-1,-1,-1,-1,-1,-1,0,0)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,-1,ID2,ID3,ID4,ID5,ID6);
	-- DelItem(2,1,50005,1);
end