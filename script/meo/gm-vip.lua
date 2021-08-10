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
			"Xem danh s¸ch ng­êi ch¬i ®ang Online/ListPlayer",
			"Kh«ng cã g×/nothing",
		}
	Say("<color=green>L­u ý!!! §©y lµ mét trong nh÷ng tÝnh n¨ng ®Æc biÖt, kh«ng l¹m dïng v× ®¹o ®øc cña mét ng­êi qu¶n trÞ game<color>"
			.."\nXin Chµo Admin: <color=red>"..GetName().."<color>!"
			.."\nID b¶n ®å vµ täa ®é chuÈn hiÖn t¹i cña b¹n: <color=green>"..nW.."<color> <color=blue>"..nX.."/"..nY.."<color>"
			.."\n<color>Trªn server hiÖn cã: <color=green>"..CountPlayerOnline().." ng­êi ch¬i online<color>", getn(tSay), tSay);
end

function ListPlayer()
		local tbSay = {}
			for i = 1, CountPlayerOnline() do
				oldIndex = PlayerIndex
				PlayerIndex = i
				tinsert(tbSay,i.." - "..GetName().."/#GetInformation("..i..")")
			end
			tinsert(tbSay,"Tho¸t/nothing")
			PlayerIndex = oldIndex
		Say("§©y lµ danh s¸ch nh÷ng ng­êi ch¬i ®ang <color=green>Online<color>, <color=red>Vui Lßng Xem XÐt Kü Mäi Hµnh §éng Cña M×nh vµ Ng­êi Ch¬i cÇn xö lý<color> tr­íc khi ®­a ra quyÕt ®Þnh sö dông.", getn(tbSay), tbSay)
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
	--		"Thªm vµng cho Gamer (dïng sè ©m ®Ó trõ vµng)/AddGold",
			"LÊy Item b»ng ID/AddItemToGamer",
			"Kick Gamer/KickGamer",
			"§i ®Õn vÞ trÝ cña Gamer/GotoGamer",
			"CÊm chat/BlockChat",
			"Më Chat/UnblockChat",
	--		"§æi tªn Gamer/RenameGamer",
			"Gì toµn bé ®å cña Gamer ®ang mÆc/UnequipGamer",
	--		"Thªm hiÖu øng ®Æc biÖt vµo Gamer/AddSpecialEffect",
			"Kh«ng cã g×/Nothing",
		}
	Say("Tªn tµi kho¶n:<color=green> "..account.."<color>  -  Tªn nh©n VËt   :<color=green> "..name.."<color>\nCÊp ®é   :<color=green> "..level.."<color> \nVÞ trÝ   : <color=green>"..w.."<color>,<color=green>"..x.."<color>,<color=green>"..y.."<color>\nM«n ph¸i: <color=green>"..fact.."<color>  -  Chuyªn h­íng: <color=green>"..route.."<color>", getn(tSay), tSay);
end
--==============GM FUNCTION=============
function AddItemToGamer() 
	AskClientForString("AddItemToGamer_2","",1,20,"NhËp Vµo Item Code:") 
end

function AddItemToGamer_2(szItem)
	local szICode = SplitString(szItem, ",");
	local n = getn(szICode);
	AddItem(szICode[1],szICode[2],szICode[3],szICode[4],szICode[5],szICode[6])
--	Msg2Player(szICode[1])
end

function AddGold()
	AskClientForString("AddGold_2", "", 1, 10, "NhËp sè tiÒn muèn chuyÓn kho¶n");
end

function AddGold_2(num)
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		Earn(num)
	Msg2Player("B¹n ®­îc GM chuyÓn kho¶n cho "..num.." l­îng!!!")
	PlayerIndex=oldIndex 
	Msg2Player("B¹n ®· chuyÓn kho¶n thµnh c«ng")
end

function KickGamer() 
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		ExitGame()
	PlayerIndex=oldIndex 
	Msg2Player("Kick gamer thµnh c«ng")
end; 

function UnblockChat() 
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200) 
	SetChatFlag(0) 
		Msg2Player("B¹n ®­îc më khãa chat trªn mäi tÇn sè !") 
	PlayerIndex=oldIndex
	Msg2Player("Më chat thµnh c«ng!!!")
end

function BlockChat() 
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200) 
	SetChatFlag(1) 
		Msg2Player("§Þt mÑ mµy ®· bÞ khãa mçm trªn mäi tÇn sè CHAT, sña hé bè mµy c¸i!") 
	PlayerIndex=oldIndex
	Msg2Player("CÊm chat thµnh c«ng!!!")
end 

function UnequipGamer()
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		for i = 0, 20 do
			UnEquipAtPosition(i)
		end
		Msg2Player("ChÕt con mÑ mµy nhÐ! LÇn sau chõa nhÐ! Bè mµy lÊy ®å c¶nh c¸o mµy ®ã nhÐ!")
	PlayerIndex=oldIndex 
	Msg2Player("§· gì hÕt ®å cña Gamer")	
end

function GotoGamer()
	oldIndex = PlayerIndex
	PlayerIndex=GetTaskTemp(200)
		local w,x,y = GetWorldPos()
	PlayerIndex=oldIndex 
	NewWorld(w,x,y)
	Msg2Player("Di chuyÓn ®Õn gamer thµnh c«ng")
end