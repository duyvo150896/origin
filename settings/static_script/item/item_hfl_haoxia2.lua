Include("\\script\\lib\\globalfunctions.lua");
g_szTitle = "<color=green>H�o Hi�p V� H� L�nh: <color>"

nVK = 30744;
ListItem = {
	[30976] = {
		[2] = 	{3, nVK},
		[3] = 	{8,nVK + 1},
		[4] = 	{0,nVK + 2},
		[6] = 	{1,nVK + 3},
		[8]= 	{2,nVK + 4},
		[9]= 	{10,nVK + 5},
		[11]=	{0,nVK + 6},
		[12]=	{5,nVK + 7},
		[14]=	{2,nVK + 8},
		[15]=	{9,nVK + 9},
		[17]=	{6,nVK + 10},
		[18]=	{4,nVK + 11},
		[20]=	{7,nVK + 12},
		[21]=	{11,nVK + 13},
		[23]=	{2,nVK + 14},
		[25]=	{3,nVK + 15},
		[26]=	{9,nVK + 16},
		[27]=	{11,nVK + 17},
		[29]=	{13,nVK + 18},
		[30]=	{12,nVK + 19},
	},
	[30977] = 102,
	[30947] = 103,
	[30948] = 100,
	[30949] = 101,
};

ListType = {
	[30947] = 1,
	[30948] = 1,
	[30949] = 1,
	[30977] = 2,
	[30976] = 3
};

