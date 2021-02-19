
function getRandomKX4(nSet)
	KXDH = {
		[1] = {
			[1056] = "Linh ho�t B",
			[1057] = "Th�n ph�p B",
		},
		[2] = {
			[1069] = "S�c m�nh B",
			[1070] = "G�n c�t B",
			[1071] = "N�i c�ng B",
			[1072] = "Sinh l�c B",
			[1073] = "T� l� sinh l�c B",
		},
		[3] = {
			[1079] = "Linh ho�t B",
			[1080] = "Th�n ph�p B",
		},
		[4] = {
			[1] = {
				[1092] = "Ph�n ��n ngo�i c�ng/1%B",
				[1093] = "Ph�n ��n n�i c�ng/1%B",
				[1094] = "T�ng s�t th��ng/1B",
				[1095] = "K�m theo ��c s�t/1B",
				[1096] = "T�ng s�t th��ng c� ��c/1B",
			},
			[2] = {
				[1108] = "Ph�n ��n ngo�i c�ng/1%B",
				[1109] = "Ph�n ��n n�i c�ng/1%B",
				[1110] = "T�ng s�t th��ng/1B",
				[1111] = "K�m theo ��c s�t/1B",
				[1112] = "T�ng s�t th��ng c� ��c/1B",
			},
			[3] = {
				[1123] = "T�ng t�c �� xu�t chi�u/1%B",
				[1124] = "Kh�ng t�t c� B",
				[1125] = "T�ng ch� m�nh/1%B",
			}
		}
	}
	
	KXTH = {
		[1] = {
			[1129] = "S�c m�nh B",
		},
		[2] = {
			[1143] = "Linh ho�t B",
			[1144] = "Th�n ph�p B",
			[1145] = "G�n c�t B",
			[1146] = "N�i c�ng B",
			[1147] = "Sinh l�c B",
			[1148] = "T� l� sinh l�c B",
		},
		[3] = {
			[1156] = "S�c m�nh B",
			[1157] = "G�n c�t B",
			[1158] = "Sinh l�c %B",
		},
		[4] = {
			[1] = {
				[1168] = "Ph�n ��n ngo�i c�ng/1B",
				[1169] = "Ph�n ��n n�i c�ng/1B",
				[1170] = "T�ng ngo�i c�ng/1%B",
				[1171] = "T�ng c�ng k�ch ngo�i c�ng/1B",
			},
			[2] = {
				[1181] = "Ph�n ��n ngo�i c�ng/1B",
				[1182] = "Ph�n ��n n�i c�ng/1B",
				[1183] = "T�ng ngo�i c�ng/1%B",
				[1184] = "T�ng c�ng k�ch ngo�i c�ng/1B",
			},
			[3] = {
				[1194] = "T�c �� di chuy�n/1%B",
				[1195] = "T�ng t�c �� xu�t chi�u/1%B",
				[1196] = "H�t sinh l�c B",
				[1197] = "Gi�m th� th��ng/1%B",
			}
		}
	}
	
	KXVD = {
		[1] = {
			[1201] = "N�i c�ng B",
		},
		[2] = {
			[1213] = "Linh ho�t B",
			[1214] = "Th�n ph�p B",
			[1215] = "G�n c�t B",
			[1216] = "Sinh l�c B",
			[1217] = "T� l� sinh l�c B",
		},
		[3] = {
			[1225] = "Linh ho�t B",
			[1226] = "Th�n ph�p B",
			[1227] = "N�i c�ng B",
		},
		[4] = {
			[1] = {
				[1237] = "T�ng n�i c�ng/1%B",
				[1238] = "T�ng c�ng k�ch n�i c�ng/1B",
				[1239] = "N�i c�ng l�n nh�t tr�n v� kh� t�ng/1B",
				[1240] = "N�i c�ng nh� nh�t tr�n v� kh� t�ng/1B",
			},
			[2] = {
				[1250] = "T�ng n�i c�ng/1%B",
				[1251] = "T�ng c�ng k�ch n�i c�ng/1B",
				[1252] = "N�i c�ng l�n nh�t tr�n v� kh� t�ng/1B",
				[1253] = "N�i c�ng nh� nh�t tr�n v� kh� t�ng/1B",
			},
			[3] = {
				[1263] = "T�c �� di chuy�n/1%B",
				[1264] = "T�ng t�c �� xu�t chi�u/1%B",
				[1265] = "Gi�m th� th��ng/1%B",
				[1266] = "T�ng ch� m�nh/1%B",
			}
		}
	}
	
	local tSet = {};
	if nSet == 26 then tSet = KXDH
	elseif nSet == 27 then tSet = KXTH
	elseif nSet == 28 then tSet = KXVD end;
	
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh�n kim x� th�nh c�ng!");
	end;
