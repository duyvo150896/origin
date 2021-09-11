--IB物品野外boss召唤物品脚本
--作者：赵贵春
--开始时间：2007-01-16
--结束时间：
--备注：屏蔽地图：作者:
--牢房,701、702、703
--恶人谷,708
--擂台,801,802,803,805,810,811
--战场,807,809,881,882,883,884
--师门修炼地图,812,813,814,815,816,817,422
--多人擂台,821,822,823,824,825,826
--组队擂台,827,828,829,830,831,832,833,834
Include("\\script\\online\\zgc_public_fun.lua")
Include("\\script\\ksgaming\\libs\\ks_files.lua")
Include("\\script\\ksgaming\\libs\\ks_maths.lua")

--======================================================世界数据封装=================================================================================
--函数名称：世界数据get
--功        能：按位取得帮会世界数据
File_name = "\\script\\item\\item_billing\\jueshigaoshou.lua"
function Zgc_pub_getwrdtask(id,fun_id)
	SetTaskTemp(158,id)
	SetTaskTemp(160,fun_id)
	ApplyRelayShareData("S?li謚 ID th?gi韎",0,0,File_name,"CallBackGetWrdTask")
end
function CallBackGetWrdTask(szKey, nKey1, nKey2, nCount)
	local id = (GetTaskTemp(158)-1)
	local fun_id = tostring(GetTaskTemp(160))
	local suit_id = tostring(floor(id/10)+1)
	local wrd_data	= {}
	wrd_data[0],wrd_data[1],wrd_data[2],wrd_data[3],wrd_data[4],wrd_data[5],wrd_data[6],wrd_data[7],wrd_data[8],wrd_data[9] = GetRelayShareDataByKey(szKey, nKey1, nKey2,suit_id)
	local save_id = (id - (floor(id/10)*10))
	if wrd_data[save_id] == nil then
		wrd_data[save_id] = 0 
	end
	local return_fun = "WrdDataGetReturn_"..fun_id.."("..wrd_data[save_id]..")"
	dostring(return_fun)
end
--函数名称：世界数据set
--功        能：按位设置世界数据
function Zgc_pub_setwrdtask(id,value,fun_id)
	SetTaskTemp(158,id)
	SetTaskTemp(159,value)
	SetTaskTemp(160,fun_id)
	ApplyRelayShareData("S?li謚 ID th?gi韎",0,0,File_name,"CallBackSetWrdTask")
end
function CallBackSetWrdTask(szKey, nKey1, nKey2, nCount)
	local id =(GetTaskTemp(158) - 1)
	local value = GetTaskTemp(159)
	local fun_id = tostring(GetTaskTemp(160))
	local suit_id = tostring(floor(id/10) + 1)			--计算大位置
	local wrd_data	= {}
	wrd_data[0],wrd_data[1],wrd_data[2],wrd_data[3],wrd_data[4],wrd_data[5],wrd_data[6],wrd_data[7],wrd_data[8],wrd_data[9] = GetRelayShareDataByKey(szKey, nKey1, nKey2,suit_id)
	DelRelayShareDataCopy(szKey,nKey1,nKey2)
	for i = 0, 9 do
		if wrd_data[i] == nil then
			wrd_data[i] = 0 
		end
	end
	local save_id = (id - (floor(id/10)*10))
	wrd_data[save_id] = value
	local rtn_flag = AddRelayShareData("S?li謚 ID th?gi韎",0,0, File_name, "end_dialog", 0,suit_id, "dddddddddd", wrd_data[0],wrd_data[1],wrd_data[2],wrd_data[3],wrd_data[4],wrd_data[5],wrd_data[6],wrd_data[7],wrd_data[8],wrd_data[9])
	local return_fun = "WrdDataSetReturn_"..fun_id.."()"
	dostring(return_fun)
