Include("\\script\\newbattles\\battle_equipment_jungong.lua")
Include("\\script\\newbattles\\battle_equipment_item.lua")

function calSkill(oldSkill, newSkill)
  return newSkill*65536+GetSkillLevel(oldSkill)
end

gSkill = {
    [0] = {0,0},
    [2] = {31, 3031},
    [3] = {55, 3055},
    [4] = {42, 3042},
    [6] = {0, 0},
    [8] = {82, 3082},
    [9] = {0, 0},
    [11] = {0, 0},
    [12] = {0, 0},
    [14] = {0, 0},
    [15] = {0, 0},
    [17] = {724, 3724, 729, 3729, 731, 3731},
    [18] = {744, 3744},
    [20] = {0, 0},
    [21] = {0, 0},
    [23] = {0, 0},
    [25] = {1061, 4061},
    [26] = {0, 0},
    [27] = {1140, 4140},
    [29] = {0, 0},
    [30] = {0, 0},
    [31] = {0, 0},
    [32] = {1876, 4876, 1882, 4882},
}

function CheckSuit(nSuitID)
    if nSuitID < 50155 or nSuitID > 50666 and nSuitID < 150000 or nSuitID > 150283 then
        return 0
    end
    return 1
end

function CheckFullEquip()
	for i=0,5 do
		local nSuitID = GetEquipSuitID(GetPlayerEquipIndex(i))
		if CheckSuit(nSuitID) == 0 then
			return 0
		end
	end
	return 1
end

function OnEquip(nItemIdx)
	local nID1,nID2,nID3 = GetItemInfoByIndex(nItemIdx)
  local nRoute = GetPlayerRoute()
  if CheckFullEquip() == 1 and gSkill[nRoute][1] > 0 then
  	for i=1, getn(gSkill[nRoute])/2 do
    	CastState("state_skill_convert_from_"..i,gSkill[nRoute][2*i-1],-1,-1,8042+i)
    	CastState("state_skill_convert_to_"..i,calSkill(gSkill[nRoute][i],gSkill[nRoute][2*i]),-1,-1,9042+i)
  	end
  end
	return 0;
end

function OnUnEquip()
	local nRoute = GetPlayerRoute();
	for i=1, getn(gSkill[nRoute])/2 do
		RemoveState(8042+i)
		RemoveState(9042+i)
	end
	return 0;
end

function CanEquip(nItemIdx)
	-- if check_palyer_state(nItemIdx) == 0 then
	-- 	return 1;	--���ܴ�
	-- end;
	return 0;
end;

function OnUse(nItemIdx)
	return 0;
end;

function check_palyer_jungong_or_junxian_equip_state_by_index(nJunGongEquipCamp,nJungGongEquipIdx, nJunXianEquipCamp,nJungXianEquipIdx)

	-- if nEquipCamp == 0 then

	-- 	Msg2Player("��y kh�ng ph�i l� trang b� chi�n tr�n ");

	-- 	return 0;

	-- end;

	local nPlayerCamp = BT_GetCurCamp()

	local nCurPoint = abs(BT_GetData(PT_RANKPOINT));

	

	local tEquipJG = tJunGongBattleEquip[nJunGongEquipCamp][nJunGongEquipCamp]

	local sEquipName = tEquipJG[1][1]

	local nNeedPoint = tEquipJG[2];

	

	if nPlayerCamp == ALL_ID then

		Msg2Player("Qu�n h�m c�a b�n hi�n m�i l� Binh s�, kh�ng th� nh�n trang b�"..sEquipName)

		return 0;	

	end;

	

	if (nJunGongEquipCamp ~= nPlayerCamp) then

		if nPlayerCamp == SONG_ID then

			Msg2Player("Ng��i l� phe T�ng, kh�ng th� m�c trang b� phe Li�u");

		else

			Msg2Player("Ng��i l� phe Li�u, kh�ng th� m�c trang b� phe T�ng");

		end;

		return 0;

	end;

	

	if nCurPoint >= nNeedPoint then --ͨ��

		return 1;

	end;

	

	--local szMsg = format("��ľ�������%d����װ��%s", nNeedPoint, sEquipName)

	---------------------------------------------------------------------------------------------------------------

	local nCurRank = BT_GetData(PT_CURRANK)

	local nPlayerCamp = 0

	local tEquipJX = tBattleEquip[nJunXianEquipCamp][nJungXianEquipIdx]

	local sEquipName = tEquipJX[1][1]

	if nCurRank < 0 then

		nPlayerCamp = LIAO_ID

	elseif nCurRank > 0 then

		nPlayerCamp = SONG_ID

	end

	if (nJunXianEquipCamp ~= nPlayerCamp) then

		Msg2Player("B�n l� ng��i c�a phe "..tCampNameZ[nPlayerCamp]..", kh�ng th� s� d�ng trang b� c�a phe "..tCampNameZ[nEquipCamp]..".")

		return 0

	end

	

	local nYSChanceCount = GetTask(765)

	local nJJChanceCount = GetTask(766)

	local nXFChanceCount = GetTask(767)

	

	nCurRank = abs(nCurRank)

	local nType = tEquipJX[2]

	if nType == 3 then		-- ��ͳ

		if nCurRank >= 3 or					-- �����Ƕ�ͳ�����Ͼ���

			nYSChanceCount >= 15 or			-- ����Ԫ˧

			nJJChanceCount + nYSChanceCount >= 10 or			-- ���ý���

			nXFChanceCount + nJJChanceCount + nYSChanceCount >= 10 then		-- �����ȷ�

			return 1

		end

	elseif nType == 4 then	-- �ȷ�

		if nCurRank >= 4 or					-- �������ȷ�����Ͼ���

			nYSChanceCount >= 15 or			-- ����Ԫ˧

			nJJChanceCount + nYSChanceCount >= 10 or			-- ���ý���

			nXFChanceCount + nJJChanceCount + nYSChanceCount >= 10 then		-- �����ȷ�

			return 1

		end

	elseif nType == 5 then	-- ����

		if nCurRank >= 5 or					-- �����Ǵ󽫻����Ͼ���

			nYSChanceCount >= 15 or			-- ����Ԫ˧

			nJJChanceCount + nYSChanceCount >= 10 then			-- ���ý���

			return 1

		end

	elseif nType == 6 then	-- Ԫ˧

		if nCurRank == 6 then					-- ������Ԫ˧

			return 1

		end

	elseif nType == 7 then	-- ����Ԫ˧

		if nCurRank == 6 or					-- ������Ԫ˧

			nYSChanceCount >= 15 then		-- ����Ԫ˧

			return 1

		end

	end

	Msg2Player("Qu�n h�m c�a b�n qu� th�p, kh�ng th� trang b�"..sEquipName)

	return 0

	

end