--把与灵石、灵石配方配置文件无关的内容移到这里。
--主要是考虑到灵石这个东西会被大范围用到，
--如果仅仅是操作一下任务变量也要把配置文件读进来那就太浪费内存了
--所以lspf_AddLingShiInBottle和lspf_AddPeiFangInBottle被写到这里来了

--存储灵石任务变量
SYS_TSK_LINGSHI_ONE = 2321;   --1级灵石的数量
SYS_TSK_LINGSHI_TWO = 2322;
SYS_TSK_LINGSHI_THREE = 2323;
SYS_TSK_LINGSHI_FOUR = 2324;
SYS_TSK_LINGSHI_FIVE = 2325;
SYS_TSK_LINGSHI_SIX = 2326;
SYS_TSK_LINGSHI_SEVEN = 2327;  --7级灵石的数量

--存储灵石配方任务变量
SYS_TSK_PEIFANG_ONE = 2328;   --1级配方的数量
SYS_TSK_PEIFANG_TWO = 2329;
SYS_TSK_PEIFANG_THREE = 2330;
SYS_TSK_PEIFANG_FOUR = 2331;
SYS_TSK_PEIFANG_FIVE = 2332;
SYS_TSK_PEIFANG_SIX = 2333;
SYS_TSK_PEIFANG_SEVEN = 2334;  --7级配方的数量

--把灵石加入聚灵鼎
function lspf_AddLingShiInBottle(nLevel,nCount)
	SetTask(SYS_TSK_LINGSHI_ONE+nLevel-1,GetTask(SYS_TSK_LINGSHI_ONE+nLevel-1)+nCount);
end;
--把配方加入聚灵鼎
function lspf_AddPeiFangInBottle(nLevel,nCount)
	SetTask(SYS_TSK_PEIFANG_ONE+nLevel-1,GetTask(SYS_TSK_PEIFANG_ONE+nLevel-1)+nCount);
end;

function lspf_AddLingShiInBottleEx(nLevel, nCount)
	lspf_AddLingShiInBottle(nLevel, nCount);
	Msg2Player(format("%s nh薾 頲 %d vi猲 c蕄 %d  Linh Th筩h,  cho v祇 T� Linh жnh","C竎 h箙", nCount, nLevel));
	WriteLog(format("%s Get %d Level %d LingShi", GetName(), nCount, nLevel));
end

function lspf_AddTaiShiLingShiInBottleEx(nLevel, nCount)
	if 1 == lspf_AddTaiShiLingShiInBottle(nLevel, nCount) then
		Msg2Player(format("%s nh薾 頲 %d vi猲 c蕄 %d Th竔 Th駓 Linh Th筩h,  cho v祇 T� Linh жnh","C竎 h箙", nCount, nLevel));
		WriteLog(format("%s Get %d Level %d TaiShiLingShi", GetName(), nCount, nLevel));
	end
end

--function lspf_AddPeiFangInBottleEx(nLevel,nCount)
--	lspf_AddPeiFangInBottle(nLevel,nCount);
--	Msg2Player("你获得"..nCount.."张"..nLevel.."级灵石配方, 已放入聚灵鼎");
--	WriteLog(GetName().."获得"..nCount.."张"..nLevel.."级灵石配方, 已放入聚灵鼎");
--end;
