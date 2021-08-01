Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\settings\\static_script\\lib\\itemfunctions.lua")

EquipTableName = {
	[29000] = "NhÉn Ph¸ Hån",
	[29001] = "D©y §eo NhiÕp T©m",
	[34] = "MÆt N¹ S¸t Tinh QuÇn",
}

ChildEquipTableName = {
	[29000] = {
		[102] = "B¾t ®Çu chän thuéc tÝnh cho NhÉn Ph¸ Hån",
--		[100] = "MÆt N¹ S¸t Tinh Ao",
--		[101] = "MÆt N¹ S¸t Tinh QuÇn",
	},
	[29001] = {
		[102] = "B¾t ®Çu chän thuéc tÝnh cho D©y §eo NhiÕp T©m",
--		[100] = "MÆt N¹ S¸t Tinh Ao",
--		[101] = "MÆt N¹ S¸t Tinh QuÇn",
	},
	[34] = {
		[103] = "Khëi Ph­îng Phong (¸o choµng)",
		[153] = "Khëi Ph­îng Ch­¬ng (huy ch­¬ng)",
		[154] = "Khëi Ph­îng Ngoa (giµy)",
	},
}

OptionListTable = {
	[29000] = { -- Hoan L¨ng
		[102] = { -- Hoan L¨ng Phong
			[1] = {
				{3711, "§éc S¸t T¨ng 350"},
				{3712, "S¸t Th­¬ng T¨ng 350"},
				{3713, "C«ng kÝch t¨ng 12%"},
				{3714, "Søc M¹nh T¨ng 90"},
				{3715, "Néi C«ng T¨ng 90"},
				{3716, "G©n Cèt T¨ng 90"},
				{3717, "Th©n Ph¸p T¨ng 90"},
				{3718, "Linh Ho¹t T¨ng 90"},
			},
			[2] = {
				{3720, "Sinh Lùc T¨ng 45%"},
				{3721, "Néi Lùc T¨ng 45%"},
				{3722, "Tû LÖ Phßng Ngù Ngo¹i C«ng T¨ng 7%"},
				{3723, "Tû LÖ Phßng Ngù Néi C«ng T¨ng 7%"},
				{3724, "Tû LÖ Phßng Ngù Néi Ngo¹i C«ng T¨ng 6%"},
			},
			[3] = {
				{3729, "Dïng kü n¨ng kh«ng tÝnh tû lÖ gi¶n c¸ch 10%"},
				{3730, "X¸c suÊt xuÊt chiªu t¨ng 7%"},
				{3731, "Hç trî mËt tÞch t¨ng thªm 10%"},
				{3732, "ChuyÓn hãa s¸t th­¬ng thµnh Néi lùc 10%"},
				{3733, "Gi¶m thêi gian thä th­¬ng 18%"},
				{3734, "T¨ng thªm hiÖu qu¶ cña th­¬ng d­îc 45%"},
				{3735, "Néi lùc tiªu hao 45%"},
				{3736, "§iÓm b¹o kÝch t¨ng 35"},
			},
		},
		[100] = { -- Hoan L¨ng Ch­¬ng
			[1] = {
				{2831, "§éc S¸t T¨ng 300"},
				{2832, "S¸t Th­¬ng T¨ng 400"},
				{2833, "Ngo¹i C«ng T¨ng 30%"},
				{2834, "C«ng KÝch Néi C«ng 30%"},
				{2835, "Søc M¹nh T¨ng 90"},
				{2836, "Néi C«ng T¨ng 90"},
				{2837, "G©n Cèt T¨ng 90"},
				{2838, "Th©n Ph¸p T¨ng 90"},
				{2839, "Linh Ho¹t T¨ng 90"},
			},
			[2] = {
				{2841, "Sinh Lùc T¨ng 45%"},
				{2842, "Néi Lùc + 45%"},
				{2843, "Ngo¹i Phßng T¨ng 6%"},
				{2844, "Néi Phßng T¨ng 6%"},
				{2845, "Néi Ngo¹i Phßng T¨ng 5%"},
				{2846, "TrÞ hé gi¸p ngo¹i phßng"},
				{2847, "TrÞ hé gi¸p ngo¹i phßng"},
				{2848, "TrÞ hé gi¸p néi ngo¹i phßng"},
			},
			[3] = {
				{2850, "NÐ tr¸nh tÊt c¶ tr¹ng th¸i phô 4%"},
				{2851, "Khi bÞ tÊn c«ng sÏ t¨ng di chuyÓn b¶n th©n 40%"},
				{2852, "§iÓm sinh lùc T¨ng 16000"},
				{2853, "Phßng thñ b¹o kÝch 35"},
			},
		},
		[101] = { -- Hoan L¨ng Ngoa
			[1] = {
				{2857, "§éc S¸t T¨ng 200"},
				{2858, "S¸t Th­¬ng T¨ng 100"},
				{2859, "Néi ngo¹i c«ng t¨ng 8%"},
				{2860, "Søc M¹nh T¨ng 70"},
				{2861, "Néi C«ng T¨ng 70"},
				{2862, "G©n Cèt T¨ng 70"},
				{2863, "Th©n Ph¸p T¨ng 70"},
				{2864, "Linh Ho¹t T¨ng 70"},
			},
			[2] = {
				{2866, "Sinh Lùc T¨ng 35%"},
				{2867, "Néi Lùc + 35%"},
				{2868, "Tû LÖ Phßng Ngù Ngo¹i C«ng T¨ng 6%"},
				{2869, "Tû LÖ Phßng Ngù Néi C«ng T¨ng 6%"},
				{2870, "Tû LÖ Phßng Ngù Néi Ngo¹i C«ng T¨ng 5%"},
				{2871, "TrÞ hé gi¸p ngo¹i phßng"},
				{2872, "TrÞ hé gi¸p ngo¹i phßng"},
				{2873, "TrÞ hé gi¸p néi ngo¹i phßng"},
			},
			[3] = {
				{2850, "NÐ tr¸nh tÊt c¶ tr¹ng th¸i phô 4%"},
				{2851, "Khi bÞ tÊn c«ng sÏ t¨ng di chuyÓn b¶n th©n 40%"},
				{2852, "§iÓm sinh lùc T¨ng 16000"},
				{2853, "Phßng thñ b¹o kÝch 35"},
			},
		},
	},
[29001] = { -- Hoan L¨ng
		[102] = { -- Hoan L¨ng Phong
			[1] = {
				{3711, "§éc S¸t T¨ng 350"},
				{3712, "S¸t Th­¬ng T¨ng 350"},
				{3713, "C«ng kÝch t¨ng 12%"},
				{3714, "Søc M¹nh T¨ng 90"},
				{3715, "Néi C«ng T¨ng 90"},
				{3716, "G©n Cèt T¨ng 90"},
				{3717, "Th©n Ph¸p T¨ng 90"},
				{3718, "Linh Ho¹t T¨ng 90"},
			},
			[2] = {
				{3720, "Sinh Lùc T¨ng 45%"},
				{3721, "Néi Lùc T¨ng 45%"},
				{3722, "Tû LÖ Phßng Ngù Ngo¹i C«ng T¨ng 7%"},
				{3723, "Tû LÖ Phßng Ngù Néi C«ng T¨ng 7%"},
				{3724, "Tû LÖ Phßng Ngù Néi Ngo¹i C«ng T¨ng 6%"},
			},
			[3] = {
				{3729, "Dïng kü n¨ng kh«ng tÝnh tû lÖ gi¶n c¸ch 10%"},
				{3730, "X¸c suÊt xuÊt chiªu t¨ng 7%"},
				{3731, "Hç trî mËt tÞch t¨ng thªm 10%"},
				{3732, "ChuyÓn hãa s¸t th­¬ng thµnh Néi lùc 10%"},
				{3733, "Gi¶m thêi gian thä th­¬ng 18%"},
				{3734, "T¨ng thªm hiÖu qu¶ cña th­¬ng d­îc 45%"},
				{3735, "Néi lùc tiªu hao 45%"},
				{3736, "§iÓm b¹o kÝch t¨ng 35"},
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
		"Ta muèn ®æi NhÉn Ph¸ Hån/#Select_TypeChildKimXa(29000)",
		"Ta muèn ®æi D©y §eo NhiÕp T©m/#Select_TypeChildKimXa(29001)",
--		"Ta muèn ®æi Kim xµ Khëi Ph­îng (chñ yÕu néi c«ng)/#Select_TypeChildKimXa(34)",
	}
	tinsert(tSay, "\nT¹i h¹ ®Ó dµnh/nothing");
	Say("Dïng <color=gold>Ph¸ Hån LÖnh (Trang Søc)<color> cã thÓ hîp thµnh <color=gold>Trang Søc Ph¸ Hån,<color> dïng ngay?", getn(tSay), tSay);
end

function Select_TypeChildKimXa(nType)
	local tSay = {};
	for nTypeChild,nChildName in ChildEquipTableName[nType] do
		tinsert(tSay, nChildName.."/#SelectOption("..nType..","..nTypeChild..",0,0)")
	end
	tinsert(tSay, "\n§Ó ta suy nghÜ l¹i/nothing");
		
	Say("<color=gold>Trang Søc Ph¸ Hån<color> cã 2 thuéc tÝnh cè ®Þnh, 2 thuéc tÝnh Èn vµ 3 thuéc tÝnh tù chän:", getn(tSay), tSay);
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

function Ask(nType, nTypeChild)
	local tSay = {}
	tSayTitle = "";
	for key,value in OptionTable do
		tSayTitle = tSayTitle.."- Thuéc tÝnh "..key..": <color=gold>"..GetOptionName(nType, nTypeChild, key, value).."<color>\n";
	end
	
	tSayTitle = tSayTitle.."QuyÕt ®Þnh dïng <color=gold>Ph¸ Hån LÖnh (Trang Søc)<color> ®æi thµnh <color=gold>Trang Søc Ph¸ Hån<color>?\n";
	
	tinsert(tSay, "§ång ý ®æi/#Get_Item("..nType..","..nTypeChild..")")
	tinsert(tSay, "\n§Ó ta suy nghÜ l¹i/nothing")
	
	Say("Thuéc tÝnh lùa chän cña <color=gold>Trang Søc Ph¸ Hån<color> nh­ sau:\n"..tSayTitle, getn(tSay), tSay);
end

function Get_Item(nType, nTypeChild)
	if DelItemByIndex(nItem, 1) == 1 then
		local pifeng,pIndex	=AddItem(0,nTypeChild,nType,1,1,-1,-1,-1,-1,-1,-1,0,0)
		SetItemFeedUpAttrs(pIndex,3709,0,0,OptionTable[1],OptionTable[2],OptionTable[3])
		--FeedItem(pIndex,1000000)
		
		Msg2Player("B¹n nhËn ®­îc 1 Trang Søc Ph¸ Hån")
	end
end
