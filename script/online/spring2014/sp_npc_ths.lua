--�һ����ű�
Include("\\script\\online\\spring2014\\sp_head.lua")

function main()
	sp_DailyReset();
	if gf_GetPlayerRebornCount() <= 0 and gf_CheckBaseCondition(85, 1) ~= 1 then
			return 0;
	end
	local nTimes = SP_TASK_GROUP:GetTask(SP_TASK_GROUP.ThsDrop);
	if nTimes >= 30 then
		Talk(1,"",format("N�m m�i vui v�! ��i hi�p h�m nay �� nh�n h�t %d ph�n th��ng, h�y ��n ng�m hoa ��o v� nh�n th��ng v�o ng�y mai nh� !", 30));
		return 0;
	end
	--������60s
	if GetTime() - SP_TASK_GROUP:GetTask(SP_TASK_GROUP.ThsChickTime) < 60 then
		--Talk(1,"",format("��ȴ�%d��ſɼ�������齱��ף��Һ���������", 60));
		Talk(1,"",format("Ng�m ��o 60 gi�y 1 l�n th�i nh�, ng�m nhanh qu� ��o r�i h�t,  %d gi�y h�y quay l�i",  60 - (GetTime() - SP_TASK_GROUP:GetTask(SP_TASK_GROUP.ThsChickTime))));
		return 0;
	end
	if random(1000) <= 500 then
		Talk(1,"",format("Ng�m ta k� v�o ta s� r�i qu�" ));
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
	gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "Event T�t Kingsoft", "��o Hoa th�");
	StartTimeGuage ("Ng�m Hoa", 60,0,1 )
end

function spths_ZhenQi()
	local tAward = {
		{31, 60, "AddItem(2,1,30728,1,1)", 1},
		{31, 30, "AddItem(2,1,148,1,1)", 1},
		{31, 5, "AddItem(2,1,149,1,1)", 1},
		{31, 4, "AddItem(2,1,30642,1,1)", 1},
		{31, 1, "AddItem(2,1,1170,1,1)", 1},
	}
	gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "Event T�t Kingsoft", "��o Hoa th�");
end

function spths_YinJuan()
	local tAward = {
		{31, 50, "AddItem(2,1,30344,1,1)", 1},
		{31, 40, "AddItem(2,1,1210,1,1)", 1},
		-- {31, 10, "AddItem(2,1,30072,1,1)", 1},
	}
	gf_EventGiveRandAward(tAward, gf_SumRandBase(tAward), 1, "Event T�t Kingsoft", "��o Hoa th�");
end
