Include("\\script\\lib\\globalfunctions.lua");

function OnUse(nItem)
	Get();
end

g_szTitleMain = "<color=green>Long linh Æ¨n: <color> Ng≠Íi muËn lµm g◊?"
function Get()
	local tSay = {
		"Ti™u hao Long linh Æ¨n nhÀn 500 tri÷u kinh nghi÷m/longlinhdon",
		"Tho∏t/nothing",
	};
	Say(g_szTitleMain, getn(tSay), tSay);
end

function longlinhdon()
	ModifyExp(500 * 1000000) 
	Msg2Player("ßπi hi÷p nhÀn Æ≠Óc 500 tri÷u Æi”m kinh nghi÷m !!!")
	DelItem(2,1,50007,1);
end