--File name:	lanhua_bag.lua
--Describe:		¥¸◊”Ω≈±æ(¿ºª®BOSS°¢”¢◊”BOSSµÙ¬‰)
--Create Date:	2009-3-25 15:51
--Author:		chenbenqian

Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\lib\\writelog.lua")

TYPE_NULL 	= 0;	--√ª”–Ω±¿¯
TYPE_ITEM 	= 1;	--∆’Õ®ŒÔ∆∑
TYPE_EQUIP 	= 2;	--¥¯ Ù–‘◊∞±∏¿‡ŒÔ∆∑
TYPE_CMD 	= 3;	--√¸¡Ó

--=========================================================================================
g_szLogTitle = "TÛi Hµnh Trang".."(2, 1, 30072)"
g_nNeedRoom = 1
g_nNeedWeight = 20
g_nDenominator = 100							--∑÷ƒ∏£¨±Ì æ∏≈¬ µƒµ•Œª «x∑÷÷Æ1

g_szFileName = "lanhua_bag.lua"					--Œƒº˛√˚

g_tbItem = 
{
	--		¿‡–Õ	   ∏≈¬ 	 ˝¡ø √˚◊÷	ID1,ID2,ID3
	[1] = {TYPE_EQUIP,	5,	1,	"ß´ng Ph≠¨ng Long Ch©u",	0,	102,	24,	},
	[2] = {TYPE_EQUIP,	50,	1,	"Nh≠ ˝",		0,	102,	23,	},
	[3] = {TYPE_EQUIP,	45,	1,	"C∏t T≠Íng",		0,	102,	22,	},
}



--=========================================================================================
function OnUse(nItemIdx)
	local tmp=1;
	if gf_JudgeRoomWeight(g_nNeedRoom,g_nNeedWeight) == 0 then
		Talk(1,"","Kho∂ng trËng hµnh trang ho∆c s¯c l˘c kh´ng ÆÒ, xin ki”m tra lπi!")
		return
	end
	-- if tmp == 1 then
		-- Talk(1,"","Tπm thÍi kh´ng th” sˆ dÙng, H∑y t›ch lÚy, Admin sœ th´ng b∏o sau!")
		-- return
	-- end
	if DelItemByIndex(nItemIdx,1) == 1 then
		use_it()
	end
end

function use_it()
	--ŒÔ∆∑Ω±¿¯≤ø∑÷
	local nRandIdx = get_random_item(g_tbItem)
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
	local msg = format("Ng≠Íi ch¨i "..Name.." sˆ dÙng tÛi hµnh trang nhÀn Æ≠Óc ß´ng Ph≠¨ng Long Ch©u, thÀt may mæn  !!");
		
	local nRetCode = 0
	if nRandIdx > 1 then
		nRetCode = AddItem(g_tbItem[nRandIdx][5],g_tbItem[nRandIdx][6],g_tbItem[nRandIdx][7],g_tbItem[nRandIdx][3],1,-1,-1,-1,-1,-1,-1)
	else
		nRetCode = AddItem(g_tbItem[nRandIdx][5],g_tbItem[nRandIdx][6],g_tbItem[nRandIdx][7],g_tbItem[nRandIdx][3],1,1,lv,-1,-1,-1,-1)
		Msg2Global(msg);
		AddLocalNews(msg);
	end
	if nRetCode == 1 then
		Msg2Player("Bπn nhÀn Æ≠Óc  "..nItemNum.." "..szItemName)
		WriteLogEx("Hoat dong thang 6", "NhÀn Æ≠Óc", nItemNum, szItemName, szInfoDescribe, GetTongName() )
	else
		WriteLogEx("Hoat dong thang 6", "NhÀn Æ≠Óc", nItemNum, szItemName, szInfoDescribe, GetTongName(), "Thu Æ≠Óc th t bπi, ".."AddItem return value = "..nRetCode)
	end
end

--∞¥’’∏≈¬ ªÒµ√g_tbItem¿Ô√Êµƒ“ªœÓƒ⁄»›
function get_random_item(nTab)
	local nRandom = random(1,g_nDenominator)
	local nBase = 0
	if check_item_tab(nTab) == 1 then
		for i=1,getn(nTab) do
			if nRandom <= nTab[i][2]+nBase then
				return i
			else
				nBase = nBase + nTab[i][2]
			end
		end
	else
		return 0
	end
end

--ºÏ≤È ‰»Îµƒtable «∑Ò’˝»∑
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


