--File name:	lanhua_bag.lua
--Describe:		���ӽű�(����BOSS��Ӣ��BOSS����)
--Create Date:	2009-3-25 15:51
--Author:		chenbenqian

Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\lib\\writelog.lua")

TYPE_NULL 	= 0;	--û�н���
TYPE_ITEM 	= 1;	--��ͨ��Ʒ
TYPE_EQUIP 	= 2;	--������װ������Ʒ
TYPE_CMD 	= 3;	--����

--=========================================================================================
g_szLogTitle = "T�i H�nh Trang".."(2, 1, 30072)"
g_nNeedRoom = 1
g_nNeedWeight = 20
g_nDenominator = 100							--��ĸ����ʾ���ʵĵ�λ��x��֮1

g_szFileName = "lanhua_bag.lua"					--�ļ���
--30001 - 30012
g_tbItem = 
{
	--		����	   ����	���� ����	ID1,ID2,ID3
	[1] = {TYPE_ITEM,	3,	1,	"Nguy�t Hoa Chi Tinh",	2,	1,	3219,},
	[2] = {TYPE_EQUIP,	3,	1,	"��ng Ph��ng Long Ch�u",	0,	102,	24,},
	[3] = {TYPE_EQUIP,	6,	1,	"T�ng ki�m ng�c",0,	102,30001,},
	[4] = {TYPE_EQUIP,	8,	1,	"C�u thi�n ng�c",	0,	102,	129,},
	[5] = {TYPE_ITEM,	20,	50,	"Bao Linh Th�ch 7",	2,	1,	30419,},
	[6] = {TYPE_ITEM,	60,	50,	"Bao Linh Th�ch 6",	2,	1,	30418,},


}



--=========================================================================================
function OnUse(nItemIdx)
	local tmp=1;
	if gf_JudgeRoomWeight(g_nNeedRoom,g_nNeedWeight) == 0 then
		Talk(1,"","Kho�ng tr�ng h�nh trang ho�c s�c l�c kh�ng ��, xin ki�m tra l�i!")
		return
	end
	-- if tmp == 1 then
		-- Talk(1,"","T�m th�i kh�ng th� s� d�ng, H�y t�ch l�y, Admin s� th�ng b�o sau!")
		-- return
	-- end
	if DelItemByIndex(nItemIdx,1) == 1 then
		use_it()
	end
end

function use_it()
	--��Ʒ��������
	local nRandIdx = get_random_item(g_tbItem)
	local random_id_tangkiem=random(0,11)
	local random_id_9t=random(0,6)
	local lv_rand = random(1,2)
	local lv = 1
	
	if lv_rand == 1 then
		lv = 13030
	elseif lv_rand == 2 then
		lv = 794
	end
	
	if nRandIdx == 0 then
		return
	end

	local szItemName = g_tbItem[nRandIdx][4]
	local nItemNum = g_tbItem[nRandIdx][3]
	local szInfoDescribe = format("(%d,%d,%d)", g_tbItem[nRandIdx][5], g_tbItem[nRandIdx][6], g_tbItem[nRandIdx][7])
	local Name = GetName()
	local msg = format("Ng��i ch�i "..Name.." s� d�ng t�i h�nh trang nh�n ���c ��ng Ph��ng Long Ch�u, th�t may m�n  !!");
	-- gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "BOSS Th� gi�i", "��i Chi�n B�o H�p")
	local nRetCode = 0
	if nRandIdx == 2 then
		nRetCode = AddItem(g_tbItem[nRandIdx][5],g_tbItem[nRandIdx][6],g_tbItem[nRandIdx][7],g_tbItem[nRandIdx][3],1,1,lv,-1,-1,-1,-1)
		Msg2Global(msg);
		AddLocalNews(msg);
	elseif nRandIdx == 3  then
		nRetCode = AddItem(g_tbItem[nRandIdx][5],g_tbItem[nRandIdx][6],g_tbItem[nRandIdx][7] + random_id_tangkiem,g_tbItem[nRandIdx][3],1,-1,-1,-1,-1,-1,-1)
	elseif nRandIdx == 4  then
		nRetCode = AddItem(g_tbItem[nRandIdx][5],g_tbItem[nRandIdx][6],g_tbItem[nRandIdx][7] + random_id_9t,				g_tbItem[nRandIdx][3],1,-1,-1,-1,-1,-1,-1)
	else
		nRetCode = AddItem(g_tbItem[nRandIdx][5],g_tbItem[nRandIdx][6],g_tbItem[nRandIdx][7] ,g_tbItem[nRandIdx][3])
	end
	if nRetCode == 1 then
		Msg2Player("B�n nh�n ���c  "..nItemNum.." "..szItemName)
		WriteLogEx("Hoat dong thang 6", "Nh�n ���c", nItemNum, szItemName, szInfoDescribe, GetTongName() )
	else
		WriteLogEx("Hoat dong thang 6", "Nh�n ���c", nItemNum, szItemName, szInfoDescribe, GetTongName(), "Thu ���c th�t b�i, ".."AddItem return value = "..nRetCode)
	end
end

--���ո��ʻ��g_tbItem�����һ������
function get_random_item(nTab)
	local nRandom = random(1,g_nDenominator)
	Msg2Global("nRandom:"..nRandom)
	local nBase = 0
	if check_item_tab(nTab) == 1 then
		for i=1,getn(nTab) do
			if nRandom <= nTab[i][2]+nBase then
				Msg2Global("i:"..i)
				return i
			else
				nBase = nBase + nTab[i][2]
			end
		end
	else
		return 0
	end
end

--��������table�Ƿ���ȷ
function check_item_tab(tTab)
	local nTotalProbability= 0
	for i=1,getn(tTab) do
		nTotalProbability = nTotalProbability + tTab[i][2]
	end
	if nTotalProbability == g_nDenominator then
		return 1
	else
		print("\n error item table in "..g_szFileName.." \n")
		return 0
	end
end

function nothing()

end


