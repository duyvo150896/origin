--新资料片礼包合成
Include("\\script\\online\\collect_card\\cc_define.lua")
Include("\\script\\lib\\globalfunctions.lua")


function OnUse(nItem)
	local tSay = {
		format("Ti猽 hao %d ti襫 v祅g i l蕐 L� Bao N﹏g C蕄 Phi猲 B秐 M韎/#sure_exchange()", CC_ZLP_PARK_COST, 1),
		"Ta suy ngh� l筰/do_nothing",	
	}
	Say("Чi hi謕 mu鑞 i L� Bao N﹏g C蕄 ch�?", getn(tSay), tSay);
end

function sure_exchange()
	local nFreeRoom = GetFreeItemRoom();
	local nCount = min(GetItemCount(2, 1, 30540), floor(GetCash()/(CC_ZLP_PARK_COST * 10000)));
	AskClientForNumber("sure_exchange_deal",0,min(nFreeRoom, nCount),"Nh藀 s� lng","")
end

function sure_exchange_deal(nNum)
	for i = 1, nNum do
		if GetFreeItemRoom() < 2 then
			Talk(1,"","Kh玭g gian h祅h trang kh玭g ");
			return 0;
		end
		if GetItemCount(2, 1, 30540) < 1 then 
			Talk(1,"","Thi誹 L� Bao N﹏g C蕄 Phi猲 B秐 M韎, kh玭g th� n﹏g c蕄.");
			return 0;
		end
		if GetCash() < CC_ZLP_PARK_COST * 10000 then
			Talk(1,"","Ti襫 v祅g trong h祅h trang kh玭g ");
			return 0;
		end
		if DelItem(2, 1, 30540, 1) ~= 1 then
			return 0;
		end
		if Pay(CC_ZLP_PARK_COST * 10000) ~= 1 then
			return 0;
		end
		gf_AddItemEx2({2, 1, 30541, 1}, "L� bao N﹏g C蕄 Phi猲 B秐 M韎", CC_LOG_TITLE, "фi L� Bao N﹏g C蕄 Phi猲 B秐 M韎", 0, 1);
	end
end 


function do_nothing()
end