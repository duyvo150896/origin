Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\settings\\static_script\\lib\\itemfunctions.lua")


RouteList = {
	[2] = {3, 29000},
	[3] = {8, 29002},
	[4] = {0, 29001},
	[6] = {1, 29003},
	[8] = {2, 29004},
	[9] = {10, 29005},
	[11] = {0, 29006},
	[12] = {5, 29007},
	[14] = {2, 29008},
	[15] = {9, 29009},
	[17] = {6, 29010},
	[18] = {4, 29011},
	[20] = {7, 29012},
	[21] = {11, 29013},
	[23] = {2, 29014},
	[25] = {3, 29015},
	[26] = {9, 29016},
	[27] = {11, 29017},
	[29] = {13, 29018},
	[30] = {12, 29019},
	[31] = {14, 29020},
	[32] = {2, 29021},

	--[26] = {9, 20038}, --them full do la xong, chu thich: [26] route, 9, type vu khi, 20038, id vu khi cua route do

}

EquipTableName = { 
	[29001] = "M�t N� S�t Tinh V� Kh�", 
}

ChildEquipTableName = {
	[29001] = {
		[103] = "\n�� hi�u v� ti�p t�c ��i trang b�",
	--	[3743] = "Ngo�i C�ng",
	--	[3740] = "C�m chuy�n d�ng theo Th�n Ph�p",
	--	[3741] = "C�m chuy�n d�ng theo Linh Ho�t",
	--	[3745] = "S�t th��ng theo Th�n Ph�p",
	--	[3746] = "S�t th��ng theo Linh Ho�t",
	},
}

