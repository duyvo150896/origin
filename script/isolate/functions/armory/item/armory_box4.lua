Include("\\script\\isolate\\functions\\armory\\item\\armory_box.lua")

g_szLogCaption = "V�n S�c kh�c b�n ng�u nhi�n";

g_tMagicAttribute.tMagicInfo = {
	[1] = { -- ͷ �·� ���� ����
		[1 ] = {10,	10,	10,	10,		{"Hi�u qu� t�ng s�c m�nh, hi�u qu� g�n c�t v� t�n c�ng ng� h�nh",	{819, 1},	{819, 1},	{855, 1},	{1174, 1}}},
		[2 ] = {10,	10,	10,	10,		{"Hi�u qu� t�ng s�c m�nh, hi�u qu� linh ho�t v� t�n c�ng ng� h�nh",	{820, 1},	{820, 1},	{856, 1},	{1175, 1}}},
		[3 ] = {20,	20,	20,	20,		{"Hi�u qu� t�ng s�c m�nh, hi�u qu� th�n ph�p v� t�n c�ng ng� h�nh",	{821, 1},	{821, 1},	{857, 1},	{1176, 1}}},
		[4 ] = {15,	15,	15,	15,		{"Hi�u qu� t�ng n�i c�ng, hi�u qu� linh ho�t v� t�n c�ng ng� h�nh",	{822, 1},	{822, 1},	{858, 1},	{1177, 1}}},
		[5 ] = {10,	10,	10,	10,		{"Hi�u qu� t�ng n�i c�ng, hi�u qu� th�n ph�p v� t�n c�ng ng� h�nh",	{823, 1},	{823, 1},	{859, 1},	{1178, 1}}},
		[6 ] = {10,	10,	10,	10,		{"Hi�u qu� t�ng n�i c�ng, hi�u qu� g�n c�t v� t�n c�ng ng� h�nh",	{824, 1},	{824, 1},	{860, 1},	{1179, 1}}},
		[7 ] = {15,	15,	15,	15,		{"Hi�u qu� t�ng linh ho�t, hi�u qu� th�n ph�p v� t�n c�ng ng� h�nh",	{825, 1},	{825, 1},	{861, 1},	{1180, 1}}},
		[8 ] = {5,	5,	5,	5,		{"Hi�u qu� t�ng linh ho�t, hi�u qu� g�n c�t v� t�n c�ng ng� h�nh",	{826, 1},	{826, 1},	{862, 1},	{1181, 1}}},
		[9 ] = {5,	5,	5,	5,		{"Hi�u qu� t�ng th�n ph�p, hi�u qu� g�n c�t v� t�n c�ng ng� h�nh",	{827, 1},	{827, 1},	{863, 1},	{1182, 1}}},
	},
	[2] = {
		{5,		5,	5,	5,	{"T�ng t�n c�ng Kim",		{779, 1},	{779, 1},	{779, 1},	{1183, 1},}},
		{5,		5,	5,	5,	{"T�ng t�n c�ng M�c",		{780, 1},	{780, 1},	{780, 1},	{1184, 1},}},
		{5,		5,	5,	5,	{"T�ng t�n c�ng Th�y",		{781, 1},	{781, 1},	{781, 1},	{1185, 1},}},
		{5,		5,	5,	5,	{"T�ng t�n c�ng H�a",		{782, 1},	{782, 1},	{782, 1},	{1186, 1},}},
		{5,		5,	5,	5,	{"T�ng t�n c�ng Th�",		{783, 1},	{783, 1},	{783, 1},	{1187, 1},}},
		{5,		5,	5,	5,	{"T�ng ph�ng ng� Kim",		{784, 1},	{784, 1},	{784, 1},	{1188, 1},}},
		{5,		5,	5,	5,	{"T�ng ph�ng ng� M�c",		{785, 1},	{785, 1},	{785, 1},	{1189, 1},}},
		{5,		5,	5,	5,	{"T�ng ph�ng ng� Th�y",		{786, 1},	{786, 1},	{786, 1},	{1190, 1},}},
		{5,		5,	5,	5,	{"T�ng ph�ng ng� H�a",		{787, 1},	{787, 1},	{787, 1},	{1191, 1},}},
		{5,		5,	5,	5,	{"T�ng ph�ng ng� Th�",		{788, 1},	{788, 1},	{788, 1},	{1192, 1},}},
		{15,	15,	15,	15,	{"S�t th��ng t�ng ",					{789, 1},	{789, 1},	{789, 1},	{1193, 1},}},
		{10,	10,	10,	10,	{"T�ng t� l� n�i k�ch",		{790, 1},	{790, 1},	{790, 1},	{1194, 1},}},
		{10,	10,	10,	10,	{"T�ng t� l� ngo�i c�ng",		{790, 1},	{790, 1},	{790, 1},	{1195, 1},}},
		{5,		5,	5,	5,	{"T�ng ch�nh x�c",				{792, 1},	{792, 1},	{792, 1},	{1196, 1},}},
		{5,		5,	5,	5,	{"T�ng n� tr�nh",				{793, 1},	{793, 1},	{793, 1},	{1197, 1},}},
		{5,		5,	5,	5,	{"T�ng Sinh l�c",				{795, 1},	{795, 1},	{795, 1},	{1198, 1},}},
	},
	[3] = {
			[1 ] = {1,   1,   1,   1,		{"T�ng t� l� n�i l�c sinh l�c v� kh�ng t�t c� Ng� H�nh",	{798, 1},	{799, 1},	{800, 1}, {1199, 1}}},
		},
};

function OnUse(idx)
	local nItemIndex	= tonumber(idx);
	local nG, nD, nP	= GetItemInfoByIndex(nItemIndex);
	local tItem		= g_tItem[nP];

	if not tItem then
		return 0;
	end

	if tItem[2] ~= nG or tItem[3] ~= nD or tItem[4] ~= nP then
		return 0;
	end
	
	Confirm(nP);

	return 1;
end
