Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
g_szTitle = "<color=green>H­íng dÉn:<color>"

function main()
		local szSay = {
		g_szTitle.."Chän g×?",
		"Quay vÒ tr¹ng th¸i luyÖn c«ng/#really_luyencong()",
		"Ra ra khái/nothing",
	};

	SelectSay(szSay); 
end
function really_luyencong()
	SetPKFlag(0, 0);
	Talk(1,"","Thµnh c«ng");
end
