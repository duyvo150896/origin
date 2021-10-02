--File name:dragonboat_head.lua 端午节英文原来叫dragon boat festival啊
--Describe:端午节活动脚本头文件
--Create Date:2006-4-18
--Author:yanjun
--==================全局常量======================================
MULTIPLE = 2;	--设置搞多倍活动时的倍数，活动时间在Get_Multiple_Status定义，非活动时间倍数为１
FALSE = 0;
TRUE = 1;

POSITION = 1710; --用来记录玩家在赛道上的位置
RANK = 1711;	--记录玩家经过TRAP点时的名次
ENTERORDER = 1712; --记录玩家进入场地的次序
BONUSPOINT = 1713; --记录玩家积分
ATTENDCOUNT = 1714; --记录玩家完成比赛的次数
STATUS = 1715;	--记录玩家是观众还是参赛选手。0什么都不是，1为观众，2为参赛选手
CURMAP = 1716;	--记录玩家所在场地ID
--================================================================
FINISHTIME = 1717	--记录完成比赛所用的时间，单位为帧数
--======================穿越旗子所需变量==========================
FLAG_COLOR = 1718;	--用来记录之前穿过什么旗子，1表示红旗，2表示黄旗，3表示蓝旗
--记录旗子是否被穿过，一圈一共有49面旗子，所以要用两个32位的任务变量。
FLAG_BEGIN = 1719;
FLAG_END = 1720;
ATTENDCOUNTPERDAY1 = 1721	--用来记录玩家当天完成比赛的次数
ATTENDCOUNTPERDAY2 = 1727	--记录参加比赛的日期
ATTENDCOUNTPERDAY3 = 1728	--记录当天有没有领取过粽子
GETXDZZCOUNT = 1722	--用来记录玩家领取咸蛋粽子的次数

AWARD_YT1 = 1704	--陨铁	记录领取次数，
AWARD_YT2 = 1729	--记录领取时间
AWARD_SLGZ1 = 1705	--试炼果子	记录领取次数
AWARD_SLGZ2 = 1611	--记录领取时间
AWARD_JXZZ1 = 1706	--嘉兴粽子	记录领取次数
AWARD_JXZZ2 = 1612	--记录领取时间
AWARD_TXDMHG1 = 1707	--太虚多蜜花果	记录领取次数
AWARD_TXDMHG2 = 1613	--记录领取时间
AWARD_HWJS1 = 1708	--黑钨精石等	记录总共领取次数
AWARD_HWJS2 = 1614	--记录当天领取次数
AWARD_HWJS3 = 1615	--记录领取时间
AWARD_ZZDLB1 = 1709	--粽子大礼包	记录总共领取次数
AWARD_ZZDLB2 = 1616	--记录当天领取次数
AWARD_ZZDLB3 = 1617	--记录领取时间
AWARD_HLB1 = 1723	--忽雷驳	记录总共领取次数
AWARD_HLB2 = 1618	--记录当天领取次数
AWARD_HLB3 = 1619	--记录领取时间
AWARD_DJSWQZZSC1 = 1724	--大匠师武器制作手书	记录总共领取次数
AWARD_DJSWQZZSC2 = 1620	--记录当天领取次数
AWARD_DJSWQZZSC3 = 1621	--记录领取时间
AWARD_QYZP = 1725	--屈原之佩	是否领取过屈原之佩
AWARD_REPUTATION = 1726	--换取声望点数
BEST_TIME = 1622	--记录玩家的最快时间(帧数)
AWARD_ZZLB = 1624	--记录玩家领取粽子礼包的日期
AWARD_CSZZ1 = 1625	--记录当天领取叉烧粽子的次数
AWARD_CSZZ2 = 1626	--记录领取叉烧粽子的时间
AWARD_DIARY1 = 1627	--记录当天领取比赛日记的次数
AWARD_DIARY2 = 1628	--记录领取比赛日记的日期
--================================================================
NumTab = {"m閠","hai","ba","b鑞","Ng?","s竨","b秠","t竚","ch輓","Th藀"};
--================================================================
RoomName = {
		"M﹏ Giang  ",
		"C鰑 Long Giang",
		"T蕁 Giang  ",
		"Thinh Giang  ",
		"Giao Kh? ",
		"M辌h La Giang",
		"M閏 Lan Kh?,
		"Ch﹗ Giang  ",---------------------------------------		
		"Ho祅g H? ",
		"H錸g Y Gi秐",
		"L筩 H? ",
		"Y H? ",
		"M穘g H? ",
		"T萴 H? ",
		"n H? ",
		"M蓇 Кn Giang",----------------------------------------	
		"Trng Giang  ",
		"Ph?H? ",
		"Nam H? ",
		"Sa H? ",
		"Thanh Th駓 H?,
		"Giang An H?,
		"Kim Sa H?,
		"Dng T?Giang",
		};
