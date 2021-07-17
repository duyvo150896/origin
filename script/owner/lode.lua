Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\vng\\lib\\vnglib_textdata.lua") 


function main()

	if kiem_tra() == 0 then
	Say("C¸c h¹ ch­a ph¶i lµ Héi Viªn.",2,"Ta muèn ®¨ng ký tham gia/dang_ky","§Ó ta suy nghÜ l¹i/nothing")
	return
	end

	local szName = "Chñ Sßng Bµi"
	local szHeader = "<color=green>"..szName.." :<color>C¸c h¹ muèn ch¬i g×"
	local tbSayDialog = {};
	local nSaySize = 0;

	tinsert(tbSayDialog, "Ch¬i BÇu Cua/choibaucua")
	tinsert(tbSayDialog, "Ch¬i O¼n Tï T×/ChoiOanTuTi")
	tinsert(tbSayDialog, "Ch¬i Ch½n LÎ/ChoiChanLe")
--	tinsert(tbSayDialog, "§æi Kim PhiÕu Bao/DoiVangBao")

	tinsert(tbSayDialog, "Ta chØ ghÐ ngang/nothing")
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
		Msg2Global("Chóc mõng "..GetName().. "®· trë thµnh héi viªn.")
	else	
		Talk(1,"","CÇn 2000 Kim PhiÕu míi ®­îc tham gia héi viªn")
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
		szTrangthai = "Kh«ng thÓ më th­ëng"
	else
		szTrangthai = "Cã thÓ më th­ëng"
	end
	local szName = "Chñ Sßng Bµi"
	local szHeader = "<color=green>"..szName.." :<color>Sè tiÒn vÝ: <color=red>"..Tiendangco.."<color>. Sè tiÒn c­îc: <color=red>"..Tongtiencuoc.."<color>. Tr¹ng Th¸i: <color=gold>"..szTrangthai.."<color>"
	local tbXucXac = {
			[1] = {"BÇu"},
			[2] = {"Cua"},
			[3] = {"T«m"},
			[4] = {"C¸"},
			[5] = {"Nai"},
			[6] = {"Gµ"},
		}
		
		SoBau = GetTask(3461);
		SoCua = GetTask(3462);
		SoTom = GetTask(3463);
		SoCa = GetTask(3464);
		SoNai = GetTask(3465);
		SoGa = GetTask(3466);


		local tbSayDialog = {};

		tinsert(tbSayDialog,1,"§Æt " .. tbXucXac[1][1] .. " (" ..SoBau  .. " Kim PhiÕu)/LuaChonBau")
		tinsert(tbSayDialog,1,"§Æt " .. tbXucXac[2][1] .. " (" ..SoCua  .. " Kim PhiÕu)/LuaChonCua")
		tinsert(tbSayDialog,1,"§Æt " .. tbXucXac[3][1] .. " (" ..SoTom  .. " Kim PhiÕu)/LuaChonTom")
		tinsert(tbSayDialog,1,"§Æt " .. tbXucXac[4][1] .. " (" ..SoCa  .. " Kim PhiÕu)/LuaChonCa")
		tinsert(tbSayDialog,1,"§Æt " .. tbXucXac[5][1] .. " (" ..SoNai  .. " Kim PhiÕu)/LuaChonNai")
		tinsert(tbSayDialog,1,"§Æt " .. tbXucXac[6][1] .. " (" ..SoGa  .. " Kim PhiÕu)/LuaChonGa")

		tinsert(tbSayDialog, "Më Th­ëng/mothuong_baucua")
		tinsert(tbSayDialog, "Lµm míi gi¸ trÞ/reset_baucua")


		tinsert(tbSayDialog, "Ta chØ ghÐ ngang/nothing")
		Say(szHeader, getn(tbSayDialog), tbSayDialog)	

