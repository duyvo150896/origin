--ÌÒ»¨Ê÷½Å±¾
Include("\\script\\online\\spring2014\\sp_head.lua")

function main()
	sp_DailyReset();
	if gf_GetPlayerRebornCount() <= 0 and gf_CheckBaseCondition(77, 1) ~= 1 then
			return 0;
	end
	local nTimes = SP_TASK_GROUP:GetTask(SP_TASK_GROUP.ThsDrop);
	if nTimes >= 5 then
		Talk(1,"",format("N¨m míi vui vÎ! §¹i hiÖp h«m nay ®· nhËn hÕt %d phÇn th­ëng, h·y  nhËn th­ëng vµo ngµy mai nhĞ !", 5));
		return 0;
	end
	--µã»÷¼ä¸ô60s
	if GetTime() - SP_TASK_GROUP:GetTask(SP_TASK_GROUP.ThsChickTime) < 3 then
		Talk(1,"",format("Sau 3 gi©y më tiÕp nhĞ !", 3));
		return 0;
	end
	if random(1000) <= 500 then
		return 0;
	end
	SP_TASK_GROUP:SetTask(SP_TASK_GROUP.ThsDrop, nTimes + 1);
	SP_TASK_GROUP:SetTask(SP_TASK_GROUP.ThsChickTime, GetTime());
	-- local tAward = {
		-- {31, 50, "AddItem(2,1,30344,1,1)", 1},
		-- {31, 40, "AddItem(2,1,1210,1,1)", 1},
	-- }
	-- gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1);
end

function spths_Exp()
	-- DoWait(28,29,1)
end

function spths_ZhenQi()
	-- DoWait(30,29,1)
end

function spths_YinJuan()
	-- DoWait(31,29,1)
end
