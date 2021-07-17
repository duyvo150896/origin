Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\vng\\lib\\vnglib_textdata.lua") 


function main()

	if kiem_tra() == 0 then
	Say("C�c h� ch�a ph�i l� H�i Vi�n.",2,"Ta mu�n ��ng k� tham gia/dang_ky","�� ta suy ngh� l�i/nothing")
	return
	end

	local szName = "Ch� S�ng B�i"
	local szHeader = "<color=green>"..szName.." :<color>C�c h� mu�n ch�i g�"
	local tbSayDialog = {};
	local nSaySize = 0;

	tinsert(tbSayDialog, "Ch�i B�u Cua/choibaucua")
	tinsert(tbSayDialog, "Ch�i O�n T� T�/ChoiOanTuTi")
	tinsert(tbSayDialog, "Ch�i Ch�n L�/ChoiChanLe")
--	tinsert(tbSayDialog, "��i Kim Phi�u Bao/DoiVangBao")

	tinsert(tbSayDialog, "Ta ch� gh� ngang/nothing")
	Say(szHeader, getn(tbSayDialog), tbSayDialog)
	

end
------------------------------------------------------------------------------------------
function kiem_tra()

	if GetTask(3460) == 1 then
		return 1;
	else
		return 0;
	end
end

------------------------------------------------------------------------------------------
function dang_ky()

	if ModifyJinJuan(-2000,1) >= 0 then
		SetTask(3460,1);
		Msg2Global("Ch�c m�ng "..GetName().. "�� tr� th�nh h�i vi�n.")
	else	
		Talk(1,"","C�n 2000 Kim Phi�u m�i ���c tham gia h�i vi�n")
	end

end
------------------------------------------------------------------------------------------

function nothing()
end

function reset_baucua()
SetTask(3461,0);
SetTask(3462,0);
SetTask(3463,0);
SetTask(3464,0);
SetTask(3465,0);
SetTask(3466,0);
choibaucua();
end

------------------------------------------------------------------------------------------
function choibaucua()


	Tongtiencuoc = GetTask(3461) + GetTask(3462) + GetTask(3463) + GetTask(3464) + GetTask(3465) + GetTask(3466);
	Tiendangco = GetVipJinJuan()
	if GetVipJinJuan() < Tongtiencuoc then
		szTrangthai = "Kh�ng th� m� th��ng"
	else
		szTrangthai = "C� th� m� th��ng"
	end
	local szName = "Ch� S�ng B�i"
	local szHeader = "<color=green>"..szName.." :<color>S� ti�n v�: <color=red>"..Tiendangco.."<color>. S� ti�n c��c: <color=red>"..Tongtiencuoc.."<color>. Tr�ng Th�i: <color=gold>"..szTrangthai.."<color>"
	local tbXucXac = {
			[1] = {"B�u"},
			[2] = {"Cua"},
			[3] = {"T�m"},
			[4] = {"C�"},
			[5] = {"Nai"},
			[6] = {"G�"},
		}
		
		SoBau = GetTask(3461);
		SoCua = GetTask(3462);
		SoTom = GetTask(3463);
		SoCa = GetTask(3464);
		SoNai = GetTask(3465);
		SoGa = GetTask(3466);


		local tbSayDialog = {};

		tinsert(tbSayDialog,1,"��t " .. tbXucXac[1][1] .. " (" ..SoBau  .. " Kim Phi�u)/LuaChonBau")
		tinsert(tbSayDialog,1,"��t " .. tbXucXac[2][1] .. " (" ..SoCua  .. " Kim Phi�u)/LuaChonCua")
		tinsert(tbSayDialog,1,"��t " .. tbXucXac[3][1] .. " (" ..SoTom  .. " Kim Phi�u)/LuaChonTom")
		tinsert(tbSayDialog,1,"��t " .. tbXucXac[4][1] .. " (" ..SoCa  .. " Kim Phi�u)/LuaChonCa")
		tinsert(tbSayDialog,1,"��t " .. tbXucXac[5][1] .. " (" ..SoNai  .. " Kim Phi�u)/LuaChonNai")
		tinsert(tbSayDialog,1,"��t " .. tbXucXac[6][1] .. " (" ..SoGa  .. " Kim Phi�u)/LuaChonGa")

		tinsert(tbSayDialog, "M� Th��ng/mothuong_baucua")
		tinsert(tbSayDialog, "L�m m�i gi� tr�/reset_baucua")


		tinsert(tbSayDialog, "Ta ch� gh� ngang/nothing")
		Say(szHeader, getn(tbSayDialog), tbSayDialog)	

