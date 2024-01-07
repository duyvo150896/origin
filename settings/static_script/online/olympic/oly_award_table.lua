--�����ֽ�����
OLY_GUESS_AWARD_TABLE = {
	{6000000,{2,1,30897,6}},
	{4000000,{2,1,30897,4}},
	{2000000,{2,1,30897,3}},
	{1600000,{2,1,30897,2}},
	{800000,{2,1,30897,1}},
}

--�������ۼƽ���
OLY_ACCUMULATE_FIRE_AWARD_TABLE = {
	[1] = {5, 3, "gf_AddCampPop(30)", "Danh v�ng th� l�c ", 1, 0},
	[2] = {10, 1, {2, 1, 30670, 20}, "Huy�n Vi�m Thi�t", 1, 0},
	[3] = {25, 1, {2, 1, 30671, 20}, "Vi�m Linh Ti", 1, 0},
	[4] = {50, 1, {2, 1, 30672, 20}, "Da Ma Lang", 1, 0},
	[5] = {75, 1, {2, 1, 30673, 20}, "Da ��a Long", 1, 0},
	[6] = {100, 1, {2, 1, 30681, 10}, "Linh Thi�t", 1, 0},
	[7] = {200, 1, {2, 1, 30612, 10, 4}, "Thi�t tinh c�p 4", 1, 0},
	[8] = {300, 1, {2, 1, 30499, 10}, "Hu�n ch��ng anh h�ng", 1, 0},
	[9] = {450, 1, {2, 1, 9977, 2}, "Qu�n C�ng Huy Ho�ng", 0, 7*24*3600},
	[10] = {600, 1, {2, 1, 1009, 2}, "Thi�n Th�ch Tinh Th�ch", 0, 7*24*3600},
	[11] = {800, 4, "Fire_Num_800", "U�n Linh c�p 4-6 (Ng�u nhi�n)", 0, 0},
	[12] = {1000, 4, "Fire_Num_1000", "�� qu� c�p 4-6 (Ng�u nhi�n)", 0, 0},
	[13] = {1200, 1, {2, 1, 30642, 2}, "qu�n c�ng ch��ng vinh d� ", 0, 7*24*3600},
	[14] = {1600, 1, {2, 95, 2084, 50,4}, "H�o Hi�p L�nh", 1, 0},
	[15] = {1800, 1, {2, 1, 30687, 15}, "Th�i Nh�t L�nh", 1, 0},
}

--����1
OLY_AWARD_1_TABLE = {
	{1, 15, "Ng�n L�a Ng� S�c", {2, 1, 30899, 1, 4}, 0},
	{1, 5, "T�i ti�n", {2, 1, 30367, 1}, 0},
	{1, 5, "B�i Nguy�n ��n", {2, 1, 30351, 1}, 30 * 24 * 3600},
	{1, 10, "Ng� H�nh Huy�n Th�ch", {2, 1, 30302, 4}, 0},
	{1, 5, "M�nh Tinh Ng�n", {2, 1, 30299, 4}, 0},
	{1, 5, "M�nh Tu Ch�n Y�u Quy�t", {2, 1, 30315, 1}, 0},
	{1, 5, "V� l�m b�o m�i", {2, 1, 30314, 1}, 0},
	{1, 5, "Th�nh V�t S� M�n", {2, 1, 30311, 1}, 0},
	{1, 5, "Truy�n C�ng ��n", {2, 1, 30313, 1}, 0},
	{1, 5, "Ti�u B�ch C�u ho�n", {2, 1, 30307, 1}, 0},
	{1, 5, "Ti�u Tam Thanh Ho�n", {2, 1, 30308, 1}, 0},
	{1, 5, "Ti�u L�c Th�n Ho�n", {2, 1, 30309, 1}, 0},
	{1, 5, "Ti�u Nh�n s�m qu�", {2, 0, 552, 1}, 30 * 24 * 3600},
	{20, 5, 1, 1},
	{21, 5, 1, 1},
	{31, 5, "oly_XingKe_Award()", ""},
	{31, 5, "oly_ShiMeng4_Award()", ""},
};

