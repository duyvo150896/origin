
-- ====================== xa phu ======================

-- ======================================================
Include("\\script\\lib\\transport_head.lua")

function main()

	local szTransportPrice = ""

	if GetLevel() > 0 then
		Say("Ta s� ��a �i mi�n ph�, xin h�i kh�ch quan mu�n �i ��u?",
		10,
		"Thi�u L�m/ThieuLam",
		"���ng M�n/DuongMon",
		"Nga My/NgaMi",
		"C�i Bang/CaiBang",
		"V� �ang/VoDang",
		"D��ng M�n/ThienBa",
		"Ng� ��c/NguDoc",
		"C�n L�n/ConLon",
		"Th�y Y�n/ThuyYen",
		"Ta ch�a mu�n �i/no")
	end	
end

function ThieuLam()
NewWorld(204, 1576 ,3185)
SetFightState(0);
end

function DuongMon()
NewWorld(305, 1588 ,2826)
SetFightState(0);
end

function NgaMi()
NewWorld(303, 1640 ,3155)
SetFightState(0);
end

function CaiBang()
NewWorld(209, 1552 ,3194)
SetFightState(0);
end

function VoDang()
NewWorld(312, 1824 ,3344)
SetFightState(0);
end

function ThienBa()
NewWorld(219, 1544 ,3152)
SetFightState(0);
end

function NguDoc()
NewWorld(407, 1576 ,3236)
SetFightState(0);
end

function ConLon()
NewWorld(509, 1576 ,3226)
SetFightState(0);
end

function ThuyYen()
NewWorld(404, 1490 ,2752)
SetFightState(0);
end

function no()
end;


