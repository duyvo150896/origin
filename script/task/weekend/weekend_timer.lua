--2005-11-3 16:41
Include("\\settings\\static_script\\cheat\\gm_item_tifuzhiyin.lua");
--返回星期几，0代表星期天
function GetWeekDay()
	return tonumber(date("%w"))
end;

function GetLocalHour()
	nHour = date("%H");
	return tonumber(nHour)
end;
function GetLocalMin()
	nMin = date("%M");
	return tonumber(nMin)
end;
function main()
	-- local nWeekDay = GetWeekDay();
	-- if nWeekDay == 5 or nWeekDay == 6 then	--周末
		-- if GetLocalHour() == 19 or GetLocalHour() == 20 or GetLocalHour() == 21 or GetLocalHour() == 22 then
			-- AddLocalNews("Ho箃 ng ch鑞g gi芻 Man  b総 u,  bi誸 th猰 m阨 n Bi謓 Kinh, Dng Ch﹗, Tng Dng g苝 Ch﹏ T� Кn");
			-- Msg2SubWorld("Ho箃 ng ch鑞g gi芻 Man  b総 u,  bi誸 th猰 m阨 n Bi謓 Kinh, Dng Ch﹗, Tng Dng g苝 Ch﹏ T� Кn");
		-- elseif GetLocalHour() == 23 then
			-- AddLocalNews("Ho箃 ng ch鑞g gi芻 Man s� k誸 th骳 sau 20 ph髏");
			-- Msg2SubWorld("Ho箃 ng ch鑞g gi芻 Man s� k誸 th骳 sau 20 ph髏");
		-- elseif GetLocalHour() == 0 then
			-- AddLocalNews("Ho箃 ng ch鑞g gi芻 Man h玬 nay  k誸 th骳");
			-- Msg2SubWorld("Ho箃 ng ch鑞g gi芻 Man h玬 nay  k誸 th骳");
		-- else
			-- AddLocalNews("Ho箃 ng ch鑞g gi芻 Man t� 19 gi�-24 gi�,  bi誸 th猰 m阨 n Bi謓 Kinh, Dng Ch﹗, Tng Dng g苝 Ch﹏ T� Кn");
			-- Msg2SubWorld("Ho箃 ng ch鑞g gi芻 Man t� 19 gi�-24 gi�,  bi誸 th猰 m阨 n Bi謓 Kinh, Dng Ch﹗, Tng Dng g苝 Ch﹏ T� Кn");
		-- end;
	-- elseif nWeekDay == 0 then
		-- if GetLocalHour() >= 14 and GetLocalHour() <= 21 then
			-- AddLocalNews("Ho箃 ng ch鑞g gi芻 Man  b総 u,  bi誸 th猰 m阨 n Bi謓 Kinh, Dng Ch﹗, Tng Dng g苝 Ch﹏ T� Кn");
			-- Msg2SubWorld("Ho箃 ng ch鑞g gi芻 Man  b総 u,  bi誸 th猰 m阨 n Bi謓 Kinh, Dng Ch﹗, Tng Dng g苝 Ch﹏ T� Кn");
		-- elseif GetLocalHour() >= 22 then
			-- AddLocalNews("Ho箃 ng ch鑞g gi芻 Man h玬 nay  k誸 th骳");
			-- Msg2SubWorld("Ho箃 ng ch鑞g gi芻 Man h玬 nay  k誸 th骳");
		-- else
			-- AddLocalNews("Ho箃 ng ch鑞g gi芻 Man t� 14 gi�-22 gi�,  bi誸 th猰 m阨 n Bi謓 Kinh, Dng Ch﹗, Tng Dng g苝 Ch﹏ T� Кn");
			-- Msg2SubWorld("Ho箃 ng ch鑞g gi芻 Man t� 14 gi�-22 gi�,  bi誸 th猰 m阨 n Bi謓 Kinh, Dng Ch﹗, Tng Dng g苝 Ch﹏ T� Кn");
		-- end;
	-- end;
	-- Msg2SubWorld(GetLocalHour());
	local ran= random(1,5)
	-- local ran_2 = random(0,1)
	-- if  GetLocalHour() == 10 then
		-- if ran_2 == 0 then
			-- Boss_ThuongThan();
		-- else
			-- Boss_LucLam();
		-- end
	-- end
	-- if  GetLocalHour() == 15 then
		 -- Boss_AnhTu();
	-- end
	if  GetLocalHour() == 22 then
		if ran == 1 then
			Boss_W1();
		end
		if ran == 2 then
			Boss_W2();
		end
		if ran == 3 then
			Boss_W3();
		end
		if ran == 4 then
			Boss_W4();
		end
		if ran == 5 then
			Boss_W5();
		end
	end
	-- if  GetLocalHour() == 22 then
		-- Boss_HuongLang();
	-- end
	-- if  GetLocalHour() == 21 then
		 -- Boss_LanHoa();
	-- end
end;