OLY_AWARD_2_TABLE  = {
	{1, 15, "Ng� H�nh Huy�n Th�ch", {2, 1, 30302, 8, 1}, 0},
	{1, 5, "M�nh Tinh Ng�n", {2, 1, 30299, 8, 1}, 0},
	{1, 10, "Kh�c b�n", {2, 1, 30373, 1, 1}, 0},
	{1, 3, "Luy�n L� Thi�t Kho�ng", {2, 1, 30537, 1}, 30 * 24 * 3600},
	{1, 3, "T�y T�m Th�ch Kho�ng", {2, 1, 30536, 1}, 30 * 24 * 3600},
	{1, 6, "C�p 1 T�y T�m Th�ch", {2, 1, 30521, 1}, 0},
	{1, 6, "C�p 1 Luy�n L� Thi�t", {2, 1, 30527, 1}, 0},
	{1, 2, "C�p 2 T�y T�m Th�ch", {2, 1, 30522, 1}, 0},
	{1, 2, "C�p 2 Luy�n L� Thi�t", {2, 1, 30528, 1}, 0},
	{1, 2, "Thi�n th�ch", {2, 2, 8, 1, 4}, 0},
	{1, 15, "Thi�t Tinh c�p 1", {2, 1, 30533, 1, 4}, 0},
	{1, 10, "Thi�t Tinh c�p 2", {2, 1, 30534, 1, 4}, 0},
	--    {1, 5, "С�׾���", {2, 1, 30307, 1}, 0},
	--    {1, 5, "С������", {2, 1, 30308, 1}, 0},
	--    {1, 5, "С������", {2, 1, 30309, 1}, 0},
	--    {1, 5, "С�˲ι�", {2, 0, 552, 1}, 30 * 24 * 3600},
	{1, 2, "B�ch C�u Ho�n", {2, 1, 270, 1, 4}, 30 * 24 * 3600},
	{1, 2, "Tam Thanh ho�n", {2, 1, 1097, 1, 4}, 30 * 24 * 3600},
	{1, 2, "L�c Th�n ho�n", {2, 1, 1064, 1, 4}, 30 * 24 * 3600},
	{1, 2, "Th�n N�ng ��n", {2, 1, 343, 1, 4}, 30 * 24 * 3600},
	{1, 1, "��i Nh�n s�m", {2, 0, 553, 1, 4}, 30 * 24 * 3600},
	{1, 1, "M�nh Thi�n th�ch", {2, 2, 7, 1, 4}, 0},
	{1, 1, " T� Quang M�t B�a", {2, 0, 761, 1, 4}, 30 * 24 * 3600},
	{1, 1, "T� Quang L�nh", {2, 0, 763, 1, 4}, 30 * 24 * 3600},
	{1, 1, "Qu�n C�ng Ch��ng", {2, 1, 9999, 1, 4}, 30 * 24 * 3600},
	{1, 1, "Qu�n C�ng ��i", {2, 1, 9998, 1, 4}, 30 * 24 * 3600},
	{1, 1, "Thi�n Th�ch Tinh Th�ch", {2, 1, 1009, 1, 4}, 0},
	--    {20, 7, 1, 1},
	--    {21, 4, 1, 1},
	--    {22, 4, 1, 1},
	--    {23, 1, 1, 1},
	{31, 2, "oly_XingKe_Award()", ""},
	{31, 1, "oly_TianYi_Award()", ""},
	--    {31, 9, "oly_YunLing2_Award()", ""},
	{31, 3, "oly_StarEquip_Award()", ""},
};

