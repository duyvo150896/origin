Include("\\script\\lib\\globalfunctions.lua");

function OnUse(nItem)
	Get();
end

g_szTitleMain = "<color=green>M�nh kim phi�u: <color> Ng��i mu�n l�m g�?"
function Get()
	local tSay = {
		"Ti�u hao 1000 m�nh kim phi�u nh�n 1 kim phi�u/mbk2kp",
		"Tho�t/nothing",
	};
	Say(g_szTitleMain, getn(tSay), tSay);
end

function mbk2kp()
	local mkp_ID =  0
	local kp_ID = 1
	if GetItemCount(2,1,mkp_ID) < 1000 then
		Talk(1,"","Ng��i kh�ng �� 1000 m�nh kim phi�u");
		return
	elseif GetItemCount(2,1,mkp_ID) >= 1000 then
		DelItem(2,1,mkp_ID,1000);
		AddItem(2,1,kp_ID,1);
		Msg2Player("��i hi�p nh�n ���c 1 kim phi�u !!!")
	end
end