end
------------------------------------------------------------------------------------------
function mothuong_baucua()

	local Tongtiencuoc = GetTask(3461) + GetTask(3462) + GetTask(3463) + GetTask(3464) + GetTask(3465) + GetTask(3466);

	if GetVipJinJuan() < Tongtiencuoc then
	return choibaucua();
	end
--Thanh to�n
ModifyJinJuan(-Tongtiencuoc);

mRandom = random(1,6);
nRandom = random(1,6);
pRandom = random(1,6);

--X�c s�c 1
if mRandom == 1 then
	xx1 = GetTask(3461);
	yy1 = "B�u";
elseif mRandom == 2 then
	xx1 = GetTask(3462);
	yy1 = "Cua";
elseif mRandom == 3 then
	xx1 = GetTask(3463);
	yy1 = "T�m";
elseif mRandom == 4 then
	xx1 = GetTask(3464);
	yy1 = "C�";
elseif mRandom == 5 then
	xx1 = GetTask(3465);
	yy1 = "Nai";
elseif mRandom == 6 then
	xx1 = GetTask(3466);
	yy1 = "G�";
end



--X�c s�c 2
if nRandom == 1 then
	xx2 = GetTask(3461);
	yy2 = "B�u";
elseif nRandom == 2 then
	xx2 = GetTask(3462);
	yy2 = "Cua";
elseif nRandom == 3 then
	xx2 = GetTask(3463);
	yy2 = "T�m";
elseif nRandom == 4 then
	xx2 = GetTask(3464);
	yy2 = "C�";
elseif nRandom == 5 then
	xx2 = GetTask(3465);
	yy2 = "Nai";
elseif nRandom == 6 then
	xx2 = GetTask(3466);
	yy2 = "G�";
end



--X�c s�c 3
if pRandom == 1 then
	xx3 = GetTask(3461);
	yy3 = "B�u";
elseif pRandom == 2 then
	xx3 = GetTask(3462);
	yy3 = "Cua";
elseif pRandom == 3 then
	xx3 = GetTask(3463);
	yy3 = "T�m";
elseif pRandom == 4 then
	xx3 = GetTask(3464);
	yy3 = "C�";
elseif pRandom == 5 then
	xx3 = GetTask(3465);
	yy3 = "Nai";
elseif pRandom == 6 then
	xx3 = GetTask(3466);
	yy3 = "G�";
end


--Trao th��ng



szTongthang = xx1 + xx2 + xx3;
ModifyJinJuan(szTongthang)

if szTongthang > Tongtiencuoc then
	szMat = "Ch�c m�ng b�n �� chi�n th�ng"
elseif szTongthang == Tongtiencuoc then
	szMat = "Tr�n n�y h�a v�n"
elseif szTongthang < Tongtiencuoc then
	szMat = "Tr�n n�y l� m�t r�i...huhu!"
end

local sLine1 = "K�t qu� m� th��ng:   <color=green>"..yy1.."<color>      <color=green>"..yy2.."<color>      <color=green>"..yy3.."<color>\n"
local sLine2 = "S� Kim Phi�u th� h��ng:   <color=gold>"..xx1.."<color>   +   <color=gold>"..xx2.."<color>   +    <color=gold>"..xx3.."<color>   <color=gold> = "..szTongthang.."<color>\n"
local sLine3 = "�� c��c: <color=green>B�u:"..GetTask(3461).."<color> + <color=green>Cua:"..GetTask(3462).."<color> + <color=green>T�m:"..GetTask(3463).."<color> + <color=green>C�:"..GetTask(3464).."<color> + <color=green>Nai:"..GetTask(3465).."<color> + <color=green>G�:"..GetTask(3466).."<color> = <color=gold>"..Tongtiencuoc.."<color>\n"
local sLine4 = "Chung cu�c:   <color=green>"..szMat.."<color>\n"



Say(sLine3..sLine1..sLine2..sLine4, 0)



