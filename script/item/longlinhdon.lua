Include("\\script\\lib\\globalfunctions.lua");

function OnUse(nItem)
	Get();
end

g_szTitleMain = "<color=green>Long linh ��n: <color> Ng��i mu�n l�m g�?"
function Get()
	local tSay = {
		"Ti�u hao Long linh ��n nh�n 500 tri�u kinh nghi�m/longlinhdon",
		"Tho�t/nothing",
	};
	Say(g_szTitleMain, getn(tSay), tSay);
end

function longlinhdon()
	ModifyExp(500 * 1000000) 
	Msg2Player("��i hi�p nh�n ���c 500 tri�u �i�m kinh nghi�m !!!")
	DelItem(2,1,50007,1);
end