end
------------------------------------------------------------------------------------------
function mothuong_baucua()

	local Tongtiencuoc = GetTask(3461) + GetTask(3462) + GetTask(3463) + GetTask(3464) + GetTask(3465) + GetTask(3466);

	if GetVipJinJuan() < Tongtiencuoc then
	return choibaucua();
	end
--Thanh to¸n
ModifyJinJuan(-Tongtiencuoc);

mRandom = random(1,6);
nRandom = random(1,6);
pRandom = random(1,6);

--Xóc s¾c 1
if mRandom == 1 then
	xx1 = GetTask(3461);
	yy1 = "BÇu";
elseif mRandom == 2 then
	xx1 = GetTask(3462);
	yy1 = "Cua";
elseif mRandom == 3 then
	xx1 = GetTask(3463);
	yy1 = "T«m";
elseif mRandom == 4 then
	xx1 = GetTask(3464);
	yy1 = "C¸";
elseif mRandom == 5 then
	xx1 = GetTask(3465);
	yy1 = "Nai";
elseif mRandom == 6 then
	xx1 = GetTask(3466);
	yy1 = "Gµ";
end



--Xóc s¾c 2
if nRandom == 1 then
	xx2 = GetTask(3461);
	yy2 = "BÇu";
elseif nRandom == 2 then
	xx2 = GetTask(3462);
	yy2 = "Cua";
elseif nRandom == 3 then
	xx2 = GetTask(3463);
	yy2 = "T«m";
elseif nRandom == 4 then
	xx2 = GetTask(3464);
	yy2 = "C¸";
elseif nRandom == 5 then
	xx2 = GetTask(3465);
	yy2 = "Nai";
elseif nRandom == 6 then
	xx2 = GetTask(3466);
	yy2 = "Gµ";
end



--Xóc s¾c 3
if pRandom == 1 then
	xx3 = GetTask(3461);
	yy3 = "BÇu";
elseif pRandom == 2 then
	xx3 = GetTask(3462);
	yy3 = "Cua";
elseif pRandom == 3 then
	xx3 = GetTask(3463);
	yy3 = "T«m";
elseif pRandom == 4 then
	xx3 = GetTask(3464);
	yy3 = "C¸";
elseif pRandom == 5 then
	xx3 = GetTask(3465);
	yy3 = "Nai";
elseif pRandom == 6 then
	xx3 = GetTask(3466);
	yy3 = "Gµ";
end


--Trao th­ëng



szTongthang = xx1 + xx2 + xx3;
ModifyJinJuan(szTongthang)

if szTongthang > Tongtiencuoc then
	szMat = "Chóc mõng b¹n ®· chiÕn th¾ng"
elseif szTongthang == Tongtiencuoc then
	szMat = "TrËn nµy hßa vèn"
elseif szTongthang < Tongtiencuoc then
	szMat = "TrËn nµy lç mÊt råi...huhu!"
end

local sLine1 = "KÕt qu¶ më th­ëng:   <color=green>"..yy1.."<color>      <color=green>"..yy2.."<color>      <color=green>"..yy3.."<color>\n"
local sLine2 = "Sè Kim PhiÕu thô h­ëng:   <color=gold>"..xx1.."<color>   +   <color=gold>"..xx2.."<color>   +    <color=gold>"..xx3.."<color>   <color=gold> = "..szTongthang.."<color>\n"
local sLine3 = "§· c­îc: <color=green>BÇu:"..GetTask(3461).."<color> + <color=green>Cua:"..GetTask(3462).."<color> + <color=green>T«m:"..GetTask(3463).."<color> + <color=green>C¸:"..GetTask(3464).."<color> + <color=green>Nai:"..GetTask(3465).."<color> + <color=green>Gµ:"..GetTask(3466).."<color> = <color=gold>"..Tongtiencuoc.."<color>\n"
local sLine4 = "Chung cuéc:   <color=green>"..szMat.."<color>\n"



Say(sLine3..sLine1..sLine2..sLine4, 0)