end;

function getRandomKX5(nSet)
	KXHC = {
		[1] = {
			[1955] = "Linh ho�t - V�ng",
			[1956] = "Th�n ph�p - V�ng",
		},
		[2] = {
			[1973] = "N�i c�ng - V�ng",
			[1974] = "S�c m�nh - V�ng",
			[1975] = "C�n c�t - V�ng",
			[1976] = "T�ng �i�m sinh l�c - V�ng",
			[1977] = "T�ng t� l� �i�m sinh l�c - V�ng",
		},
		[3] = {
			[1997] = "B�o k�ch - V�ng",
			[1999] = "T�ng �i�m s� ngo�i c�ng - V�ng",
			[2000] = "T�ng �i�m s� n�i c�ng - V�ng",
			[2001] = "T�ng �i�m s� n�i ngo�i - V�ng",
			[2002] = "To�n thu�c t�nh - V�ng",
		},
		[4] = {
			[2022] = "Ph�ng b�c - V�ng",
			[2023] = "Gi�m b�c - V�ng",
			[2024] = "H� gi�p ngo�i ph�ng - V�ng",
			[2025] = "H� gi�p n�i ph�ng - V�ng",
			[2026] = "H� gi�p n�i ngo�i ph�ng - V�ng",
			[2027] = "�i�m sinh l�c - V�ng",
		},
		[5] = {
			[2035] = "Linh ho�t - V�ng",
			[2036] = "Th�n ph�p - V�ng",
		},
		[6] = {
			[1] = {
				[2055] = "T�ng s�t th��ng - V�ng",
				[2056] = "C�ng k�ch k�m ��c - V�ng",
				[2057] = "S�t th��ng ��c tr�ng - V�ng",
			},
			[2] = {
				[2074] = "T�c �� ch�y - V�ng",
				[2075] = "Ph�t huy V� c�ng - V�ng",
				[2076] = "Gi�m n�a ch�u th��ng - V�ng",
				[2077] = "X�c su�t chu�n x�c - V�ng",
				[2078] = "To�n thu�c t�nh - V�ng",
			}
		}
	}
	
	KXQP = {
		[1] = {
			[2086] = "S�c m�nh - V�ng",
			[2087] = "C�n c�t - V�ng",
		},
		[2] = {
			[2104] = "N�i c�ng - V�ng",
			[2105] = "Th�n ph�p - V�ng",
			[2106] = "Linh ho�t - V�ng",
			[2107] = "�i�m sinh l�c - V�ng",
			[2108] = "T� l� �i�m sinh l�c - V�ng",
		},
		[3] = {
			[2128] = "B�o k�ch - V�ng",
			[2130] = "�i�m ngo�i c�ng - V�ng",
			[2131] = "�i�m n�i c�ng - V�ng",
			[2132] = "�i�m n�i ngo�i c�ng - V�ng",
			[2133] = "T�ng �i�m sinh l�c - V�ng",
		},
		[4] = {
			[2153] = "Ph�ng b�c - V�ng",
			[2154] = "Gi�m b�c - V�ng",
			[2155] = "H� gi�p ngo�i ph�ng - V�ng",
			[2156] = "H� gi�p n�i ph�ng - V�ng",
			[2157] = "H� gi�p n�i ngo�i ph�ng - V�ng",
			[2158] = "�i�m sinh l�c - V�ng",
		},
		[5] = {
			[2169] = "S�c m�nh - V�ng",
			[2170] = "C�n c�t - V�ng",
			[2171] = "T�ng t� l� �i�m sinh l�c - V�ng",
		},
		[6] = {
			[1] = {
				[2193] = "Gi�i h�n cao nh�t ngo�i c�ng v� kh� - v�ng ",
				[2194] = "Gi�i h�n th�p nh�t ngo�i c�ng v� kh� - V�ng",
				[2195] = "T� l� ngo�i c�ng - V�ng",
				[2196] = "�i�m t�ng c�ng k�ch ngo�i c�ng - V�ng",
			},
			[2] = {
				[2213] = "T�c �� ch�y - V�ng",
				[2214] = "Ph�t huy V� c�ng - V�ng",
				[2215] = "Gi�m n�a ch�u th��ng - V�ng",
				[2216] = "X�c su�t chu�n x�c - V�ng",
			}
		}
	}
	
	KXDV = {
		[1] = {
			[2225] = "N�i c�ng - V�ng",
			[2226] = "C�n c�t - V�ng",
		},
		[2] = {
			[2243] = "S�c m�nh - V�ng",
			[2244] = "Th�n ph�p - V�ng",
			[2245] = "Linh ho�t - V�ng",
			[2246] = "�i�m sinh l�c - V�ng",
			[2247] = "T� l� �i�m sinh l�c - V�ng",
		},
		[3] = {
			[2267] = "B�o k�ch - V�ng",
			[2269] = "�i�m ngo�i c�ng - V�ng",
			[2270] = "�i�m n�i c�ng - V�ng",
			[2271] = "�i�m n�i ngo�i c�ng - V�ng",
			[2272] = "T�ng �i�m sinh l�c - V�ng",
		},
		[4] = {
			[2292] = "Ph�ng b�c - V�ng",
			[2293] = "Gi�m b�c - V�ng",
			[2294] = "H� gi�p ngo�i ph�ng - V�ng",
			[2295] = "H� gi�p n�i ph�ng - V�ng",
			[2296] = "H� gi�p n�i ngo�i ph�ng - V�ng",
			[2297] = "�i�m sinh l�c - V�ng",
		},
		[5] = {
			[2308] = "N�i c�ng - V�ng",
			[2309] = "Th�n ph�p - V�ng",
			[2310] = "Linh ho�t - V�ng",
		},
		[6] = {
			[1] = {
				[2332] = "Gi�i h�n cao nh�t n�i c�ng v� kh� - V�ng",
				[2333] = "Gi�i h�n th�p nh�t n�i c�ng v� kh� - V�ng",
				[2334] = "T� l� n�i c�ng-v�ng",
				[2335] = "�i�m t�ng c�ng k�ch n�i c�ng- v�ng",
			},
			[2] = {
				[2352] = "T�c �� ch�y - V�ng",
				[2353] = "Ph�t huy V� c�ng - V�ng",
				[2354] = "Gi�m n�a ch�u th��ng - V�ng",
				[2355] = "X�c su�t chu�n x�c - V�ng",
				[2356] = "R�t ng�n ��ng t�c b� th��ng- V�ng",
			}
		}
	}

	local tSet = {};
	if nSet == 29 then tSet = KXHC
	elseif nSet == 30 then tSet = KXQP
	elseif nSet == 31 then tSet = KXDV end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh�n kim x� th�nh c�ng!");
	end;

