Include("\\script\\vng\\lib\\vnglib_award.lua");
szNpcName = "<color=green>Th��ng Nh�n B�o R��ng: <color>"
tbDieuDuong = {
	[1] = {"Di�u D��ng-�� N�n T�n Gi� B�o",{0,100,3064},{0,100,3128,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[2] = {"Di�u D��ng-�� N�n T�n Gi� B�o",{0,100,3065},{0,100,3129,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[3] = {"Di�u D��ng-�� Ki�p T�n Gi� B�o",{0,100,3066},{0,100,3130,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[4] = {"Di�u D��ng-�� Ki�p T�n Gi� B�o",{0,100,3067},{0,100,3131,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[5] = {"Di�u D��ng-�� �ch T�n Gi� B�o",{0,100,3068},{0,100,3132,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[6] = {"Di�u D��ng-�� �ch T�n Gi� B�o",{0,100,3069},{0,100,3133,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[7] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Y",{0,100,3070},{0,100,3134,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[8] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Y",{0,100,3071},{0,100,3135,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[9] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Y",{0,100,3072},{0,100,3136,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[10] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Y",{0,100,3073},{0,100,3137,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[11] = {"Di�u D��ng-Ph�t V�n Th�nh C� Y",{0,100,3074},{0,100,3138,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[12] = {"Di�u D��ng-Ph�t V�n Th�nh C� Y",{0,100,3075},{0,100,3139,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[13] = {"Di�u D��ng-Ph�t Tr�n Th�nh C� Y",{0,100,3076},{0,100,3140,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[14] = {"Di�u D��ng-Ph�t Tr�n Th�nh C� Y",{0,100,3077},{0,100,3141,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[15] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i Y",{0,100,3078},{0,100,3142,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[16] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i Y",{0,100,3079},{0,100,3143,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[17] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i Y",{0,100,3080},{0,100,3144,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[18] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i Y",{0,100,3081},{0,100,3145,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[19] = {"Di�u D��ng-Du Long ��a Kh�t Y",{0,100,3082},{0,100,3146,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[20] = {"Di�u D��ng-Du Long ��a Kh�t Y",{0,100,3083},{0,100,3147,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[21] = {"Di�u D��ng-Du Long ��a Kh�t Y",{0,100,3084},{0,100,3148,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[22] = {"Di�u D��ng-Du Long ��a Kh�t Y",{0,100,3085},{0,100,3149,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[23] = {"Di�u D��ng-V� C�c Thi�n T�n B�o",{0,100,3086},{0,100,3150,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[24] = {"Di�u D��ng-V� C�c Thi�n T�n B�o",{0,100,3087},{0,100,3151,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[25] = {"Di�u D��ng-V� C�c Thi�n T�n B�o",{0,100,3088},{0,100,3152,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[26] = {"Di�u D��ng-V� C�c Thi�n T�n B�o",{0,100,3089},{0,100,3153,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[27] = {"Di�u D��ng-B�ch L�c Thi�n T�n B�o",{0,100,3090},{0,100,3154,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[28] = {"Di�u D��ng-B�ch L�c Thi�n T�n B�o",{0,100,3091},{0,100,3155,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[29] = {"Di�u D��ng-B�ch L�c Thi�n T�n B�o",{0,100,3092},{0,100,3156,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[30] = {"Di�u D��ng-B�ch L�c Thi�n T�n B�o",{0,100,3093},{0,100,3157,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[31] = {"Di�u D��ng-C�m Thi�n ��u H�n Gi�p",{0,100,3094},{0,100,3158,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[32] = {"Di�u D��ng-C�m Thi�n ��u H�n Gi�p",{0,100,3095},{0,100,3159,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[33] = {"Di�u D��ng-C�m Thi�n ��u H�n Gi�p",{0,100,3096},{0,100,3160,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[34] = {"Di�u D��ng-C�m Thi�n ��u H�n Gi�p",{0,100,3097},{0,100,3161,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[35] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Gi�p",{0,100,3098},{0,100,3162,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[36] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Gi�p",{0,100,3099},{0,100,3163,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[37] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Gi�p",{0,100,3100},{0,100,3164,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[38] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Gi�p",{0,100,3101},{0,100,3165,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[39] = {"Di�u D��ng-Qu� X�c T� Th�n Y",{0,100,3102},{0,100,3166,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[40] = {"Di�u D��ng-Qu� X�c T� Th�n Y",{0,100,3103},{0,100,3167,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[41] = {"Di�u D��ng-Qu� X�c T� Th�n Y",{0,100,3104},{0,100,3168,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[42] = {"Di�u D��ng-Qu� X�c T� Th�n Y",{0,100,3105},{0,100,3169,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[43] = {"Di�u D��ng-Vu C�t ��c V��ng Y",{0,100,3106},{0,100,3170,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[44] = {"Di�u D��ng-Vu C�t ��c V��ng Y",{0,100,3107},{0,100,3171,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[45] = {"Di�u D��ng-Vu C�t ��c V��ng Y",{0,100,3108},{0,100,3172,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[46] = {"Di�u D��ng-Vu C�t ��c V��ng Y",{0,100,3109},{0,100,3173,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[47] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n B�o",{0,100,3110},{0,100,3174,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[48] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n B�o",{0,100,3111},{0,100,3175,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[49] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n Y",{0,100,3112},{0,100,3176,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[50] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n Y",{0,100,3113},{0,100,3177,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[51] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n Y",{0,100,3114},{0,100,3178,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[52] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n Y",{0,100,3115},{0,100,3179,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[53] = {"Di�u D��ng-C�u Thi�n Qu� Ph� B�o",{0,100,3116},{0,100,3180,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[54] = {"Di�u D��ng-C�u Thi�n Qu� Ph� B�o",{0,100,3117},{0,100,3181,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[55] = {"Di�u D��ng-C�u Thi�n Qu� Ph� B�o",{0,100,3118},{0,100,3182,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[56] = {"Di�u D��ng-C�u Thi�n Qu� Ph� B�o",{0,100,3119},{0,100,3183,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[57] = {"Di�u D��ng-Ma �nh Th�n T�ng B�o",{0,100,3120},{0,100,3184,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[58] = {"Di�u D��ng-Ma �nh Th�n T�ng B�o",{0,100,3121},{0,100,3185,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[59] = {"Di�u D��ng-Ma �nh Th�n T�ng B�o",{0,100,3122},{0,100,3186,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[60] = {"Di�u D��ng-Ma �nh Th�n T�ng B�o",{0,100,3123},{0,100,3187,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[61] = {"Di�u D��ng-T� V�n Ti�n T� Y",{0,100,3124},{0,100,3188,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[62] = {"Di�u D��ng-T� V�n Ti�n T� Y",{0,100,3125},{0,100,3189,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[63] = {"Di�u D��ng-Phi H� Ti�n T� Y",{0,100,3126},{0,100,3190,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[64] = {"Di�u D��ng-Phi H� Ti�n T� Y",{0,100,3127},{0,100,3191,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[65] = {"Di�u D��ng-�� N�n T�n Gi� M�o",{0,103,3064},{0,103,3128,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[66] = {"Di�u D��ng-�� N�n T�n Gi� M�o",{0,103,3065},{0,103,3129,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[67] = {"Di�u D��ng-�� Ki�p T�n Gi� M�o",{0,103,3066},{0,103,3130,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[68] = {"Di�u D��ng-�� Ki�p T�n Gi� M�o",{0,103,3067},{0,103,3131,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[69] = {"Di�u D��ng-�� �ch T�n Gi� M�o",{0,103,3068},{0,103,3132,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[70] = {"Di�u D��ng-�� �ch T�n Gi� M�o",{0,103,3069},{0,103,3133,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[71] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Qu�n",{0,103,3070},{0,103,3134,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[72] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Qu�n",{0,103,3071},{0,103,3135,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[73] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Qu�n",{0,103,3072},{0,103,3136,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[74] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Qu�n",{0,103,3073},{0,103,3137,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[75] = {"Di�u D��ng-Ph�t V�n Th�nh C� Tr�m",{0,103,3074},{0,103,3138,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[76] = {"Di�u D��ng-Ph�t V�n Th�nh C� Tr�m",{0,103,3075},{0,103,3139,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[77] = {"Di�u D��ng-Ph�t Tr�n Th�nh C� Tr�m",{0,103,3076},{0,103,3140,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[78] = {"Di�u D��ng-Ph�t Tr�n Th�nh C� Tr�m",{0,103,3077},{0,103,3141,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[79] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i C�n",{0,103,3078},{0,103,3142,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[80] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i C�n",{0,103,3079},{0,103,3143,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[81] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i C�n",{0,103,3080},{0,103,3144,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[82] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i C�n",{0,103,3081},{0,103,3145,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[83] = {"Di�u D��ng-Du Long ��a Kh�t C�n",{0,103,3082},{0,103,3146,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[84] = {"Di�u D��ng-Du Long ��a Kh�t C�n",{0,103,3083},{0,103,3147,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[85] = {"Di�u D��ng-Du Long ��a Kh�t C�n",{0,103,3084},{0,103,3148,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[86] = {"Di�u D��ng-Du Long ��a Kh�t C�n",{0,103,3085},{0,103,3149,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[87] = {"Di�u D��ng-V� C�c Thi�n T�n Qu�n",{0,103,3086},{0,103,3150,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[88] = {"Di�u D��ng-V� C�c Thi�n T�n Qu�n",{0,103,3087},{0,103,3151,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[89] = {"Di�u D��ng-V� C�c Thi�n T�n Qu�n",{0,103,3088},{0,103,3152,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[90] = {"Di�u D��ng-V� C�c Thi�n T�n Qu�n",{0,103,3089},{0,103,3153,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[91] = {"Di�u D��ng-B�ch L�c Thi�n T�n Qu�n",{0,103,3090},{0,103,3154,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[92] = {"Di�u D��ng-B�ch L�c Thi�n T�n Qu�n",{0,103,3091},{0,103,3155,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[93] = {"Di�u D��ng-B�ch L�c Thi�n T�n Qu�n",{0,103,3092},{0,103,3156,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[94] = {"Di�u D��ng-B�ch L�c Thi�n T�n Qu�n",{0,103,3093},{0,103,3157,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[95] = {"Di�u D��ng-C�m Thi�n ��u H�n Kh�i",{0,103,3094},{0,103,3158,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[96] = {"Di�u D��ng-C�m Thi�n ��u H�n Kh�i",{0,103,3095},{0,103,3159,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[97] = {"Di�u D��ng-C�m Thi�n ��u H�n Kh�i",{0,103,3096},{0,103,3160,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[98] = {"Di�u D��ng-C�m Thi�n ��u H�n Kh�i",{0,103,3097},{0,103,3161,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[99] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Kh�i",{0,103,3098},{0,103,3162,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[100] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Kh�i",{0,103,3099},{0,103,3163,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[101] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Kh�i",{0,103,3100},{0,103,3164,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[102] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Kh�i",{0,103,3101},{0,103,3165,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[103] = {"Di�u D��ng-Qu� X�c T� Th�n C�n",{0,103,3102},{0,103,3166,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[104] = {"Di�u D��ng-Qu� X�c T� Th�n C�n",{0,103,3103},{0,103,3167,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[105] = {"Di�u D��ng-Qu� X�c T� Th�n C�n",{0,103,3104},{0,103,3168,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[106] = {"Di�u D��ng-Qu� X�c T� Th�n C�n",{0,103,3105},{0,103,3169,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[107] = {"Di�u D��ng-Vu C�t ��c V��ng C�n",{0,103,3106},{0,103,3170,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[108] = {"Di�u D��ng-Vu C�t ��c V��ng C�n",{0,103,3107},{0,103,3171,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[109] = {"Di�u D��ng-Vu C�t ��c V��ng C�n",{0,103,3108},{0,103,3172,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[110] = {"Di�u D��ng-Vu C�t ��c V��ng C�n",{0,103,3109},{0,103,3173,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[111] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n Qu�n",{0,103,3110},{0,103,3174,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[112] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n Qu�n",{0,103,3111},{0,103,3175,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[113] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n C�n",{0,103,3112},{0,103,3176,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[114] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n C�n",{0,103,3113},{0,103,3177,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[115] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n C�n",{0,103,3114},{0,103,3178,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[116] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n C�n",{0,103,3115},{0,103,3179,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[117] = {"Di�u D��ng-C�u Thi�n Qu� Ph� Qu�n",{0,103,3116},{0,103,3180,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[118] = {"Di�u D��ng-C�u Thi�n Qu� Ph� Qu�n",{0,103,3117},{0,103,3181,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[119] = {"Di�u D��ng-C�u Thi�n Qu� Ph� Qu�n",{0,103,3118},{0,103,3182,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[120] = {"Di�u D��ng-C�u Thi�n Qu� Ph� Qu�n",{0,103,3119},{0,103,3183,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[121] = {"Di�u D��ng-Ma �nh Th�n T�ng Qu�n",{0,103,3120},{0,103,3184,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[122] = {"Di�u D��ng-Ma �nh Th�n T�ng Qu�n",{0,103,3121},{0,103,3185,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[123] = {"Di�u D��ng-Ma �nh Th�n T�ng Qu�n",{0,103,3122},{0,103,3186,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[124] = {"Di�u D��ng-Ma �nh Th�n T�ng Qu�n",{0,103,3123},{0,103,3187,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[125] = {"Di�u D��ng-T� V�n Ti�n T� Tr�m",{0,103,3124},{0,103,3188,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[126] = {"Di�u D��ng-T� V�n Ti�n T� Tr�m",{0,103,3125},{0,103,3189,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[127] = {"Di�u D��ng-Phi H� Ti�n T� Tr�m",{0,103,3126},{0,103,3190,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[128] = {"Di�u D��ng-Phi H� Ti�n T� Tr�m",{0,103,3127},{0,103,3191,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[129] = {"Di�u D��ng-�� N�n T�n Gi� Trang",{0,101,3064},{0,101,3128,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[130] = {"Di�u D��ng-�� N�n T�n Gi� Trang",{0,101,3065},{0,101,3129,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[131] = {"Di�u D��ng-�� Ki�p T�n Gi� Trang",{0,101,3066},{0,101,3130,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[132] = {"Di�u D��ng-�� Ki�p T�n Gi� Trang",{0,101,3067},{0,101,3131,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[133] = {"Di�u D��ng-�� �ch T�n Gi� Trang",{0,101,3068},{0,101,3132,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[134] = {"Di�u D��ng-�� �ch T�n Gi� Trang",{0,101,3069},{0,101,3133,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[135] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Trang",{0,101,3070},{0,101,3134,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[136] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Trang",{0,101,3071},{0,101,3135,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[137] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Trang",{0,101,3072},{0,101,3136,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[138] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Trang",{0,101,3073},{0,101,3137,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[139] = {"Di�u D��ng-Ph�t V�n Th�nh C� Qu�n",{0,101,3074},{0,101,3138,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[140] = {"Di�u D��ng-Ph�t V�n Th�nh C� Qu�n",{0,101,3075},{0,101,3139,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[141] = {"Di�u D��ng-Ph�t Tr�n Th�nh C� Qu�n",{0,101,3076},{0,101,3140,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[142] = {"Di�u D��ng-Ph�t Tr�n Th�nh C� Qu�n",{0,101,3077},{0,101,3141,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[143] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i Trang",{0,101,3078},{0,101,3142,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[144] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i Trang",{0,101,3079},{0,101,3143,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[145] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i Trang",{0,101,3080},{0,101,3144,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[146] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i Trang",{0,101,3081},{0,101,3145,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[147] = {"Di�u D��ng-Du Long ��a Kh�t Trang",{0,101,3082},{0,101,3146,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[148] = {"Di�u D��ng-Du Long ��a Kh�t Trang",{0,101,3083},{0,101,3147,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[149] = {"Di�u D��ng-Du Long ��a Kh�t Trang",{0,101,3084},{0,101,3148,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[150] = {"Di�u D��ng-Du Long ��a Kh�t Trang",{0,101,3085},{0,101,3149,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[151] = {"Di�u D��ng-V� C�c Thi�n T�n Trang",{0,101,3086},{0,101,3150,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[152] = {"Di�u D��ng-V� C�c Thi�n T�n Trang",{0,101,3087},{0,101,3151,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[153] = {"Di�u D��ng-V� C�c Thi�n T�n Trang",{0,101,3088},{0,101,3152,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[154] = {"Di�u D��ng-V� C�c Thi�n T�n Trang",{0,101,3089},{0,101,3153,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[155] = {"Di�u D��ng-B�ch L�c Thi�n T�n Trang",{0,101,3090},{0,101,3154,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[156] = {"Di�u D��ng-B�ch L�c Thi�n T�n Trang",{0,101,3091},{0,101,3155,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[157] = {"Di�u D��ng-B�ch L�c Thi�n T�n Trang",{0,101,3092},{0,101,3156,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[158] = {"Di�u D��ng-B�ch L�c Thi�n T�n Trang",{0,101,3093},{0,101,3157,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[159] = {"Di�u D��ng-C�m Thi�n ��u H�n Trang",{0,101,3094},{0,101,3158,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[160] = {"Di�u D��ng-C�m Thi�n ��u H�n Trang",{0,101,3095},{0,101,3159,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[161] = {"Di�u D��ng-C�m Thi�n ��u H�n Trang",{0,101,3096},{0,101,3160,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[162] = {"Di�u D��ng-C�m Thi�n ��u H�n Trang",{0,101,3097},{0,101,3161,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[163] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Trang",{0,101,3098},{0,101,3162,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[164] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Trang",{0,101,3099},{0,101,3163,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[165] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Trang",{0,101,3100},{0,101,3164,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[166] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Trang",{0,101,3101},{0,101,3165,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[167] = {"Di�u D��ng-Qu� X�c T� Th�n Trang",{0,101,3102},{0,101,3166,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[168] = {"Di�u D��ng-Qu� X�c T� Th�n Trang",{0,101,3103},{0,101,3167,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[169] = {"Di�u D��ng-Qu� X�c T� Th�n Trang",{0,101,3104},{0,101,3168,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[170] = {"Di�u D��ng-Qu� X�c T� Th�n Trang",{0,101,3105},{0,101,3169,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[171] = {"Di�u D��ng-Vu C�t ��c V��ng Trang",{0,101,3106},{0,101,3170,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[172] = {"Di�u D��ng-Vu C�t ��c V��ng Trang",{0,101,3107},{0,101,3171,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[173] = {"Di�u D��ng-Vu C�t ��c V��ng Trang",{0,101,3108},{0,101,3172,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[174] = {"Di�u D��ng-Vu C�t ��c V��ng Trang",{0,101,3109},{0,101,3173,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[175] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n Trang",{0,101,3110},{0,101,3174,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[176] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n Trang",{0,101,3111},{0,101,3175,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[177] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n Trang",{0,101,3112},{0,101,3176,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[178] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n Trang",{0,101,3113},{0,101,3177,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[179] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n Trang",{0,101,3114},{0,101,3178,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[180] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n Trang",{0,101,3115},{0,101,3179,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[181] = {"Di�u D��ng-C�u Thi�n Qu� Ph� Trang",{0,101,3116},{0,101,3180,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[182] = {"Di�u D��ng-C�u Thi�n Qu� Ph� Trang",{0,101,3117},{0,101,3181,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[183] = {"Di�u D��ng-C�u Thi�n Qu� Ph� Trang",{0,101,3118},{0,101,3182,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[184] = {"Di�u D��ng-C�u Thi�n Qu� Ph� Trang",{0,101,3119},{0,101,3183,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[185] = {"Di�u D��ng-Ma �nh Th�n T�ng Trang",{0,101,3120},{0,101,3184,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[186] = {"Di�u D��ng-Ma �nh Th�n T�ng Trang",{0,101,3121},{0,101,3185,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[187] = {"Di�u D��ng-Ma �nh Th�n T�ng Trang",{0,101,3122},{0,101,3186,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[188] = {"Di�u D��ng-Ma �nh Th�n T�ng Trang",{0,101,3123},{0,101,3187,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[189] = {"Di�u D��ng-T� V�n Ti�n T� Qu�n",{0,101,3124},{0,101,3188,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[190] = {"Di�u D��ng-T� V�n Ti�n T� Qu�n",{0,101,3125},{0,101,3189,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[191] = {"Di�u D��ng-Phi H� Ti�n T�",{0,101,3126},{0,101,3190,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[192] = {"Di�u D��ng-Phi H� Ti�n T�",{0,101,3127},{0,101,3191,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[193] = {"Di�u D��ng-�� N�n T�n Gi� Ph�t �ao",{0,3,8972},{0,3,8992,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[194] = {"Di�u D��ng-�� Ki�p T�n Gi� Ph�t Th�",{0,0,8973},{0,0,8993,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[195] = {"Di�u D��ng-�� �ch T�n Gi� Ph�t Tr��ng",{0,8,8974},{0,8,8994,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[196] = {"Di�u D��ng-V�n Ki�p Th�nh Th� Tr�m",{0,1,8975},{0,1,8995,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[197] = {"Di�u D��ng-Ph�t V�n Th�nh C� Li�n Ki�m",{0,2,8976},{0,2,8996,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[198] = {"Di�u D��ng-Ph�t Tr�n Th�nh C� C�m",{0,10,8977},{0,10,8997,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[199] = {"Di�u D��ng-Tr�c Ph�ng Thi�n C�i Th�",{0,0,8978},{0,0,8998,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[200] = {"Di�u D��ng-Du Long ��a Kh�t C�n",{0,5,8979},{0,5,8999,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[201] = {"Di�u D��ng-V� C�c Thi�n T�n T�c Ki�m",{0,2,8980},{0,2,9000,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[202] = {"Di�u D��ng-B�ch L�c Thi�n T�n B�t",{0,9,8981},{0,9,9001,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[203] = {"Di�u D��ng-C�m Thi�n ��u H�n Th��ng",{0,6,8982},{0,6,9002,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[204] = {"Di�u D��ng-��nh Thi�n Th�n Ngh� Cung",{0,4,8983},{0,4,9003,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[205] = {"Di�u D��ng-Qu� X�c T� Th�n �ao",{0,7,8984},{0,7,9004,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[206] = {"Di�u D��ng-Vu C�t ��c V��ng Tr�o",{0,11,8985},{0,11,9005,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[207] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n Ki�m",{0,2,8986},{0,2,9006,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[208] = {"Di�u D��ng-Nh�c Huy�t Cu�ng Chi�n �ao",{0,3,8987},{0,3,9007,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[209] = {"Di�u D��ng-C�u Thi�n Qu� Ph� B�t",{0,9,8988},{0,9,9008,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[210] = {"Di�u D��ng-Ma �nh Th�n T�ng Tr�o",{0,11,8989},{0,11,9009,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[211] = {"Di�u D��ng-T� V�n Ti�n T� Phi�n",{0,13,8990},{0,13,9010,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[212] = {"Di�u D��ng-Phi H� Ti�n T� �u Lan Ti�u",{0,12,8991},{0,12,9011,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[213] = {"Di�u D��ng-� L�n B�o Gi�i",{0,102,3175},{0,102,3176,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[214] = {"Di�u D��ng-T� Giao Ng�c B�i",{0,102,3177},{0,102,3178,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[215] = {"Di�u D��ng-V�n H� L�nh",{0,102,3179},{0,102,3180,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[216] = {"Di�u D��ng-X�ch T��c Ho�n",{0,102,3181},{0,102,3182,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[217] = {"Di�u D��ng-B�ch Quy Li�n",{0,102,3183},{0,102,3184,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[218] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n B�o",{0,100,3110},{0,100,3174,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[219] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n B�o",{0,100,3111},{0,100,3175,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[220] = {"Di�u D��ng-T� V�n Ti�n T� Y",{0,100,3124},{0,100,3188,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[221] = {"Di�u D��ng-T� V�n Ti�n T� Y",{0,100,3125},{0,100,3189,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[222] = {"Di�u D��ng-Phi H� Ti�n T� Y",{0,100,3126},{0,100,3190,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[223] = {"Di�u D��ng-Phi H� Ti�n T� Y",{0,100,3127},{0,100,3191,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[224] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n Qu�n",{0,103,3110},{0,103,3174,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[225] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n Qu�n",{0,103,3111},{0,103,3175,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[226] = {"Di�u D��ng-T� V�n Ti�n T� Tr�m",{0,103,3124},{0,103,3188,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[227] = {"Di�u D��ng-T� V�n Ti�n T� Tr�m",{0,103,3125},{0,103,3189,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[228] = {"Di�u D��ng-Phi H� Ti�n T� Tr�m",{0,103,3126},{0,103,3190,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[229] = {"Di�u D��ng-Phi H� Ti�n T� Tr�m",{0,103,3127},{0,103,3191,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[230] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n Trang",{0,101,3110},{0,101,3174,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[231] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n Trang",{0,101,3111},{0,101,3175,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[232] = {"Di�u D��ng-T� V�n Ti�n T� Qu�n",{0,101,3124},{0,101,3188,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[233] = {"Di�u D��ng-T� V�n Ti�n T� Qu�n",{0,101,3125},{0,101,3189,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[234] = {"Di�u D��ng-Phi H� Ti�n T�",{0,101,3126},{0,101,3190,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[235] = {"Di�u D��ng-Phi H� Ti�n T�",{0,101,3127},{0,101,3191,1,1,-1,-1,-1,-1,-1,-1,-1,0}},	
	[236] = {"Di�u D��ng-B�t ��ng Ch�n Ti�n Ki�m",{0,	2,8986},{0,2,9006,1,1,-1,-1,-1,-1,-1,-1,-1,0}},
	[237] = {"Di�u D��ng-T� V�n Ti�n T� Phi�n",{0,13,8990},{0,13,9010,1,1,-1,-1,-1,-1,-1,-1,-1,0}},		
	[238] = {"Di�u D��ng-Phi H� Ti�n T� �u Lan Ti�u",{0,12,8991},{0,12,9011,1,1,-1,-1,-1,-1,-1,-1,-1,0}},			
}

tbPunish1 = {item={{gdp={2,0,1084,1}, name = "Thi�n Qu�i Th�ch"}}}
tbPunish2 = {item={{gdp={2,1,539,1}, name = "Ho�ng Kim H�ng Bao"}}}

function OnPutinCheck(param, idx, genre, detail, particular)
	local tbItemPutin = {"H�o Nguy�t", {
		{0,100,3064},{0,100,3065},{0,100,3066},{0,100,3067},{0,100,3068},{0,100,3069},{0,100,3070},{0,100,3071},{0,100,3072},{0,100,3073},{0,100,3074},
		{0,100,3075},{0,100,3076},{0,100,3077},{0,100,3078},{0,100,3079},{0,100,3080},{0,100,3081},{0,100,3082},{0,100,3083},{0,100,3084},{0,100,3085},
		{0,100,3086},{0,100,3087},{0,100,3088},{0,100,3089},{0,100,3090},{0,100,3091},{0,100,3092},{0,100,3093},{0,100,3094},{0,100,3095},{0,100,3096},
		{0,100,3097},{0,100,3098},{0,100,3099},{0,100,3100},{0,100,3101},{0,100,3102},{0,100,3103},{0,100,3104},{0,100,3105},{0,100,3106},{0,100,3107},
		{0,100,3108},{0,100,3109},{0,100,3110},{0,100,3111},{0,100,3112},{0,100,3113},{0,100,3114},{0,100,3115},{0,100,3116},{0,100,3117},{0,100,3118},
		{0,100,3119},{0,100,3120},{0,100,3121},{0,100,3122},{0,100,3123},{0,100,3124},{0,100,3125},{0,100,3126},{0,100,3127},{0,103,3064},{0,103,3065},
		{0,103,3066},{0,103,3067},{0,103,3068},{0,103,3069},{0,103,3070},{0,103,3071},{0,103,3072},{0,103,3073},{0,103,3074},{0,103,3075},{0,103,3076},
		{0,103,3077},{0,103,3078},{0,103,3079},{0,103,3080},{0,103,3081},{0,103,3082},{0,103,3083},{0,103,3084},{0,103,3085},{0,103,3086},{0,103,3087},
		{0,103,3088},{0,103,3089},{0,103,3090},{0,103,3091},{0,103,3092},{0,103,3093},{0,103,3094},{0,103,3095},{0,103,3096},{0,103,3097},{0,103,3098},
		{0,103,3099},{0,103,3100},{0,103,3101},{0,103,3102},{0,103,3103},{0,103,3104},{0,103,3105},{0,103,3106},{0,103,3107},{0,103,3108},{0,103,3109},
		{0,103,3110},{0,103,3111},{0,103,3112},{0,103,3113},{0,103,3114},{0,103,3115},{0,103,3116},{0,103,3117},{0,103,3118},{0,103,3119},{0,103,3120},
		{0,103,3121},{0,103,3122},{0,103,3123},{0,103,3124},{0,103,3125},{0,103,3126},{0,103,3127},{0,101,3064},{0,101,3065},{0,101,3066},{0,101,3067},
		{0,101,3068},{0,101,3069},{0,101,3070},{0,101,3071},{0,101,3072},{0,101,3073},{0,101,3074},{0,101,3075},{0,101,3076},{0,101,3077},{0,101,3078},
		{0,101,3079},{0,101,3080},{0,101,3081},{0,101,3082},{0,101,3083},{0,101,3084},{0,101,3085},{0,101,3086},{0,101,3087},{0,101,3088},{0,101,3089},
		{0,101,3090},{0,101,3091},{0,101,3092},{0,101,3093},{0,101,3094},{0,101,3095},{0,101,3096},{0,101,3097},{0,101,3098},{0,101,3099},{0,101,3100},
		{0,101,3101},{0,101,3102},{0,101,3103},{0,101,3104},{0,101,3105},{0,101,3106},{0,101,3107},{0,101,3108},{0,101,3109},{0,101,3110},{0,101,3111},
		{0,101,3112},{0,101,3113},{0,101,3114},{0,101,3115},{0,101,3116},{0,101,3117},{0,101,3118},{0,101,3119},{0,101,3120},{0,101,3121},{0,101,3122},
		{0,101,3123},{0,101,3124},{0,101,3125},{0,101,3126},{0,101,3127},{0,3,8972},{0,0,8973},{0,8,8974},{0,1,8975},{0,2,8976},{0,10,8977},{0,0,8978},
		{0,5,8979},{0,2,8980},{0,9,8981},{0,6,8982},{0,4,8983},{0,7,8984},{0,11,8985},{0,2,8986},{0,3,8987},{0,9,8988},{0,11,8989},{0,13,8990},{0,12,8991},
		{0,102,3175},{0,102,3177},{0,102,3179},{0,102,3181},{0,102,3183},	{0,100,3110},{0,100,3111},{0,100,3124},{0,100,3125},{0,100,3126},{0,100,3127},
		{0,103,3110},{0,103,3111},{0,103,3124},{0,103,3125},{0,103,3126},{0,103,3127},{0,101,3110},{0,101,3111},{0,101,3124},{0,101,3125},{0,101,3126},
		{0,101,3127},{0,2,8986},{0,13,8990},{0,12,8991}}
	}
	local nItemAllow = 0
	local tbCheckList = GetPutinItem();
	for i=1,getn(tbItemPutin[2]) do
		if tbItemPutin[2][i][1] == genre and tbItemPutin[2][i][2] == detail and tbItemPutin[2][i][3] == particular then
			nItemAllow = 1
			break
		end
	end
	if nItemAllow == 0 then
		Talk(1,"",szNpcName .. "Ch� c� th� ��t v�o trang b� " .. tbItemPutin[1])
		return 0
	end
--	if GetEquipAttr(idx,2) < 7 and (genre == 0 and detail ~= 102) then
--		Talk(1,"",szNpcName .. "Trang b� ph�i ���c c��ng h�a 7 tr� l�n.")
--		return 0
--	end
	return 1
end


function OnPutinComplete(param)
	if gf_JudgeRoomWeight(2,500) == 0 then
		Talk(1,"",szNpcName.."H�nh trang ho�c s�c l�c kh�ng ��, ng��i h�y s�p x�p l�i nh�!");
		return 0
	end
	local tbUpgradeList = GetPutinItem();
	if tbUpgradeList[1][2] ~= 0 then
		Talk(1,"","Trang b� ��t v�o kh�ng ��ng...")
		return 0	
	end
	
	local nThienMonKimLenh = 0
	if tbUpgradeList[1][3] == 103 then
		nThienMonKimLenh = 5
	elseif tbUpgradeList[1][3] == 100 then
		nThienMonKimLenh = 6
	elseif tbUpgradeList[1][3] == 101 then
		nThienMonKimLenh = 7
	elseif tbUpgradeList[1][3] == 102 then
		nThienMonKimLenh = 6
	else
		nThienMonKimLenh = 11
	end
	
	if GetItemCount(2,1,30370) < nThienMonKimLenh then
		Talk(1,"",szNpcName.."C�c h� kh�ng c� �� " .. nThienMonKimLenh .. " Thi�n M�n Kim L�nh, hay l� b� qu�n � ��u r�i?")
		return 0
	end

	LIB_Award.szLogTitle = "NANG CAP DIEU DUONG CONG THUC 1"
	LIB_Award.szLogAction = "th�nh c�ng"
	local tbAward = {}
	for i=1,getn(tbDieuDuong) do
		if (tbDieuDuong[i][2][1] == tbUpgradeList[1][2]) and (tbDieuDuong[i][2][2] == tbUpgradeList[1][3]) and (tbDieuDuong[i][2][3] == tbUpgradeList[1][4]) then
			tbAward = {item={{gdp=tbDieuDuong[i][3], name = tbDieuDuong[i][1]}}}
			nOption = LIB_Award:GetValueByRate(tbRate)
			if DelItem(2,1,30370,nThienMonKimLenh) == 1 then
				DelItemByIndex(tbUpgradeList[1][1],-1)
				LIB_Award:Award(tbAward)
				Talk(1,"",szNpcName.."N�ng c�p th�nh c�ng, " .. tbDieuDuong[i][1] .. " n�y l� c�a c�c h�.")
			else
				Talk(1,"",szNpcName.."C�c h� kh�ng �� v�t ph�m y�u c�u, kh�ng th� ti�n h�nh n�ng c�p.")
			end
			break
		end
	end
	return 1
end
