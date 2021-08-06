Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\settings\\static_script\\lib\\itemfunctions.lua")

EquipTableName = {
	[29000] = "Nh�n Ph� H�n",
	[29001] = "D�y �eo Nhi�p T�m",
	[34] = "M�t N� S�t Tinh Qu�n",
}

ChildEquipTableName = {
	[29000] = {
		[102] = "B�t ��u ch�n thu�c t�nh cho Nh�n Ph� H�n",
--		[100] = "M�t N� S�t Tinh Ao",
--		[101] = "M�t N� S�t Tinh Qu�n",
	},
	[29001] = {
		[102] = "B�t ��u ch�n thu�c t�nh cho D�y �eo Nhi�p T�m",
--		[100] = "M�t N� S�t Tinh Ao",
--		[101] = "M�t N� S�t Tinh Qu�n",
	},
	[34] = {
		[103] = "Kh�i Ph��ng Phong (�o cho�ng)",
		[153] = "Kh�i Ph��ng Ch��ng (huy ch��ng)",
		[154] = "Kh�i Ph��ng Ngoa (gi�y)",
	},
}

OptionListTable = {
	[29000] = { -- Hoan L�ng
		[102] = { -- Hoan L�ng Phong
			[1] = {
				{3711, "��c S�t T�ng 350"},
				{3712, "S�t Th��ng T�ng 350"},
				{3713, "C�ng k�ch t�ng 12%"},
				{3714, "S�c M�nh T�ng 90"},
				{3715, "N�i C�ng T�ng 90"},
				{3716, "G�n C�t T�ng 90"},
				{3717, "Th�n Ph�p T�ng 90"},
				{3718, "Linh Ho�t T�ng 90"},
			},
			[2] = {
				{3720, "Sinh L�c T�ng 45%"},
				{3721, "N�i L�c T�ng 45%"},
				{3722, "T� L� Ph�ng Ng� Ngo�i C�ng T�ng 7%"},
				{3723, "T� L� Ph�ng Ng� N�i C�ng T�ng 7%"},
				{3724, "T� L� Ph�ng Ng� N�i Ngo�i C�ng T�ng 6%"},
			},
			[3] = {
				{3729, "D�ng k� n�ng kh�ng t�nh t� l� gi�n c�ch 10%"},
				{3730, "X�c su�t xu�t chi�u t�ng 7%"},
				{3731, "H� tr� m�t t�ch t�ng th�m 10%"},
				{3732, "Chuy�n h�a s�t th��ng th�nh N�i l�c 10%"},
				{3733, "Gi�m th�i gian th� th��ng 18%"},
				{3734, "T�ng th�m hi�u qu� c�a th��ng d��c 45%"},
				{3735, "N�i l�c ti�u hao 45%"},
				{3736, "�i�m b�o k�ch t�ng 35"},
			},
		},
		[100] = { -- Hoan L�ng Ch��ng
			[1] = {
				{2831, "��c S�t T�ng 300"},
				{2832, "S�t Th��ng T�ng 400"},
				{2833, "Ngo�i C�ng T�ng 30%"},
				{2834, "C�ng K�ch N�i C�ng 30%"},
				{2835, "S�c M�nh T�ng 90"},
				{2836, "N�i C�ng T�ng 90"},
				{2837, "G�n C�t T�ng 90"},
				{2838, "Th�n Ph�p T�ng 90"},
				{2839, "Linh Ho�t T�ng 90"},
			},
			[2] = {
				{2841, "Sinh L�c T�ng 45%"},
				{2842, "N�i L�c + 45%"},
				{2843, "Ngo�i Ph�ng T�ng 6%"},
				{2844, "N�i Ph�ng T�ng 6%"},
				{2845, "N�i Ngo�i Ph�ng T�ng 5%"},
				{2846, "Tr� h� gi�p ngo�i ph�ng"},
				{2847, "Tr� h� gi�p ngo�i ph�ng"},
				{2848, "Tr� h� gi�p n�i ngo�i ph�ng"},
			},
			[3] = {
				{2850, "N� tr�nh t�t c� tr�ng th�i ph� 4%"},
				{2851, "Khi b� t�n c�ng s� t�ng di chuy�n b�n th�n 40%"},
				{2852, "�i�m sinh l�c T�ng 16000"},
				{2853, "Ph�ng th� b�o k�ch 35"},
			},
		},
		[101] = { -- Hoan L�ng Ngoa
			[1] = {
				{2857, "��c S�t T�ng 200"},
				{2858, "S�t Th��ng T�ng 100"},
				{2859, "N�i ngo�i c�ng t�ng 8%"},
				{2860, "S�c M�nh T�ng 70"},
				{2861, "N�i C�ng T�ng 70"},
				{2862, "G�n C�t T�ng 70"},
				{2863, "Th�n Ph�p T�ng 70"},
				{2864, "Linh Ho�t T�ng 70"},
			},
			[2] = {
				{2866, "Sinh L�c T�ng 35%"},
				{2867, "N�i L�c + 35%"},
				{2868, "T� L� Ph�ng Ng� Ngo�i C�ng T�ng 6%"},
				{2869, "T� L� Ph�ng Ng� N�i C�ng T�ng 6%"},
				{2870, "T� L� Ph�ng Ng� N�i Ngo�i C�ng T�ng 5%"},
				{2871, "Tr� h� gi�p ngo�i ph�ng"},
				{2872, "Tr� h� gi�p ngo�i ph�ng"},
				{2873, "Tr� h� gi�p n�i ngo�i ph�ng"},
			},
			[3] = {
				{2850, "N� tr�nh t�t c� tr�ng th�i ph� 4%"},
				{2851, "Khi b� t�n c�ng s� t�ng di chuy�n b�n th�n 40%"},
				{2852, "�i�m sinh l�c T�ng 16000"},
				{2853, "Ph�ng th� b�o k�ch 35"},
			},
		},
	},
[29001] = { -- Hoan L�ng
		[102] = { -- Hoan L�ng Phong
			[1] = {
				{3711, "��c S�t T�ng 350"},
				{3712, "S�t Th��ng T�ng 350"},
				{3713, "C�ng k�ch t�ng 12%"},
				{3714, "S�c M�nh T�ng 90"},
				{3715, "N�i C�ng T�ng 90"},
				{3716, "G�n C�t T�ng 90"},
				{3717, "Th�n Ph�p T�ng 90"},
				{3718, "Linh Ho�t T�ng 90"},
			},
			[2] = {
				{3720, "Sinh L�c T�ng 45%"},
				{3721, "N�i L�c T�ng 45%"},
				{3722, "T� L� Ph�ng Ng� Ngo�i C�ng T�ng 7%"},
				{3723, "T� L� Ph�ng Ng� N�i C�ng T�ng 7%"},
				{3724, "T� L� Ph�ng Ng� N�i Ngo�i C�ng T�ng 6%"},
			},
			[3] = {
				{3729, "D�ng k� n�ng kh�ng t�nh t� l� gi�n c�ch 10%"},
				{3730, "X�c su�t xu�t chi�u t�ng 7%"},
				{3731, "H� tr� m�t t�ch t�ng th�m 10%"},
				{3732, "Chuy�n h�a s�t th��ng th�nh N�i l�c 10%"},
				{3733, "Gi�m th�i gian th� th��ng 18%"},
				{3734, "T�ng th�m hi�u qu� c�a th��ng d��c 45%"},
				{3735, "N�i l�c ti�u hao 45%"},
				{3736, "�i�m b�o k�ch t�ng 35"},
			},
		},
		[153] = { -- ��ng Giao Ch��ng
			[1] = {
				{2618, "S�c m�nh t�ng 75"},
				{2619, "G�n c�t t�ng 75"},
			},
			[2] = {
				{2631, "N�i c�ng t�ng 75"},
				{2632, "Th�n ph�p t�ng 75"},
				{2633, "Linh ho�t t�ng 75"},
				{2634, "Sinh l�c t�ng 3600"},
				{2635, "Sinh l�c t�ng 21%"},
			},
			[3] = {
				{2647, "�i�m b�o k�ch 24"},
				{2648, "L�c t�n c�ng ngo�i 120"},
				{2649, "N�i k�ch 120"},
				{2650, "L�c t�n c�ng n�i ngo�i 120"},
				{2651, "Sinh l�c t�ng 3600"},
			},
			[4] = {
				{2665, "Ph�ng th� b�o k�ch 38"},
				{2666, "Gi�m s�t th��ng b�o k�ch 100"},
				{2667, "Ngo�i ph�ng t�ng 50"},
				{2668, "N�i ph�ng t�ng 50"},
				{2669, "N�i ngo�i ph�ng t�ng 50"},
				{2670, "Sinh l�c t�ng 15000"},
			},
			[5] = {
				{2678, "S�c m�nh t�ng 95"},
				{2679, "G�n c�t t�ng 95"},
				{2680, "Sinh l�c t�ng 25%"},
			},
			[6] = {
				{2690, "Ngo�i c�ng l�n nh�t tr�n v� kh� t�ng 150"},
				{2691, "Ngo�i c�ng nh� nh�t tr�n v� kh� t�ng 150"},
				{2692, "T�ng ngo�i c�ng 21%"},
				{2693, "T�ng ngo�i c�ng 150"},
			},
		},
		[154] = { -- ��ng Giao Ngoa
			[1] = {
				{2618, "S�c m�nh t�ng 75"},
				{2619, "G�n c�t t�ng 75"},
			},
			[2] = {
				{2631, "N�i c�ng t�ng 75"},
				{2632, "Th�n ph�p t�ng 75"},
				{2633, "Linh ho�t t�ng 75"},
				{2634, "Sinh l�c t�ng 3600"},
				{2635, "Sinh l�c t�ng 21%"},
			},
			[3] = {
				{2647, "�i�m b�o k�ch 24"},
				{2648, "L�c t�n c�ng ngo�i 120"},
				{2649, "N�i k�ch 120"},
				{2650, "L�c t�n c�ng n�i ngo�i 120"},
				{2651, "Sinh l�c t�ng 3600"},
			},
			[4] = {
				{2665, "Ph�ng th� b�o k�ch 38"},
				{2666, "Gi�m s�t th��ng b�o k�ch 100"},
				{2667, "Ngo�i ph�ng t�ng 50"},
				{2668, "N�i ph�ng t�ng 50"},
				{2669, "N�i ngo�i ph�ng t�ng 50"},
				{2670, "Sinh l�c t�ng 15000"},
			},
			[5] = {
				{2678, "S�c m�nh t�ng 95"},
				{2679, "G�n c�t t�ng 95"},
				{2680, "Sinh l�c t�ng 25%"},
			},
			[6] = {
				{2703, "T�ng t�c �� di chuy�n 15%"},
				{2704, "T�ng t�c �� xu�t chi�u 12%"},
				{2705, "T�ng x�c xu�t gi�m n�a th� th��ng 12%"},
				{2706, "T�ng ch� m�nh 8%"},
			},
		},
	},
	[34] = { -- Kh�i Ph��ng
		[152] = { -- Kh�i Ph��ng Phong
			[1] = {
				{2712, "N�i c�ng t�ng 75"},
				{2713, "G�n c�t t�ng 75"},
			},
			[2] = {
				{2725, "S�c m�nh t�ng 75"},
				{2726, "Th�n ph�p t�ng 75"},
				{2727, "Linh ho�t t�ng 75"},
				{2728, "Sinh l�c t�ng 3600"},
				{2729, "Sinh l�c t�ng 21%"},
			},
			[3] = {
				{2741, "�i�m b�o k�ch t�ng 24"},
				{2742, "L�c t�n c�ng ngo�i 120"},
				{2743, "N�i k�ch 120"},
				{2744, "L�c t�n c�ng n�i ngo�i 120"},
				{2745, "Sinh l�c t�ng 3600"},
			},
			[4] = {
				{2759, "Ph�ng th� b�o k�ch 38"},
				{2760, "Gi�m s�t th��ng b�o k�ch 100"},
				{2761, "Ngo�i ph�ng t�ng 50"},
				{2762, "N�i ph�ng t�ng 50"},
				{2763, "N�i ngo�i ph�ng t�ng 50"},
				{2764, "Sinh l�c t�ng 15000"},
			},
			[5] = {
				{2772, "N�i c�ng t�ng 95"},
				{2773, "Th�n ph�p t�ng 95"},
				{2774, "Linh ho�t t�ng 95"},
			},
			[6] = {
				{2784, "N�i c�ng c�ng l�n nh�t tr�n v� kh� t�ng 150"},
				{2785, "N�i c�ng nh� nh�t tr�n v� kh� t�ng 150"},
				{2786, "T�ng n�i c�ng 21%"},
				{2787, "T�ng n�i c�ng 150"},
			},
		},
		[153] = { -- Kh�i Ph��ng Ch��ng
			[1] = {
				{2712, "N�i c�ng t�ng 75"},
				{2713, "G�n c�t t�ng 75"},
			},
			[2] = {
				{2725, "S�c m�nh t�ng 75"},
				{2726, "Th�n ph�p t�ng 75"},
				{2727, "Linh ho�t t�ng 75"},
				{2728, "Sinh l�c t�ng 3600"},
				{2729, "Sinh l�c t�ng 21%"},
			},
			[3] = {
				{2741, "�i�m b�o k�ch t�ng 24"},
				{2742, "L�c t�n c�ng ngo�i 120"},
				{2743, "N�i k�ch 120"},
				{2744, "L�c t�n c�ng n�i ngo�i 120"},
				{2745, "Sinh l�c t�ng 3600"},
			},
			[4] = {
				{2759, "Ph�ng th� b�o k�ch 38"},
				{2760, "Gi�m s�t th��ng b�o k�ch 100"},
				{2761, "Ngo�i ph�ng t�ng 50"},
				{2762, "N�i ph�ng t�ng 50"},
				{2763, "N�i ngo�i ph�ng t�ng 50"},
				{2764, "Sinh l�c t�ng 15000"},
			},
			[5] = {
				{2772, "N�i c�ng t�ng 95"},
				{2773, "Th�n ph�p t�ng 95"},
				{2774, "Linh ho�t t�ng 95"},
			},
			[6] = {
				{2784, "N�i c�ng c�ng l�n nh�t tr�n v� kh� t�ng 150"},
				{2785, "N�i c�ng nh� nh�t tr�n v� kh� t�ng 150"},
				{2786, "T�ng n�i c�ng 21%"},
				{2787, "T�ng n�i c�ng 150"},
			},
		},
		[154] = { -- Kh�i Ph��ng Ngoa
			[1] = {
				{2712, "N�i c�ng t�ng 75"},
				{2713, "G�n c�t t�ng 75"},
			},
			[2] = {
				{2725, "S�c m�nh t�ng 75"},
				{2726, "Th�n ph�p t�ng 75"},
				{2727, "Linh ho�t t�ng 75"},
				{2728, "Sinh l�c t�ng 3600"},
				{2729, "Sinh l�c t�ng 21%"},
			},
			[3] = {
				{2741, "�i�m b�o k�ch t�ng 24"},
				{2742, "L�c t�n c�ng ngo�i 120"},
				{2743, "N�i k�ch 120"},
				{2744, "L�c t�n c�ng n�i ngo�i 120"},
				{2745, "Sinh l�c t�ng 3600"},
			},
			[4] = {
				{2759, "Ph�ng th� b�o k�ch 38"},
				{2760, "Gi�m s�t th��ng b�o k�ch 100"},
				{2761, "Ngo�i ph�ng t�ng 50"},
				{2762, "N�i ph�ng t�ng 50"},
				{2763, "N�i ngo�i ph�ng t�ng 50"},
				{2764, "Sinh l�c t�ng 15000"},
			},
			[5] = {
				{2772, "N�i c�ng t�ng 95"},
				{2773, "Th�n ph�p t�ng 95"},
				{2774, "Linh ho�t t�ng 95"},
			},
			[6] = {
				{2799, "T�ng t�c �� di chuy�n 15%"},
				{2800, "T�ng t�c �� xu�t chi�u 12%"},
				{2801, "T�ng x�c xu�t gi�m n�a th� th��ng 12%"},
				{2802, "T�ng ch� m�nh 8%"},
				{2803, "Gi�m th�i gian th� th��ng 12%"},
			},
		},
	},
}

