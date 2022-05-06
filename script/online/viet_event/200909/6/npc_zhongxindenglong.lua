--=============================================
--create by baiyun 2009.8.26
--describe:越南版9月份中秋活动中心灯笼脚本文件
--=============================================
Include("\\script\\online\\viet_event\\200909\\event_head.lua")

tRole ={
	{"toanleo1991","ZzThanhTuyetzZ",87},
	{"mylove220192","EmperorPitt",75},
	{"huydat008","ZxRoyKangxZx",96},
	{"duongtulang005vn","duongthieu2009",89},
	{"lovezuken7","lovezuken",90},
	{"xexichlo52","xzLongphiV﹏zxx",94},
	{"volamzinh","TuyenUyenx",93},
	{"starletcute","ZzLordlyzZ",90},
	{"ttttnmthtk","sitinh",91},
	{"nhocconbuongbinh91","RRuouQuenSauu",88},
	{"tappro120","BatS璗h骳",95},
	{"hoaduongtathan10","CatherineLep",93},
	{"lightpoison","AnhSoDocx",92},
	{"macthienbinh","zTuyetTinhKhucz",92},
	{"lukeqn","TaoKoNoiNhieux",86},
	{"5docyeunu","iLyMacSau",92},
	{"vick89","1zCaterpillarz1",94},
	{"zhangngocphan","oZoMashimarooZo",90},
	{"triennhuoctran131727","zTuongTheNaoz",92},
	{"ukyo3006","XxLongTuyetNgoc",92},
	{"vuamuvuaden","筺Th駓C莔",90},
	{"lequynhloan","o0TjeuTjeu0o",93},
	{"doibonba83","doibonba83",89},
	{"votinhgirl187","0oVoTinhGirloO",94},
	{"lynghiastc1","osoSTVoso",96},
	{"cuaongvip2091","IoIAniMaxIoI",96},
	{"volam2263107","KjepVeSau",90},
	{"tyhononlinetk5","TieuYeuNhoNo1",90},
	{"dudidudi2557","zxzCRYzxz",99},
	{"83722884","xOxEdwardxOx",94},
	{"xoaylovepe","zIzKeoCaoSuzIz",96},
	{"trangiahunghanam1987","VuaчcBi課H譶h",78},
	{"caytienthuonghoi0","dt01684919893",90},
	{"thinmeo88","zZzCuaHapBiazZz",95},
	{"hoat6892","o0oVIRUSoOo",92},
	{"volam2363535","DanGajTajTrau",89},
	{"shopluadong1","Back2theTOP",92},
	{"anhvudp619","o0oTHAYCHUAo0o",92},
	{"petrangiuiu","zTzBomNetzTz",98},
	{"chuminhhungpro","o0Mrnho0",81},
	{"vyvy1203","ZxVitYeuHeoxZ",92},
	{"nhtl027670","HanDoiXamLoDick",79},
	{"leesanoc1986","o0Thi猲Th莕0o",82},
	{"nhimcon2210","oOTrieuManOo",88},
	{"binz246","Ti觰C竔",83},
	{"luckyboys9xftubn","H薾K蜝筩T譶h0241",85},
	{"nhtl050949","TuyPhong",75},
}


function main()
	local t_dialog = {
--		"Nh薾 buff h� tr� n閕 c玭g/#Getfuzhu(1)",
--		"Nh薾 buff h� tr� ngo筰 c玭g/#Getfuzhu(2)",
		"K誸 th骳 i tho筰/viet_0909_nothing"
	};
	local nDate = tonumber(date("%Y%m%d"))
	if nDate >= 20091001 and nDate <= 20091004 then
		tinsert(t_dialog,1,"Nh薾 ph莕 thng d祅h cho Bang ch�/get_token")
	end
	Say("S� ki謓 Trung Thu 2009 b総 u di詎 ra t� ng祔 18-09-2009 n h誸 ng祔 25-10-2009. Trong th阨 gian n祔, ng o c� th� tham gia v祇 c竎 s� ki謓 n鏸 b薱 nh�: Ch� bi課 B竛h Trung Thu, vui c飊g n K衞 Qu﹏ v� Th� B衞 �, tham gia ti猽 di謙 Mu鏸 чc, Tr錸g C﹜ H筺h Ph骳, x衪 thng theo 甶觤 danh v鋘g v� 甶觤 s� m玭  s� h鱱 nh鱪g ph莕 thng c鵦 kh駈g.Ch骳 ng o c� m閠 m Trung Thu 蕀 竝 b猲 ngi th﹏ v� gia nh!", getn(t_dialog), t_dialog);
end

function CheckRole(szName)
	for i=1,getn(tRole) do
		if tRole[i][2] == szName then
			return i
		end
	end
	return 0
end

