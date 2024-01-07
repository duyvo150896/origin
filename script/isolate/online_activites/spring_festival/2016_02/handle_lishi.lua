--
-- Author: Zheng Jinke
-- Date: 2015-12-28 14:10:00
--

Include("\\script\\isolate\\online_activites\\spring_festival\\2016_02\\stringtable.lua")			-- 活动的字符串表
Include("\\script\\isolate\\online_activites\\spring_festival\\2016_02\\award.lua")
Include("\\settings\\static_script\\lib\\globalfunction\\gf_room_weight.lua")

------------------------------奖励领取(免费部分)------------------------------
function do_get_award()
	local flag = get_task("id_get_lishi")
	if flag == 1 then 
		Talk(1,"","<color=gold>Чi S� Ho箃 чng:<color> Trong th阨 gian ho箃 ng m鏸 ngi ch� nh薾 頲 1 l莕 l� x�.!")
		return false;
	end
	if gf_Judge_Room_Weight(1,100,"") ~= 1 then
		return false;
	end
	
	AddItem(2,1,31006,1)
	set_task("id_get_lishi",1)
	Talk(1,"","<color=gold>Чi S� Ho箃 чng:<color> L� x�  ch鴑g t� t蕀 l遪g, cung ch骳 t﹏ xu﹏, ch骳 c竎 i hi謕 v筺 s� nh� �, s� nghi謕 thu薾 l頸, s鴆 kh醗 d錳 d祇!")
end

function handle_use_xinnianlishi( Itemidx )
	handle_on_use_award( Itemidx )
end

