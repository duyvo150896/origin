--����: Ǳ�������ķ�

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --��������

    SKILL_LEVEL_BASE_ATTRIB = --���ܵȼ���ػ�������
    {
        { "skill_effect_persist_time", { { 1, 1 }, { 5, 2 }, { 10, 4 } } },
    },

    SKILL_LEVEL_COST_ATTRIB = --���ܵȼ������������
    {
    },

    SKILL_LEVEL_MISSLE_ATTRIB = --���ܵȼ�����ӵ�����
    {
    },

    --ħ������

    --����ֵ:	��ͨ������ * X + (1 + ���ܵȼ� * Y) * (���� * A + ���� * B + ���� * C + �ڹ� * D + ���� * E)
    --			+ �����⹦������ * F + Z
    --			(����,A,B,C,D,E,F,X,Y,ZΪ�˺�����.��Z��,������˺�����Ϊ�ٷֱ���.)

    --�ɹ�����:	(����ֵ * A + (�����ȼ� - �Է��ȼ�) * B + ���ܵȼ� * C) * D + X
    --			(����,A,B,C,D,XΪ��������.��X��,�������������Ϊ�ٷֱ���.)

    SKILL_MAGIC_DAMAGE_ATTRIB = --���ܵȼ�����˺�ħ������
    {

    },

    SKILL_MAGIC_STATE_ATTRIB = --���ܵȼ����״̬ħ������
    {
        { magic = "state_physical_parmor_per_dec",
          damage_factor_z = { { 1, 1 }, { 5, 4 }, { 10, 8 } },
        },
        { magic = "state_magic_parmor_per_dec",
          damage_factor_z = { { 1, 1 }, { 5, 4 }, { 10, 8 } },
        },
        { magic = "state_block_medicine",
          damage_factor_z = { { 1, 1 }, { 10, 1 } },
          probability_factor_x = { { 1, 5 }, { 10, 5 } },
        },
        { magic = "state_poison_damage",
          damage_factor_d = { { 1, 5 }, { 5, 14 }, { 10, 72 } },
          probability_factor_x = { { 1, 5 }, { 10, 100 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {

    },
}