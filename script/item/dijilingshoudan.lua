Include("\\script\\lib\\globalfunctions.lua");
--Include("\\script\\task\\global_task\\gtask_head.lua")

function OnUse(nItem)
	if GetPetCount() >= 5 then
		Msg2Player("S� l��ng b�n ��ng h�nh hi�n t�i v��t qu� 5");
		return 0;
	end
	if DelItemByIndex(nItem, 1) == 1 then
		CustomAwardGiveOne(CustomAwardSelectOne("dijidan"));
	end
end