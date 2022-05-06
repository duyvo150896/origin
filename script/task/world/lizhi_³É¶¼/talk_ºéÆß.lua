--文件说明
--与洪七对话
--created by lizhi
--2005-8-15 9:59

Include("\\script\\task\\world\\lizhi_成都\\task_main.lua");

function talk_four()
    local szTalk = {
        "Xin h醝 c� ph秈 l� H錸g Th蕋 i ca kh玭g? T筰 h� ph鬾g m謓h Ph筸 Tr鋘g Y猲 n th╩ h醝, y l� t輓 v藅 xin xem qua!",
        "<sex> kh玭g c莕 產 l�. <sex> n y v� chuy謓 c馻 Ph筸 ti猲 sinh ph秈 kh玭g?",
        "ng v藋!",
        "Ta  cho  t� C竔 Bang n ph﹏  Th祅h Й d� la, hi謓 v蒼 ch璦 v�. Ngi gi髉 ta khai th玭g con 阯g n D� Tr� l﹎ 頲 kh玭g?"
    };
    local szTalk1 = {
        "H緉 ta v� ch璦? Theo l辌h tr譶h h玬 qua l� t韎.",
        "в t筰 h� 甶 xem sao"
    };
    local szBack = {
        "е t� d� la tin t鴆  v�.  t� <sex> d鋍 阯g gi髉 .",
        "H錸g i ca ng qu� kh竎h s竜, kh玭g bi誸 Th祅h Й c� tin t鴆 g� kh玭g?"
    };
    local szBack2 = {
        "<sex> chu萵 b� l猲 阯g ch璦?",
        "Ta  s絥 s祅g. Phi襫 H錸g i ca!/task_four_yes",
        "Ta c莕 chu萵 b�, s� quay l筰 sau!/task_exit"
    };
    
    local nStep = GetTask(TASK_FOUR);
    
    if nStep == 1 then
        TalkEx("task_four_01", szTalk);
        Msg2Player("T譵  t� C竔 Bang");
        TaskTip("T譵  t� C竔 Bang");
    elseif nStep == 2 or nStep == 3 or nStep == 4 then
        TalkEx("", szTalk1);
    elseif nStep == 5 then        
        SetTask(TASK_FOUR, 6);
        AddItem(2,0,80,1);
        TalkEx("task_four_05", szBack);
    elseif nStep == 6 then
        SelectSay(szBack2);
    end;
    
end;

function task_four_05()
    local szBack1 = {
        "Hi謓 Th祅h Й 產ng n竜 lo筺. Phi襫 <sex> mang th� n祔 v� cho Ph筸 ti猲 sinh. C� c莕 ta a <sex> v� Th祅h Й kh玭g?",
        "Ta  s絥 s祅g. Phi襫 H錸g i ca!/task_four_yes",
        "Ta c莕 chu萵 b�, s� quay l筰 sau!/task_exit"
    };
    SelectSay(szBack1);
end;