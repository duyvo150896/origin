--����: ������

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
	--��������

	SKILL_LEVEL_BASE_ATTRIB	  =	--���ܵȼ���ػ�������
	{
	{"skill_sub_skill1_probability",{{1,0},{2,0},{3,8},{4,9},{5,10},{6,12},{7,15}}},
	{"skill_sub_skill1_factor",{{1,0},{2,0},{3,10},{4,12},{5,15},{6,17},{7,20}}},
	{"skill_valid_object",{{1,6},{4,6},{5,456},{7,456}}},
	{"skill_display_persist_time",{{1,5},{3,5},{4,5},{6,5},{7,5}}},
	{"skill_effect_persist_time",{{1,5},{7,5}}},
	},

	SKILL_LEVEL_COST_ATTRIB	  =	--���ܵȼ������������
	{
	{"cost_mana_point",{{1,38},{7,50}}}
	},

	SKILL_LEVEL_MISSLE_ATTRIB =	--���ܵȼ�����ӵ�����
	{
	},

	--ħ������

	--����ֵ:	��ͨ������ * X + (1 + ���ܵȼ� * Y) * (���� * A + ���� * B + ���� * C + �ڹ� * D + ���� * E)
	--			+ �����⹦������ * F + Z
	--			(����,A,B,C,D,E,F,X,Y,ZΪ�˺�����.��Z��,������˺�����Ϊ�ٷֱ���.)

	--�ɹ�����:	(����ֵ * A + (�����ȼ� - �Է��ȼ�) * B + ���ܵȼ� * C) * D + X
	--			(����,A,B,C,D,XΪ��������.��X��,�������������Ϊ�ٷֱ���.)

	SKILL_MAGIC_DAMAGE_ATTRIB =	--���ܵȼ�����˺�ħ������
	{
		{	
			magic="damage_dispell_type",
			damage_factor_z={{1,2},{4,2},{5,1},{7,1}},
		},
		{
			magic="damage_dispell_num",
			damage_factor_z={{1,1},{2,1},{3,2},{4,2},{5,1},{6,1},{7,2}},
			probability_factor_b={{1,5},{7,5}},
			probability_factor_x={{1,50},{2,75},{3,50},{4,75},{5,50},{6,75},{7,75}},
		},	
	},

	SKILL_MAGIC_STATE_ATTRIB  =	--���ܵȼ����״̬ħ������
	{
		{ 
			magic = "state_fetter",
    	damage_factor_z = {{1,5}, {7,5}},
    	probability_factor_x = {{1,100}, {7,100}},
   	},
	},

	SKILL_MAGIC_IMME_ATTRIB   =	--���ܵȼ��������ħ������
	{
	},
}