OptionTable = {
	[1] = nil,
	[2] = nil,
	[3] = nil,
	[4] = nil,
	[5] = nil,
	[6] = nil,
}

nItem = nil;

function OnUse(nItemIdx)
	nItem = nItemIdx;
	local tSay = {
		"Ta mu�n ��i Nh�n Ph� H�n/#Select_TypeChildKimXa(29000)",
		"Ta mu�n ��i D�y �eo Nhi�p T�m/#Select_TypeChildKimXa(29001)",
--		"Ta mu�n ��i Kim x� Kh�i Ph��ng (ch� y�u n�i c�ng)/#Select_TypeChildKimXa(34)",
	}
	tinsert(tSay, "\nT�i h� �� d�nh/nothing");
	Say("D�ng <color=gold>Ph� H�n L�nh (Trang S�c)<color> c� th� h�p th�nh <color=gold>Trang S�c Ph� H�n,<color> d�ng ngay?", getn(tSay), tSay);
end

function Select_TypeChildKimXa(nType)
	local tSay = {};
	for nTypeChild,nChildName in ChildEquipTableName[nType] do
		tinsert(tSay, nChildName.."/#SelectOption("..nType..","..nTypeChild..",0,0)")
	end
	tinsert(tSay, "\n�� ta suy ngh� l�i/nothing");
		
	Say("<color=gold>Trang S�c Ph� H�n<color> c� 2 thu�c t�nh c� ��nh, 2 thu�c t�nh �n v� 3 thu�c t�nh t� ch�n:", getn(tSay), tSay);
