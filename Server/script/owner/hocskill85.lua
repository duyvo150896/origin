Include("\\script\\lib.lua");
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\settings\\static_script\\lib\\itemfunctions.lua")


function HocSkill85()
	local CapDo = 85;--level
	local MonPhai = GetPlayerRoute();--lÊy th«ng tin m«n ph¸i
	
	if kiem_tra() > 0 then
	Say("§¹i hiÖp ®· häc 5 tÇng trÊn ph¸i råi kh«ng lo ®i luyÖn tËp ®i./nothing")
	return
	end
	
	if  GetLevel() < CapDo then
		Talk(1, "", strNpcName.."§¼ng cÊp cña c¸c h¹ ch­a ®ñ "..CapDo..", h·y cè g¾ng thªm..");
		return 0
	end

	if nRoute == 0 then
		Talk(1, "", strNpcName.."C¸c h¹ ch­a gia nhËp m«n ph¸i kh«ng thÓ häc vâ c«ng.");
		return 0
	end
	
	if GetReputation() < 10000 then
		Talk(1, "", strNpcName.."C¸c h¹ ch­a ®ñ 10.000 ®iÓm danh väng.");
		return 0
	end
	
	if GetTask(336) < 10000 then
		Talk(1, "", strNpcName.."C¸c h¹ ch­a ®ñ 10.000 ®iÓm s­ m«n.");
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

function kiem_tra()

	if GetTask(3500) == 1 then
		return 1;
	else
		return 0;
	end
end

function enter_mp85(nRoute)
	local nBegin = 0;
	local nEnd = 0;
	local nBody = GetBody(); --1=Õý³£ÄÐ£¬2=¿ýÎµÄÐ£¬3=ÐÔ¸ÐÅ®£¬4=½¿Ð¡Å®

	--SetPlayerRoute(nRoute);						--c¸i nµy ®Ó cho nã v« m«n ph¸i nÕu nã ch­a v«

	if nRoute == 2 then						--ÉÙÁÖË×¼Ò
		LearnSkill(32);
		nBegin = 21;
		nEnd = 31;
	elseif nRoute == 3 then					--ÉÙÁÖìøÉ®
		LearnSkill(57);
		nBegin = 45;
		nEnd = 56;
	elseif nRoute == 4 then					--ÉÙÁÖÎäÉ®
		LearnSkill(44);
		nBegin = 33;
		nEnd = 43;
	elseif nRoute == 14 then					--Îäµ±µÀ¼Ò
		LearnSkill(146);
		nBegin = 125;
		nEnd = 145;
	elseif nRoute == 15 then					--Îäµ±Ë×¼Ò
		LearnSkill(159);
		nBegin = 147;
		nEnd = 158;
	elseif nRoute == 8 then					--¶ëáÒ·ð¼Ò
		LearnSkill(89);
		nBegin = 75
		nEnd = 88;
	elseif nRoute == 9 then					--¶ëáÒË×¼Ò
		LearnSkill(102);
		nBegin = 90
		nEnd = 101;
	elseif nRoute == 11 then					--Ø¤°ï¾»Ò¢
		LearnSkill(113);
		nBegin = 103
		nEnd = 112;
	elseif nRoute == 12 then					--Ø¤°ïÎÛÒ¢
		LearnSkill(124);
		nBegin = 114
		nEnd = 123;
	elseif nRoute == 31 then					--ÉÙÁÖÎäÉ®
		LearnSkill(1883);
		nBegin = 1872;
		nEnd = 1882;
	elseif nRoute == 6 then					--ÌÆÃÅ
		LearnSkill(74);
		nBegin = 58
		nEnd = 73;
	elseif nRoute == 17 then					--ÑîÃÅÇ¹Æï
		LearnSkill(732);
		nBegin = 720;
		nEnd = 731;
	elseif nRoute == 18 then					--ÑîÃÅ¹­Æï
		LearnSkill(745);
		nBegin = 733;
		nEnd = 744;
	elseif nRoute == 20 then					--Îå¶¾Ð°ÏÀ
		LearnSkill(775);
		nBegin = 364;
		nEnd = 377;
	elseif nRoute == 21 then					--Îå¶¾¹ÆÊ¦
		LearnSkill(774);
		nBegin = 347;
		nEnd = 363;
	elseif nRoute == 32 then					--À¥¢ØÌìÊ¦
		LearnSkill(1899);
		nBegin = 1886 ;
		nEnd = 1898;
	elseif nRoute == 23 then					--À¥¢ØÌìÊ¦
		LearnSkill(1032);
		nBegin = 1017 ;
		nEnd = 1031;
	elseif nRoute == 25 then					--Ã÷½ÌÊ¥Õ½
		LearnSkill(1066);
		nBegin = 1053 ;
		nEnd = 1065;
	elseif nRoute == 26 then					--Ã÷½ÌÕó±ø
		LearnSkill(1096);
		nBegin = 1083 ;
		nEnd = 1095;
	elseif nRoute == 27 then					--Ã÷½ÌÑªÈË
		LearnSkill(1213);
		nBegin = 1131 ;
		nEnd = 1143;
	elseif nRoute == 29 then					--´äÑÌÎèÏÉ
		LearnSkill(1196);
		nBegin = 1165 ;
		nEnd = 1176;
	elseif nRoute == 30 then					--´äÑÌÁéÅ®
		LearnSkill(1230);
		nBegin = 1217 ;
		nEnd = 1229;
	else
		return
	end;

	for i = nBegin, nEnd do
		LearnSkill(i);
		local sotanghientai= GetskillLevel(i)
		X = 5 - sotanghientai
		for (j = 0; j < X ; i++)
		LevelUpSkill(i)
		end
	end;