Include("\\script\\lib\\globalfunctions.lua");

NN_MAIN = 2;
NN_SUB1 = 1;
NN_SUB2 = 30243;

NN_titleTable = 
{
	{"S�ng Kh�ng Y�u!", 62, 6},
	{"H�n ��i V� ��i", 62, 7},
	{"Xinh Kh�ng Ki�u", 62, 8},
	{"V�a Xinh V�a �i�u", 62, 9},
	{"Xinh G�i Ngang Tr�i", 62, 10},
	{"X�u K�t C�u ��p", 62, 11},
	{"Teen V� L�m", 62, 12},
	{"Bu�n V� ��p Trai", 62, 13},
	{"B� Kh�e B� ��p", 62, 14},
	{"B�p B� V� L�m", 62, 15},	
	{"M� Nh�n V� L�m", 62, 16},
	{"M� N� V� L�m", 62, 17},
	{"V� L�m Ki�u N�", 62, 18},
	{"V� L�m M� Nam", 62, 19},
	{"Hoa H�ng V� L�m", 62, 20},
	--{"L�ng T� �a T�nh", 62, 21},
	--{"Hi�p Kh�ch V� Danh", 62, 22},
	{"V� L�m Truy�n K� 2", 62, 21}
};

function OnUse(itemIndex)
	local menu = {};
	menu[0] = "Ch�n danh hi�u c�n ��i, hi�u qu�: kh�ng t�t c� t�ng 10"; 
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