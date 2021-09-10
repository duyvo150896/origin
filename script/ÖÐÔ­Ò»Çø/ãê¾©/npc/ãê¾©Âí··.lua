Include("\\script\\task\\faction\\faction_main_ym.lua");
Include("\\script\\task\\faction\\faction_head.lua");

function main()
  	local nTaskValue = FN_GetTaskState(FN_YM);

	if (nTaskValue==3) then
		task_107();
		return
  	end;
	--Talk(1,"","Bän M· tÆc hoµnh hµnh qu¸ nªn kh«ng cã ngùa quý cung øng, hay lµ b»ng h÷u ®Õn Ngù c¸c xem thö!");
--
	local strSay = {
		"<color=green>B¸n ngùa<color>: VÞ anh hïng nµy, t«i cã rÊt nhiÒu lo¹i ngùa tèt ë ®©y, ®¶m b¶o ko cã dÞch bÖnh, vÞ anh hïng cã muèn mua thö mét con vÒ tr¶i nghiÖm kh«ng?",
		"Ta muèn xem thö/Buy",
		"Ta muèn cho ngùa ¨n/Feed",
		"Ta muèn rêi khái n¬i ®©y/Leave",
	}
	Say(strSay[1], 3, strSay[2], strSay[3], strSay[4])
end

function Buy()
	Sale(54)
	Talk(1,"","Toµn lµ ngùa quý ®i ngµn dÆm, ngµi chän mét con ®i!")
end

function Feed()
	local strSay = {
		"Ngùa kh¸ch quan cã chót mÖt mái, ¨n cá lo¹i tèt cÇn <color=red>",
		"<color> tiÒn ®ång. Kh¸ch quan muèn cho ngùa ¨n kh«ng?",
		"Cho/FeedYes",
		"Kh«ng cho/Leave",
		"Ngùa kh¸ch quan cßn kháe kh«ng cÇn ¨n thªm cá.",
		"VÞ kh¸ch quan...cá tuy tèt nh­ng...Kh¸ch quan muèn dïng thö µ?",
	}

	local nPrice = GetFeedHorsePrice()
	if nPrice < 0 then
		Talk(1,"",strSay[6])
	elseif nPrice == 0 then
		Talk(1,"",strSay[5])
	else
		Say(strSay[1]..nPrice..strSay[2], 2, strSay[3], strSay[4])
	end
end

function FeedYes()
	local strSay = {
		"Cá tèt ®©y! §Ó tiÓu nh©n gióp kh¸ch quan cho ngùa ¨n!",
		"Kh¸ch quan ®em Ýt tiÒn sao mua ®­îc cá lo¹i tèt?",
	}
	local nPrice = GetFeedHorsePrice()
	local nMoney = GetCash()

	if nPrice > nMoney then
		Talk(1,"",strSay[2])
	else
		Talk(1,"",strSay[1])
		FeedHorse()
	end
end

function Leave()
end