ListID = {
	[1] = { --Quan Ao
		[1] = {
			[1665] = {"K�m theo ��c s�t (130)"},
			[1668] = {"��c s�t  t�ng (300)"},
			[1671] = {"S�t th��ng (150)"},
			[1677] = {"N�i c�ng (20%)"},
			[1674] = {"Ngo�i c�ng (20%)"},
			[1681] = {"S�c m�nh (50)"},
			[1682] = {"N�i c�ng (50)"},
			[1683] = {"G�n c�t (50)"},
			[1684] = {"Th�n ph�p (50)"},
			[1685] = {"Linh ho�t (50)"}
		},
		[2] = {
			[1687] = {"Sinh m�nh (30%)"},
			[1692] = {"T� l� ph�ng ng� Ngo�i c�ng (4%)"},
			[1695] = {"T� l� ph�ng ng� N�i c�ng (4%)"},
			[1698] = {"T� l� ph�ng ng� N�i Ngo�i c�ng (3%)"},
			[1699] = {"�i�m h� gi�p Ngo�i ph�ng (40)"},
			[1700] = {"�i�m h� gi�p N�i ph�ng (40)"},
			[1701] = {"�i�m h� gi�p N�i Ngo�i ph�ng (30)"},
			[1705] = {"�i�m ph�n ��n s�t th��ng Ngo�i c�ng (750)"},
			[1706] = {"�i�m ph�n ��n s�t th��ng N�i c�ng (750)"},
			[1707] = {"�i�m ph�n ��n s�t th��ng N�i Ngo�i c�ng (500)"},
			[1702] = {"�i�m tri�t ti�u s�t th��ng Ngo�i c�ng (100)"},
			[1703] = {"�i�m tri�t ti�u s�t th��ng N�i c�ng (100)"},
			[1704] = {"�i�m tri�t ti�u s�t th��ng N�i Ngo�i c�ng (75)"},
			[1708] = {"Ph�n ��n s�t th��ng ��c (10%)"},
			[1709] = {"��c s�t gi�m (20%)"},
			[1710] = {"Kh�ng ��c (20%)"},
			[1711] = {"T� l� gi�m th�i gian ��c (25%)"},
			[1712] = {"T�ng n� tr�nh (400)"},
			[1713] = {"Ch�nh x�c (350)"},
			
		},
		[3] = {
			[1715] = {"N� tr�nh m�i tr�ng th�i ph� (4%)"},
			[1716] = {"Khi b� t�n c�ng c� x�c su�t t�ng n� tr�nh (1200)"},
			[1717] = {"Khi b� t�n c�ng c� x�c su�t t�ng t�c �� di chuy�n (40%)"},
			[1720] = {"�i�m sinh l�c (10000)"},
			[1721] = {"T�ng n� tr�nh (400)"},
			[1722] = {"Ph�ng th� b�o k�ch (20)"},
		},
	},
	[2] = { --Ngoc Boi
		[1] = {
			[1896] = {"K�m theo ��c s�t (40)"},
			[1897] = {"��c s�t  t�ng (100)"},
			[1898] = {"S�t th��ng (75)"},
			[1900] = {"N�i c�ng (5%)"},
			[1899] = {"Ngo�i c�ng (5%)"},
			[1901] = {"C�ng k�ch (5%)"},
			[1902] = {"H�t sinh l�c"},
			[1903] = {"S�c m�nh (55)"},
			[1904] = {"N�i c�ng (55)"},
			[1905] = {"G�n c�t (55)"},
			[1906] = {"Th�n ph�p (55)"},
			[1907] = {"Linh ho�t (55)"}
		},
		[2] = {
			[1911] = {"Sinh m�nh (30%)"},
			[1914] = {"T� l� ph�ng ng� Ngo�i c�ng (4%)"},
			[1917] = {"T� l� ph�ng ng� N�i c�ng (4%)"},
			[1920] = {"T� l� ph�ng ng� N�i Ngo�i c�ng (3%)"},
			[1921] = {"�i�m h� gi�p Ngo�i ph�ng (40)"},
			[1922] = {"�i�m h� gi�p N�i ph�ng (40)"},
			[1923] = {"�i�m h� gi�p N�i Ngo�i ph�ng (30)"},
		},
		[3] = {
			[1925] = {"D�ng k� n�ng kh�ng t�nh t� l� gi�n c�ch (10%)"},
			[1937] = {"S�t th��ng th�nh N�i l�c (8%)"},
			[1928] = {"T� l� xu�t chi�u t�ng (5%)"},
			[1934] = {"H� tr� m�t t�ch (8%)"},
			[1943] = {"T�ng hi�u qu� th��ng d��c (35%)"},
			[1938] = {"T�ng n� tr�nh (400)"},
			[1940] = {"Gi�m th�i gian th� th��ng (18%)"},
			[1944] = {"N�i l�c ti�u hao (40%)"},
			[1936] = {"N�i l�c (20%)"},
			[1947] = {"�i�m b�o k�ch t�ng (20)"},
		},
	},
	[3] = { --Vu Khi
		[1] = {
			[1855] = {"K�m theo ��c s�t (160)"},
			[1858] = {"��c s�t (400)"},
			[1852] = {"S�t th��ng (200)"},
			[1864] = {"N�i c�ng (15%)"},
			[1861] = {"Ngo�i c�ng (15%)"},
			[1867] = {"C�ng k�ch (8%)"},
		},
		[2] = {
			[1869] = {"S�c m�nh (40)"},
			[1870] = {"N�i c�ng (40)"},
			[1871] = {"G�n c�t (40)"},
			[1872] = {"Th�n ph�p (40)"},
			[1873] = {"Linh ho�t (40)"},
			[1876] = {"�i�m b�o k�ch (30)"},
		},
		[3] = {
			[1880] = {"Gi�m t� l� Ngo�i ph�ng ��i ph��ng (18%)"},
			[1883] = {"Gi�m t� l� N�i ph�ng ��i ph��ng (18%)"},
			[1886] = {"Gi�m t� l� N�i Ngo�i ��i ph��ng (12%)"},
			[1887] = {"Gi�m �i�m h� gi�p Ngo�i ph�ng ��i ph��ng (180)"},
			[1888] = {"Gi�m �i�m h� gi�p N�i ph�ng ��i ph��ng (180)"},
			[1889] = {"Gi�m �i�m h� gi�p N�i Ngo�i ��i ph��ng (120)"},
			[1890] = {"H�t sinh l�c (700)"},
			[1891] = {"Ch�nh x�c (800)"},
			[1894] = {"Kh�ng t�t c� (25)"},
		},
	}
};

--ThamSo
nItem = 0;
ID1 = 0;
ID2 = 0;
ID3 = 0;
IDNB = 0;
IDVK = 0;

--Start
function OnUse(nItemIndex)
	nItem = GetItemParticular(nItemIndex)

	SetHHVH_1();
end

function SetID(nIDindex, nID)
	if nIDindex == 1 then 
		ID1 = nID;
		SetHHVH_2();
	elseif nIDindex == 2 then 
		ID2 = nID;
		SetHHVH_3();
	elseif nIDindex == 3 then 
		ID3 = nID;
		CheckItemType();
	elseif nIDindex == 102 then
		IDNB = nID;
		SetHHVH_End();
	elseif nIDindex == 0 then
		IDVK = nID;
		SetHHVH_End();
	end
end