--reset l¹i
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
AskClientForNumber("LuaChonBau_ok",100,10000,"BÇu:");
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
AskClientForNumber("LuaChonTom_ok",100,10000,"T«m:");
end
------------------------------------------------------------------------------------------
function LuaChonTom_ok(nTom)
SetTask(3463,nTom);
choibaucua();
end
------------------------------------------------------------------------------------------
function LuaChonCa()
SetTask(3464,0)
AskClientForNumber("LuaChonCa_ok",100,10000,"C¸:");
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
AskClientForNumber("LuaChonGa_ok",100,10000,"Gµ:");
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
	
 		tinsert(tbSay, "Ta chän: Ch½n/ChonChan")
 		tinsert(tbSay, "Ta chän: LÎ/ChonLe")
 		tinsert(tbSay, "§Ó ta suy nghØ l¹i/nothing")

	Say("<color=green>Chñ Sßng Bµi: <color>Ng­¬i chän ch½n hay lÎ?",getn(tbSay),tbSay);
end
---------------------------------------------------------------------------------
function ChonChan()
	AskClientForNumber("ChonChan1", 10, 10000, "NhËp sè Kim PhiÕu")

end
---------------------------------------------------------------------------------
function ChonChan1(nCount)
if ModifyJinJuan(-nCount) >= 0 then	
 nRandom = random(1,6)
	 if ( nRandom == 1 or nRandom == 3 or nRandom == 5  ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>LÎ<color> - B¹n ®· thua!")
	 elseif ( nRandom == 2 or  nRandom == 4 or  nRandom == 6 ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>Ch½n<color> - B¹n ®· th¾ng!")
ModifyJinJuan(nCount*2);
local strTemp1 = format("%s  ®­îc %s v Ch½n LÎ",GetName(),nCount*2);
if nCount >= 2500 then
AddGlobalNews(strTemp1);
Msg2Global(strTemp1);
end
	 end
else
Talk(1,"","<color=green>Kh«ng ®ñ tiÒn th× biÕn dïm!<color>")
end
end
---------------------------------------------------------------------------------
function ChonLe()
	AskClientForNumber("ChonLe1", 10, 10000, "NhËp sè Kim PhiÕu")

end
---------------------------------------------------------------------------------
function ChonLe1(nCount)
if ModifyJinJuan(-nCount) >= 0 then	
 nRandom = random(1,6)
	 if ( nRandom == 2 or nRandom == 4 or nRandom == 6  ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>Ch½n<color> - B¹n ®· thua!")
	 elseif ( nRandom == 1 or  nRandom == 3 or  nRandom == 5 ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>LÎ<color> - B¹n ®· th¾ng!")
ModifyJinJuan(nCount*2);
local strTemp1 = format("%s  ®­îc %s v Ch½n LÎ",GetName(),nCount*2);
if nCount >= 2500 then
AddGlobalNews(strTemp1);
Msg2Global(strTemp1);
end
	 end
else
Talk(1,"","<color=green>Kh«ng ®ñ tiÒn th× biÕn dïm!<color>")
end
end
---------------------------------------------------------------------------------xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
function ChoiOanTuTi()
	local tbSay = {};
	
 		tinsert(tbSay, "Ta chän: KÐo/ChonKeo")
 		tinsert(tbSay, "Ta chän: Bóa/ChonBua")
		tinsert(tbSay, "Ta chän: Bao/ChonBao")
 		tinsert(tbSay, "§Ó ta suy nghØ l¹i/nothing")

	Say("<color=green>Chñ Sßng Bµi: <color>Ng­¬i muèn chän g×?",getn(tbSay),tbSay);
end
---------------------------------------------------------------------------------
function ChonKeo()
	AskClientForNumber("ChonKeo1", 10, 10000, "NhËp sè Kim PhiÕu")

end
---------------------------------------------------------------------------------
function ChonKeo1(nCount)
if ModifyJinJuan(-nCount) >= 0 then	
 nRandom = random(1,3) --1 KÐo 3 Bóa 2 Bao
	 if ( nRandom == 1  ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>KÐo<color> - KÕt qu¶ hßa!")
ModifyJinJuan(nCount);
	 elseif ( nRandom == 2 ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>Bao<color> - B¹n ®· th¾ng!")
ModifyJinJuan(nCount*2);
local strTemp1 = format("%s  ®­îc %s v O¼n Tï T×",GetName(),nCount*2);
if nCount >= 2500 then
AddGlobalNews(strTemp1);
Msg2Global(strTemp1);
end
	 elseif ( nRandom == 3 ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>Bóa<color> - B¹n ®· thua!")
	 end
else
Talk(1,"","<color=green>Kh«ng ®ñ tiÒn th× biÕn dïm!<color>")
end
end
---------------------------------------------------------------------------------
function ChonBua()
	AskClientForNumber("ChonBua1", 10, 10000, "NhËp sè Kim PhiÕu")

end
---------------------------------------------------------------------------------
function ChonBua1(nCount)
if ModifyJinJuan(-nCount) >= 0 then	
 nRandom = random(1,3) --2 KÐo 1 Bóa 3 Bao
	 if ( nRandom == 1  ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>Bóa<color> - KÕt qu¶ hßa!")
ModifyJinJuan(nCount);
	 elseif ( nRandom == 2 ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>KÐo<color> - B¹n ®· th¾ng!")
ModifyJinJuan(nCount*2);
local strTemp1 = format("%s  ®­îc %s v O¼n Tï T×",GetName(),nCount*2);
if nCount >= 2500 then
AddGlobalNews(strTemp1);
Msg2Global(strTemp1);
end
	 elseif ( nRandom == 3 ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>Bao<color> - B¹n ®· thua!")
	 end
else
Talk(1,"","<color=green>Kh«ng ®ñ tiÒn th× biÕn dïm!<color>")
end
end
---------------------------------------------------------------------------------
function ChonBao()
	AskClientForNumber("ChonBao1", 10, 10000, "NhËp sè Kim PhiÕu")

end
---------------------------------------------------------------------------------
function ChonBao1(nCount)
if ModifyJinJuan(-nCount) >= 0 then	
 nRandom = random(1,3) --3 KÐo 2 Bóa 1 Bao
	 if ( nRandom == 1  ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>Bao<color> - KÕt qu¶ hßa!")
ModifyJinJuan(nCount);
	 elseif ( nRandom == 2 ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>Bóa<color> - B¹n ®· th¾ng!")
ModifyJinJuan(nCount*2);
local strTemp1 = format("%s  ®­îc %s v O¼n Tï T×",GetName(),nCount*2);
if nCount >= 2500 then
AddGlobalNews(strTemp1);
Msg2Global(strTemp1);
end
	 elseif ( nRandom == 3 ) then
Talk(1,"","KÕt qu¶ cña chóng t«i: <color=green>KÐo<color> - B¹n ®· thua!")
	 end
else
Talk(1,"","<color=green>Kh«ng ®ñ tiÒn th× biÕn dïm!<color>")
end
end
---------------------------------------------------------------------------------
function DoiVangBao()
	local tbSay = {};
	
 		tinsert(tbSay, "§æi Hoµng Kim §¹i Hång Bao x1/Doi1")
		tinsert(tbSay, "§æi Hoµng Kim §¹i Hång Bao x5/Doi2")
		tinsert(tbSay, "§æi Hoµng Kim §¹i Hång Bao x10/Doi3")
		tinsert(tbSay, "§æi Hoµng Kim §¹i Hång Bao (tïy chän)/Doi7")
		tinsert(tbSay, "§æi B¹ch Kim §¹i Hång Bao x1/Doi4")
		tinsert(tbSay, "§æi B¹ch Kim §¹i Hång Bao x5/Doi5")
		tinsert(tbSay, "§æi B¹ch Kim §¹i Hång Bao x10/Doi6")
		tinsert(tbSay, "§æi B¹ch Kim §¹i Hång Bao (tïy chän)/Doi8")
		tinsert(tbSay, "§æi Tö Kim Hång Bao (tïy chän)/Doi9")
 		tinsert(tbSay, "Ta ch­a muèn ®æi/nothing")

	Say("<color=green>Chñ Sßng Bµi: <color>Ng­¬i muèn ®æi bao Kim PhiÕu lo¹i nµo?",getn(tbSay),tbSay);
end
---------------------------------------------------------------------------------
function Doi1()
if ModifyJinJuan(-1200) == 1 then
AddItem(2,1,539,1)
else
Talk(1,"","Sè l­îng Kim PhiÕu trong hµnh trang kh«ng ®ñ 1200")
end
end
---------------------------------------------------------------------------------
function Doi2()
if ModifyJinJuan(-6000) == 1 then
AddItem(2,1,539,5)
else
Talk(1,"","Sè l­îng Kim PhiÕu trong hµnh trang kh«ng ®ñ 6000")
end
end
---------------------------------------------------------------------------------
function Doi3()
if ModifyJinJuan(-12000) == 1 then
AddItem(2,1,539,10)
else
Talk(1,"","Sè l­îng Kim PhiÕu trong hµnh trang kh«ng ®ñ 12000")
end
end
---------------------------------------------------------------------------------
function Doi4()
if ModifyJinJuan(-4800) == 1 then
AddItem(2,1,30229,1)
else
Talk(1,"","Sè l­îng Kim PhiÕu trong hµnh trang kh«ng ®ñ 4800")
end
end
---------------------------------------------------------------------------------
function Doi5()
if ModifyJinJuan(-24000) == 1 then
AddItem(2,1,30229,5)
else
Talk(1,"","Sè l­îng Kim PhiÕu trong hµnh trang kh«ng ®ñ 24000")
end
end
---------------------------------------------------------------------------------
function Doi6()
if ModifyJinJuan(-48000) == 1 then
AddItem(2,1,30229,10)
else
Talk(1,"","Sè l­îng Kim PhiÕu trong hµnh trang kh«ng ®ñ 48000")
end
end
---------------------------------------------------------------------------------
function Doi7()
	AskClientForNumber("Doi71", 1, 50, "NhËp sè l­îng")

end
---------------------------------------------------------------------------------
function Doi71(nCount)
if ModifyJinJuan(-1200*nCount) == 1 then
AddItem(2,1,539,nCount)
else
local strTemp1 = format("Sè l­îng Kim PhiÕu trong hµnh trang kh«ng ®ñ %s",1200*nCount);
Talk(1,"",strTemp1)
end
end
---------------------------------------------------------------------------------
function Doi8()
	AskClientForNumber("Doi81", 1, 20, "NhËp sè l­îng")

end
---------------------------------------------------------------------------------
function Doi81(nCount)
if ModifyJinJuan(-4800*nCount) == 1 then
AddItem(2,1,30229,nCount)
else
local strTemp1 = format("Sè l­îng Kim PhiÕu trong hµnh trang kh«ng ®ñ %s",4800*nCount);
Talk(1,"",strTemp1)
end
end
---------------------------------------------------------------------------------
function Doi9()
	AskClientForNumber("Doi91", 1, 100, "NhËp sè l­îng")

end
---------------------------------------------------------------------------------
function Doi91(nCount)
if ModifyJinJuan(-400*nCount) == 1 then
AddItem(2,1,537,nCount)
else
local strTemp1 = format("Sè l­îng Kim PhiÕu trong hµnh trang kh«ng ®ñ %s",400*nCount);
Talk(1,"",strTemp1)
end
end
---------------------------------------------------------------------------------