OLY_AWARD_3_TABLE  = {
	{1, 40000, "H�c Ng�c �o�n T�c Cao", {1, 0, 6, 1}, 0},
	{1, 40000, "Sinh Sinh H�a T�n", {1, 0, 16, 1}, 0},
	{1, 40000, "V�n V�t Quy Nguy�n ��n", {1, 0, 11, 1}, 0},
	{1, 40000, "C�u chuy�n h�i h�n ��n", {1, 0, 32, 1}, 0},
	{22, 144850, 1, 1},
	{23, 140000, 1, 1},
	--    {1, 70000, "��Ǯ��", {2, 1, 30367, 2}, 0},
	--    {1, 50000, "��Ǯ��", {2, 1, 30367, 3}, 0},
	--    {1, 50000, "��Ǯ��", {2, 1, 30367, 4}, 0},
	--    {1, 50000, "��Ǯ��", {2, 1, 30367, 5}, 0},
	--    {1, 50000, "��Ǯ��", {2, 1, 30367, 6}, 0},
	--    {1, 10000, "��Ǯ��", {2, 1, 30367, 7}, 0},
	--    {1, 10000, "��Ǯ��", {2, 1, 30367, 8}, 0},
	{1, 95000, "T�i ti�n", {2, 1, 30367, 1}, 0},
	{1, 50000, "T�i ti�n", {2, 1, 30367, 2}, 0},
	{1, 25000, "Luy�n L� Thi�t Kho�ng", {2, 1, 30537, 1}, 0},
	{1, 25000, "T�y T�m Th�ch Kho�ng", {2, 1, 30536, 1}, 0},
	{1, 60000, "Thi�t Tinh c�p 1", {2, 1, 30533, 1, 4}, 0},
	{1, 40000, "Thi�t Tinh c�p 2", {2, 1, 30534, 1, 4}, 0},
	{1, 20000, "Thi�t Tinh c�p 3", {2, 1, 30535, 1, 4}, 0},
	{1, 50000, "C�y B�t Nh� nh�", {2, 0, 504, 1}, 30 * 24 * 3600},
	{1, 90000, "M�nh Thi�n th�ch", {2, 2, 7, 1}, 0},
	--    {1, 50000, "����Ҫ��", {2, 0, 554, 1}, 30 * 24 * 3600},
	{1, 25000, "Tu Ch�n Y�u Quy�t", {2, 0, 554, 1}, 30 * 24 * 3600},
	{1, 20000, "C�y B�t Nh�", {2, 0, 398, 1}, 30 * 24 * 3600},
	{1, 20000, "Qu�n C�ng Ch��ng", {2, 1, 9999, 1}, 30 * 24 * 3600},
	--    {1, 10000, "���Ӱ�", {2, 1, 30087, 1}, 0},
	{1, 10000, "T�i Trang B� Kim X� Cu�ng V�", {2, 1, 30544, 1}, 0},
	{1, 5000, "Qu�n C�ng ��i", {2, 1, 9998, 1}, 30 * 24 * 3600},
	{24, 10000, 1, 1},
	{25, 5000, 1, 1},
	{1, 1000, "Thi�n Huy�n Kh�c B�n c�p 2", {2,1,30407, 1}, 0},
	{1, 2000, "Thi�n Th�ch Tinh Th�ch", {2, 1, 1009, 1}, 0},
	{26, 1000, 1, 1, 0, 0, 0, 1},
	{1, 1000, "Qu�n C�ng Huy Ho�ng", {2, 1, 9977, 1}, 30 * 24 * 3600, 0, 0, 1},
	{1, 50, "��nh H�n Thi�n Th�ch Th�n Th�ch", {2, 1, 1067, 1}, 30 * 24 * 3600, 0, 0, 1},
	{1, 50, "Thi�n Th�ch linh th�ch", {2, 1, 1068, 1}, 30 * 24 * 3600, 0, 0, 1},
	{1, 25, "Thi�n Huy�n Kh�c B�n c�p 3", {2,1,30408, 1}, 0},
	{1, 15, "Thi�n M�n Kim L�nh", {2, 1, 30370, 1}, 0, 0, 0, 1},
	{1, 10, "Thi�n Cang L�nh", {2, 95, 204, 1}, 0, 0, 0, 1},
};

