Include("\\script\\lib.lua");
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua");
Include("\\settings\\static_script\\lib\\itemfunctions.lua");


function HocSkilltp()
	local CapDo = 85;--level
	local MonPhai = GetPlayerRoute();--lÊy th«ng tin m«n ph¸i
	
		if MonPhai == 0 then
		Talk(1, "", strNpcName.."C¸c h¹ ch­a gia nhËp m«n ph¸i kh«ng thÓ häc vâ c«ng");
		return 0
	end
	
	if MonPhai ~= 25 and MonPhai ~= 26 and MonPhai ~= 27 then
		Talk(1, "", strNpcName.."§¹i hiÖp kh«ng ph¶i ph¸i Minh Gi¸o xin vÒ m«n ph¸i ®Ó häc.");
		return 0
	end
		
	if GetSkillLevel(1066) >= 5 or GetSkillLevel(1096) >= 5 or GetSkillLevel(1213) >= 5 then
		Talk(1, "", strNpcName.."§¹i hiÖp ®· häc 5 tÇng kü n¨ng trÊn ph¸i råi cßn kh«ng ®i luyÖn tËp ®i.");
		return 0
	end	
	
	if  GetLevel() < CapDo then
		Talk(1, "", strNpcName.."§¼ng cÊp cña c¸c h¹ ch­a ®ñ "..CapDo..", h·y cè g¾ng thªm..");
		return 0
	end	
	
	if GetReputation() < 10000 then
		Talk(1, "", strNpcName.."C¸c h¹ ch­a ®¹t 10.000 ®iÓm danh väng");
		return 0
	end
	
	if GetTask(336) < 10000 then
		Talk(1, "", strNpcName.."C¸c h¹ ch­a ®¹t 10.000 ®iÓm s­ m«n.");
		return 0
	end
	
	if GetVipJinJuan() < 3000 then
		Talk(1,"","Kh«ng ®ñ 3000 kim phiÕu kh«ng thÓ häc kü n¨ng.")
		return 0
	end

	if GetVipJinJuan()  >= 3000 then
		ModifyJinJuan(-3000,1)
		enter_mp85(MonPhai)
		SetTask(3500,1)
	end

end


function enter_mp85(nRoute)
	
	local nBody = GetBody(); --1=Õý³£ÄÐ£¬2=¿ýÎµÄÐ£¬3=ÐÔ¸ÐÅ®£¬4=½¿Ð¡Å®

	--SetPlayerRoute(nRoute);						--c¸i nµy ®Ó cho nã v« m«n ph¸i nÕu nã ch­a v«

	if nRoute == 25 then					--Ã÷½ÌÊ¥Õ½
		LearnSkill(1066);
		nBegin = 1066 ;
		nEnd = 1066;
	elseif nRoute == 26 then					--Ã÷½ÌÕó±ø
		LearnSkill(1096);
		nBegin = 1096 ;
		nEnd = 1096;
	elseif nRoute == 27 then					--Ã÷½ÌÑªÈË
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
	Talk(1,"ExitGame","Thao t¸c thµnh c«ng, h·y ®¨ng nhËp l¹i")
end