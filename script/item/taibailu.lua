--===================================================
--使用这个物品，玩家就离线了
--离线之前在干什么，离线以后都还在干什么
--一次使用，8小时有效
--科学
--===================================================

function OnUse()
	if GetOfflineLiveTime() > 1728000 then
		Talk(1,"","Th竔 B筩h Kim n tr猲 ngi b筺  vt qu� 60 vi猲, kh玭g th� ti誴 t鬰 s� d鬾g!");
	elseif DelItem(2,1,202,1) == 1 then
		AddOfflineLiveTime(8 * 3600)
		Msg2Player("B筺  s� d鬾g 1 vi猲 Th竔 B筩h Kim n, c� th� phi猽 du v祇 c鈏 th莕 ti猲 trong 4 gi�!")
	end
end