end

function SelectOption(nType, nTypeChild, OptionIndex, OptionValue)
	if OptionIndex ~= 0 then
		if OptionIndex <= 3 then
			OptionTable[OptionIndex] = OptionValue;
		end
	end
	
	if (OptionIndex + 1) < 4 then
		local tSay = {};
		for key,value in OptionListTable[nType][nTypeChild][OptionIndex + 1] do
			tinsert(tSay, value[2].."/#SelectOption("..nType..","..nTypeChild..","..(OptionIndex + 1)..","..value[1]..")")
		end
		tinsert(tSay, "\n�� ta suy ngh� l�i/nothing");

		Say("Ch�n thu�c t�nh <color=gold>th� "..(OptionIndex + 1).."<color> cho trang b� <color=gold>"..ChildEquipTableName[nType][nTypeChild].."<color>:", getn(tSay), tSay);
	else 
		Ask(nType, nTypeChild);
	end
end

function GetOptionName(nType, nTypeChild, OptionIndex, OptionValue)
	for key,value in OptionListTable[nType][nTypeChild][OptionIndex] do
		if OptionValue == value[1] then
			return value[2];
		end
	end
end

function Ask(nType, nTypeChild)
	local tSay = {}
	tSayTitle = "";
	for key,value in OptionTable do
		tSayTitle = tSayTitle.."- Thu�c t�nh "..key..": <color=gold>"..GetOptionName(nType, nTypeChild, key, value).."<color>\n";
	end
	
	tSayTitle = tSayTitle.."Quy�t ��nh d�ng <color=gold>Ph� H�n L�nh (Trang S�c)<color> ��i th�nh <color=gold>Trang S�c Ph� H�n<color>?\n";
	
	tinsert(tSay, "��ng � ��i/#Get_Item("..nType..","..nTypeChild..")")
	tinsert(tSay, "\n�� ta suy ngh� l�i/nothing")
	
	Say("Thu�c t�nh l�a ch�n c�a <color=gold>Trang S�c Ph� H�n<color> nh� sau:\n"..tSayTitle, getn(tSay), tSay);
end

function Get_Item(nType, nTypeChild)
	if DelItemByIndex(nItem, 1) == 1 then
		local pifeng,pIndex	=AddItem(0,nTypeChild,nType,1,1,-1,-1,-1,-1,-1,-1,0,0)
		SetItemFeedUpAttrs(pIndex,3709,0,0,OptionTable[1],OptionTable[2],OptionTable[3])
		--FeedItem(pIndex,1000000)
		
		Msg2Player("B�n nh�n ���c 1 Trang S�c Ph� H�n")
	end
end