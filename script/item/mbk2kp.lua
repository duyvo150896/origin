Include("\\script\\lib\\globalfunctions.lua");

function OnUse(nItem)
	Get();
end

g_szTitleMain = "<color=green>M¶nh kim phiÕu: <color> Ng­êi muèn lµm g×?"
function Get()
	local tSay = {
		"Tiªu hao 1000 m¶nh kim phiÕu nhËn 1 kim phiÕu/mbk2kp",
		"Tho¸t/nothing",
	};
	Say(g_szTitleMain, getn(tSay), tSay);
end

function mbk2kp()
	local mkp_ID =  0
	local kp_ID = 1
	if GetItemCount(2,1,mkp_ID) < 1000 then
		Talk(1,"","Ng­¬i kh«ng ®ñ 1000 mµnh kim phiÕu");
		return
	elseif GetItemCount(2,1,mkp_ID) >= 1000 then
		DelItem(2,1,mkp_ID,1000);
		AddItem(2,1,kp_ID,1);
		Msg2Player("§¹i hiÖp nhËn ®­îc 1 kim phiÕu !!!")
	end
end