--File name:mantou_item.lua
--Describe:����Ʒ���߽ű�
--Create Date:2006-3-24
--Author:yanjun
--�޸ļ�¼���峤2007-03-13����2007�������ڻ��ش���
Include("\\script\\online\\zgc_public_fun.lua")					--�峤�Ĺ�������
tomb_sweep_2008_date_seq = 1858
tomb_sweep_2008_goods_use_diff = 1859
function OnUse()
	local MapID,MapX,MapY = GetWorldPos()
	if MapID ~= 818 and MapID ~= 819 and MapID ~= 820 then		--ȷ���������ŵ�ͼ��
		Talk(1,"","V�t ph�m n�y ch� s� d�ng khi c�ng t� ti�n.")
		return
	end
	local selTab = {
				"���c! Ta mu�n s� d�ng./use",
				"Th�i �� sau n�y h�y d�ng./end_dialog",
				};
	Say("Ng��i x�c nh�n c� mu�n d�ng M�n th�u c�ng t� kh�ng? D�ng v�t ph�m n�y c� th� t�ng <color=yellow>10 l�n<color> kinh nghi�m!",2,selTab)
end
--****************************��Ʒ��ͷ��ʹ��***************************
function use()
	--ʱ������
	local kotow_date_seq = GetTask(tomb_sweep_2008_date_seq)
	if kotow_date_seq >= zgc_pub_day_turn(1) then				
		Talk(1,"","H�m nay ng��i �� c�ng 1 l�n, kh�ng th� d�ng <color=yellow>M�n th�u c�ng t�<color>, ng�y mai <color=yellow>d�ng<color> tr��c khi c�ng, d�ng v�t ph�m n�y c� th� t�ng 10 l�n �i�m s�c kh�e th�nh kinh nghi�m. ")
		return
	end
	--��������
	local kotow_goods_diff = GetTask(tomb_sweep_2008_goods_use_diff)
	if kotow_goods_diff == 2 or kotow_goods_diff == 5 or kotow_goods_diff == 8 or kotow_goods_diff == 11 then
		Talk(1,"","<color=yellow>M�n th�u c�ng t�<color> m�i ng�y ch� c� th� d�ng 1 l�n!")
		return
	end
	--��Ʒɾ�����
	if DelItem(2,0,387,1) ~= 1 then
		Talk(1,"","X�c nh�n ng��i c� mang theo <color=yellow>M�n th�u c�ng t�<color>!")
		return
	end
	--ʹ����ɲ���
	if kotow_goods_diff == 0 or kotow_goods_diff == nil then
		SetTask(tomb_sweep_2008_goods_use_diff,2)
	else
		SetTask(tomb_sweep_2008_goods_use_diff,(kotow_goods_diff + 2))
	end
	Talk(1,"","Ng��i �� d�ng <color=yellow>M�n th�u c�ng t�<color>, h�m nay c�ng x�c su�t nh�n ���c kinh nghi�m giang h� t�ng.")
end