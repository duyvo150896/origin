--脚本功能：师门NPC-师父主脚本
--功能开发：村长
--开发时间：2011-4-7
--修改记录：
Include("\\script\\faction\\faction_head.lua")
function master_dia_sel_main(nFactionId,nRouteId)
	--e:\越南_开发\2011年\fore_work\新门派\门派统一整理_4-13\faction_master_main.lua 内用对应内容
end
--加入流派的操作
function join_route_main(nRouteId)
	--背包空间检测
	local nNeedItemRoom = 5
	if nRouteId == 30 or nRouteId == 2 then
		nNeedItemRoom = 6 
	end
	if gf_Judge_Room_Weight(nNeedItemRoom,200,format("<color=green>"..GetTargetNpcName().."<color>: n誹  quy誸 v祇 m玭 ph竔 ta, b鎛 s� s� t苙g ngi m閠 v礽 trang b� t﹏ th� xem nh� l� qu� nh藀 m玭, h穣 ch豱h l� l筰 h祅h trang v� quay l筰 t譵 ta nh薾 l蕐 (c莕 <color=yellow>%d<color> � tr鑞g h祅h trang!#",nNeedItemRoom)) ~= 1 then
		
		return 0
	end
	--师门装备增加
	Add_Faction_Equipment(nRouteId,GetBody(),40)
	return 1
end
