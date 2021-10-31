Include("\\script\\lib.lua");
Include("\\script\\lib\\globalfunctions.lua");
Include("\\script\\task\\world\\task_head.lua")
Include("\\settings\\static_script\\lib\\itemfunctions.lua")


function HocSkill()
	local CapDo = 73;--level
	local MonPhai = GetPlayerRoute();--lÊy th«ng tin m«n ph¸i
	
	if nRoute == 0 then
		Talk(1, "", strNpcName.."C¸c h¹ ch­a gia nhËp m«n ph¸i kh«ng thÓ häc vâ c«ng.");
		return 0
	end
	
	if  GetLevel() < CapDo then
		Talk(1, "", strNpcName.."§¼ng cÊp cña c¸c h¹ ch­a ®ñ "..CapDo..", h·y cè g¾ng thªm..");
		return 0
	end	

	if GetVipJinJuan() < 500 then
		Talk(1,"","Kh«ng ®ñ 500 kim phiÕu kh«ng thÓ häc kü n¨ng.")
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
	local nBody = GetBody(); --1=Õı³£ÄĞ£¬2=¿ıÎµÄĞ£¬3=ĞÔ¸ĞÅ®£¬4=½¿Ğ¡Å®

	--SetPlayerRoute(nRoute);						--c¸i nµy ®Ó cho nã v« m«n ph¸i nÕu nã ch­a v«

	if nRoute == 2 then						--ÉÙÁÖË×¼Ò
		LearnSkill(3);
		LearnSkill(5);
		LearnSkill(31);
		nBegin = 21;
		nEnd = 31;
	elseif nRoute == 3 then					--ÉÙÁÖìøÉ®
		LearnSkill(6);
		LearnSkill(56);
		nBegin = 45;
		nEnd = 56;
	elseif nRoute == 4 then					--ÉÙÁÖÎäÉ®
		LearnSkill(2);
		LearnSkill(43);
		nBegin = 33;
		nEnd = 43;
	elseif nRoute == 14 then					--Îäµ±µÀ¼Ò
		LearnSkill(4);
		LearnSkill(145);
		nBegin = 125;
		nEnd = 145;
	elseif nRoute == 15 then					--Îäµ±Ë×¼Ò
		LearnSkill(5);
		LearnSkill(158);
		nBegin = 147;
		nEnd = 158;
	elseif nRoute == 8 then					--¶ëáÒ·ğ¼Ò
		LearnSkill(4);
		LearnSkill(88);
		nBegin = 75
		nEnd = 88;
	elseif nRoute == 9 then					--¶ëáÒË×¼Ò
		LearnSkill(10);
		LearnSkill(101);
		nBegin = 90
		nEnd = 101;
	elseif nRoute == 11 then					--Ø¤°ï¾»Ò¢
		LearnSkill(2);
		LearnSkill(112);
		nBegin = 103
		nEnd = 112;
	elseif nRoute == 12 then					--Ø¤°ïÎÛÒ¢
		LearnSkill(5);
		LearnSkill(123);
		nBegin = 114
		nEnd = 123;
	elseif nRoute == 31 then					--ÉÙÁÖÎäÉ®
		LearnSkill(17);
		LearnSkill(1882);
		nBegin = 1872;
		nEnd = 1882;
	elseif nRoute == 6 then					--ÌÆÃÅ
		LearnSkill(7);
		LearnSkill(73);
		nBegin = 58
		nEnd = 73;
	elseif nRoute == 17 then					--ÑîÃÅÇ¹Æï
		LearnSkill(11);
		LearnSkill(731);
		nBegin = 720;
		nEnd = 731;
	elseif nRoute == 18 then					--ÑîÃÅ¹­Æï
		LearnSkill(12);
		LearnSkill(744);
		nBegin = 733;
		nEnd = 744;
	elseif nRoute == 20 then					--Îå¶¾Ğ°ÏÀ
		LearnSkill(13);
		LearnSkill(774);
		nBegin = 364;
		nEnd = 377;
	elseif nRoute == 21 then					--Îå¶¾¹ÆÊ¦
		LearnSkill(14);
		LearnSkill(773);
		nBegin = 347;
		nEnd = 363;
	elseif nRoute == 32 then					--À¥¢ØÌìÊ¦
		LearnSkill(1885);
		LearnSkill(1898);
		nBegin = 1886 ;
		nEnd = 1898;
	elseif nRoute == 23 then					--À¥¢ØÌìÊ¦
		LearnSkill(4);
		LearnSkill(1031);
		nBegin = 1017 ;
		nEnd = 1031;
	elseif nRoute == 25 then					--Ã÷½ÌÊ¥Õ½
		LearnSkill(3);
		LearnSkill(1065);
		nBegin = 1053 ;
		nEnd = 1065;
	elseif nRoute == 26 then					--Ã÷½ÌÕó±ø
		LearnSkill(8);
		LearnSkill(1095);
		nBegin = 1083 ;
		nEnd = 1095;
	elseif nRoute == 27 then					--Ã÷½ÌÑªÈË
		LearnSkill(14);
		LearnSkill(1212);
		nBegin = 1131 ;
		nEnd = 1143;
	elseif nRoute == 29 then					--´äÑÌÎèÏÉ
		LearnSkill(15);
		LearnSkill(1195);
		nBegin = 1165 ;
		nEnd = 1176;
	elseif nRoute == 30 then					--´äÑÌÁéÅ®
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
	Talk(1,"ExitGame","Thao t¸c thµnh c«ng, h·y ®¨ng nhËp l¹i")
end