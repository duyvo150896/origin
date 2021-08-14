--世界BOSS死亡脚本
Include("\\script\\function\\world_boss\\wb_head.lua")
Include("\\settings\\static_script\\cheat\\gm_item_tifuzhiyin.lua");

function OnDeath(id, f, x)
	local npcName = GetNpcName(id);
	local nMap, nX, nY = GetNpcWorldPos(id);
	local killer = "";
	--谁打死的
	if f == 0 then
		killer = GetName();
		gf_TeamOperateEX(wb_KillAward);
	end
	local msg = format("Sau m閠 h錳 chi課 u k辌h li謙, cu鑙 c飊g BOSS %s  b� %s ti猽 di謙 th祅h c玭g.", npcName, killer);
	Msg2Global(msg);
	AddLocalNews(msg);
	--刷打宝箱
	if nMap == 202 then
		Msg2Global(msg);
	else
		-- Boss_LanHoa();
		local bigBox = CreateNpc("WorldBoss_Box", "Rng V祅g Чi Chi課", nMap, nX, nY);
		if bigBox > 0 then
			SetNpcScript(bigBox, "\\script\\function\\world_boss\\wb_big_box.lua");
			SetNpcLifeTime(bigBox, 30 * 60);
		end
		local nScriptFile = "";
		local nHour = tonumber(date("%H"));
		if nHour >= 12 and nHour < 18 then --下午刷的
			nScriptFile = "\\script\\function\\world_boss\\wb_small_box.lua";
		else --晚上刷的
			nScriptFile = "\\script\\function\\world_boss\\wb_small_box1.lua";
		end
		for i = 1, 16 do
			local smallBox = CreateNpc("tongbaoxiang", "Чi Chi課 B秓 H筽", nMap, nX + random(-i, i), nY + random(-i, i));
			if smallBox > 0 then
				SetNpcScript(smallBox, nScriptFile);
				SetNpcLifeTime(smallBox, 30 * 60);
			end
		end
	end
	--删掉尸体
	SetNpcRemoveScript(id, "");
	SetNpcLifeTime(id, 0);
	AddRuntimeStat(23, 1, 0, 1);
end