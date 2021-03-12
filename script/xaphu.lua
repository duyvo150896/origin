
-- ====================== xa phu ======================

-- ======================================================
Include("\\script\\lib\\transport_head.lua")

function main()

	local szTransportPrice = ""

	if GetLevel() > 0 then
		Say("Ta sÏ ®­a ®i miÔn phÝ, xin hái kh¸ch quan muèn ®i ®©u?",
		10,
		"ThiÕu L©m/ThieuLam",
		"§­êng M«n/DuongMon",
		"Nga My/NgaMi",
		"C¸i Bang/CaiBang",
		"Vâ §ang/VoDang",
		"D­¬ng M«n/ThienBa",
		"Ngò §éc/NguDoc",
		"C«n L«n/ConLon",
		"Thóy Yªn/ThuyYen",
		"Ta ch­a muèn ®i/no")
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


