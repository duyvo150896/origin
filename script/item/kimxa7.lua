Include("\\script\\lib\\globalfunctions.lua");

function OnUse(nItem)
	Get();
end

g_szTitleMain = "<color=green>Kim x� 7: <color> Thu�c t�nh t� ch�n v� cao nh�t"
function Get()
	local tSay = {
		"Trang b� Kim X� S�t Lang - Kh�ng t�t c�/Get_KXSL",
		"Trang b� Kim X� Nhu� Nha - Ngo�i c�ng/Get_KXNN",
		"Trang b� Kim X� M�ng S�t - N�i c�ng/Get_KXMS",
		"Tho�t/nothing",
	};
	Say(g_szTitleMain, getn(tSay), tSay);
end

g_szTitle1 = "<color=green>Kim X� S�t Lang: <color>";
function Get_KXSL()
	local tSay = {
		"Kim X� S�t Lang - �o Cho�ng/#SetKXSL_1(152)",
		"Kim X� S�t Lang - Huy Ch��ng/#SetKXSL_1(153)",
		"Kim X� S�t Lang - Chi�n H�i/#SetKXSL_1(154)",
		"H�y/nothing",
	};
	
	Say(g_szTitle1, getn(tSay), tSay);
end

function SetKXSL_1(nType)
	local List = {
		[3388] = {"Linh Ho�t"},
		[3389] = {"Th�n Ph�p"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 1", getn(tSay), tSay);
end

function SetKXSL_2(nType,ID1)
	local List = {
		[3401] = {"N�i c�ng"},
		[3402] = {"S�c m�nh"},
		[3403] = {"G�n c�t"},
		[3404] = {"�i�m sinh l�c"},
		[3405] = {"T� l� �i�m sinh l�c %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 2", getn(tSay), tSay);
end

function SetKXSL_3(nType,ID1, ID2)
	local List = {
		[3417] = {"B�o k�ch"},
		[3418] = {"�i�m ngo�i c�ng"},
		[3419] = {"�i�m n�i c�ng"},
		[3420] = {"C�ng k�ch"},
		[3421] = {"Kh�ng t�t c�"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 3", getn(tSay), tSay);
end

function SetKXSL_4(nType,ID1, ID2, ID3)
	local List = {
		[3435] = {"Ph�ng th� b�o k�ch"},
		[3436] = {"Gi�m s�t th��ng b�o k�ch"},
		[3437] = {"H� gi�p ngo�i ph�ng"},
		[3438] = {"H� gi�p n�i ph�ng"},
		[3439] = {"H� gi�p n�i ngo�i ph�ng"},
		[3440] = {"�i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 4", getn(tSay), tSay);
end

function SetKXSL_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3446] = {"Linh ho�t"},
		[3447] = {"Th�n ph�p"},
		[3405] = {"T�ng t� l� �i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 5", getn(tSay), tSay);
end

function SetKXSL_6(nType,ID1, ID2, ID3,ID4,ID5)
	if nType == 154 then
		List = {
			[3482] = {"T�c �� ch�y"},
			[3483] = {"T�c �� xu�t chi�u"},
			[3484] = {"Gi�m ch�u th��ng"},
			[3485] = {"T�ng ch� m�nh"},
			[3486] = {"Kh�ng t�t c�"},
		};
	else
		List = {
			[3468] = {"T�ng s�t th��ng"},
			[3469] = {"C�ng k�ch k�m ��c"},
			[3470] = {"S�t th��ng ��c tr�ng"},
			[3460] = {"T� l� kh�ng tr�ng th�i ph�"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXSL_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle1.."L�a ch�n thu�c t�nh 6", getn(tSay), tSay);
end

function SetKXSL_End(nType,ID1,ID2,ID3,ID4,ID5,ID6)
	local pifeng,pIndex = AddItem(0,nType,35,1,1,-1,-1,-1,-1,-1,-1,0,15)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	DelItem(2,1,50005,1);
end


g_szTitle2 = "<color=green>Kim X� Nhu� Nha: <color>";
function Get_KXNN()
	local tSay = {
		"Kim X� Nhu� Nha - �o Cho�ng/#SetKXNN_1(152)",
		"Kim X� Nhu� Nha - Huy Ch��ng/#SetKXNN_1(153)",
		"Kim X� Nhu� Nha - Chi�n H�i/#SetKXNN_1(154)",
		"H�y/nothing",
	};
	
	Say(g_szTitle2, getn(tSay), tSay);
end

function SetKXNN_1(nType)
	local List = {
		[3492] = {"S�c m�nh"},
		[3493] = {"G�n c�t"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 1", getn(tSay), tSay);
end

function SetKXNN_2(nType,ID1)
	local List = {
		[3505] = {"N�i c�ng"},
		[3506] = {"Th�n ph�p"},
		[3507] = {"Linh ho�t"},
		[3508] = {"�i�m sinh l�c"},
		[3509] = {"T� l� �i�m sinh l�c %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 2", getn(tSay), tSay);
end

function SetKXNN_3(nType,ID1, ID2)
	local List = {
		[3521] = {"B�o k�ch"},
		[3522] = {"�i�m ngo�i c�ng"},
		[3523] = {"�i�m n�i c�ng"},
		[3524] = {"C�ng k�ch"},
		[3525] = {"T�ng �i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 3", getn(tSay), tSay);
end

function SetKXNN_4(nType,ID1, ID2, ID3)
	local List = {
		[3539] = {"Ph�ng th� b�o k�ch"},
		[3540] = {"Gi�m s�t th��ng b�o k�ch"},
		[3541] = {"H� gi�p ngo�i ph�ng"},
		[3542] = {"H� gi�p n�i ph�ng"},
		[3543] = {"H� gi�p n�i ngo�i ph�ng"},
		[3544] = {"�i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 4", getn(tSay), tSay);
end

function SetKXNN_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3552] = {"S�c m�nh"},
		[3553] = {"G�n c�t"},
		[3554] = {"Sinh l�c t�ng %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 5", getn(tSay), tSay);
end

function SetKXNN_6(nType,ID1, ID2, ID3,ID4,ID5)

	if nType == 154 then
		List = {
			[3577] = {"T�c �� ch�y"},
			[3578] = {"T�c �� xu�t chi�u"},
			[3579] = {"Gi�m th� th��ng"},
			[3580] = {"T�ng ch� m�nh"},
		};
	else
		List = {
			[3564] = {"Gi�i h�n cao nh�t ngo�i c�ng v� kh�"},
			[3565] = {"Gi�i h�n th�p nh�t ngo�i c�ng v� kh�"},
			[3566] = {"T� l� ngo�i c�ng %"},
			[3567] = {"�i�m t�ng c�ng k�ch ngo�i c�ng"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXNN_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle2.."L�a ch�n thu�c t�nh 6", getn(tSay), tSay);
end

function SetKXNN_End(nType,ID1,ID2,ID3,ID4,ID5,ID6)
	local pifeng,pIndex = AddItem(0,nType,36,1,1,-1,-1,-1,-1,-1,-1,0,15)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	DelItem(2,1,50005,1);
end


g_szTitle3 = "<color=green>Kim X� M�ng S�t: <color>";

function Get_KXMS()
	local tSay = {
		"Kim X� M�ng S�t - �o Ch�o�ng/#SetKXMS_1(152)",
		"Kim X� M�ng S�t - Huy Ch��ng/#SetKXMS_1(153)",
		"Kim X� M�ng S�t - Chi�n H�i/#SetKXMS_1(154)",
		"H�y/nothing",
	};
	
	Say(g_szTitle3, getn(tSay), tSay);
end

function SetKXMS_1(nType)
	local List = {
		[3586] = {"N�i c�ng"},
		[3587] = {"G�n c�t"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_2("..nType..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 1", getn(tSay), tSay);
end

function SetKXMS_2(nType,ID1)
	local List = {
		[3599] = {"S�c m�nh"},
		[3600] = {"Th�n ph�p"},
		[3601] = {"Linh ho�t"},
		[3602] = {"�i�m sinh l�c"},
		[3603] =  {"T� l� �i�m sinh l�c %"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_3("..nType..","..ID1..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 2", getn(tSay), tSay);
end

function SetKXMS_3(nType,ID1, ID2)
	local List = {
		[3615] = {"B�o k�ch"},
		[3616] = {"�i�m ngo�i c�ng"},
		[3617] = {"�i�m n�i c�ng"},
		[3618] = {"C�ng k�ch"},
		[3619] = {"T�ng �i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_4("..nType..","..ID1..", "..ID2..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 3", getn(tSay), tSay);
end

function SetKXMS_4(nType,ID1, ID2, ID3)
	local List = {
		[3633] = {"Ph�ng th� b�o k�ch"},
		[3634] = {"Gi�m s�t th��ng b�o k�ch"},
		[3635] = {"H� gi�p ngo�i ph�ng"},
		[3636] = {"H� gi�p n�i ph�ng"},
		[3637] = {"H� gi�p n�i ngo�i ph�ng"},
		[3638] = {"�i�m sinh l�c"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_5("..nType..","..ID1..", "..ID2..", "..ID3..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 4", getn(tSay), tSay);
end

function SetKXMS_5(nType,ID1, ID2, ID3,ID4)
	local List = {
		[3646] = {"N�i c�ng"},
		[3647] = {"Th�n ph�p"},
		[3648] = {"Linh ho�t"},
	};
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_6("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 5", getn(tSay), tSay);
end

function SetKXMS_6(nType,ID1, ID2, ID3,ID4,ID5)

	if nType == 154 then
		List = {
			[3673] = {"T�c �� ch�y"},
			[3674] = {"T�c �� xu�t chi�u"},
			[3675] = {"Gi�m th� th��ng"},
			[3676] = {"T�ng ch� m�nh"},
			[3677] = {"Gi�m th�i gian th� th��ng"},
		};
	else
		List = {
			[3658] = {"Gi�i h�n cao nh�t n�i c�ng v� kh�"},
			[3659] = {"Gi�i h�n th�p nh�t n�i c�ng v� kh�"},
			[3660] = {"T�ng n�i c�ng %"},
			[3661] = {"�i�m c�ng k�ch n�i c�ng"},
		};
	end
	
	local tSay = {};
	
	for k, v in pairs(List) do
		tinsert(tSay,""..v[1].."/#SetKXMS_End("..nType..","..ID1..", "..ID2..", "..ID3..", "..ID4..", "..ID5..", "..k..")");
	end
	
	tinsert(tSay,"H�y/nothing");
	Say(g_szTitle3.."L�a ch�n thu�c t�nh 6", getn(tSay), tSay);
end

function SetKXMS_End(nType,ID1,ID2,ID3,ID4,ID5,ID6)
	local pifeng,pIndex = AddItem(0,nType,37,1,1,-1,-1,-1,-1,-1,-1,0,15)
    FeedItem(pIndex,1000000)
	SetItemFeedUpAttrs(pIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	DelItem(2,1,50005,1);
end