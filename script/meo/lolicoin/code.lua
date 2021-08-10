IncludeLib("SETTING");
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\lib\\define.lua");
Include("\\script\\lib\\topscorelib.lua");
Include("\\script\\lib\\writelog.lua")
Include("\\script\\lib\\sdb.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
Include("\\script\\task\\faction\\faction_head.lua");

function lolicode()
	tSay = {
		"NhËp Gift Code/InputCode", 
		"\nT¹i h¹ sÏ quay l¹i sau/nothing",
	}
	Say(g_szTitle.."<color=white> Lµm thÕ nµo ®Ó cã ®­îc Gift Code?<enter>B­íc 1: Donate cho server th«ng qua c¸c h×nh Momo, Banking hoÆc thÎ cµo<enter>B­íc 2: Lóc donate göi kÌm M· Sè C¸ Nh©n cho Admin<enter>B­íc 3: Admin kiÓm tra vµ sÏ göi l¹i b¹n LoLi Coin t­¬ng øng<enter>B­íc 4: B¹n cã thÓ tÝch lòy LoLi Coin ®Ó ®æi Gift Code<enter>§Ó biÕt thªm chi tiÕt, vui lßng truy cËp: <color=Gold>https://id.loliteam.net", getn(tSay), tSay) --®Ó em test mÊy dßng nµy
end

function InputCode()
	AskClientForString("InputCode2","",1,13,"H·y nhËp GiftCode") --®©y sÏ hiÖn « ®Ó m×nh nhËp code
end

function InputCode2(code) --nhËp xong n? xuèng ®©y
	if(CheckCode(code) == 1) then
		if(CheckUsedCode(code) == 0) then
			tBook = new(KTabFile, "\\data\\Donate_Code\\Code.txt");
			for i=1, tBook:getRow() do
				if(tBook:getCell(i,1) == tostring(code)) then
					local nG = tBook:getCell(i,2)
					local nD = tBook:getCell(i,3)
					local nP = tBook:getCell(i,4)
					local nCount =  tBook:getCell(i,5)--random(5,100)
					local nType = tBook:getCell(i,6)
					local nName = GetItemName(nG, nD, nP)
					AddItem(nG,nD,nP,nCount,nType) 
					WriteLogInfo("data/Donate_Code/Used/",code..".txt",GetAccount().."\t"..GetName().."\t"..date("20%y_%m_%d").."\t"..nCount.."\t"..nName) --chuÈn ch­a bro
					Talk(1,"","<color=white>NhËp code thµnh c«ng b¹n ®· nhËn ®­îc <color=fire>"..nCount.." "..nName.."<color> !!!<enter>C¶m ¬n b¹n ®· ñng hé server trong suèt thêi gian qua!!!")
					break;
				end
			end
		else
			Talk(1,"","<color=white>Code mµ b¹n nhËp ®· ®­îc sö dông, vui lßng liªn hÖ admin nÕu gÆp lçi!!!")
		end
	else
		Talk(1,"","<color=white>Code mµ b¹n nhËp kh«ng ®óng, vui lßng liªn hÖ admin nÕu gÆp lçi!!!")
	end
end

function CheckCode(code)
	tBook = new(KTabFile, "\\data\\Donate_Code\\Code.txt");
	for i=1, tBook:getRow() do
		if(tBook:getCell(i,1) == tostring(code)) then
			return 1;
		end
	end
	return 0;
end

function FileExist(szFileName)
	local hFile = openfile(szFileName, "r"); --®óng kol bro
	if hFile == nil then
		return 0;
	end -- :>
	return 1;
end

function CheckUsedCode(code)
	if(FileExist("data/Donate_Code/Used/"..code..".txt") == 1) then
		return 1;
	end
	return 0;
end

