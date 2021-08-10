Include("\\script\\meo\\ruatay\\ruatay.lua"); 
TASK_WASHHAND = 970
function main()
	local selTab = {
			"Phiªn c« n­¬ng h·y röa tay Th­ Gi¶n cho ta/WashHand",
			"T¹i h¹ kh«ng ch¬i bËy/nothing"
			};
	Say("T×nh h×nh virus Corona ë <color=yellow>§¹i ViÖt<color> ®ang diÔn ra hÕt søc phøc t¹p, do ®¹i ma ®Çu <color=red>Nhung Giao DÞch<color> mang vÒ ®Õ quèc cña chóng ta, h·y ®Ó ta röa tay th­ gi¶n nãng l¹nh cho ng­¬i gióp phßng tr¸nh <color=yellow>Corona<color> nhÐ",getn(selTab),selTab)
end

function nothing() --ok save 2 file di syn qua server nhe1 uh qua ®©y chat ®i bro
end

function WashHand()
	local nHour = tonumber(date("%y%m%d%H"))  --chuan. thoi reset di, tui test ben tui trc cho chac
	local nTask = GetTask(TASK_WASHHAND) -- do chç nµy, vÝ dô «ng off lµ 0
	local nTimePassed = nHour-nTask
	if nTimePassed < 1 then -- dm nhu nhau ma?
		Talk(1,"","Em ®ang kÑt kh¸ch råi,<color=yellow>1 tiÕng<color> sau h·y quay l¹i nhÐ!")
		return 0
	end
		DoWait(121,121,10) --do settask = 1
end