end;

function getRandomKX6(nSet)
	KXDG = {
		[1] = {
			[2618] = {"S�c m�nh"},
			[2619] = {"G�n c�t"},
		},
		[2] = {
			[2631] = {"N�i c�ng"},
			[2632] = {"Th�n ph�p"},
			[2633] = {"Linh ho�t"},
			[2634] = {"�i�m sinh l�c"},
			[2635] = {"T� l� �i�m sinh l�c"},
		},
		[3] = {
			[2647] = {"B�o k�ch"},
			[2648] = {"�i�m ngo�i c�ng"},
			[2649] = {"�i�m n�i c�ng"},
			[2650] = {"�i�m n�i ngo�i c�ng"},
			[2651] = {"T�ng �i�m sinh l�c"},
		},
		[4] = {
			[2665] = {"Ph�ng b�c"},
			[2666] = {"Gi�m b�c"},
			[2667] = {"H� gi�p ngo�i ph�ng"},
			[2668] = {"H� gi�p n�i ph�ng"},
			[2669] = {"H� gi�p n�i ngo�i ph�ng"},
			[2670] = {"�i�m sinh l�c"},
		},
		[5] =  {
			[2678] = {"S�c m�nh"},
			[2679] = {"G�n c�t"},
			[2680] = {"T�ng t� l� �i�m sinh l�c"},
		},
		[6] = {
			[1] = { -- �o cho�ng v� huy ch��ng
				[2690] = {"Gi�i h�n cao nh�t ngo�i c�ng v� kh�"},
				[2691] = {"Gi�i h�n th�p nh�t ngo�i c�ng v� kh�"},
				[2692] = {"T� l� ngo�i c�ng"},
				[2693] = {"�i�m t�ng c�ng k�ch ngo�i c�ng"},
			},
			[2] = { -- Gi�y (154)
				[2703] = {"T�c �� ch�y"},
				[2704] = {"Ph�t huy v� c�ng"},
				[2705] = {"Gi�m n�a th� th��ng"},
				[2706] = {"X�c su�t chu�n x�c"},
			}
		}
	}
	
	KXHL = {
		[1] = {
			[2514] = {"Linh ho�t"},
			[2515] = {"Th�n Ph�p"},
		},
		[2] = {
			[2527] = {"N�i c�ng"},
			[2528] = {"S�c m�nh"},
			[2529] = {"G�n c�t"},
			[2530] = {"�i�m sinh l�c"},
			[2531] = {"T� l� �i�m sinh l�c"},
		},
		[3] = {
			[2543] = {"B�o k�ch"},
			[2544] = {"�i�m ngo�i c�ng"},
			[2545] = {"�i�m n�i c�ng"},
			[2546] = {"�i�m n�i ngo�i c�ng"},
			[2547] = {"T�ng �i�m sinh l�c"},
		},
		[4] = {
			[2561] = {"Ph�ng b�c"},
			[2562] = {"Gi�m b�c"},
			[2563] = {"H� gi�p ngo�i ph�ng"},
			[2564] = {"H� gi�p n�i ph�ng"},
			[2565] = {"H� gi�p n�i ngo�i ph�ng"},
			[2566] = {"�i�m sinh m�nh"},
		},
		[5] = {
			[2572] = {"Linh ho�t"},
			[2573] = {"Th�n ph�p"},
		},
		[6] = {
			[1] = {
				[2583] = {"T�ng s�t th��ng"},
				[2584] = {"C�ng k�ch k�m ��c"},
				[2585] = {"S�t th��ng ��c tr�ng"},
				[2586] = {"T� l� kh�ng tr�ng th�i b�t th��ng"},
			},
			[2] = {
				[2608] = {"T�c �� ch�y"},
				[2609] = {"Ph�t huy V� c�ng"},
				[2610] = {"Gi�m n�a ch�u th��ng"},
				[2611] = {"X�c su�t chu�n x�c"},
				[2612] = {"To�n thu�c t�nh"},
			}
		}
	}
	
	KXKP = {
		[1] = {
			[2712] = {"N�i c�ng"},
			[2713] = {"G�n c�t"},
		},
		[2] = {
			[2725] = {"S�c m�nh"},
			[2726] = {"Th�n ph�p"},
			[2727] = {"Linh ho�t"},
			[2728] = {"�i�m sinh l�c"},
			[2729] =  {"T� l� �i�m sinh l�c"},
		},
		[3] = {
			[2741] = {"B�o k�ch"},
			[2742] = {"�i�m ngo�i c�ng"},
			[2743] = {"�i�m n�i c�ng"},
			[2744] = {"�i�m n�i ngo�i c�ng"},
			[2745] = {"T�ng �i�m sinh l�c"},
		},
		[4] = {
			[2759] = {"Ph�ng b�c"},
			[2760] = {"Gi�m b�c"},
			[2761] = {"H� gi�p ngo�i ph�ng"},
			[2762] = {"H� gi�p n�i ph�ng"},
			[2763] = {"H� gi�p n�i ngo�i ph�ng"},
			[2764] = {"�i�m sinh l�c"},
		},
		[5] = {
			[2772] = {"N�i c�ng"},
			[2773] = {"Th�n ph�p"},
			[2774] = {"Linh ho�t"},
		},
		[6] = {
			[1] = {
				[2784] = {"Gi�i h�n cao nh�t n�i c�ng v� kh�"},
				[2785] = {"Gi�i h�n th�p nh�t n�i c�ng v� kh�"},
				[2786] = {"T�ng n�i c�ng"},
				[2787] = {"�i�m c�ng k�ch n�i c�ng"},
			},
			[2] = {
				[2803] = {"R�t ng�n th�i gian th� th��ng"},
				[2799] = {"T�c �� ch�y"},
				[2800] = {"Ph�t huy v� c�ng"},
				[2801] = {"Gi�m n�a th� th��ng"},
				[2802] = {"X�c su�t chu�n x�c"},
			}
		}
	}

	local tSet = {};
	if nSet == 32 then tSet = KXHL
	elseif nSet == 33 then tSet = KXDG
	elseif nSet == 34 then tSet = KXKP end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh�n kim x� th�nh c�ng!");
	end;