--reset l�i
SetTask(3461,0);
SetTask(3462,0);
SetTask(3463,0);
SetTask(3464,0);
SetTask(3465,0);
SetTask(3466,0);

end
------------------------------------------------------------------------------------------
function LuaChonBau()
SetTask(3461,0)
AskClientForNumber("LuaChonBau_ok",100,10000,"B�u:");
end
------------------------------------------------------------------------------------------
function LuaChonBau_ok(nBau)
SetTask(3461,nBau);
choibaucua();
end
------------------------------------------------------------------------------------------
function LuaChonCua()
SetTask(3462,0)
AskClientForNumber("LuaChonCua_ok",100,10000,"Cua:");
end
------------------------------------------------------------------------------------------
function LuaChonCua_ok(nCua)
SetTask(3462,nCua);
choibaucua();
end
------------------------------------------------------------------------------------------
function LuaChonTom()
SetTask(3463,0)
AskClientForNumber("LuaChonTom_ok",100,10000,"T�m:");
end
------------------------------------------------------------------------------------------
function LuaChonTom_ok(nTom)
SetTask(3463,nTom);
choibaucua();
end
------------------------------------------------------------------------------------------
function LuaChonCa()
SetTask(3464,0)
AskClientForNumber("LuaChonCa_ok",100,10000,"C�:");
end
------------------------------------------------------------------------------------------
function LuaChonCa_ok(nCa)
SetTask(3464,nCa);
choibaucua();
end
------------------------------------------------------------------------------------------
function LuaChonNai()
SetTask(3465,0)
AskClientForNumber("LuaChonNai_ok",100,10000,"Nai:");
end
------------------------------------------------------------------------------------------
function LuaChonNai_ok(nNai)
SetTask(3465,nNai);
choibaucua();
end
------------------------------------------------------------------------------------------
function LuaChonGa()
SetTask(3466,0)
AskClientForNumber("LuaChonGa_ok",100,10000,"G�:");
end
------------------------------------------------------------------------------------------
function LuaChonGa_ok(nGa)
SetTask(3466,nGa);
choibaucua();
end
------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------********************************************----------------------------------------------------------

function ChoiChanLe()
	local tbSay = {};
	
 		tinsert(tbSay, "Ta ch�n: Ch�n/ChonChan")
 		tinsert(tbSay, "Ta ch�n: L�/ChonLe")
 		tinsert(tbSay, "�� ta suy ngh� l�i/nothing")

	Say("<color=green>Ch� S�ng B�i: <color>Ng��i ch�n ch�n hay l�?",getn(tbSay),tbSay);
end
---------------------------------------------------------------------------------
function ChonChan()
	AskClientForNumber("ChonChan1", 10, 10000, "Nh�p s� Kim Phi�u")

