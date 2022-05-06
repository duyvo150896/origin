------------------------------------------------------------
-- 玄黄宝丹的脚本 xuanhuangbaodan.lua
--
-- comment: 洗掉全部的PK值
-- creator: Tony(Jizheng)
-- Date   : Jul 14th, 2006
--
-- Item ID: 2,0,142
------------------------------------------------------------
Include("\\script\\lib\\globalfunctions.lua")

-- 脚本被程序默认调用的入口函数
function OnUse(nIndex)
	local nPK = GetPKValue()
	if nPK == 0 then
		Talk(1, "", "觤 PK hi謓 t筰 c馻 c竎 h� 產ng l� 0, kh玭g c莕 ph秈 t葃 PK!")
		return
	end
	local nExBigBCH = GetTask(2508)
	local nExBigLTH = EatLiushen(3,0)
	local nExBigTTH = EatSanqin(3,0)	
	if nExBigBCH < (120 * nPK) then
		Talk(1,"","Kh玭g  gi� 駓 th竎 B筩h C﹗ Ti猲 Кn!")
		return
	elseif nExBigTTH < (60 * nPK) then
		Talk(1,"","Kh玭g  gi� 駓 th竎 Tam Thanh Ti猲 Кn!")
		return
	elseif nExBigLTH < (60 * nPK) then
		Talk(1,"","Kh玭g  gi� 駓 th竎 L鬰 Th莕 Ti猲 Кn!")
		return
	elseif DelItemByIndex(nIndex, 1) == 1 then
		SetTask(2508,nExBigBCH - (120 * nPK))
		EatLiushen(3,-(60 * nPK))
		EatSanqin(3,-(60 * nPK))
		AddPKValue(nPK * (-1))
		WriteLogEx("Hoat dong thang 5", "t葃 "..nPK.." 甶觤 PK")			
	end
end;