function get_token()
	local nDate = tonumber(date("%Y%m%d"))
	if nDate >= 20091001 and nDate <= 20091007 then
		if IsTongMaster() ~= 1 then
			Say("Ch� c� Bang ch� m韎 頲 nh薾 thng!",0)
			return
		end
		local nExtVal = GetExtPoint(4)
		if nExtVal < 1 then
			Say("C竎 h� kh玭g c� trong danh s竎h nh薾 thng!",0)
			return
		elseif  nExtVal == 2 then
			Say("Ch糿g ph秈 c竎 h�  nh薾 thng r錳 sao?",0)
			return
		end
		local nRoleIndex = CheckRole(GetName())
		if nRoleIndex == 0 then
			Say("C竎 h� kh玭g c� trong danh s竎h nh薾 thng!",0)
			return
		end
		if GetLevel() < tRole[nRoleIndex][3] then
			Say("C竎 h� kh玭g c� trong danh s竎h nh薾 thng!",0)
			return
		end
		if GetFreeItemRoom() <1  then
			Say("H祅h trang c馻 c竎 h� kh玭g  � tr鑞g. H穣 s緋 x誴 l筰!",0)
			return
		end		
		if nExtVal == 1 then
			AddExtPoint(4,1)
		end	
	end
end

function GetTopWorld()
	if GetLevel() < 80 then
		Say("B筺 kh玭g  甶襲 ki謓 nh薾 thng!",0)
		Msg2Player("B筺 kh玭g  甶襲 ki謓 nh薾 thng.")
		return
	end
	
	local nExtVal = GetExtPoint(5)	
	if nExtVal ~= 1 then
		Say("B筺 kh玭g  甶襲 ki謓 nh薾 thng ho芻  nh薾 thng r錳!",0)
		Msg2Player("B筺 kh玭g  甶襲 ki謓 nh薾 thng.")
		return	
	end
	
	if gf_JudgeRoomWeight(3,300,"") == 0 then
		return
	end
	
	PayExtPoint(5,1)
end


function GetTopFaction()
	if GetLevel() < 80 then
		Say("B筺 kh玭g  甶襲 ki謓 nh薾 thng!",0)
		Msg2Player("B筺 kh玭g  甶襲 ki謓 nh薾 thng.")
		return
	end
	
	local nExtVal = GetExtPoint(6)	
	if nExtVal ~= 1 then
		Say("B筺 kh玭g  甶襲 ki謓  nh薾 thng ho芻  nh薾 thng r錳!",0)
		Msg2Player("B筺 kh玭g  甶襲 ki謓 nh薾 thng.")
		return	
	end
	
	if gf_JudgeRoomWeight(1,100,"") == 0 then
		return
	end
	
	PayExtPoint(6,1)
end


--获得辅助效果,nType == 1内功，2外功
function Getfuzhu(nType)
	if GetPlayerRoute() == 0 then
		Talk(1, "", "Ch璦 gia nh藀 m玭 ph竔 kh玭g th� nh薾 頲 ch鴆 n╪g h� tr�");
		return
	end
	if GetTask(VIET_0909_TASK_GET_FUZHU_DATE) >= tonumber(date("%y%m%d")) then
		Talk(1, "", "H玬 nay c竎 h�  nh薾 頲 ch鴆 n╪g h� tr� r錳, kh玭g th� ti誴 t鬰 nh薾 th猰..");
		return
	end
	local nHour = tonumber(date("%H"));
	local nMin = tonumber(date("%M"));
	local nSec = tonumber(date("%S"));
	local nLeftTime = ((23 - nHour) * 60 * 60 + (59 - nMin) * 60 + (60 - nSec)) * 18;
	local nRandAttr = 0;
	if nType == 1 then
		nRandAttr = gf_GetRandItemByTable(viet_0909_tb_InBuff, 100, 1);
		for i = 1, getn(viet_0909_tb_InBuff[nRandAttr][3]) do
			CastState(viet_0909_tb_InBuff[nRandAttr][3][i][1], viet_0909_tb_InBuff[nRandAttr][3][i][2], nLeftTime);
		end
		Msg2Player("Trong h玬 nay c竎 h� nh薾 頲 hi謚 qu�"..viet_0909_tb_InBuff[nRandAttr][1]);
	else
		nRandAttr = gf_GetRandItemByTable(viet_0909_tb_OutBuff, 100, 1);
		for i = 1, getn(viet_0909_tb_OutBuff[nRandAttr][3]) do
			CastState(viet_0909_tb_OutBuff[nRandAttr][3][i][1], viet_0909_tb_OutBuff[nRandAttr][3][i][2], nLeftTime);
		end
		Msg2Player("Trong h玬 nay c竎 h� nh薾 頲 hi謚 qu�"..viet_0909_tb_OutBuff[nRandAttr][1]);
	end
	
	SetTask(VIET_0909_TASK_GET_FUZHU_TYPE, nType * 10 + nRandAttr);
	SetTask(VIET_0909_TASK_GET_FUZHU_DATE, tonumber(date("%y%m%d")));
	
end

