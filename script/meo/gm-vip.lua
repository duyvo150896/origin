function CountPlayerOnline()
	local nCount = 0;
	local player = FirstPlayer()
	while (player > 0) do
		nCount = nCount + 1;
		player = NextPlayer(player)
	end
	return nCount;
end

function SplitString(str,splitor)
	return split(str,splitor);
end;

function split(str,splitor)
	if(splitor==nil) then
		splitor=","
	end
	local strArray={}
	local strStart=1
	local splitorLen = strlen(splitor)
	local index=strfind(str,splitor,strStart)
	if(index==nil) then
		strArray[1]=str
		return strArray
	end
	local i=1
	while index do
		strArray[i]=strsub(str,strStart,index-1)
		i=i+1
		strStart=index+splitorLen
		index = strfind(str,splitor,strStart)
	end
	strArray[i]=strsub(str,strStart,strlen(str))
	return strArray
end
--============GM ADMIN MAIN================
function TinhNangAdmin()
	local nW, nX, nY = GetWorldPos() 
    local nIdPlay = PlayerIndex 
	local tSay = {}
	local nRoute = GetPlayerRoute();
		tSay = {
			"Xem danh s�ch ng��i ch�i �ang Online/ListPlayer",
			"Kh�ng c� g�/nothing",
		}
	Say("<color=green>L�u �!!! ��y l� m�t trong nh�ng t�nh n�ng ��c bi�t, kh�ng l�m d�ng v� ��o ��c c�a m�t ng��i qu�n tr� game<color>"
			.."\nXin Ch�o Admin: <color=red>"..GetName().."<color>!"
			.."\nID b�n �� v� t�a �� chu�n hi�n t�i c�a b�n: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color>"
			.."\n<color>Tr�n server hi�n c�: <color=green>"..CountPlayerOnline().." ng��i ch�i online<color>", getn(tSay), tSay);
end

function ListPlayer()
		local tbSay = {}
			for i = 1, CountPlayerOnline() do
				oldIndex = PlayerIndex
				PlayerIndex = i
				tinsert(tbSay,i.." - "..GetName().."/#GetInformation("..i..")")
			end
			tinsert(tbSay,"Tho�t/nothing")
			PlayerIndex = oldIndex
		Say("��y l� danh s�ch nh�ng ng��i ch�i �ang <color=green>Online<color>, <color=red>Vui L�ng Xem X�t K� M�i H�nh ��ng C�a M�nh v� Ng��i Ch�i c�n x� l�<color> tr��c khi ��a ra quy�t ��nh s� d�ng.", getn(tbSay), tbSay)
end

function GetInformation(i)
	oldIndex = PlayerIndex
	PlayerIndex = i
	local account = GetAccount()
	local name = GetName()
	local w,x,y = GetWorldPos()
	local fact = GetPlayerFaction()
	local route = GetPlayerRoute()
	local level = GetLevel()
	local gold = GetCash()
	local sex = GetSex()
	PlayerIndex = oldIndex
	SetTaskTemp(200,i)
	local tSay = {}
		tSay = {
	--		"Th�m v�ng cho Gamer (d�ng s� �m �� tr� v�ng)/AddGold",
			"L�y Item b�ng ID/AddItemToGamer",
			"Kick Gamer/KickGamer",
			"�i ��n v� tr� c�a Gamer/GotoGamer",
			"C�m chat/BlockChat",
			"M� Chat/UnblockChat",
	--		"��i t�n Gamer/RenameGamer",
			"G� to�n b� �� c�a Gamer �ang m�c/UnequipGamer",
	--		"Th�m hi�u �ng ��c bi�t v�o Gamer/AddSpecialEffect",
			"Kh�ng c� g�/Nothing",
		}
	Say("T�n t�i kho�n:<color=green> "..account.."<color>  -  T�n nh�n V�t   :<color=green> "..name.."<color>\nC�p ��   :<color=green> "..level.."<color> \nV� tr�   : <color=green>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>\nM�n ph�i: <color=green>"..fact.."<color>  -  Chuy�n h��ng: <color=green>"..route.."<color>", getn(tSay), tSay);
end
--==============GM FUNCTION=============
function AddItemToGamer() 
	AskClientForString("AddItemToGamer_2","",1,20,"Nh�p V�o Item Code:") 
end

function AddItemToGamer_2(szItem)
	local szICode = SplitString(szItem, ",");
	local n = getn(szICode);
	AddItem(szICode[1],szICode[2],szICode[3],szICode[4],szICode[5],szICode[6])
--	Msg2Player(szICode[1])
end

function AddGold()
	AskClientForString("AddGold_2", "", 1, 10, "Nh�p s� ti�n mu�n chuy�n kho�n");
end

function AddGold_2(num)
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		Earn(num)
	Msg2Player("B�n ���c GM chuy�n kho�n cho "..num.." l��ng!!!")
	PlayerIndex=oldIndex 
	Msg2Player("B�n �� chuy�n kho�n th�nh c�ng")
end

function KickGamer() 
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		ExitGame()
	PlayerIndex=oldIndex 
	Msg2Player("Kick gamer th�nh c�ng")
end; 

function UnblockChat() 
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200) 
	SetChatFlag(0) 
		Msg2Player("B�n ���c m� kh�a chat tr�n m�i t�n s� !") 
	PlayerIndex=oldIndex
	Msg2Player("M� chat th�nh c�ng!!!")
end

function BlockChat() 
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200) 
	SetChatFlag(1) 
		Msg2Player("��t m� m�y �� b� kh�a m�m tr�n m�i t�n s� CHAT, s�a h� b� m�y c�i!") 
	PlayerIndex=oldIndex
	Msg2Player("C�m chat th�nh c�ng!!!")
end 

function UnequipGamer()
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		for i = 0, 20 do
			UnEquipAtPosition(i)
		end
		Msg2Player("Ch�t con m� m�y nh�! L�n sau ch�a nh�! B� m�y l�y �� c�nh c�o m�y �� nh�!")
	PlayerIndex=oldIndex 
	Msg2Player("�� g� h�t �� c�a Gamer")	
end

function GotoGamer()
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		local w,x,y = GetWorldPos()
	PlayerIndex=oldIndex 
	NewWorld(w,x,y)
	Msg2Player("Di chuy�n ��n gamer th�nh c�ng")
end