end


function getRandomKX7(nSet)
	
	KXSL = {
		[1] = {
			[3388]="Linh ho�t",
			[3389]="Th�n ph�p",
		},
		[2] = {
			[3401] = "N�i c�ng",
			[3402] = "S�c m�nh",
			[3403] = "C�n c�t",
			[3404] = "T�ng �i�m sinh l�c",
			[3405] = "T�ng t� l� �i�m sinh l�c",
		},
		[3] = {
			[3417] = "B�o k�ch",
			[3418] = "T�ng �i�m s� ngo�i c�ng",
			[3419] = "T�ng �i�m s� n�i c�ng",
			[3420] = "T�ng �i�m s� n�i ngo�i",
			[3421] = "To�n thu�c t�nh",
		},
		[4] = {
			[3435] = "Ph�ng b�c",
			[3436] = "Gi�m b�c",
			[3437] = "H� gi�p ngo�i ph�ng",
			[3438] = "H� gi�p n�i ph�ng",
			[3439] = "H� gi�p n�i ngo�i ph�ng",
			[3440] = "�i�m sinh l�c",
		},
		[5] = {
			[3446] = "Linh ho�t",
			[3447] = "Th�n ph�p",
		},
		[6] = {
			[1] = {
				[3457] = "T�ng s�t th��ng",
				[3458] = "C�ng k�ch k�m ��c",
				[3459] = "S�t th��ng ��c tr�ng",
			},
			[2] = {
				[3468] = "T�ng s�t th��ng",
				[3469] = "C�ng k�ch k�m ��c",
				[3470] = "S�t th��ng ��c tr�ng",
			},
			[3] = {
				[3482] = "T�c �� ch�y",
				[3483] = "Ph�t huy V� c�ng",
				[3484] = "Gi�m n�a ch�u th��ng",
				[3485] = "X�c su�t chu�n x�c",
				[3486] = "To�n thu�c t�nh",
			}
		}
	}

	KXNN = {
		[1] = {
			[3492] = "S�c m�nh",
			[3493] = "C�n c�t",
		},
		[2] = {
			[3505] = "N�i c�ng",
			[3506] = "Th�n ph�p",
			[3507] = "Linh ho�t",
			[3508] = "�i�m sinh l�c",
			[3509] = "T� l� �i�m sinh l�c",
		},
		[3] = {
			[3521] = "B�o k�ch",
			[3522] = "�i�m ngo�i c�ng",
			[3523] = "�i�m n�i c�ng",
			[3524] = "�i�m n�i ngo�i c�ng",
			[3525] = "T�ng �i�m sinh l�c",
		},
		[4] = {
			[3539] = "Ph�ng b�c",
			[3540] = "Gi�m b�c",
			[3541] = "H� gi�p ngo�i ph�ng",
			[3542] = "H� gi�p n�i ph�ng",
			[3543] = "H� gi�p n�i ngo�i ph�ng",
			[3544] = "�i�m sinh l�c",
		},
		[5] = {
			[3552] = "S�c m�nh",
			[3553] = "C�n c�t",
			[3554] = "T�ng t� l� �i�m sinh l�c",
		},
		[6] = {
			[1] = {
				[3564] = "Gi�i h�n cao nh�t ngo�i c�ng v� kh� ",
				[3565] = "Gi�i h�n th�p nh�t ngo�i c�ng v� kh�",
				[3566] = "T� l� ngo�i c�ng",
				[3567] = "�i�m t�ng c�ng k�ch ngo�i c�ng",
			},
			[2] = {
				[3577] = "T�c �� ch�y",
				[3578] = "Ph�t huy V� c�ng",
				[3579] = "Gi�m n�a ch�u th��ng",
				[3580] = "X�c su�t chu�n x�c",
			}
		}
	}
			
	KXMS = {
		[1] = {
			[3586] = "N�i c�ng",
			[3587] = "C�n c�t",
		},
		[2] = {
			[3599] = "S�c m�nh",
			[3600] = "Th�n ph�p",
			[3601] = "Linh ho�t",
			[3602] = "�i�m sinh l�c",
			[3603] = "T� l� �i�m sinh l�c",
		},
		[3] = {
			[3615] = "B�o k�ch",
			[3616] = "�i�m ngo�i c�ng",
			[3617] = "�i�m n�i c�ng",
			[3618] = "�i�m n�i ngo�i c�ng",
			[3619] = "T�ng �i�m sinh l�c",
		},
		[4] = {
			[3633] = "Ph�ng b�c",
			[3634] = "Gi�m b�c",
			[3635] = "H� gi�p ngo�i ph�ng",
			[3636] = "H� gi�p n�i ph�ng",
			[3637] = "H� gi�p n�i ngo�i ph�ng",
			[3638] = "�i�m sinh l�c",
		},
		[5] = {
			[3646] = "N�i c�ng",
			[3647] = "Th�n ph�p",
			[3648] = "Linh ho�t",
		},
		[6] = {
			[1] = {
				[3658] = "Gi�i h�n cao nh�t n�i c�ng v� kh�",
				[3659] = "Gi�i h�n th�p nh�t n�i c�ng v� kh�",
				[3660] = "T� l� n�i c�ng-v�ng",
				[3661] = "�i�m t�ng c�ng k�ch n�i c�ng- v�ng",
			},
			[2] = {
				[3673] = "T�c �� ch�y",
				[3674] = "Ph�t huy V� c�ng",
				[3675] = "Gi�m n�a ch�u th��ng",
				[3676] = "X�c su�t chu�n x�c",
				[3677] = "R�t ng�n ��ng t�c b� th��ng- V�ng",
			}
		}
	}
	local tSet = {};
	if nSet == 35 then tSet = KXSL
	elseif nSet == 36 then tSet = KXNN
	elseif nSet == 37 then tSet = KXMS end;
	if addSetofKX(tSet, nSet) == 1 then 
		Msg2Player("Nh�n kim x� th�nh c�ng!");
	end;
