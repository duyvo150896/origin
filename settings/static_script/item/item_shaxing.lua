Include("\\script\\lib\\globalfunctions.lua");
g_szTitle = "<color=green>S�t Tinh L�nh: <color>"

nVK = 20022;
ListItem = {
	[50003] = {
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
	[50004] = 102,
	[50000] = 103,
	[50001] = 100,
	[50002] = 101,
};

ListType = {
	[50000] = 1,
	[50001] = 1,
	[50002] = 1,
	[50004] = 2,
	[50003] = 3
};

ListID = {
	[1] = { --Quan Ao
		[1] = {
			[2831] = {"��c c� (500)"},
			[2832] = {"S�t th��ng (400)"},
			[2834] = {"N�i c�ng (30%)"},
			[2833] = {"Ngo�i c�ng (30%)"},
			[2835] = {"S�c m�nh (90)"},
			[2836] = {"N�i c�ng (90)"},
			[2837] = {"G�n c�t (90)"},
			[2838] = {"Th�n ph�p (90)"},
			[2839] = {"Linh ho�t (90)"}
		},
		[2] = {
			[2841] = {"Sinh m�nh (45%)"},
			[2842] = {"N�i l�c (45%)"},
			[2843] = {"T� l� ph�ng ng� Ngo�i c�ng (6%)"},
			[2844] = {"T� l� ph�ng ng� N�i c�ng (6%)"},
			[2845] = {"T� l� ph�ng ng� N�i Ngo�i c�ng (5%)"},
			[2846] = {"�i�m h� gi�p ngo�i ph�ng (100)"},
			[2847] = {"�i�m h� gi�p n�i ph�ng (100)"},
			[2848] = {"�i�m h� gi�p n�i ngo�i ph�ng (80)"},
		},
		[3] = {
			[2850] = {"N� tr�nh m�i tr�ng th�i ph� (4%)"},
			[2851] = {"Khi b� t�n c�ng c� x�c su�t t�ng t�c �� di chuy�n (40%)"},
			[2852] = {"�i�m sinh l�c (16000)"},
			[2853] = {"Ph�ng th� b�o k�ch (35)"},
		},
	},
	[2] = { --Ngoc Boi
		[1] = {
			[2857] = {"��c c� (200)"},
			[2858] = {"S�t th��ng (100)"},
			[2859] = {"C�ng k�ch (8%)"},
			[2860] = {"S�c m�nh (70)"},
			[2861] = {"N�i c�ng (70)"},
			[2862] = {"G�n c�t (70)"},
			[2863] = {"Th�n ph�p (70)"},
			[2864] = {"Linh ho�t (70)"}
		},
		[2] = {
			[2866] = {"Sinh m�nh (35%)"},
			[2867] = {"N�i l�c (35%)"},
			[2868] = {"T� l� ph�ng ng� Ngo�i c�ng (6%)"},
			[2869] = {"T� l� ph�ng ng� N�i c�ng (6%)"},
			[2870] = {"T� l� ph�ng ng� N�i Ngo�i c�ng (5%)"},
			[2871] = {"�i�m h� gi�p ngo�i ph�ng (80)"},
			[2872] = {"�i�m h� gi�p n�i ph�ng (80)"},
			[2873] = {"�i�m h� gi�p n�i ngo�i ph�ng (60)"},
		},
		[3] = {
			[2875] = {"D�ng k� n�ng kh�ng t�nh t� l� gi�n c�ch (10%)"},
			[2878] = {"S�t th��ng th�nh n�i l�c (10%)"},
			[2876] = {"T� l� xu�t chi�u t�ng (6%)"},
			[2877] = {"H� tr� m�t t�ch (8%)"},
			[2880] = {"T�ng hi�u qu� th��ng d��c (38%)"},
			[2879] = {"Gi�m th�i gian th� th��ng (18%)"},
			[2881] = {"N�i l�c ti�u hao (40%)"},
			[2882] = {"�i�m b�o k�ch t�ng (30)"},
		},
	},
	[3] = { --Vu Khi
		[1] = {
			[2903] = {"��c c� (800)"},
			[2904] = {"S�t th��ng (400)"},
			[2905] = {"�i�m b�o k�ch (45)"},
		},
		[2] = {
			[2896] = {"S�c m�nh (90)"},
			[2897] = {"N�i c�ng (90)"},
			[2898] = {"G�n c�t (90)"},
			[2899] = {"Th�n ph�p (90)"},
			[2900] = {"Linh ho�t (90)"},
			[2901] = {"Kh�ng t�t c� (90)"},
		},
		[3] = {
			[2907] = {"Gi�m t� l� Ngo�i ph�ng ��i ph��ng (20%)"},
			[2908] = {"Gi�m t� l� N�i ph�ng ��i ph��ng (20%)"},
			[2909] = {"Gi�m t� l� N�i Ngo�i ��i ph��ng (18%)"},
			[2910] = {"Gi�m �i�m h� gi�p Ngo�i ph�ng ��i ph��ng (300)"},
			[2911] = {"Gi�m �i�m h� gi�p N�i ph�ng ��i ph��ng (300)"},
			[2912] = {"Gi�m �i�m h� gi�p N�i Ngo�i ��i ph��ng (200)"},
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
		"S�t Tinh - C�u Linh H�a Gi�i /#SetID(102, 20004)",
		"S�t Tinh - Ng�ng Ng�c Th� Ho�n /#SetID(102, 20005)"
	};
	
	Say(g_szTitle.."L�a ch�n lo�i ng�c b�i", getn(tSay), tSay);
end

function SetHHVH_VK()
	local tSay = {
		"H� ph�i n�i c�ng/#SetID(0, 1)",
		"H� ph�i ngo�i c�ng/#SetID(0, 2)",
		"H� ph�i s�t th��ng (Th�n Ph�p)/#SetID(0, 3)",
		"H� ph�i s�t th��ng (Linh Ho�t)/#SetID(0, 4)"
	};
	
	Say(g_szTitle.."L�a ch�n h� ph�i", getn(tSay), tSay);
end

function SetHHVH_End()
	if ListType[nItem] == 1 then
		local nTB = 20024 + GetBody() - 1;
		local pifeng,pIndex	=AddItem(0, ListItem[nItem], nTB ,1,1,-1,-1,-1,-1,-1,-1,0,15);
		SetItemFeedUpAttrs(pIndex,-1,-1,-1,ID1,ID2,ID3);
	elseif ListType[nItem] == 2 then 
		local pifeng,pIndex	=AddItem(0, 102, IDNB ,1,1,-1,-1,-1,-1,-1,-1,0,0);
		SetItemFeedUpAttrs(pIndex,-1,-1, -1,ID1,ID2,ID3);
	elseif ListType[nItem] ==  3 then
		for k, v in pairs(ListItem[nItem]) do
			if GetPlayerRoute() == k then
				local nA = v[1];
				local nB = v[2];
				
				if IDVK == 1 then
					local pifeng,pIndex	=AddItem(0,nA,nB,1,1,-1,-1,-1,-1,-1,-1,0,15);
					SetItemFeedUpAttrs(pIndex,2884,2894,-1,ID1,ID2,ID3);
				elseif IDVK == 2 then
					local lpifeng,pIndex	=AddItem(0,nA,nB,1,1,-1,-1,-1,-1,-1,-1,0,15);
					SetItemFeedUpAttrs(pIndex,2889,2894,-1,ID1,ID2,ID3);
				elseif IDVK == 3 then
					local pifeng,pIndex	=AddItem(0,nA,nB,1,1,-1,-1,-1,-1,-1,-1,0,15);
					SetItemFeedUpAttrs(pIndex,2891,2894,-1,ID1,ID2,ID3);
				elseif IDVK == 34then
					local ifeng,pIndex	=AddItem(0,nA,nB,1,1,-1,-1,-1,-1,-1,-1,0,15);
					SetItemFeedUpAttrs(pIndex,2892,2894,-1,ID1,ID2,ID3);
				end
			end
		end
	end

	DelItem(2,1,nItem,1);
end