OLY_XINGKE_AWARD_TB  = {
	{1, 4, "Tinh Kh�c-L�i �m Nang Th�", {0, 0, 8874, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Quy L�n H� Th�", {0, 0, 8875, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-�m D��ng Xuy�n �nh", {0, 1, 8879, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-T� H�n �m Ki�m", {0, 2, 8884, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Thu�n Phong Ki�m", {0, 2, 8885, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Ng� Thi�n Phong Ki�m", {0, 2, 8886, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-L�u Ly Gi�i �ao", {0, 3, 8892, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	--    {1, 6, "�ǿ�֮�����쵶", {0, 3,	8893, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Truy M�nh Cung", {0, 4, 8897, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Tr�n Ng�o C�n", {0, 5, 8900, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Ph� Qu�n Tr�n Th��ng", {0, 6, 8903, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Thi�p C�t Huy�t �ao", {0, 7, 8906, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Kinh L�i Thi�n Tr��ng", {0, 8, 8909, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Tinh ��u Chuy�n B�t", {0, 9, 8913, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	--    {1, 4, "�ǿ�֮����б�", {0, 9,	8914, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-C�u Ho�n B�i C�m", {0, 10, 8918, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Luy�n H�n Huy�t Tr�o", {0, 11, 8922, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	--    {1, 4, "�ǿ�֮������צ", {0, 11, 8923, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-C�u Ti�u S�o", {0, 12, 8927, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Tinh Kh�c-Linh Lung Chi", {0, 13, 8930, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 6, "Tinh Kh�c-Huy�n Th�ch Kim Ng�c", {0, 102, 3121, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 6, "Tinh Kh�c-Ph� Th�y Ng�c ��i", {0, 102, 3124, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 6, "Tinh Kh�c- Nguy�t Hoa Th�y B�i", {0, 102, 3127, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 6, "Tinh Kh�c-C�u �u H�a Gi�i", {0, 102, 3130, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 8, "Tinh Kh�c-Ng�ng Ng�c Th� Ho�n", {0, 102, 3133, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
};

OLY_TIANYI_AWARD_TB = {
	{1, 4, "Thi�n Ngh�a-L�i �m Nang Th�", {0,	0,	8876, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Quy L�n H� Th�", {0,	0,	8877, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-�m D��ng Xuy�n �nh", {0,	1,	8880, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-T� H�n �m Ki�m", {0,	2,	8887, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Thu�n Phong Ki�m", {0,	2,	8888, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Ng� Thi�n Phong Ki�m", {0,	2,	8889, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-L�u Ly Gi�i �ao", {0,	3,	8894, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	--		{1, 4, "����֮�����쵶", {0,	3,	8895, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Truy M�nh Cung", {0,	4,	8898, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Tr�n Ng�o C�n", {0,	5,	8901, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Ph� Qu�n Tr�n Th��ng", {0,	6,	8904, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Thi�p C�t Huy�t �ao", {0,	7,	8907, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Kinh L�i Thi�n Tr��ng", {0,	8,	8910, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Tinh ��u Chuy�n B�t", {0,	9,	8915, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	--		{1, 4, "����֮����б�", {0,	9,	8916, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-C�u Ho�n B�i C�m", {0,	10,	8919, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Luy�n H�n Huy�t Tr�o", {0,	11,	8924, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	--		{1, 6, "����֮������צ", {0,	11,	8925, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-C�u Ti�u S�o", {0,	12,	8928, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 4, "Thi�n Ngh�a-Linh Lung Chi", {0,	13,	8931, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 6, "Thi�n Ngh�a- Huy�n Th�ch Kim Ng�c", {0, 102, 3122, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 6, "Thi�n Ngh�a- Ph� Th�y Ng�c ��i", {0, 102, 3125, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 6, "Thi�n Ngh�a- Nguy�t Hoa Th�y B�i", {0, 102, 3128, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 6, "Thi�n Ngh�a- C�u �u H�a Gi�i", {0, 102, 3131, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
	{1, 8, "Thi�n Ngh�a- Ng�ng Ng�c Th� Ho�n", {0, 102, 3134, 1, 1, -1, -1, -1, -1, -1, -1}, 0},
};

OLY_STAREQUIP_AWARD_TB = {
		{1, 190, "Huy Ch��ng ��ng Ch�", {0, 153, 1, 1, 4}, 0},
		{1, 190, "�o Cho�ng T�o B�", {0, 152, 1, 1, 4}, 0},
		{1, 190, "Gi�y V�i Th�", {0, 154, 1, 1, 4}, 0},
		{1, 100, "Huy Ch��ng Thi�t Ch�", {0, 153, 2, 1, 4}, 0},	
		{1, 100, "�o Cho�ng C�m �o�n", {0, 152, 2, 1, 4}, 0},
		{1, 100, "Tinh Tr� B� H�i", {0, 154, 2, 1, 4}, 0},
		{1, 26, "Huy Ch��ng Ng�c Ch�", {0, 153, 3, 1, 4}, 0},
		{1, 26, "�o Cho�ng H�a V�n", {0, 152, 3, 1, 4}, 0},
		{1, 30, "B� Ch� Cao ��ng Ngoa", {0, 154, 3, 1, 4}, 0},
		{1, 3, "Huy Ch��ng Kim Ch� ng� h�nh", {0, 153, 4, 1, 4}, 0, 0, 0, 1},
		{1, 3, "Huy Ch��ng M�c Ch� ng� h�nh", {0, 153, 5, 1, 4}, 0, 0, 0, 1},
		{1, 3, "Huy Ch��ng Th�y Ch� ng� h�nh", {0, 153, 6, 1, 4}, 0, 0, 0, 1},
		{1, 3, "Huy Ch��ng H�a Ch� ng� h�nh", {0, 153, 7, 1, 4}, 0, 0, 0, 1},
		{1, 3, "Huy Ch��ng Th� Ch� ng� h�nh", {0, 153, 8, 1, 4}, 0, 0, 0, 1},
		{1, 1, "Huy Ch��ng �m Ch� ng� h�nh", {0, 153, 9, 1, 4}, 0, 0, 0, 1},
		{1, 3, "�o Cho�ng Ng� H�nh Kim Ch�", {0, 152, 4, 1, 4}, 0, 0, 0, 1},
		{1, 3, "�o Cho�ng Ng� H�nh M�c Ch�", {0, 152, 5, 1, 4}, 0, 0, 0, 1},
		{1, 3, "�o Cho�ng Ng� H�nh Th�y Ch�", {0, 152, 6, 1, 4}, 0, 0, 0, 1},
		{1, 3, "�o Cho�ng Ng� H�nh H�a Ch�", {0, 152, 7, 1, 4}, 0, 0, 0, 1},
		{1, 3, "�o Cho�ng Ng� H�nh Th� Ch�", {0, 152, 8, 1, 4}, 0, 0, 0, 1},
		{1, 1, "�o Cho�ng Ng� H�nh �m Ch�", {0, 152, 9, 1, 4}, 0, 0, 0, 1},
		{1, 3, "Chi�n H�i Kim Ch� ng� h�nh", {0, 154, 4, 1, 4}, 0, 0, 0, 1},
		{1, 3, "Chi�n H�i M�c Ch� ng� h�nh", {0, 154, 5, 1, 4}, 0, 0, 0, 1},
		{1, 3, "Chi�n H�i Th�y Ch� ng� h�nh", {0, 154, 6, 1, 4}, 0, 0, 0, 1},
		{1, 3, "Chi�n H�i H�a Ch� ng� h�nh", {0, 154, 7, 1, 4}, 0, 0, 0, 1},
		{1, 3, "Chi�n H�i Th� Ch� ng� h�nh", {0, 154, 8, 1, 4}, 0, 0, 0, 1},
		{1, 1, "Chi�n H�i �m Ch� ng� h�nh", {0, 154, 9, 1, 4}, 0, 0, 0, 1},
};