end
---------------------------------------------------------------------------------
function ChonChan1(nCount)
if ModifyJinJuan(-nCount) >= 0 then	
 nRandom = random(1,6)
	 if ( nRandom == 1 or nRandom == 3 or nRandom == 5  ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>L�<color> - B�n �� thua!")
	 elseif ( nRandom == 2 or  nRandom == 4 or  nRandom == 6 ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>Ch�n<color> - B�n �� th�ng!")
ModifyJinJuan(nCount*2);
local strTemp1 = format("%s  ���c %s v Ch�n L�",GetName(),nCount*2);
if nCount >= 2500 then
AddGlobalNews(strTemp1);
Msg2Global(strTemp1);
end
	 end
else
Talk(1,"","<color=green>Kh�ng �� ti�n th� bi�n d�m!<color>")
end
end
---------------------------------------------------------------------------------
function ChonLe()
	AskClientForNumber("ChonLe1", 10, 10000, "Nh�p s� Kim Phi�u")

end
---------------------------------------------------------------------------------
function ChonLe1(nCount)
if ModifyJinJuan(-nCount) >= 0 then	
 nRandom = random(1,6)
	 if ( nRandom == 2 or nRandom == 4 or nRandom == 6  ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>Ch�n<color> - B�n �� thua!")
	 elseif ( nRandom == 1 or  nRandom == 3 or  nRandom == 5 ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>L�<color> - B�n �� th�ng!")
ModifyJinJuan(nCount*2);
local strTemp1 = format("%s  ���c %s v Ch�n L�",GetName(),nCount*2);
if nCount >= 2500 then
AddGlobalNews(strTemp1);
Msg2Global(strTemp1);
end
	 end
else
Talk(1,"","<color=green>Kh�ng �� ti�n th� bi�n d�m!<color>")
end
end
---------------------------------------------------------------------------------xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
function ChoiOanTuTi()
	local tbSay = {};
	
 		tinsert(tbSay, "Ta ch�n: K�o/ChonKeo")
 		tinsert(tbSay, "Ta ch�n: B�a/ChonBua")
		tinsert(tbSay, "Ta ch�n: Bao/ChonBao")
 		tinsert(tbSay, "�� ta suy ngh� l�i/nothing")

	Say("<color=green>Ch� S�ng B�i: <color>Ng��i mu�n ch�n g�?",getn(tbSay),tbSay);
end
---------------------------------------------------------------------------------
function ChonKeo()
	AskClientForNumber("ChonKeo1", 10, 10000, "Nh�p s� Kim Phi�u")

end
---------------------------------------------------------------------------------
function ChonKeo1(nCount)
if ModifyJinJuan(-nCount) >= 0 then	
 nRandom = random(1,3) --1 K�o 3 B�a 2 Bao
	 if ( nRandom == 1  ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>K�o<color> - K�t qu� h�a!")
ModifyJinJuan(nCount);
	 elseif ( nRandom == 2 ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>Bao<color> - B�n �� th�ng!")
ModifyJinJuan(nCount*2);
local strTemp1 = format("%s  ���c %s v O�n T� T�",GetName(),nCount*2);
if nCount >= 2500 then
AddGlobalNews(strTemp1);
Msg2Global(strTemp1);
end
	 elseif ( nRandom == 3 ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>B�a<color> - B�n �� thua!")
	 end
else
Talk(1,"","<color=green>Kh�ng �� ti�n th� bi�n d�m!<color>")
end
end
---------------------------------------------------------------------------------
function ChonBua()
	AskClientForNumber("ChonBua1", 10, 10000, "Nh�p s� Kim Phi�u")

end
---------------------------------------------------------------------------------
function ChonBua1(nCount)
if ModifyJinJuan(-nCount) >= 0 then	
 nRandom = random(1,3) --2 K�o 1 B�a 3 Bao
	 if ( nRandom == 1  ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>B�a<color> - K�t qu� h�a!")
ModifyJinJuan(nCount);
	 elseif ( nRandom == 2 ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>K�o<color> - B�n �� th�ng!")
ModifyJinJuan(nCount*2);
local strTemp1 = format("%s  ���c %s v O�n T� T�",GetName(),nCount*2);
if nCount >= 2500 then
AddGlobalNews(strTemp1);
Msg2Global(strTemp1);
end
	 elseif ( nRandom == 3 ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>Bao<color> - B�n �� thua!")
	 end
else
Talk(1,"","<color=green>Kh�ng �� ti�n th� bi�n d�m!<color>")
end
end
---------------------------------------------------------------------------------
function ChonBao()
	AskClientForNumber("ChonBao1", 10, 10000, "Nh�p s� Kim Phi�u")

end
---------------------------------------------------------------------------------
function ChonBao1(nCount)
if ModifyJinJuan(-nCount) >= 0 then	
 nRandom = random(1,3) --3 K�o 2 B�a 1 Bao
	 if ( nRandom == 1  ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>Bao<color> - K�t qu� h�a!")
ModifyJinJuan(nCount);
	 elseif ( nRandom == 2 ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>B�a<color> - B�n �� th�ng!")
ModifyJinJuan(nCount*2);
local strTemp1 = format("%s  ���c %s v O�n T� T�",GetName(),nCount*2);
if nCount >= 2500 then
AddGlobalNews(strTemp1);
Msg2Global(strTemp1);
end
	 elseif ( nRandom == 3 ) then
Talk(1,"","K�t qu� c�a ch�ng t�i: <color=green>K�o<color> - B�n �� thua!")
	 end
else
Talk(1,"","<color=green>Kh�ng �� ti�n th� bi�n d�m!<color>")
end
end
---------------------------------------------------------------------------------
function DoiVangBao()
	local tbSay = {};
	
 		tinsert(tbSay, "��i Ho�ng Kim ��i H�ng Bao x1/Doi1")
		tinsert(tbSay, "��i Ho�ng Kim ��i H�ng Bao x5/Doi2")
		tinsert(tbSay, "��i Ho�ng Kim ��i H�ng Bao x10/Doi3")
		tinsert(tbSay, "��i Ho�ng Kim ��i H�ng Bao (t�y ch�n)/Doi7")
		tinsert(tbSay, "��i B�ch Kim ��i H�ng Bao x1/Doi4")
		tinsert(tbSay, "��i B�ch Kim ��i H�ng Bao x5/Doi5")
		tinsert(tbSay, "��i B�ch Kim ��i H�ng Bao x10/Doi6")
		tinsert(tbSay, "��i B�ch Kim ��i H�ng Bao (t�y ch�n)/Doi8")
		tinsert(tbSay, "��i T� Kim H�ng Bao (t�y ch�n)/Doi9")
 		tinsert(tbSay, "Ta ch�a mu�n ��i/nothing")

	Say("<color=green>Ch� S�ng B�i: <color>Ng��i mu�n ��i bao Kim Phi�u lo�i n�o?",getn(tbSay),tbSay);
end
---------------------------------------------------------------------------------
function Doi1()
if ModifyJinJuan(-1200) == 1 then
AddItem(2,1,539,1)
else
Talk(1,"","S� l��ng Kim Phi�u trong h�nh trang kh�ng �� 1200")
end
end
---------------------------------------------------------------------------------
function Doi2()
if ModifyJinJuan(-6000) == 1 then
AddItem(2,1,539,5)
else
Talk(1,"","S� l��ng Kim Phi�u trong h�nh trang kh�ng �� 6000")
end
end
---------------------------------------------------------------------------------
function Doi3()
if ModifyJinJuan(-12000) == 1 then
AddItem(2,1,539,10)
else
Talk(1,"","S� l��ng Kim Phi�u trong h�nh trang kh�ng �� 12000")
end
end
---------------------------------------------------------------------------------
function Doi4()
if ModifyJinJuan(-4800) == 1 then
AddItem(2,1,30229,1)
else
Talk(1,"","S� l��ng Kim Phi�u trong h�nh trang kh�ng �� 4800")
end
end
---------------------------------------------------------------------------------
function Doi5()
if ModifyJinJuan(-24000) == 1 then
AddItem(2,1,30229,5)
else
Talk(1,"","S� l��ng Kim Phi�u trong h�nh trang kh�ng �� 24000")
end
end
---------------------------------------------------------------------------------
function Doi6()
if ModifyJinJuan(-48000) == 1 then
AddItem(2,1,30229,10)
else
Talk(1,"","S� l��ng Kim Phi�u trong h�nh trang kh�ng �� 48000")
end
end
---------------------------------------------------------------------------------
function Doi7()
	AskClientForNumber("Doi71", 1, 50, "Nh�p s� l��ng")

end
---------------------------------------------------------------------------------
function Doi71(nCount)
if ModifyJinJuan(-1200*nCount) == 1 then
AddItem(2,1,539,nCount)
else
local strTemp1 = format("S� l��ng Kim Phi�u trong h�nh trang kh�ng �� %s",1200*nCount);
Talk(1,"",strTemp1)
end
end
---------------------------------------------------------------------------------
function Doi8()
	AskClientForNumber("Doi81", 1, 20, "Nh�p s� l��ng")

end
---------------------------------------------------------------------------------
function Doi81(nCount)
if ModifyJinJuan(-4800*nCount) == 1 then
AddItem(2,1,30229,nCount)
else
local strTemp1 = format("S� l��ng Kim Phi�u trong h�nh trang kh�ng �� %s",4800*nCount);
Talk(1,"",strTemp1)
end
end
---------------------------------------------------------------------------------
function Doi9()
	AskClientForNumber("Doi91", 1, 100, "Nh�p s� l��ng")

end
---------------------------------------------------------------------------------
function Doi91(nCount)
if ModifyJinJuan(-400*nCount) == 1 then
AddItem(2,1,537,nCount)
else
local strTemp1 = format("S� l��ng Kim Phi�u trong h�nh trang kh�ng �� %s",400*nCount);
Talk(1,"",strTemp1)
end
end
---------------------------------------------------------------------------------
