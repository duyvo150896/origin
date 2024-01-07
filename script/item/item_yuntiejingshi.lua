-- 1陨铁精石+1小精石 = 1破精石
Include("\\settings\\static_script\\lib\\normal_exchange.lua")

T_ExchangePojingshi = gtNormalExchange:new()
T_ExchangePojingshi.tConsume = {
	{"Ti觰 Tinh Th筩h", 2	, 1, 30949, 1},
	{"Thi猲 Th筩h Tinh Th筩h", 2	, 1, 1009, 1},
}
T_ExchangePojingshi.tAward = {
	{"Ph� Tinh Th筩h", 2	, 1, 30950, 1},
}
T_ExchangePojingshi.nBatchExchange = 10

function OnUse(nIndex)
	talk_compose_pojingshi(GetItemName(nIndex))
end

function talk_compose_pojingshi(szNpcName, bConfirm)
	if not bConfirm or bConfirm ~= 1 then
		local szTitle = format("<color=gold>%s<color>:%s",szNpcName, "Mu鑞 gh衟 Ph� Tinh Th筩h sao? Ph� Tinh Th筩h l� nguy猲 li謚 c莕  cng h鉧 c蕄 16-20")
    	local tbSay = {}
    	tinsert(tbSay, format("%s/#talk_compose_pojingshi('%s', 1)", "Gh衟 Ph� Tinh Th筩h", szNpcName))
    	tinsert(tbSay, format("%s/nothing", "Ra kh醝"))
    	Say(szTitle, getn(tbSay), tbSay)
	else
		T_ExchangePojingshi:npc_talk_main(szNpcName, 1)
	end
end