end;



function showKX7()
	tSay = {
		"S�t Lang/#getRandomKX7(35)",
		"Nhu� Nha/#getRandomKX7(36)",
		"M�ng S�t/#getRandomKX7(37)",
	}
	tinsert(tSay,"Ch�a mu�n nh�n/nothing");
	Say("Ch�n lo�i kim x�",getn(tSay),tSay);
end;

function showKX6()
	tSay = {
		"Hoan L�ng/#getRandomKX6(32)",
		"��ng Giao/#getRandomKX6(33)",
		"Kh�i Ph��ng/#getRandomKX6(34)",
	}
	tinsert(tSay,"Ch�a mu�n nh�n/nothing");
	Say("Ch�n lo�i kim x�",getn(tSay),tSay);
end;

function showKX5()
	tSay = {
		"Hi�p c�t/#getRandomKX5(29)",
		"Qu� ph�/#getRandomKX5(30)",
		"��ng v�n/#getRandomKX5(31)",
	}
	tinsert(tSay,"Ch�a mu�n nh�n/nothing");
	Say("Ch�n lo�i kim x�",getn(tSay),tSay);
end;


function showKX4()
	tSay = {
		"Du hi�p/#getRandomKX4(26)",
		"Thi�t huy�t/#getRandomKX4(27)",
		"V�n du/#getRandomKX4(28)",
	}
	tinsert(tSay,"Ch�a mu�n nh�n/nothing");
	Say("Ch�n lo�i kim x�",getn(tSay),tSay);
