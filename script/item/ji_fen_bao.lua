--脚本名称：楚国密令使用脚本
--脚本功能：使用此物品，给玩家增减1000个信物
--脚本策划人：小天天
--代码开发人：村长
--代码开发时间：2007年6月11日
--代码修改记录：

	keepsake_num_TaskID = 1227

function OnUse()
	Say("<color=green>Ch� �<color>: s� d鬾g v藅 ph萴 n祔 c� th� t╪g <color=yellow>1000<color> <color=yellow>t輓 v藅<color>, b筺 c� th� <color=yellow>T輓 v藅<color> � <color=green>Di t閏 S� qu鑓<color> b猲 c筺h <color=green>D� T萿<color>  i l蕐 <color=yellow>nguy猲 li謚 b竛h 輙<color>. S� d鬾g ch�?",
	2,
	"уng � d飊g/use_dtm",
	"в ta suy ngh� l筰/end_dialog"
	)
end
function use_dtm()
	--携带检测
	if GetItemCount(2,1,1142) == 0 then
		Talk(1,"","<color=green>Ch� �<color>: Xin x竎 nh薾 c� mang theo <color=yellow>S� qu鑓 M藅 l謓h<color>!")
		return
	end
	--删除检测
	if DelItem(2,1,1142,1) ~= 1 then
		Talk(1,"","<color=green>Ch� �<color>: Xin x竎 nh薾 c� mang theo <color=yellow>S� qu鑓 M藅 l謓h<color>!")
		return
	end
	--信物增加
	SetTask(keepsake_num_TaskID,(GetTask(keepsake_num_TaskID)+1000))
	Msg2Player("Ch骳 m鮪g b筺  i th祅h c玭g 1000 t輓 v藅 nc S�, b筺 c� th� n 'Di T閏 S� Qu鑓' xem v� s� d鬾g!")
end
