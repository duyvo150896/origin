Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
g_szTitle = "<color=green>H��ng d�n:<color>"

function main()
		local szSay = {
		g_szTitle.."Ch�n g�?",
		"Quay v� tr�ng th�i luy�n c�ng/#really_luyencong()",
		"Ra ra kh�i/nothing",
	};

	SelectSay(szSay); 
end
function really_luyencong()
	SetPKFlag(0, 0);
	Talk(1,"","Th�nh c�ng");
end