function CheckItemType()
	if ListType[nItem] == 1 then 
		SetHHVH_End();
	end;
	if ListType[nItem] == 2 then 
		SetHHVH_NB();
	end;
	if ListType[nItem] == 3 then 
		SetHHVH_VK();
	end;
end

function SetHHVH_1()
	local tSay = {
	};
	
	for k, v in pairs(ListID[ListType[nItem]][1]) do
		tinsert(tSay,""..v[1].."/#SetID(1, "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle.."L�a ch�n thu�c t�nh 1", getn(tSay), tSay);
end

function SetHHVH_2()
	local tSay = {
	};
	
	for k, v in pairs(ListID[ListType[nItem]][2]) do
		tinsert(tSay,""..v[1].."/#SetID(2, "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle.."L�a ch�n thu�c t�nh 2", getn(tSay), tSay);
end

function SetHHVH_3()
	local tSay = {
	};
	
	for k, v in pairs(ListID[ListType[nItem]][3]) do
		tinsert(tSay,""..v[1].."/#SetID(3, "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle.."L�a ch�n thu�c t�nh 3", getn(tSay), tSay);
end

function SetHHVH_NB()
	local tSay = {
		"V� H� - H�o Hi�p Gi�i /#SetID(102, 31128)",
		"V� H� - H�o HI�p B�i /#SetID(102, 31129)"
	};
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle.."L�a ch�n lo�i ngoc b�i", getn(tSay), tSay);
end

function SetHHVH_VK()
	local tSay = {
		"H� N�i c�ng/#SetID(0, 1)",
		"H� Ngo�i c�ng/#SetID(0, 2)",
		"H� S�t th��ng - Th�n ph�p/#SetID(0, 3)",
		"H� S�t th��ng - Linh ho�t/#SetID(0, 4)"
	};
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle.."L�a ch�n h� ph�i", getn(tSay), tSay);
end

function SetHHVH_End()
	local nTB = 20008 + GetBody() - 1;
	if ListItem[nItem] == 103 then
		local pifeng,pIndex	=AddItem(0, ListItem[nItem], nTB ,1,1,-1,-1,-1,-1,-1,-1,0,15);
		SetItemFeedUpAttrs(pIndex,1558,1562,1566,ID1,ID2,ID3);
	elseif ListItem[nItem] == 100 then
		local pifeng,pIndex	=AddItem(0, ListItem[nItem], nTB ,1,1,-1,-1,-1,-1,-1,-1,0,15);
		SetItemFeedUpAttrs(pIndex,1571,1575,1579,ID1,ID2,ID3);
	elseif ListItem[nItem] == 101 then
		local pifeng,pIndex	=AddItem(0, ListItem[nItem], nTB ,1,1,-1,-1,-1,-1,-1,-1,0,15);
		SetItemFeedUpAttrs(pIndex,1584,1588,1592,ID1,ID2,ID3);
	end
	
	if ListType[nItem] == 2 then 
		local pifeng,pIndex	=AddItem(0, 102, IDNB ,1,1,-1,-1,-1,-1,-1,-1,0,0);
		SetItemFeedUpAttrs(pIndex,1657,1661,-1,ID1,ID2,ID3);
	end
	
	if ListType[nItem] ==  3 then
		for k, v in pairs(ListItem[nItem]) do
			if GetPlayerRoute() == k then
				local nA = v[1];
				local nB = v[2];
				
				if IDVK == 1 then
					local pifeng,pIndex	=AddItem(0,nA,nB,1,1,-1,-1,-1,-1,-1,-1,0,15);
					SetItemFeedUpAttrs(pIndex,1631,1635,1639,ID1,ID2,ID3);
				elseif IDVK == 2 then
					local lpifeng,pIndex	=AddItem(0,nA,nB,1,1,-1,-1,-1,-1,-1,-1,0,15);
					SetItemFeedUpAttrs(pIndex,1644,1648,1652,ID1,ID2,ID3);
				elseif IDVK == 3 then
					local pifeng,pIndex	=AddItem(0,nA,nB,1,1,-1,-1,-1,-1,-1,-1,0,15);
					SetItemFeedUpAttrs(pIndex,1597,1605,1609,ID1,ID2,ID3);
				elseif IDVK == 4 then
					local pifeng,pIndex	=AddItem(0,nA,nB,1,1,-1,-1,-1,-1,-1,-1,0,15);
					SetItemFeedUpAttrs(pIndex,1601,1605,1609,ID1,ID2,ID3);
				end
			end
		end
	end

	DelItem(2,1,nItem,1);
end