-- 军用委任书

Include("\\script\\task\\weekend\\task_head.lua")

function OnUse(idx)
	local nValue = GetTask(TASK_IB_BOOK2)
	
	if nValue == 1 then
		Say("B筺  d飊g 1 l莕 qu﹏ d鬾g-駓 nhi謒 th�!", 0)
		return
	end
	
	Say("B筺 mu鑞 d飊g qu﹏ d鬾g-駓 nhi謒 th�? N� c� th� gi髉 b筺 gi� l筰 甶觤 nh qu鑓 an bang c馻 ho箃 ng cu鑙 tu莕 l莕 trc.", 
		2,
		"S� d鬾g /yes_use",
		"Sai/no_say")
end

function yes_use()
	if DelItem(2,1,1030,1) == 1 then
		SetTask(TASK_IB_BOOK2, 1)
		Msg2Player("B筺  d飊g 1 qu﹏ d鬾g-駓 nhi謒 th�.")
	end
end

function no_say()

end
