--����: Ǳ�������ķ�

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --��������

    SKILL_LEVEL_BASE_ATTRIB = --���ܵȼ���ػ�������
    {
        { "skill_effect_persist_time", { { 1, 1 }, { 5, 2 }, { 10, 7 } } },
    },

    SKILL_LEVEL_COST_ATTRIB = --���ܵȼ������������
    {
    },

    SKILL_LEVEL_MISSLE_ATTRIB = --���ܵȼ�����ӵ�����
    {
    },

    --ħ������

    --����ֵ:	��ͨ������ * X + (1 + ���ܵȼ� * Y) * (���� * A + ���� * B + �� * C + �ڹ� * D + ���� * E)
    --			+ �����⹦������ * F + Z
    --			(����,A,B,C,D,E,F,X,Y,ZΪ�˺�����.��Z��,������˺�����Ϊ�ٷֱ���.)

    --�ɹ�����:	(����ֵ * A + (����ȼ� - �Է��ȼ�) * B + ���ܵȼ� * C) * D + X
    --			(����,A,B,C,D,XΪ��������.��X��,�������������Ϊ�ٷֱ���.)

    SKILL_MAGIC_DAMAGE_ATTRIB = --���ܵȼ�����˺�ħ������
    {
    },

    SKILL_MAGIC_STATE_ATTRIB = --���ܵȼ����״̬ħ������
    {
        { magic = "state_reduce_damage_percent",
          damage_factor_z = { { 1, 5 }, { 10, 10 } },
          damage_factor_b = { { 1, 4 }, { 10, 4 } },
          damage_factor_m = { { 1, 20 }, { 10, 20 } },
        },
        { magic = "state_reduce_damage_num",
          damage_factor_z = { { 1, 1200 }, { 10, 5000 } },
        },
        { magic = "state_def_critical_damage_increase",
          damage_factor_z = { { 1, 2 }, { 5, 10 }, { 10, 50 } },
        },
        { magic = "state_fast_recovery",
          damage_factor_z = { { 1, 1 }, { 5, 4 }, { 10, 18 } },
        },
        { magic = "state_destiny_armor_point_add",
          damage_factor_z = { { 1, 1 }, { 5, 5 }, { 10, 20 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {
    },
}


