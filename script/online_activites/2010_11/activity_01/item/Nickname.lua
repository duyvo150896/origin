Include("\\script\\lib\\globalfunctions.lua");

NN_MAIN = 2;
NN_SUB1 = 1;
NN_SUB2 = 30243;

NN_titleTable = 
{
	{"Sèng Kh«ng Yªu!", 62, 6},
	{"HËn §êi V« §èi", 62, 7},
	{"Xinh Kh«ng Kiªu", 62, 8},
	{"Võa Xinh Võa §iÖu", 62, 9},
	{"Xinh G¸i Ngang Tr¸i", 62, 10},
	{"XÊu KÕt CÊu §Ñp", 62, 11},
	{"Teen Vâ L©m", 62, 12},
	{"Buån V× §Ñp Trai", 62, 13},
	{"BÐ Kháe BÐ §Ñp", 62, 14},
	{"Bóp Bª Vâ L©m", 62, 15},	
	{"Mü Nh©n Vâ L©m", 62, 16},
	{"Mü N÷ Vâ L©m", 62, 17},
	{"Vâ L©m KiÒu N÷", 62, 18},
	{"Vâ L©m Mü Nam", 62, 19},
	{"Hoa Hång Vâ L©m", 62, 20},
	--{"L·ng Tö §a T×nh", 62, 21},
	--{"HiÖp Kh¸ch V« Danh", 62, 22},
	{"Vâ L©m TruyÒn Kú 2", 62, 21}
};

function OnUse(itemIndex)
	local menu = {};
	menu[0] = "Chän danh hiÖu cÇn ®æi, hiÖu qu¶: kh¸ng tÊt c¶ t¨ng 10"; 
	for i=1, getn(NN_titleTable) do
		tinsert(menu, NN_titleTable[i][1].."/#DoUse("..i..")");
	end
	gf_PageSay(menu, 1, 6);
end

function DoUse(index)
	if 1 == DelItem(NN_MAIN, NN_SUB1, NN_SUB2, 1) then
		local now = GetTime();
		local year, month, day, hour, minute, second = GmTime(GetTime()+8*60*60);
		--WriteLog("year: "..year..", month: "..month..", day: "..day..", hour: "..hour..", minute: "..minute..", second: "..second);
		local expireTime = MkTime(year, month, day, 23, 59, 59);
		--WriteLog("now: "..now..", expireTime: "..expireTime);
		AddTitle(NN_titleTable[index][2], NN_titleTable[index][3]);
		SetCurTitle(NN_titleTable[index][2], NN_titleTable[index][3]);
		SetTitleTime(NN_titleTable[index][2], NN_titleTable[index][3], GetTime() + 30*24*3600);
	end
end