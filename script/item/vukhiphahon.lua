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
	[29001] = "MÆt N¹ S¸t Tinh Vò KhÝ", 
}

ChildEquipTableName = {
	[29001] = {
		[103] = "\n§· hiÓu vµ tiÕp tôc ®æi trang bÞ",
	--	[3743] = "Ngo¹i C«ng",
	--	[3740] = "CÇm chuyªn dïng theo Th©n Ph¸p",
	--	[3741] = "CÇm chuyªn dïng theo Linh Ho¹t",
	--	[3745] = "S¸t th­¬ng theo Th©n Ph¸p",
	--	[3746] = "S¸t th­¬ng theo Linh Ho¹t",
	},
}

OptionListTable = {
	[29001] = { 
		[103] = { -- Néi c«ng
			[1] = {
				{3738, "Néi c«ng"},
				{3743, "Ngo¹i C«ng"},
				{3740, "CÇm chuyªn dïng theo Th©n Ph¸p"},
				{3741, "CÇm chuyªn dïng theo Linh Ho¹t"},
				{3745, "S¸t th­¬ng theo Th©n Ph¸p"},
				{3746, "S¸t th­¬ng theo Linh Ho¹t"},
			},
			[2] = {
				{3750, "Søc M¹nh T¨ng 120"},
				{3751, "Néi C«ng T¨ng 120"},
				{3752, "G©n Cèt T¨ng 120"},
				{3753, "Th©n Ph¸p T¨ng 120"},
				{3754, "Linh Ho¹t T¨ng 120"},
				{3755, "Kh¸ng tÊt c¶ T¨ng 60"},
			},
			[3] = {
				{3757, "§éc S¸t T¨ng 1000"},
				{3758, "S¸t Th­¬ng T¨ng 800"},
				{3759, "§iÓm b¹o kÝch t¨ng 50"},
				{3781, "Tèc ®é xuÊt chiªu t¨ng 33%"},
			},
			[4] = {
				{3761, "Gi¶m ngo¹i phßng ®æi ph­¬ng 20%"},
				{3762, "Gi¶m néi phßng ®èi ph­¬ng 20%"},
				{3763, "TÊn c«ng lµm néi ngo¹i phßng kÎ ®Þch gi¶m 18%"},
			},
		},
		[3743] = { -- Ngo¹i c«ng
			[1] = {
				{3750, "Søc M¹nh T¨ng 120"},
				{3751, "Néi C«ng T¨ng 120"},
				{3752, "G©n Cèt T¨ng 120"},
				{3753, "Th©n Ph¸p T¨ng 120"},
				{3754, "Linh Ho¹t T¨ng 120"},
				{3755, "Kh¸ng tÊt c¶ T¨ng 60"},
			},
			[2] = {
				{3757, "§éc S¸t T¨ng 1000"},
				{3758, "S¸t Th­¬ng T¨ng 800"},
				{3759, "§iÓm b¹o kÝch t¨ng 50"},
			},
			[3] = {
				{3761, "Gi¶m ngo¹i phßng ®æi ph­¬ng 20%"},
				{3762, "Gi¶m néi phßng ®èi ph­¬ng 20%"},
				{3763, "TÊn c«ng lµm néi ngo¹i phßng kÎ ®Þch gi¶m 18%"},
				{3764, "TÊn c«ng khiÕn sè ®iÓm ngo¹i phßng cña kÎ ®Þch gi¶m 300"},
				{3765, "TÊn c«ng khiÕn sè ®iÓm néi phßng cña kÎ ®Þch gi¶m 300"},
				{3766, "TÊn c«ng khiÕn sè ®iÓm néi ngo¹i phßng cña kÎ ®Þch gi¶m 200"},
			},
		},
		[3740] = { -- CÇm th©n ph¸p
			[1] = {
				{3750, "Søc M¹nh T¨ng 120"},
				{3751, "Néi C«ng T¨ng 120"},
				{3752, "G©n Cèt T¨ng 120"},
				{3753, "Th©n Ph¸p T¨ng 120"},
				{3754, "Linh Ho¹t T¨ng 120"},
				{3755, "Kh¸ng tÊt c¶ T¨ng 60"},
			},
			[2] = {
				{3757, "§éc S¸t T¨ng 1000"},
				{3758, "S¸t Th­¬ng T¨ng 800"},
				{3759, "§iÓm b¹o kÝch t¨ng 50"},
			},
			[3] = {
				{3761, "Gi¶m ngo¹i phßng ®æi ph­¬ng 20%"},
				{3762, "Gi¶m néi phßng ®èi ph­¬ng 20%"},
				{3763, "TÊn c«ng lµm néi ngo¹i phßng kÎ ®Þch gi¶m 18%"},
				{3764, "TÊn c«ng khiÕn sè ®iÓm ngo¹i phßng cña kÎ ®Þch gi¶m 300"},
				{3765, "TÊn c«ng khiÕn sè ®iÓm néi phßng cña kÎ ®Þch gi¶m 300"},
				{3766, "TÊn c«ng khiÕn sè ®iÓm néi ngo¹i phßng cña kÎ ®Þch gi¶m 200"},
			},
		},
		[3741] = { -- CÇm linh ho¹t
			[1] = {
				{3750, "Søc M¹nh T¨ng 120"},
				{3751, "Néi C«ng T¨ng 120"},
				{3752, "G©n Cèt T¨ng 120"},
				{3753, "Th©n Ph¸p T¨ng 120"},
				{3754, "Linh Ho¹t T¨ng 120"},
				{3755, "Kh¸ng tÊt c¶ T¨ng 60"},
			},
			[2] = {
				{3757, "§éc S¸t T¨ng 1000"},
				{3758, "S¸t Th­¬ng T¨ng 800"},
				{3759, "§iÓm b¹o kÝch t¨ng 50"},
			},
			[3] = {
				{3761, "Gi¶m ngo¹i phßng ®æi ph­¬ng 20%"},
				{3762, "Gi¶m néi phßng ®èi ph­¬ng 20%"},
				{3763, "TÊn c«ng lµm néi ngo¹i phßng kÎ ®Þch gi¶m 18%"},
				{3764, "TÊn c«ng khiÕn sè ®iÓm ngo¹i phßng cña kÎ ®Þch gi¶m 300"},
				{3765, "TÊn c«ng khiÕn sè ®iÓm néi phßng cña kÎ ®Þch gi¶m 300"},
				{3766, "TÊn c«ng khiÕn sè ®iÓm néi ngo¹i phßng cña kÎ ®Þch gi¶m 200"},
			},
		},
		[3745] = { -- S¸t th­¬ng th©n ph¸p
			[1] = {
				{3750, "Søc M¹nh T¨ng 120"},
				{3751, "Néi C«ng T¨ng 120"},
				{3752, "G©n Cèt T¨ng 120"},
				{3753, "Th©n Ph¸p T¨ng 120"},
				{3754, "Linh Ho¹t T¨ng 120"},
				{3755, "Kh¸ng tÊt c¶ T¨ng 60"},
			},
			[2] = {
				{3757, "§éc S¸t T¨ng 1000"},
				{3758, "S¸t Th­¬ng T¨ng 800"},
				{3759, "§iÓm b¹o kÝch t¨ng 50"},
			},
			[3] = {
				{3761, "Gi¶m ngo¹i phßng ®æi ph­¬ng 20%"},
				{3762, "Gi¶m néi phßng ®èi ph­¬ng 20%"},
				{3763, "TÊn c«ng lµm néi ngo¹i phßng kÎ ®Þch gi¶m 18%"},
				{3764, "TÊn c«ng khiÕn sè ®iÓm ngo¹i phßng cña kÎ ®Þch gi¶m 300"},
				{3765, "TÊn c«ng khiÕn sè ®iÓm néi phßng cña kÎ ®Þch gi¶m 300"},
				{3766, "TÊn c«ng khiÕn sè ®iÓm néi ngo¹i phßng cña kÎ ®Þch gi¶m 200"},
			},
		},
		[3746] = { -- S¸t th­¬ng linh ho¹t
			[1] = {
				{3750, "Søc M¹nh T¨ng 120"},
				{3751, "Néi C«ng T¨ng 120"},
				{3752, "G©n Cèt T¨ng 120"},
				{3753, "Th©n Ph¸p T¨ng 120"},
				{3754, "Linh Ho¹t T¨ng 120"},
				{3755, "Kh¸ng tÊt c¶ T¨ng 60"},
			},
			[2] = {
				{3757, "§éc S¸t T¨ng 1000"},
				{3758, "S¸t Th­¬ng T¨ng 800"},
				{3759, "§iÓm b¹o kÝch t¨ng 50"},
			},
			[3] = {
				{3761, "Gi¶m ngo¹i phßng ®æi ph­¬ng 20%"},
				{3762, "Gi¶m néi phßng ®èi ph­¬ng 20%"},
				{3763, "TÊn c«ng lµm néi ngo¹i phßng kÎ ®Þch gi¶m 18%"},
				{3764, "TÊn c«ng khiÕn sè ®iÓm ngo¹i phßng cña kÎ ®Þch gi¶m 300"},
				{3765, "TÊn c«ng khiÕn sè ®iÓm néi phßng cña kÎ ®Þch gi¶m 300"},
				{3766, "TÊn c«ng khiÕn sè ®iÓm néi ngo¹i phßng cña kÎ ®Þch gi¶m 200"},
			},
		},
	},
	[33] = { -- §»ng Giao
		[152] = { -- §»ng Giao Phong
			[1] = {
				{2618, "Søc m¹nh t¨ng 75"},
				{2619, "G©n cèt t¨ng 75"},
			},
			[2] = {
				{2631, "Néi c«ng t¨ng 75"},
				{2632, "Th©n ph¸p t¨ng 75"},
				{2633, "Linh ho¹t t¨ng 75"},
				{2634, "Sinh lùc t¨ng 3600"},
				{2635, "Sinh lùc t¨ng 21%"},
			},
			[3] = {
				{2647, "§iÓm b¹o kÝch 24"},
				{2648, "Lùc tÊn c«ng ngo¹i 120"},
				{2649, "Néi kÝch 120"},
				{2650, "Lùc tÊn c«ng néi ngo¹i 120"},
				{2651, "Sinh lùc t¨ng 3600"},
			},
			[4] = {
				{2665, "Phßng thñ b¹o kÝch 38"},
				{2666, "Gi¶m s¸t th­¬ng b¹o kÝch 100"},
				{2667, "Ngo¹i phßng t¨ng 50"},
				{2668, "Néi phßng t¨ng 50"},
				{2669, "Néi ngo¹i phßng t¨ng 50"},
				{2670, "Sinh lùc t¨ng 15000"},
			},
			[5] = {
				{2678, "Søc m¹nh t¨ng 95"},
				{2679, "G©n cèt t¨ng 95"},
				{2680, "Sinh lùc t¨ng 25%"},
			},
			[6] = {
				{2690, "Ngo¹i c«ng lín nhÊt trªn vò khÝ t¨ng 150"},
				{2691, "Ngo¹i c«ng nhá nhÊt trªn vò khÝ t¨ng 150"},
				{2692, "T¨ng ngo¹i c«ng 21%"},
				{2693, "T¨ng ngo¹i c«ng 150"},
			},
		},
		[153] = { -- §»ng Giao Ch­¬ng
			[1] = {
				{2618, "Søc m¹nh t¨ng 75"},
				{2619, "G©n cèt t¨ng 75"},
			},
			[2] = {
				{2631, "Néi c«ng t¨ng 75"},
				{2632, "Th©n ph¸p t¨ng 75"},
				{2633, "Linh ho¹t t¨ng 75"},
				{2634, "Sinh lùc t¨ng 3600"},
				{2635, "Sinh lùc t¨ng 21%"},
			},
			[3] = {
				{2647, "§iÓm b¹o kÝch 24"},
				{2648, "Lùc tÊn c«ng ngo¹i 120"},
				{2649, "Néi kÝch 120"},
				{2650, "Lùc tÊn c«ng néi ngo¹i 120"},
				{2651, "Sinh lùc t¨ng 3600"},
			},
			[4] = {
				{2665, "Phßng thñ b¹o kÝch 38"},
				{2666, "Gi¶m s¸t th­¬ng b¹o kÝch 100"},
				{2667, "Ngo¹i phßng t¨ng 50"},
				{2668, "Néi phßng t¨ng 50"},
				{2669, "Néi ngo¹i phßng t¨ng 50"},
				{2670, "Sinh lùc t¨ng 15000"},
			},
			[5] = {
				{2678, "Søc m¹nh t¨ng 95"},
				{2679, "G©n cèt t¨ng 95"},
				{2680, "Sinh lùc t¨ng 25%"},
			},
			[6] = {
				{2690, "Ngo¹i c«ng lín nhÊt trªn vò khÝ t¨ng 150"},
				{2691, "Ngo¹i c«ng nhá nhÊt trªn vò khÝ t¨ng 150"},
				{2692, "T¨ng ngo¹i c«ng 21%"},
				{2693, "T¨ng ngo¹i c«ng 150"},
			},
		},
		[154] = { -- §»ng Giao Ngoa
			[1] = {
				{2618, "Søc m¹nh t¨ng 75"},
				{2619, "G©n cèt t¨ng 75"},
			},
			[2] = {
				{2631, "Néi c«ng t¨ng 75"},
				{2632, "Th©n ph¸p t¨ng 75"},
				{2633, "Linh ho¹t t¨ng 75"},
				{2634, "Sinh lùc t¨ng 3600"},
				{2635, "Sinh lùc t¨ng 21%"},
			},
			[3] = {
				{2647, "§iÓm b¹o kÝch 24"},
				{2648, "Lùc tÊn c«ng ngo¹i 120"},
				{2649, "Néi kÝch 120"},
				{2650, "Lùc tÊn c«ng néi ngo¹i 120"},
				{2651, "Sinh lùc t¨ng 3600"},
			},
			[4] = {
				{2665, "Phßng thñ b¹o kÝch 38"},
				{2666, "Gi¶m s¸t th­¬ng b¹o kÝch 100"},
				{2667, "Ngo¹i phßng t¨ng 50"},
				{2668, "Néi phßng t¨ng 50"},
				{2669, "Néi ngo¹i phßng t¨ng 50"},
				{2670, "Sinh lùc t¨ng 15000"},
			},
			[5] = {
				{2678, "Søc m¹nh t¨ng 95"},
				{2679, "G©n cèt t¨ng 95"},
				{2680, "Sinh lùc t¨ng 25%"},
			},
			[6] = {
				{2703, "T¨ng tèc ®é di chuyÓn 15%"},
				{2704, "T¨ng tèc ®é xuÊt chiªu 12%"},
				{2705, "T¨ng x¸c xuÊt gi¶m nöa thä th­¬ng 12%"},
				{2706, "T¨ng chÝ mÖnh 8%"},
			},
		},
	},
	[34] = { -- Khëi Ph­îng
		[152] = { -- Khëi Ph­îng Phong
			[1] = {
				{2712, "Néi c«ng t¨ng 75"},
				{2713, "G©n cèt t¨ng 75"},
			},
			[2] = {
				{2725, "Søc m¹nh t¨ng 75"},
				{2726, "Th©n ph¸p t¨ng 75"},
				{2727, "Linh ho¹t t¨ng 75"},
				{2728, "Sinh lùc t¨ng 3600"},
				{2729, "Sinh lùc t¨ng 21%"},
			},
			[3] = {
				{2741, "§iÓm b¹o kÝch t¨ng 24"},
				{2742, "Lùc tÊn c«ng ngo¹i 120"},
				{2743, "Néi kÝch 120"},
				{2744, "Lùc tÊn c«ng néi ngo¹i 120"},
				{2745, "Sinh lùc t¨ng 3600"},
			},
			[4] = {
				{2759, "Phßng thñ b¹o kÝch 38"},
				{2760, "Gi¶m s¸t th­¬ng b¹o kÝch 100"},
				{2761, "Ngo¹i phßng t¨ng 50"},
				{2762, "Néi phßng t¨ng 50"},
				{2763, "Néi ngo¹i phßng t¨ng 50"},
				{2764, "Sinh lùc t¨ng 15000"},
			},
			[5] = {
				{2772, "Néi c«ng t¨ng 95"},
				{2773, "Th©n ph¸p t¨ng 95"},
				{2774, "Linh ho¹t t¨ng 95"},
			},
			[6] = {
				{2784, "Néi c«ng c«ng lín nhÊt trªn vò khÝ t¨ng 150"},
				{2785, "Néi c«ng nhá nhÊt trªn vò khÝ t¨ng 150"},
				{2786, "T¨ng néi c«ng 21%"},
				{2787, "T¨ng néi c«ng 150"},
			},
		},
		[153] = { -- Khëi Ph­îng Ch­¬ng
			[1] = {
				{2712, "Néi c«ng t¨ng 75"},
				{2713, "G©n cèt t¨ng 75"},
			},
			[2] = {
				{2725, "Søc m¹nh t¨ng 75"},
				{2726, "Th©n ph¸p t¨ng 75"},
				{2727, "Linh ho¹t t¨ng 75"},
				{2728, "Sinh lùc t¨ng 3600"},
				{2729, "Sinh lùc t¨ng 21%"},
			},
			[3] = {
				{2741, "§iÓm b¹o kÝch t¨ng 24"},
				{2742, "Lùc tÊn c«ng ngo¹i 120"},
				{2743, "Néi kÝch 120"},
				{2744, "Lùc tÊn c«ng néi ngo¹i 120"},
				{2745, "Sinh lùc t¨ng 3600"},
			},
			[4] = {
				{2759, "Phßng thñ b¹o kÝch 38"},
				{2760, "Gi¶m s¸t th­¬ng b¹o kÝch 100"},
				{2761, "Ngo¹i phßng t¨ng 50"},
				{2762, "Néi phßng t¨ng 50"},
				{2763, "Néi ngo¹i phßng t¨ng 50"},
				{2764, "Sinh lùc t¨ng 15000"},
			},
			[5] = {
				{2772, "Néi c«ng t¨ng 95"},
				{2773, "Th©n ph¸p t¨ng 95"},
				{2774, "Linh ho¹t t¨ng 95"},
			},
			[6] = {
				{2784, "Néi c«ng c«ng lín nhÊt trªn vò khÝ t¨ng 150"},
				{2785, "Néi c«ng nhá nhÊt trªn vò khÝ t¨ng 150"},
				{2786, "T¨ng néi c«ng 21%"},
				{2787, "T¨ng néi c«ng 150"},
			},
		},
		[154] = { -- Khëi Ph­îng Ngoa
			[1] = {
				{2712, "Néi c«ng t¨ng 75"},
				{2713, "G©n cèt t¨ng 75"},
			},
			[2] = {
				{2725, "Søc m¹nh t¨ng 75"},
				{2726, "Th©n ph¸p t¨ng 75"},
				{2727, "Linh ho¹t t¨ng 75"},
				{2728, "Sinh lùc t¨ng 3600"},
				{2729, "Sinh lùc t¨ng 21%"},
			},
			[3] = {
				{2741, "§iÓm b¹o kÝch t¨ng 24"},
				{2742, "Lùc tÊn c«ng ngo¹i 120"},
				{2743, "Néi kÝch 120"},
				{2744, "Lùc tÊn c«ng néi ngo¹i 120"},
				{2745, "Sinh lùc t¨ng 3600"},
			},
			[4] = {
				{2759, "Phßng thñ b¹o kÝch 38"},
				{2760, "Gi¶m s¸t th­¬ng b¹o kÝch 100"},
				{2761, "Ngo¹i phßng t¨ng 50"},
				{2762, "Néi phßng t¨ng 50"},
				{2763, "Néi ngo¹i phßng t¨ng 50"},
				{2764, "Sinh lùc t¨ng 15000"},
			},
			[5] = {
				{2772, "Néi c«ng t¨ng 95"},
				{2773, "Th©n ph¸p t¨ng 95"},
				{2774, "Linh ho¹t t¨ng 95"},
			},
			[6] = {
				{2799, "T¨ng tèc ®é di chuyÓn 15%"},
				{2800, "T¨ng tèc ®é xuÊt chiªu 12%"},
				{2801, "T¨ng x¸c xuÊt gi¶m nöa thä th­¬ng 12%"},
				{2802, "T¨ng chÝ mÖnh 8%"},
				{2803, "Gi¶m thêi gian thä th­¬ng 12%"},
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
		"\n§ång ý dïng/#Select_TypeChildKimXa(29001)",
--		"Ta muèn ®æi Kim xµ §»ng Giao (chñ yÕu ngo¹i c«ng)/#Select_TypeChildKimXa(33)",
--		"Ta muèn ®æi Kim xµ Khëi Ph­îng (chñ yÕu néi c«ng)/#Select_TypeChildKimXa(34)",
	}
	tinsert(tSay, "\nT¹i h¹ ®Ó dµnh/nothing");
	Say("Dïng <color=gold>Ph¸ Hån LÖnh (Vò KhÝ)<color> cã thÓ hîp thµnh <color=gold>Ph¸ Hån Vò KhÝ,<color> dïng ngay?", getn(tSay), tSay);
end

function Select_TypeChildKimXa(nType)
	local tSay = {};
	for nTypeChild,nChildName in ChildEquipTableName[nType] do
		tinsert(tSay, nChildName.."/#SelectOption("..nType..","..nTypeChild..",0,0)")
	end
	tinsert(tSay, "\n§Ó ta suy nghÜ l¹i/nothing");
		
	Say("L­u ý quan träng cho <color=gold>Vò KhÝ Ph¸ Hån<color>. Vò khÝ ph¸ hån sÏ cã <color=white>4 h­íng ®i c¬ b¶n<color><color=gold>\n- Néi c«ng\n- Ngo¹i c«ng\n- CÇm chuyªn dïng\n- S¸t th­¬ng<color>\nMçi h­íng sÏ cã 2 thuéc tÝnh cè ®Þnh vµ 3 thuéc tÝnh tù chän\nNgoµi ra trang bÞ <color=gold>Vò KhÝ Ph¸ Hån<color> t¹i m¸y chñ <color=fire>Jx2 Animal<color> sÏ cã thªm thuéc tÝnh <color=green>Sinh Lùc<color>", getn(tSay), tSay);
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
		tinsert(tSay, "\n§Ó ta suy nghÜ l¹i/nothing");

		Say("Chän thuéc tÝnh <color=gold>thø "..(OptionIndex + 1).."<color> cho trang bÞ <color=gold>"..ChildEquipTableName[nType][nTypeChild].."<color>:", getn(tSay), tSay);
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
		tSayTitle = tSayTitle.."- Thuéc tÝnh "..key..": <color=gold>"..GetOptionName(nType, nTypeChild, key, value).."<color>\n";
	end
	
	tSayTitle = tSayTitle.."QuyÕt ®Þnh sö dông <color=gold>Ph¸ Hån LÖnh (Vò KhÝ)<color> ®Ó ®æi trang bÞ <color=gold>Vò KhÝ Ph¸ Hån<color> theo c¸c lùa chän trªn\n";
	
	tinsert(tSay, "§ång ý ®æi/#Get_Item("..nType..","..nTypeChild..")")
	tinsert(tSay, "\n§Ó ta suy nghÜ l¹i/nothing")
	
	Say("Thuéc tÝnh lùa chän cña <color=gold>Vò KhÝ Ph¸ Hån<color> nh­ sau:\n"..tSayTitle, getn(tSay), tSay);
end

function Get_Item(nType, nTypeChild)
	local nTypeWeapon,nTypeWeaponId = GetTypeByRoute(nType);
	if DelItemByIndex(nItem, 1) == 1 then
		local pifeng,pIndex	=AddItem(0,nTypeWeapon,nTypeWeaponId,1,1,-1,-1,-1,-1,-1,-1,0,15)--trong nµy 1,1,-1,-1,-1,-1,-1,-1 nã n»m ë ®©u 3 c¸i opt
		--Theo nhu code thi additem tra ve 2 gia tri, tui ko biet 2 gia tri gi, de return xem no ra gi
		SetItemFeedUpAttrs(pIndex,OptionTable[1],3780,0,OptionTable[2],OptionTable[3],OptionTable[4]) --lat tra lai 2 so nha, quen cmnr
		--FeedItem(pIndex,1000000)
		--cho ty, di xem cai code getitemfeed nay no hoat dong sao da uh
	Msg2Player("B¹n nhËn ®­îc 1 Vò KhÝ Ph¸ Hån")
	end
end
