-- ====================== �ļ���Ϣ ======================
-- ======================================================
Include("\\script\\task\\world\\task_head.lua")
Include("\\script\\task\\faction\\faction_head.lua");
Include("\\script\\task\\tasklink\\factiontasklink_temp.lua"); 

TB_FACTION_TASKID_LIST = {1001,1002,1003,1004,1005,1031,1032,1033,1017,1018}
NPC_NAME = "<color=green>Ph��ng L�p<color>: "
function main()
	local t_dia_sel = {
		"Ngu�n g�c Minh Gi�o/say1_1",
		"V� c�ng Minh Gi�o/say1_2",
		"�i�u ki�n nh�p m�n/say1_3",
		"Ta mu�n gia nh�p Minh Gi�o/say1_4",
		"Ta mu�n l�m nhi�m v� S� M�n/#ftask_repeat_main(9)",
		"Ta s�p th�nh th�n n�n ph�i xu�t s�",
		"Ch�o h�i ch��ng m�n/end_dialog"
	}
	Say(NPC_NAME.."Minh Gi�o h�o ki�t, phong c�nh tr�ng l�",
		getn(t_dia_sel),
		t_dia_sel
		)
end;	
function say1_1()
	Talk(1,"main", NPC_NAME.."Minh Gi�o ngu�n g�c Ba T� Ma Ni Gi�o, ���c du nh�p v�o th�i trung th� ��i ���ng r�i t� t� ph�t tri�n l�n, ��n th�i T�ng ��t t�n l� Minh Gi�o. Minh Gi�o Gi�o Ho�ng Th��ng Quang Minh v� Th�nh H�a cho r�ng trong th� gi�i th� quang minh v� h�c �m t��ng h� ��i l�p nhau, quang minh cu�i c�ng c�ng th�ng h�c �m. ��n nay gi�o ngh�a ���c quy v� 8 ch�: Thanh, T�nh, Quang Minh, ��i L�c, Tr�, Tu�")
end
function say1_2()
	Talk(1,"main", NPC_NAME.."V� c�ng b�n m�n g�m 3 ph�i: <color=yellow>Th�nh Chi�n<color>,  <color=yellow>Tr�n Binh<color> v� <color=yellow>Huy�t Nh�n<color>.")
end
function say1_3()
	Talk(1,"main","<color=green>Ph��ng L�p<color>: Ch� c�n c�n c� tr� th� kh�ng k� c� Nam hay N�, ��u c� th� tham gia")
end 
function say1_4()
	local s_dia_no_pass = ""
	if GetLevel() < 10 then
		s_dia_no_pass = "Ng��i kh�ng �� c�p, ��t c�p <color=red>10<color> h�y ��n t�m ta."
		Talk(1,"",NPC_NAME..s_dia_no_pass)
		return
	elseif GetPlayerRoute() ~= 0 then
		s_dia_no_pass =  "Thi�u hi�p �� c� <color=red>m�n ph�i<color>, ta kh�ng th� nh�n."
		Talk(1,"",NPC_NAME..s_dia_no_pass)
		return
	elseif GetPlayerFaction() == 9 then
		s_dia_no_pass =  "Ng��i �� l� ng��i c�a Minh Gi�o M�n, mau �i luy�n c�ng."
		Talk(1,"",NPC_NAME..s_dia_no_pass)
		return
	else
		for i = 1,getn(TB_FACTION_TASKID_LIST) do
			if GetTask(TB_FACTION_TASKID_LIST[i]) > 0 then
				s_dia_no_pass = "Thi�u hi�p �� nh�n nhi�m v� nh�p m�n c�a m�n ph�i kh�c, kh�ng th� gia nh�p b�n m�n."
				Talk(1,"",NPC_NAME..s_dia_no_pass)
				return
			end
		end
	end
	
	SetPlayerFaction(9)
	SetPlayerRoute(24)
	TaskTip("Ng��i �� gia nh�p Minh Gi�o M�n th�nh c�ng")
end


