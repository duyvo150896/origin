--filename:yuandan_notice.lua
--create date:2005-12-26
--author:yanjun
--describe:用来发通告的
Include("\\script\\online\\元旦活动\\yuandan_head.lua")

function main()
	local iMonth = GetCurMonth()
	local iDay = GetCurDate()
	if ((iMonth == 12 and iDay ==31) or (iMonth == 1 and iDay <= 5)) and YUANDAN_SWITCH == 1 then
		if GetLocalTime() == 20 then
			AddLocalNews("H玬 nay 21:00 s� m� ho箃 ng Nguy猲 n 畂箃 k�, c竎 b筺 nh� n g苝 箃 K� Gi竜 u � Nam Bi謓 Kinh, Nam Th祅h Й, B綾 Tuy襫 Ch﹗  t譵 hi觰 th玭g tin v� ho箃 ng.")
			Msg2SubWorld("H玬 nay 21:00 s� m� ho箃 ng Nguy猲 n 畂箃 k�, c竎 b筺 nh� n g苝 箃 K� Gi竜 u � Nam Bi謓 Kinh, Nam Th祅h Й, B綾 Tuy襫 Ch﹗  t譵 hi觰 th玭g tin v� ho箃 ng.")
		elseif GetLocalTime() == 22 then
			AddLocalNews("H玬 nay 23:00 s� m� ho箃 ng Nguy猲 n 畂箃 k�, c竎 b筺 nh� n g苝 箃 K� Gi竜 u � Nam Bi謓 Kinh, Nam Th祅h Й, B綾 Tuy襫 Ch﹗  t譵 hi觰 th玭g tin v� ho箃 ng.")
			Msg2SubWorld("H玬 nay 23:00 s� m� ho箃 ng Nguy猲 n 畂箃 k�, c竎 b筺 nh� n g苝 箃 K� Gi竜 u � Nam Bi謓 Kinh, Nam Th祅h Й, B綾 Tuy襫 Ch﹗  t譵 hi觰 th玭g tin v� ho箃 ng.")
		end
	end
end