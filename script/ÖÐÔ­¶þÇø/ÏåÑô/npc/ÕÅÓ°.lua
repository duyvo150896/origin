--世界任务
--地点：襄阳  任务：收集枪头和刀鞘
--策划：樊万松  2004.01.27

-- 读入任务引擎头文件
Include("\\script\\lib\\task_main.lua");
Include("\\script\\task\\world\\task_award.lua")

function main()

local strMain_001 = {
	"Ngi  nghe qua Th� Ph� � Ph鬰 Ng璾 S琻 ch璦?",
	"Ta kh玭g quan t﹎, ch� c莕 b� t竛h kh玭g sao l� 頲 r錳!",
	"Nh璶g ta nghe n鉯 b鋘 ch髇g  甧m b譶h s� c馻 Th竔 th� 甶 r錳?",
	"Chuy謓 n祔 b� m藅, nghe n鉯 ch� c� chng m玭 <color=yellow>T� H筩 Ch﹏ Nh﹏<color> � <color=yellow>V� ng ph竔<color> bi誸 th玦.",
	"C竔 b譶h g鑝 n祔 c騨g c� li猲 quan n V� ng chng m玭 �?",
	"N誹 v藋 th� ph秈 h醝 T� H筩 Ch﹏ Nh﹏ th玦."
}

	if CTask:IsTaskStart("T譵 Trng 秐h_Tng Dng")==1 then
		CTask:TalkEx("task_yes_001", strMain_001);
		return
	end;

	UWorld1510 = GetTask(1510)
	if ( UWorld1510 == 0 and  GetLevel() > 19 )  then
		Say("S� th輈h c馻 ta l� thu th藀 v� kh�, ngi c� th� n V� ng thu th藀 cho ta 10 Thi誸 Thng u v� bao 產o kh玭g?",2,"Chuy謓 nh� th玦 m�/yes1510","Ta 產ng b薾 l緈!/no1510")
	elseif ( UWorld1510 == 5 and  GetItemCount(2,1,20) > 9 and GetItemCount(2,1,21) > 9)  then	
		Talk(1,"","Ti觰 huynh  qu� nhi猲 n鉯 l� l祄, c� ch髏 th祅h � xin nh薾 cho!")
		SetTask(1510,10)
		DelItem(2,1,20,10)
		DelItem(2,1,21,10)
		Earn(600)
		GivePlayerExp(SkeyShiJieChongFu,"zhangying")
	  ModifyReputation(8,0)
		    --AddNote("帮张影收集武器的任务完成")
		TaskTip("Ho祅 th祅h nhi謒 v� gi髉 Trng 秐h thu th藀 v� kh�")
	elseif ( UWorld1510  ==10 )  and  (GetItemCount(2,1,20)<= 9 or GetItemCount(2,1,21)<= 9  )  then
		Talk(1,"","Di ch﹏ n骾 V� ng c� th� t譵 頲 bao 產o v� Thi誸 Thng u.")
	else
		i=random(1,3)
		if i==1 then 
			Talk(1,"","Kh玭g sai, ta ch輓h l�  nh蕋 thi猲 h�, tr猲 i n祔 kh玭g c� g� l� ta kh玭g bi誸.")
		elseif i == 2 then  
			Talk(1,"","B蕋 lu薾 l� t� ph竔 hay ch竛h ph竔, c� v謎c g� kh玭g r� c� n t譵 ta.")
		else
			Talk(1,"","Bi誸 nhi襲 qu� i l骳 c騨g kh�.")
		end
	end
end;

-- 接受任务去找紫鹤真人
function task_yes_001()
	CTask:FinishTask("T譵 Trng 秐h_Tng Dng");
	CTask:StartTask("Tng Dng_t譵 T� H筩 Ch﹏ Nh﹏");
	return
end;

function yes1510()
		Talk(1,"","Phi襫 ti觰 huynh  n ch﹏ n骾 V� ng t譵 gi髉 ta 10 bao 產o v� Thi誸 Thng u.")
		SetTask(1510,5)
		--AddNote("接受帮张影收集武器的任务")
		TaskTip("Nh薾 nhi謒 v� thu th藀 v� kh� cho Trng 秐h.")
		--ModifyReputation(8,0)
end;

function no1510()
		Talk(1,"","Ta ch� c� l骳 r秐h m韎 ng th�.")
end;