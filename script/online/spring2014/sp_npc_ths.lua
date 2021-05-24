--ÌÒ»¨Ê÷½Å±¾
Include("\\script\\online\\spring2014\\sp_head.lua")

function main()
	sp_DailyReset();
	if gf_GetPlayerRebornCount() <= 0 and gf_CheckBaseCondition(85, 1) ~= 1 then
			return 0;
	end
	local nTimes = SP_TASK_GROUP:GetTask(SP_TASK_GROUP.ThsDrop);
	if nTimes >= 30 then
		Talk(1,"",format("N¨m míi vui vÎ! §¹i hiÖp h«m nay ®· nhËn hÕt %d phÇn th­ëng, h·y ®Õn ng¾m hoa ®µo vµ nhËn th­ëng vµo ngµy mai nhĞ !", 30));
		return 0;
	end
	--µã»÷¼ä¸ô60s
	if GetTime() - SP_TASK_GROUP:GetTask(SP_TASK_GROUP.ThsChickTime) < 60 then
		--Talk(1,"",format("ĞèµÈ´ı%dÃë²Å¿É¼ÌĞøµã»÷³é½±£¬×£´ó¼ÒºÃÔËÁ¬Á¬£¡", 60));
		Talk(1,"",format("Ng¾m ®µo 60 gi©y 1 lÇn th«i nhĞ, ng¾m nhanh qu¸ ®µo r¬i hÕt,  %d gi©y h·y quay l¹i",  60 - (GetTime() - SP_TASK_GROUP:GetTask(SP_TASK_GROUP.ThsChickTime))));
		return 0;
	end
	if random(1000) <= 500 then
		Talk(1,"",format("Ng¾m ta kü vµo ta sÏ r¬i quµ" ));
		return 0;
	end
	SP_TASK_GROUP:SetTask(SP_TASK_GROUP.ThsDrop, nTimes + 1);
	SP_TASK_GROUP:SetTask(SP_TASK_GROUP.ThsChickTime, GetTime());
	local tAward = {
		{31, 40, "spths_Exp()", 1},
		-- {31, 40, "spths_ZhenQi()", 1},
		{31, 20, "spths_YinJuan()", 1},
	}
	gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1);
end

function spths_Exp()
	local tAward = {
		{2, 25, 200000, 1},
		{2, 25, 200000, 1},
		{2, 25, 200000, 1},
		{2, 20, 200000, 1},
		{2, 5,400000, 1},
	}
	gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "Event TÕt Kingsoft", "§µo Hoa thô");
	StartTimeGuage ("Ng¾m Hoa", 60,0,1 )
end

function spths_ZhenQi()
	local tAward = {
		{31, 60, "AddItem(2,1,30728,1,1)", 1},
		{31, 30, "AddItem(2,1,148,1,1)", 1},
		{31, 5, "AddItem(2,1,149,1,1)", 1},
		{31, 4, "AddItem(2,1,30642,1,1)", 1},
		{31, 1, "AddItem(2,1,1170,1,1)", 1},
	}
	gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "Event TÕt Kingsoft", "§µo Hoa thô");
end

function spths_YinJuan()
	local tAward = {
		{31, 50, "AddItem(2,1,30344,1,1)", 1},
		{31, 40, "AddItem(2,1,1210,1,1)", 1},
		-- {31, 10, "AddItem(2,1,30072,1,1)", 1},
	}
	gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "Event TÕt Kingsoft", "§µo Hoa thô");
end
