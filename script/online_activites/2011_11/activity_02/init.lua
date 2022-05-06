--by liubo
--2011年12月圣诞节主活动

Include("\\script\\lib\\globalfunctions.lua")
Include("\\script\\online_activites\\2011_11\\string.lua")
--externs taskid
--记录当天种下种子的数量
VET_201112_PLANTTREES_TASKID = 2135

--梁山每日任务获得奖励
function get_award_liangshan(nNum)
	--是否开启活动判断
	if gf_CheckEventDateEx(48) ~= 1 then
		return 0
	end
	if gf_Judge_Room_Weight(1,1," ") ~= 1 then
        Talk(1,"",tSTRING_201111_TABLE[3])
		return 0
    end
	gf_AddItemEx2({2,1,30347,50},"K裲 Que","Hoat dong thang 12 nam 2011","Lng S琻 vt 秈 nhi謒 v� h籲g ng祔",0,1)
end
--梁山开启聚义宝箱获得奖励
function get_award_juyibox()
	if gf_CheckEventDateEx(48) ~= 1 then
		return 0
	end
	if gf_Judge_Room_Weight(1,1," ") ~= 1 then
        Talk(1,"",tSTRING_201111_TABLE[3])
		return 0
    end
	gf_AddItemEx2({2,1,30347,10},"K裲 Que","Hoat dong thang 12 nam 2011","Lng S琻 T� Ngh躠 B秓 Rng",0,1)
end

--种下一颗种子
-- function get_award_planttrees()
	--是否开启活动判断
	-- if gf_CheckEventDateEx(48) ~= 1 then
		-- return 0
	-- end
	-- if gf_Judge_Room_Weight(1,1," ") ~= 1 then
        -- Talk(1,"",tSTRING_201111_TABLE[3])
		-- return 0
    -- end
	-- local nNum = GetTask(VET_201112_PLANTTREES_TASKID)
	-- if nNum > 0 and nNum <= 6 then
		-- gf_AddItemEx2({2,1,30347,5},"糖果","2011年12月圣诞节活动","种子",0,1)
	-- elseif nNum > 6 and nNum <= 12 then
		-- gf_AddItemEx2({2,1,30347,15},"糖果","2011年12月圣诞节活动","种子",0,1)
	-- elseif nNum > 12 and nNum <= 24 then
		-- gf_AddItemEx2({2,1,30347,25},"糖果","2011年12月圣诞节活动","种子",0,1)
	-- end
-- end

--参加一场天门阵
function get_award_tianmenzhen(nType)
	--是否开启活动判断
	if gf_CheckEventDateEx(48) ~= 1 then
		return 0
	end
	if gf_Judge_Room_Weight(1,1," ") ~= 1 then
        Talk(1,"",tSTRING_201111_TABLE[3])
		return 0
    end
	if nType == 1 then
		gf_AddItemEx2({2,1,30347,50},"K裲 Que","Event noel n╩ 2011","Thi猲 M玭 tr薾",0,1)
	elseif nType == 2 then
		gf_AddItemEx2({2,1,30347,100},"K裲 Que","Event noel n╩ 2011","Thi猲 M玭 tr薾",0,1)
	elseif nType == 3 then
		gf_AddItemEx2({2,1,30347,300},"K裲 Que","Event noel n╩ 2011","Thi猲 M玭 tr薾",0,1)
	else
		gf_AddItemEx2({2,1,30347,30},"K裲 Que","Event noel n╩ 2011","Thi猲 M玭 tr薾",0,1)
	end
end

------------------------------------------------
function ServerStartUp()

end
function PlayerLogin()

end