end;

function addSetofKX(tSet, nSet)
	local r1,r2,r3,r4,r5,r6;
	-- Add Phi phong
	r1,r2,r3,r4,r5,r6 = getIndexs(tSet,1);
	AddKX(152,nSet,r1,r2,r3,r4,r5,r6);
	-- Add Huy ch��ng
	r1,r2,r3,r4,r5,r6 = getIndexs(tSet,2);
	AddKX(153,nSet,r1,r2,r3,r4,r5,r6);
	-- Add Chi�n h�i
	r1,r2,r3,r4,r5,r6 = getIndexs(tSet,3);
	AddKX(154,nSet,r1,r2,r3,r4,r5,r6);
	return 1;
end

function getIndexs(tList,nPos)
	local tSubList = {}
	local nListLen = getn(tList);
	
	if nPos == 1 then
		tSubList = tList[nListLen][1];
	elseif nPos == 2 then
		if getn(tList[nListLen]) == 3 then
			tSubList = tList[nListLen][2];
		else
			tSubList = tList[nListLen][1];
		end
	elseif nPos == 3 then
		if getn(tList[nListLen]) == 3 then 
			tSubList = tList[nListLen][3];
		else
			tSubList = tList[nListLen][2];
		end
	end
	
	local r1,r2,r3,r4,r5,r6;
	if nListLen == 6 then 			
		r1 = getRandomIndex(tList[1]);
		r2 = getRandomIndex(tList[2]);
		r3 = getRandomIndex(tList[3]);
		r4 = getRandomIndex(tList[4]);
		r5 = getRandomIndex(tList[5]);
		r6 = getRandomIndex(tSubList);
		-- print(r1,r2,r3,r4,r5,r6);
	elseif nListLen == 4 then 
		r1 = getRandomIndex(tList[1]);
		r2 = getRandomIndex(tList[2]);
		r3 = getRandomIndex(tList[3]);
		r4 = getRandomIndex(tSubList);
	end
		
	return r1,r2,r3,r4,r5,r6;
end;

function getRandomIndex(tList)
	local nIndexResult = -1;
	if tList == nil then 
		return 0
	end
	local nRandNum = random(tlen(tList));
	local i = 0;
	for k,v in tList do 
		i = i+1;
		if i == nRandNum then
			nIndexResult = k;
			break
		end
	end
	return nIndexResult;
end;

function tlen(tList)
	local i = 0;
	for k,v in tList do 
		i = i+1;
	end
	return i;
end;

function AddKX(nType,nSet,ID1,ID2,ID3,ID4,ID5,ID6)
	local nResult,nItemIndex = AddItem(0,nType,nSet,1,4,-1,-1,-1,-1,-1,-1,0,15)
    FeedItem(nItemIndex,1000000)
	if ID5 ~= nil and ID6 ~= nil then 
		SetItemFeedUpAttrs(nItemIndex,ID1,ID2,ID3,ID4,ID5,ID6);
	else
		SetItemFeedUpAttrs(nItemIndex,ID1,ID2,0,ID3,0,ID4);
	end
end
