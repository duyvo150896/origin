Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\system_switch_config.lua")
g_szTitle = "<color=green>H-¨ªng d¨¦n:<color>"

function main()
		local szSay = {
		g_szTitle.."Ch?n g¡Á?",
		"Quay v¨° tr1ng th?i luy?n c?ng/#really_luyencong()",
		"Ra ra kh¨¢i/nothing",
	};

	SelectSay(szSay); 
end
function really_luyencong()
	SetPKFlag(0, 0);
	Talk(1,"","Th¦Ình c?ng");
end