--����: Ǳ�������ķ�

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --��������

    SKILL_LEVEL_BASE_ATTRIB = --���ܵȼ���ػ�������
    {
        { "skill_effect_persist_time", { { 1, 1 }, { 5, 2 }, { 10, 5 } } },
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
        { magic = "state_life_per_per8f",
          damage_factor_z = { { 1, 10 }, { 5, 40 }, { 10, 300 } },
        },
        { magic = "state_move_speed_percent_add",
          damage_factor_z = { { 1, 1 }, { 5, 5 }, { 10, 25 } },
        },
        { magic = "state_immune",
          damage_factor_z = { { 1, 5 }, { 1, 15 }, { 10, 75 } },
        },
        { magic = "state_ignore_poison_damage",
          damage_factor_z = { { 1, 5 }, { 1, 20 }, { 10, 100 } },
        },
        { magic = "state_destiny_armor_point_add",
          damage_factor_z = { { 1, 1 }, { 5, 10 }, { 10, 50 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {
    },
}