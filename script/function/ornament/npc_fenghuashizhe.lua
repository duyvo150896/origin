--
-- Author: Zheng Jinke
-- Date: 2015-12-24 10:28:35
-- 风华使者NPC脚本，通过该NPC开启风华商店
--
Include("\\script\\function\\ornament\\ornament.lua")

function main()
	--限定开放日期
	if tonumber(date("%Y%m%d")) < 20160206 then
		Talk(1, "", format("T輓h n╪g 甶觤 Phong Hoa s� m� v祇 %s", "06/02/2016"))
		return 0 
	end
	
	local Title = "<color=green>Чi S� Phong Hoa<color>: T筰 c鯽 h祅g c馻 ta, c竎 i hi謕 c� th� d飊g 甶觤 Phong Hoa  i ngo筰 trang tuy謙 p nh� � mu鑞."
	local tbSay = {}
	tinsert(tbSay,"C鯽 H祅g Phong Hoa/fenghua_shop")
	tinsert(tbSay,"Xem 甶觤 Phong Hoa/fenghua_check")
	tinsert(tbSay,"Gi韎 thi謚 甶觤 Phong Hoa/fenghua_introduction")
	tinsert(tbSay,"Ta ch� n xem th�/nothing")
	Say(Title,getn(tbSay),tbSay)
end

function fenghua_shop(  )
	SendScript2Client(format("Open([[EquipShop]], %d, [[%s]])", 3071, "C鯽 H祅g Phong Hoa"))
end

function fenghua_check(  )
	local point = ornament_get_score()
	Talk(1,"",format("觤 Phong Hoa: <color=red>%d<color>",point))
end

function fenghua_introduction(  )
	Talk(1,"","觤 Phong Hoa l� 甶觤 t輈h l騳 v躰h vi詎, sinh ra trong c竎 ho箃 ng, chuy猲 d飊g  i ngo筰 trang trong C鯽 H祅g Phong Hoa.")
end



function nothing()
	-- body
end
function on_server_start( )
	--功能移植到欠扁盒中
--	local script_path="\\script\\function\\ornament\\npc_fenghuashizhe.lua"
--	local npcidx = nil
--	npcidx = CreateNpc("大考官兔总管","风华大使",300,1758,3530)
--	SetNpcScript(npcidx,script_path)
--	npcidx = CreateNpc("大考官兔总管","风华大使",200,1403,2856)
--	SetNpcScript(npcidx,script_path)
--	npcidx = CreateNpc("大考官兔总管","风华大使",100,1435,2971)
--	SetNpcScript(npcidx,script_path)
end