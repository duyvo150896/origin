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
		"Nh�p Gift Code/InputCode", 
		"\nT�i h� s� quay l�i sau/nothing",
	}
	Say(g_szTitle.."<color=white> L�m th� n�o �� c� ���c Gift Code?<enter>B��c 1: Donate cho server th�ng qua c�c h�nh Momo, Banking ho�c th� c�o<enter>B��c 2: L�c donate g�i k�m M� S� C� Nh�n cho Admin<enter>B��c 3: Admin ki�m tra v� s� g�i l�i b�n LoLi Coin t��ng �ng<enter>B��c 4: B�n c� th� t�ch l�y LoLi Coin �� ��i Gift Code<enter>�� bi�t th�m chi ti�t, vui l�ng truy c�p: <color=Gold>https://id.loliteam.net", getn(tSay), tSay) --�� em test m�y d�ng n�y
end

function InputCode()
	AskClientForString("InputCode2","",1,13,"H�y nh�p GiftCode") --��y s� hi�n � �� m�nh nh�p code
end

function InputCode2(code) --nh�p xong n? xu�ng ��y
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
					WriteLogInfo("data/Donate_Code/Used/",code..".txt",GetAccount().."\t"..GetName().."\t"..date("20%y_%m_%d").."\t"..nCount.."\t"..nName) --chu�n ch�a bro
					Talk(1,"","<color=white>Nh�p code th�nh c�ng b�n �� nh�n ���c <color=fire>"..nCount.." "..nName.."<color> !!!<enter>C�m �n b�n �� �ng h� server trong su�t th�i gian qua!!!")
					break;
				end
			end
		else
			Talk(1,"","<color=white>Code m� b�n nh�p �� ���c s� d�ng, vui l�ng li�n h� admin n�u g�p l�i!!!")
		end
	else
		Talk(1,"","<color=white>Code m� b�n nh�p kh�ng ��ng, vui l�ng li�n h� admin n�u g�p l�i!!!")
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
	local hFile = openfile(szFileName, "r"); --��ng kol bro
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