--=================================================================================================
BoatInfo = {
		{"Thuy襫 R錸g ph?th玭g","Thuy襫 R錸g ph?th玭g kh玭g c?m祏 s綾 v?t輓h n╪g c bi謙."},
		{"Thuy襫 R錸g Th駓 Ph竜","C?kh?n╪g b緉 th駓 n r蕋 m筺h v?t蕁 c玭g i th?t?xa."},
		{"Thuy襫 R錸g Th駓 L玦","C?kh?n╪g ch玭 th駓 l玦 di nc, i th?甶 qua s?b?ch蕁 ng."},
		{"Thuy襫 R錸g Th駓 L穘g","C?kh?n╪g t筼 ra m閠 b鴆 tng s鉵g ng╪ c秐 i phng 甶 qua."},
		{"Thuy襫 r錸g 秐 Binh","Tuy觧 th?b猲 c筺h t筸 th阨 kh玭g th?ti課 l猲"},
		{"Thuy襫 R錸g Li猲 X?,"C?kh?n╪g b緉 th駓 n khi課 i th?b?cho竛g, 璾 甶觤 l?m閠 l莕 c?th?b竛 nhi襲 ph竧."},
		{"Thuy襫 r錸g Ti襪 H祅h","Khi b?tng s鉵g c馻 i th?t蕁 c玭g kh玭g nh鱪g kh玭g b?cho竛g m?c遪 mn s鴆 m筺h c馻 tng s鉵g l苙 xu鑞g nc tr竛h i th?trong m閠 kho秐g th阨 gian."},
		};
--=================================================================================================
BoxPos = {
	{2007,3266},
	{1981,3259},
	{1969,3229},
	{1944,3279},
	{1935,3307},
	{1909,3303},
	{1893,3316},
	{1893,3353},
	{1882,3305},
	{1845,3252},
	{1836,3285},
	{1817,3309},
	{1791,3344},
	{1774,3323},
	{1752,3314},
	{1739,3272},
	{1712,3228},
	{1700,3286},
	{1678,3286},
	{1653,3309},
	{1645,3341},
	{1634,3301},
	{1611,3291},
	{1596,3350},
	{1604,3384},
	{1619,3406},
	{1647,3450},
	{1677,3469},
	{1693,3427},
	{1699,3391},
	{1701,3344},
	{1717,3357},
	{1730,3377},
	{1755,3404},
	{1765,3449},
	{1782,3467},
	{1808,3523},
	{1827,3600},
	{1857,3561},
	{1852,3491},
	{1888,3467},
	{1907,3478},
	{1935,3460},
	{1914,3414},
	{1929,3368},
	{1955,3396},
	{1987,3427},
	{2008,3383},
	{2056,3415},
	{2057,3375},
	{2042,3314},
		};
BOXCOUNT = 10;
--=================================================================================================
g_TotalRoomNum = 8;	--一个城市有多少个比赛场地
LeavePoint = {
		{100,1462,2803},	--泉州
		{200,1167,2839},	--汴京
		{300,1645,3534},	--成都
		}
--旗子颜色ID   FlagColor
FC_RED = 1;	
FC_YELLOW = 2;
FC_BLUE = 3;
--旗子组合类型
MAGIC_RR = 11;	--炸晕其他所有选手
MAGIC_RY = 12;	--炸晕自己身前的选手
MAGIC_RB = 13;	--炸晕第一名
MAGIC_YR = 21;	--随机使一名选手来到自己身边
MAGIC_YY = 22;	--随机将自己转移到另一名选手的身边
MAGIC_YB = 23;	--全体混乱（包含自己）
MAGIC_BR = 31;	--前三名定身
MAGIC_BY = 32;	--自身加速
MAGIC_BB = 33;	--全体封招
--================================================================
--Modify:去掉截止时间限制，让活动继续开下去。
function Get_DragonBoatDay_State()
	local nDate = tonumber(date("%Y%m%d"));
	if nDate < 20210930 then
		return 0;	--活动开始前
	elseif nDate > 20211110 then
		return 3;	--领奖截止		需要停止的时候返回1
	elseif nDate > 20211030 then
		return 3;	--活动结束后	需要结束的时候返回2
	else
		return 3;	--活动进行中
	end;
end;

function nothing()

end;
--自定义写日志函数。第一个参数为事件名，第二个参数为事件内容
function Write_Log(Event,Content)	
	WriteLog("["..Event.."]:"..Content);
end;

function Create_Box(nCount)
	local nRandomNum;
	local MapID = GetWorldPos();
	if nCount >= 1 or nCount <= getn(BoxPos) then
		for i=1,nCount do
			nRandomNum = random(1,getn(BoxPos));
			local npcBox = CreateNpc("Rng ti襫","B秓 rng",MapID,BoxPos[nRandomNum][1]+random(-3,3),BoxPos[nRandomNum][2]+random(-3,3))
			SetNpcScript(npcBox,"\\script\\online\\dragonboat06\\box.lua")			
		end;
	else
		Write_Log("Ho箃 ng t誸 an Ng?sai s鉻","Khi m?rng, l鏸 s?rng, tr?b竜 l鏸 l?"..nCount);
	end;
end;

function Get_Multiple_Status()
	local nDate = tonumber(date("%y%m%d"));
	if nDate >= 070614 and nDate <= 070624 then
		return 1;
	else
		return 0;
	end;
end;