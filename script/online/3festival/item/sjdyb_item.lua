Include("\\script\\online\\3festival\\3festival_head.lua")
function OnUse(nItemIdx)
	if DelItemByIndex(nItemIdx,1) == 1 then
		ModifyExp(1);
		Msg2Player("B筺 nh薾 頲1 甶觤 kinh nghi謒");
		local nRand = random(1,100);
		CastState("state_damage_life_max",99,30*18,1,214000);	--生命上限降低99%持续30秒
		Msg2Player("Sinh l鵦 t鑙 產 gi秏 99% trong 30 gi﹜");
		if nRand <= 75 then
			CastState("state_m_attack_percent_add",100,10*18,1,197000);
			CastState("state_p_attack_percent_add",100,10*18,1,196000);
			Msg2Player("C玭g k輈h t╪g 100%, duy tr� 10 gi﹜");
		elseif nRand <= 95 then
			CastState("state_m_attack_percent_add",200,10*18,1,197000);
			CastState("state_p_attack_percent_add",200,10*18,1,196000);
			Msg2Player("C玭g k輈h 200%, duy tr� 10 gi﹜");	
		else
			CastState("state_m_attack_percent_add",500,10*18,1,197000);
			CastState("state_p_attack_percent_add",500,10*18,1,196000);
			Msg2Player("C玭g k輈h 500%, duy tr� 10 gi﹜");	
		end;
		Msg2_LeiTai("B竛h trung thu kh衪");
	end;
end;