end
--=============================公共变量定义======================
	boss_list = {
		{"S琻 T芻 u M鬰", "B綾 L鬰 L﹎ Minh Ch?, 1014, "L鬰 L﹎ Lang Y猲", 3, "\\script\\task\\boss\\boss_ondeath.lua"},			--boss名称，模板名，对应物品ID，对应物品名称，每天可以召唤的最大数量，NPC挂的索引脚本
		{"Huy襫 V?Th璷ng", "Thng Th莕 Doanh Thi猲", 1047, "Th駓 Ho祅g B?Chi誹", 3, "\\script\\task\\boss\\boss_ondeath.lua"},
		{"Nghi謙 H錸", "L穘h Hng L╪g", 1048, "Uy猲 Μng Kim Ti B筩", 3, "\\script\\task\\boss\\boss_ondeath.lua"},
	}
	mapSafes = {
	      {100},
	      {150},
	      {200},
	      {300},
	      {350},
	      {400},
	      {500},
	      {881},
	      {882},
	      {883},
	      {884},
	      {808},
	      {806}
	}
--================================主逻辑=========================
--**************************物品使用主函数************************
function OnUse(goods_index)
	local MapID,Att_X,Att_Y = GetWorldPos()	
  	--local logContent = format("=> On %s Use Item Call Boss By %s on %s(%s/%s)", date("%Hh%M"), GetAccount(), MapID, div(Att_X,8), div(Att_Y,16));
  	local filePatch = "data/callboss/";
  	local fileName = format("%s.txt", date("%y%m%d"));
   --	Files_WriteLogInfo(filePatch, fileName, logContent );
	RemoveInvalidItem();

	SetItemUseLapse(id,90)
	--if  1==1 or GetFightState() == 0 then
		if  GetFightState() == 0 then
		NewWorld(701, 1488, 3040);	
		Msg2Player("S?d鬾g tr竔 ph衟 V?Kh?Qu﹏ D鬾g V?L﹎ b?ph箃 t?chung th﹏");
		SetTask(3550, 1);
		SaveNow();
		Talk(1,"ExitGame","N琲 y kh玭g 頲 s?d鬾g v藅 ph萴 n祔!")		
		return
	end
	
	if MapID > 700 then
		Talk(1,"end_dialog","N琲 y kh玭g 頲 s?d鬾g v藅 ph萴 n祔!")
		return
	end
	local goods_id = GetItemParticular(goods_index) 
	local boss_seq = 0
	if goods_id == 1014 then
		boss_seq = 1
	elseif goods_id == 1047 then
		boss_seq = 2
	elseif goods_id == 1048 then
		boss_seq = 3
	else
		return
	end
	Say("B筺 ng ?d飊g"..boss_list[boss_seq][4].."Tri謚 g鋓 <color=red>"..boss_list[boss_seq][2].."<color> ch?",
		2,
		"Ta mu鑞 tri謚 g鋓"..boss_list[boss_seq][2].."/#boss_create("..boss_seq..")",
		"в ta suy ngh?l筰/end_dialog"
		)
end

function RemoveInvalidItem()
    local tAllItem = GetAllItem(); 
    local nID1,nID2,nID3 = 0,0,0;
    local nCount = 0;
    for i,v in tAllItem do
        nID1,nID2,nID3 = GetItemInfoByIndex(v);
        if nID1 == 2 and nID2 == 1 
            and (nID3 == 1014  or nID3 == 1047 or nID3 == 1048) then
              DelItemByIndex(v,-1);
        end       
    end        
end

--***************************boss创建统一函数封装*************************
function boss_create(boss_diff)
	SetTaskTemp(164,boss_diff)
	Zgc_pub_getwrdtask(11,11)
end
function WrdDataGetReturn_11(date_seq)
	local boss_diff = GetTaskTemp(164)
	if date_seq > zgc_pub_day_turn(1) then
		Talk(1,"end_dialog",boss_list[boss_diff][2].."c?ch髏 nghi ng? ng祔 mai h穣 quay l筰!")
		return
	elseif date_seq == zgc_pub_day_turn(1) then
		Zgc_pub_getwrdtask(boss_diff,1)
	else
		Zgc_pub_setwrdtask(11,zgc_pub_day_turn(1),11)
	end
end
--*********************************boss数量设置********************************
function WrdDataSetReturn_11()
	local boss_diff = GetTaskTemp(164)
	boss_num_set(boss_diff)
	--Zgc_pub_setwrdtask(boss_diff,1,1)
end
--*********************************boss数量回置********************************
function boss_num_set(boss_diff)
	SetTaskTemp(158,boss_diff)
	ApplyRelayShareData("S?li謚 ID th?gi韎",0,0,File_name,"CallBackBossNumSet")
end
function CallBackBossNumSet(szKey, nKey1, nKey2, nCount)			--boss数量设置回调
	DelRelayShareDataCopy(szKey,nKey1,nKey2)
	local boss_diff = GetTaskTemp(158)
	local boss_num = {}
	for i = 1,10 do
		if i == boss_diff then
			boss_num[i] = 1
		else
			boss_num[i] = 0
		end
	end
	AddRelayShareData("S?li謚 ID th?gi韎",0,0,File_name,"end_dialog",0,1,"dddddddddd",boss_num[1],boss_num[2],boss_num[3],boss_num[4],boss_num[5],boss_num[6],boss_num[7],boss_num[8],boss_num[9],boss_num[10])
	boss_crt_finish(boss_diff,0)
end
--*******************************野外boss数量判断*******************************
function WrdDataGetReturn_1(boss_crt_num)
	local boss_diff = GetTaskTemp(164)
	if boss_crt_num >= boss_list[boss_diff][5] then
		Talk(1,"end_dialog",boss_list[boss_diff][2].."c?ch髏 nghi ng? ng祔 mai h穣 quay l筰!")
		return
	else
		boss_crt_finish(boss_diff,boss_crt_num)
	end
end
--****************************召唤boss执行函数**********************************
function boss_crt_finish(boss_diff,boss_crt_num)
	if DelItem(2,1,boss_list[boss_diff][3],1) ~= 1 then
		Talk(1,"end_dialog","Xin x竎 nh薾 tr猲 ngi c?<color=red>"..boss_list[boss_diff][4].."<color>!")
		return
	end
	local map_ID,att_X,att_Y = GetWorldPos()
	local npc_index = CreateNpc(boss_list[boss_diff][1],boss_list[boss_diff][2],map_ID,att_X,att_Y,-1,1,1,0)
	if npc_index ~= 0 then
		SetNpcScript(npc_index,boss_list[boss_diff][6])
	end
	Zgc_pub_setwrdtask(boss_diff,(boss_crt_num + 1),2)
end
--*************************boss数量增加回调函数（空）******************************
function WrdDataSetReturn_2()

end