OptionListTable = {
	[29001] = { 
		[103] = { -- N�i c�ng
			[1] = {
				{3738, "N�i c�ng"},
				{3743, "Ngo�i C�ng"},
				{3740, "C�m chuy�n d�ng theo Th�n Ph�p"},
				{3741, "C�m chuy�n d�ng theo Linh Ho�t"},
				{3745, "S�t th��ng theo Th�n Ph�p"},
				{3746, "S�t th��ng theo Linh Ho�t"},
			},
			[2] = {
				{3750, "S�c M�nh T�ng 120"},
				{3751, "N�i C�ng T�ng 120"},
				{3752, "G�n C�t T�ng 120"},
				{3753, "Th�n Ph�p T�ng 120"},
				{3754, "Linh Ho�t T�ng 120"},
				{3755, "Kh�ng t�t c� T�ng 60"},
			},
			[3] = {
				{3757, "��c S�t T�ng 1000"},
				{3758, "S�t Th��ng T�ng 800"},
				{3759, "�i�m b�o k�ch t�ng 50"},
				{3781, "T�c �� xu�t chi�u t�ng 33%"},
			},
			[4] = {
				{3761, "Gi�m ngo�i ph�ng ��i ph��ng 20%"},
				{3762, "Gi�m n�i ph�ng ��i ph��ng 20%"},
				{3763, "T�n c�ng l�m n�i ngo�i ph�ng k� ��ch gi�m 18%"},
			},
		},
		[3743] = { -- Ngo�i c�ng
			[1] = {
				{3750, "S�c M�nh T�ng 120"},
				{3751, "N�i C�ng T�ng 120"},
				{3752, "G�n C�t T�ng 120"},
				{3753, "Th�n Ph�p T�ng 120"},
				{3754, "Linh Ho�t T�ng 120"},
				{3755, "Kh�ng t�t c� T�ng 60"},
			},
			[2] = {
				{3757, "��c S�t T�ng 1000"},
				{3758, "S�t Th��ng T�ng 800"},
				{3759, "�i�m b�o k�ch t�ng 50"},
			},
			[3] = {
				{3761, "Gi�m ngo�i ph�ng ��i ph��ng 20%"},
				{3762, "Gi�m n�i ph�ng ��i ph��ng 20%"},
				{3763, "T�n c�ng l�m n�i ngo�i ph�ng k� ��ch gi�m 18%"},
				{3764, "T�n c�ng khi�n s� �i�m ngo�i ph�ng c�a k� ��ch gi�m 300"},
				{3765, "T�n c�ng khi�n s� �i�m n�i ph�ng c�a k� ��ch gi�m 300"},
				{3766, "T�n c�ng khi�n s� �i�m n�i ngo�i ph�ng c�a k� ��ch gi�m 200"},
			},
		},
		[3740] = { -- C�m th�n ph�p
			[1] = {
				{3750, "S�c M�nh T�ng 120"},
				{3751, "N�i C�ng T�ng 120"},
				{3752, "G�n C�t T�ng 120"},
				{3753, "Th�n Ph�p T�ng 120"},
				{3754, "Linh Ho�t T�ng 120"},
				{3755, "Kh�ng t�t c� T�ng 60"},
			},
			[2] = {
				{3757, "��c S�t T�ng 1000"},
				{3758, "S�t Th��ng T�ng 800"},
				{3759, "�i�m b�o k�ch t�ng 50"},
			},
			[3] = {
				{3761, "Gi�m ngo�i ph�ng ��i ph��ng 20%"},
				{3762, "Gi�m n�i ph�ng ��i ph��ng 20%"},
				{3763, "T�n c�ng l�m n�i ngo�i ph�ng k� ��ch gi�m 18%"},
				{3764, "T�n c�ng khi�n s� �i�m ngo�i ph�ng c�a k� ��ch gi�m 300"},
				{3765, "T�n c�ng khi�n s� �i�m n�i ph�ng c�a k� ��ch gi�m 300"},
				{3766, "T�n c�ng khi�n s� �i�m n�i ngo�i ph�ng c�a k� ��ch gi�m 200"},
			},
		},
		[3741] = { -- C�m linh ho�t
			[1] = {
				{3750, "S�c M�nh T�ng 120"},
				{3751, "N�i C�ng T�ng 120"},
				{3752, "G�n C�t T�ng 120"},
				{3753, "Th�n Ph�p T�ng 120"},
				{3754, "Linh Ho�t T�ng 120"},
				{3755, "Kh�ng t�t c� T�ng 60"},
			},
			[2] = {
				{3757, "��c S�t T�ng 1000"},
				{3758, "S�t Th��ng T�ng 800"},
				{3759, "�i�m b�o k�ch t�ng 50"},
			},
			[3] = {
				{3761, "Gi�m ngo�i ph�ng ��i ph��ng 20%"},
				{3762, "Gi�m n�i ph�ng ��i ph��ng 20%"},
				{3763, "T�n c�ng l�m n�i ngo�i ph�ng k� ��ch gi�m 18%"},
				{3764, "T�n c�ng khi�n s� �i�m ngo�i ph�ng c�a k� ��ch gi�m 300"},
				{3765, "T�n c�ng khi�n s� �i�m n�i ph�ng c�a k� ��ch gi�m 300"},
				{3766, "T�n c�ng khi�n s� �i�m n�i ngo�i ph�ng c�a k� ��ch gi�m 200"},
			},
		},
		[3745] = { -- S�t th��ng th�n ph�p
			[1] = {
				{3750, "S�c M�nh T�ng 120"},
				{3751, "N�i C�ng T�ng 120"},
				{3752, "G�n C�t T�ng 120"},
				{3753, "Th�n Ph�p T�ng 120"},
				{3754, "Linh Ho�t T�ng 120"},
				{3755, "Kh�ng t�t c� T�ng 60"},
			},
			[2] = {
				{3757, "��c S�t T�ng 1000"},
				{3758, "S�t Th��ng T�ng 800"},
				{3759, "�i�m b�o k�ch t�ng 50"},
			},
			[3] = {
				{3761, "Gi�m ngo�i ph�ng ��i ph��ng 20%"},
				{3762, "Gi�m n�i ph�ng ��i ph��ng 20%"},
				{3763, "T�n c�ng l�m n�i ngo�i ph�ng k� ��ch gi�m 18%"},
				{3764, "T�n c�ng khi�n s� �i�m ngo�i ph�ng c�a k� ��ch gi�m 300"},
				{3765, "T�n c�ng khi�n s� �i�m n�i ph�ng c�a k� ��ch gi�m 300"},
				{3766, "T�n c�ng khi�n s� �i�m n�i ngo�i ph�ng c�a k� ��ch gi�m 200"},
			},
		},
		[3746] = { -- S�t th��ng linh ho�t
			[1] = {
				{3750, "S�c M�nh T�ng 120"},
				{3751, "N�i C�ng T�ng 120"},
				{3752, "G�n C�t T�ng 120"},
				{3753, "Th�n Ph�p T�ng 120"},
				{3754, "Linh Ho�t T�ng 120"},
				{3755, "Kh�ng t�t c� T�ng 60"},
			},
			[2] = {
				{3757, "��c S�t T�ng 1000"},
				{3758, "S�t Th��ng T�ng 800"},
				{3759, "�i�m b�o k�ch t�ng 50"},
			},
			[3] = {
				{3761, "Gi�m ngo�i ph�ng ��i ph��ng 20%"},
				{3762, "Gi�m n�i ph�ng ��i ph��ng 20%"},
				{3763, "T�n c�ng l�m n�i ngo�i ph�ng k� ��ch gi�m 18%"},
				{3764, "T�n c�ng khi�n s� �i�m ngo�i ph�ng c�a k� ��ch gi�m 300"},
				{3765, "T�n c�ng khi�n s� �i�m n�i ph�ng c�a k� ��ch gi�m 300"},
				{3766, "T�n c�ng khi�n s� �i�m n�i ngo�i ph�ng c�a k� ��ch gi�m 200"},
			},
		},
	},
	[33] = { -- ��ng Giao
		[152] = { -- ��ng Giao Phong
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
		"\n��ng � d�ng/#Select_TypeChildKimXa(29001)",
--		"Ta mu�n ��i Kim x� ��ng Giao (ch� y�u ngo�i c�ng)/#Select_TypeChildKimXa(33)",
--		"Ta mu�n ��i Kim x� Kh�i Ph��ng (ch� y�u n�i c�ng)/#Select_TypeChildKimXa(34)",
	}
	tinsert(tSay, "\nT�i h� �� d�nh/nothing");
	Say("D�ng <color=gold>Ph� H�n L�nh (V� Kh�)<color> c� th� h�p th�nh <color=gold>Ph� H�n V� Kh�,<color> d�ng ngay?", getn(tSay), tSay);
end

function Select_TypeChildKimXa(nType)
	local tSay = {};
	for nTypeChild,nChildName in ChildEquipTableName[nType] do
		tinsert(tSay, nChildName.."/#SelectOption("..nType..","..nTypeChild..",0,0)")
	end
	tinsert(tSay, "\n�� ta suy ngh� l�i/nothing");
		
	Say("L�u � quan tr�ng cho <color=gold>V� Kh� Ph� H�n<color>. V� kh� ph� h�n s� c� <color=white>4 h��ng �i c� b�n<color><color=gold>\n- N�i c�ng\n- Ngo�i c�ng\n- C�m chuy�n d�ng\n- S�t th��ng<color>\nM�i h��ng s� c� 2 thu�c t�nh c� ��nh v� 3 thu�c t�nh t� ch�n\nNgo�i ra trang b� <color=gold>V� Kh� Ph� H�n<color> t�i m�y ch� <color=fire>Jx2 Animal<color> s� c� th�m thu�c t�nh <color=green>Sinh L�c<color>", getn(tSay), tSay);
end

function SelectOption(nType, nTypeChild, OptionIndex, OptionValue)
	if OptionIndex ~= 0 then
		if OptionIndex <= 4 then
			OptionTable[OptionIndex] = OptionValue;
		end
	end
	
	if (OptionIndex + 1) < 5 then
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

function GetTypeByRoute(nType)
	nRoute = GetPlayerRoute();
	for key,value in RouteList do
		if key == nRoute then
			return value[1], value[2]; --ko co ; reset xem
		end
	end
end

function Ask(nType, nTypeChild)
	local tSay = {}
	tSayTitle = "";
	for key,value in OptionTable do
		tSayTitle = tSayTitle.."- Thu�c t�nh "..key..": <color=gold>"..GetOptionName(nType, nTypeChild, key, value).."<color>\n";
	end
	
	tSayTitle = tSayTitle.."Quy�t ��nh s� d�ng <color=gold>Ph� H�n L�nh (V� Kh�)<color> �� ��i trang b� <color=gold>V� Kh� Ph� H�n<color> theo c�c l�a ch�n tr�n\n";
	
	tinsert(tSay, "��ng � ��i/#Get_Item("..nType..","..nTypeChild..")")
	tinsert(tSay, "\n�� ta suy ngh� l�i/nothing")
	
	Say("Thu�c t�nh l�a ch�n c�a <color=gold>V� Kh� Ph� H�n<color> nh� sau:\n"..tSayTitle, getn(tSay), tSay);
end

function Get_Item(nType, nTypeChild)
	local nTypeWeapon,nTypeWeaponId = GetTypeByRoute(nType);
	if DelItemByIndex(nItem, 1) == 1 then
		local pifeng,pIndex	=AddItem(0,nTypeWeapon,nTypeWeaponId,1,1,-1,-1,-1,-1,-1,-1,0,15)--trong n�y 1,1,-1,-1,-1,-1,-1,-1 n� n�m � ��u 3 c�i opt
		--Theo nhu code thi additem tra ve 2 gia tri, tui ko biet 2 gia tri gi, de return xem no ra gi
		SetItemFeedUpAttrs(pIndex,OptionTable[1],3780,0,OptionTable[2],OptionTable[3],OptionTable[4]) --lat tra lai 2 so nha, quen cmnr
		--FeedItem(pIndex,1000000)
		--cho ty, di xem cai code getitemfeed nay no hoat dong sao da uh
	Msg2Player("B�n nh�n ���c 1 V� Kh� Ph� H�n")
	end
end
