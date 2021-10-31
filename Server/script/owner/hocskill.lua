Include("\\script\\lib.lua");
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\settings\\static_script\\lib\\itemfunctions.lua")


function HocSkill()
	local CapDo = 73;--level
	local MonPhai = GetPlayerRoute();--l�y th�ng tin m�n ph�i
	
	if nRoute == 0 then
		Talk(1, "", strNpcName.."C�c h� ch�a gia nh�p m�n ph�i kh�ng th� h�c v� c�ng.");
		return 0
	end
	
	if  GetLevel() < CapDo then
		Talk(1, "", strNpcName.."��ng c�p c�a c�c h� ch�a �� "..CapDo..", h�y c� g�ng th�m..");
		return 0
	end	

	if GetVipJinJuan() < 500 then
		Talk(1,"","Kh�ng �� 500 kim phi�u kh�ng th� h�c k� n�ng.")
		return 0
	end

	if GetVipJinJuan()  >= 500 then
		ModifyJinJuan(-500,1)
		enter_mp(MonPhai)
	end

end

function enter_mp(nRoute)
	local nBegin = 0;
	local nEnd = 0;
	local nBody = GetBody(); --1=�����У�2=��ε�У�3=�Ը�Ů��4=��СŮ

	--SetPlayerRoute(nRoute);						--c�i n�y �� cho n� v� m�n ph�i n�u n� ch�a v�

	if nRoute == 2 then						--�����׼�
		LearnSkill(3);
		LearnSkill(5);
		LearnSkill(31);
		nBegin = 21;
		nEnd = 31;
	elseif nRoute == 3 then					--������ɮ
		LearnSkill(6);
		LearnSkill(56);
		nBegin = 45;
		nEnd = 56;
	elseif nRoute == 4 then					--������ɮ
		LearnSkill(2);
		LearnSkill(43);
		nBegin = 33;
		nEnd = 43;
	elseif nRoute == 14 then					--�䵱����
		LearnSkill(4);
		LearnSkill(145);
		nBegin = 125;
		nEnd = 145;
	elseif nRoute == 15 then					--�䵱�׼�
		LearnSkill(5);
		LearnSkill(158);
		nBegin = 147;
		nEnd = 158;
	elseif nRoute == 8 then					--���ҷ��
		LearnSkill(4);
		LearnSkill(88);
		nBegin = 75
		nEnd = 88;
	elseif nRoute == 9 then					--�����׼�
		LearnSkill(10);
		LearnSkill(101);
		nBegin = 90
		nEnd = 101;
	elseif nRoute == 11 then					--ؤ�ﾻҢ
		LearnSkill(2);
		LearnSkill(112);
		nBegin = 103
		nEnd = 112;
	elseif nRoute == 12 then					--ؤ����Ң
		LearnSkill(5);
		LearnSkill(123);
		nBegin = 114
		nEnd = 123;
	elseif nRoute == 31 then					--������ɮ
		LearnSkill(17);
		LearnSkill(1882);
		nBegin = 1872;
		nEnd = 1882;
	elseif nRoute == 6 then					--����
		LearnSkill(7);
		LearnSkill(73);
		nBegin = 58
		nEnd = 73;
	elseif nRoute == 17 then					--����ǹ��
		LearnSkill(11);
		LearnSkill(731);
		nBegin = 720;
		nEnd = 731;
	elseif nRoute == 18 then					--���Ź���
		LearnSkill(12);
		LearnSkill(744);
		nBegin = 733;
		nEnd = 744;
	elseif nRoute == 20 then					--�嶾а��
		LearnSkill(13);
		LearnSkill(774);
		nBegin = 364;
		nEnd = 377;
	elseif nRoute == 21 then					--�嶾��ʦ
		LearnSkill(14);
		LearnSkill(773);
		nBegin = 347;
		nEnd = 363;
	elseif nRoute == 32 then					--������ʦ
		LearnSkill(1885);
		LearnSkill(1898);
		nBegin = 1886 ;
		nEnd = 1898;
	elseif nRoute == 23 then					--������ʦ
		LearnSkill(4);
		LearnSkill(1031);
		nBegin = 1017 ;
		nEnd = 1031;
	elseif nRoute == 25 then					--����ʥս
		LearnSkill(3);
		LearnSkill(1065);
		nBegin = 1053 ;
		nEnd = 1065;
	elseif nRoute == 26 then					--�������
		LearnSkill(8);
		LearnSkill(1095);
		nBegin = 1083 ;
		nEnd = 1095;
	elseif nRoute == 27 then					--����Ѫ��
		LearnSkill(14);
		LearnSkill(1212);
		nBegin = 1131 ;
		nEnd = 1143;
	elseif nRoute == 29 then					--��������
		LearnSkill(15);
		LearnSkill(1195);
		nBegin = 1165 ;
		nEnd = 1176;
	elseif nRoute == 30 then					--������Ů
		LearnSkill(16);
		LearnSkill(1229);
		nBegin = 1217 ;
		nEnd = 1229;
	else
		return
	end;

	LearnSkill(20);

	for i = nBegin, nEnd do
		LearnSkill(i);
		while LevelUpSkill(i) == 1 do
		end
	end;

	SaveNow()
	Talk(1,"ExitGame","Thao t�c th�nh c�ng, h�y ��ng nh�p l�i")
end