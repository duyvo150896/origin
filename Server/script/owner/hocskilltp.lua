Include("\\script\\lib.lua");
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua");
Include("\\settings\\static_script\\lib\\itemfunctions.lua");


function HocSkilltp()
	local CapDo = 85;--level
	local MonPhai = GetPlayerRoute();--l�y th�ng tin m�n ph�i
	
		if MonPhai == 0 then
		Talk(1, "", strNpcName.."C�c h� ch�a gia nh�p m�n ph�i kh�ng th� h�c v� c�ng");
		return 0
	end
	
	if MonPhai ~= 25 and MonPhai ~= 26 and MonPhai ~= 27 then
		Talk(1, "", strNpcName.."��i hi�p kh�ng ph�i ph�i Minh Gi�o xin v� m�n ph�i �� h�c.");
		return 0
	end
		
	if GetSkillLevel(1066) >= 5 or GetSkillLevel(1096) >= 5 or GetSkillLevel(1213) >= 5 then
		Talk(1, "", strNpcName.."��i hi�p �� h�c 5 t�ng k� n�ng tr�n ph�i r�i c�n kh�ng �i luy�n t�p �i.");
		return 0
	end	
	
	if  GetLevel() < CapDo then
		Talk(1, "", strNpcName.."��ng c�p c�a c�c h� ch�a �� "..CapDo..", h�y c� g�ng th�m..");
		return 0
	end	
	
	if GetReputation() < 10000 then
		Talk(1, "", strNpcName.."C�c h� ch�a ��t 10.000 �i�m danh v�ng");
		return 0
	end
	
	if GetTask(336) < 10000 then
		Talk(1, "", strNpcName.."C�c h� ch�a ��t 10.000 �i�m s� m�n.");
		return 0
	end
	
	if GetVipJinJuan() < 3000 then
		Talk(1,"","Kh�ng �� 3000 kim phi�u kh�ng th� h�c k� n�ng.")
		return 0
	end

	if GetVipJinJuan()  >= 3000 then
		ModifyJinJuan(-3000,1)
		enter_mp85(MonPhai)
		SetTask(3500,1)
	end

end


function enter_mp85(nRoute)
	
	local nBody = GetBody(); --1=�����У�2=��ε�У�3=�Ը�Ů��4=��СŮ

	--SetPlayerRoute(nRoute);						--c�i n�y �� cho n� v� m�n ph�i n�u n� ch�a v�

	if nRoute == 25 then					--����ʥս
		LearnSkill(1066);
		nBegin = 1066 ;
		nEnd = 1066;
	elseif nRoute == 26 then					--�������
		LearnSkill(1096);
		nBegin = 1096 ;
		nEnd = 1096;
	elseif nRoute == 27 then					--����Ѫ��
		LearnSkill(1213);
		nBegin = 1213 ;
		nEnd = 1213;
	else
		return
	end;

	for i = nBegin, nEnd do
		LearnSkill(i);
		for j =1,4 do
		LevelUpSkill(i);
		end
		
	end;
	SaveNow()
	Talk(1,"ExitGame","Thao t�c th�nh c�ng, h�y ��ng nh�p l�i")
end