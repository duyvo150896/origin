Include("\\script\\meo\\ruatay\\ruatay.lua"); 
TASK_WASHHAND = 970
function main()
	local selTab = {
			"Phi�n c� n��ng h�y r�a tay Th� Gi�n cho ta/WashHand",
			"T�i h� kh�ng ch�i b�y/nothing"
			};
	Say("T�nh h�nh virus Corona � <color=yellow>��i Vi�t<color> �ang di�n ra h�t s�c ph�c t�p, do ��i ma ��u <color=red>Nhung Giao D�ch<color> mang v� �� qu�c c�a ch�ng ta, h�y �� ta r�a tay th� gi�n n�ng l�nh cho ng��i gi�p ph�ng tr�nh <color=yellow>Corona<color> nh�",getn(selTab),selTab)
end

function nothing() --ok save 2 file di syn qua server nhe1 uh qua ��y chat �i bro
end

function WashHand()
	local nHour = tonumber(date("%y%m%d%H"))  --chuan. thoi reset di, tui test ben tui trc cho chac
	local nTask = GetTask(TASK_WASHHAND) -- do ch� n�y, v� d� �ng off l� 0
	local nTimePassed = nHour-nTask
	if nTimePassed < 1 then -- dm nhu nhau ma?
		Talk(1,"","Em �ang k�t kh�ch r�i,<color=yellow>1 ti�ng<color> sau h�y quay l�i nh�!")
		return 0
	end
		DoWait(121,121,10) --do settask = 1
end