--梅庄地图传出书童脚本
Include("\\script\\lib\\globalfunctions.lua")

function main()
	local sName = gf_GetPlayerSexName();
	Say(format("<color=green>Th� уng:<color>%s mu鑞 r阨 kh醝 Mai Trang kh玭g?",sName),2,"R阨 kh醝/leave","Kh玭g c莕 u/do_nothing");
end

function leave()
	NewWorld(106,1300,3110);
	SetFightState(1);
end

function do_nothing()
end