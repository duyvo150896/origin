--在扬州任务夏侯英
--created by lizhi
--2005-8-24 10:34
Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\online_activites\\head\\acitivity_additional_head.lua")

function main()
	
	--活动的
	local tSay = {};
	local tActivityID = {134};
	for k, v in tActivityID do
		tSay = aah_GetSayDialog(tonumber(v));
		if getn(tSay) > 0 then
			tinsert(tSay, "\nK誸 th骳 i tho筰/nothing");	
			Say(format("<color=green>H� H莡 Anh:<color> %s c莕 gi髉  g�?",gf_GetPlayerSexName()), getn(tSay), tSay);
			return 1;
		end
	end
	
  Talk(1,"","<color=green>H� H莡 Anh<color>: 厖");
end;