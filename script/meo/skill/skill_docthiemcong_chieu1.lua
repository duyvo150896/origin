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
        { magic = "state_destiny_armor_point_add",
          damage_factor_z = { { 1, 5 }, { 5, 10 }, { 10, 50 } },
        },
        { magic = "state_perfect_dodge_rate",
          damage_factor_z = { { 1, 1 }, { 5, 3 }, { 10, 8 } },
        },
        { magic = "state_physic_damage_rebound",
          damage_factor_z = { { 1, 1 }, { 5, 5 }, { 10, 25 } },
        },
        { magic = "state_magic_damage_rebound",
          damage_factor_z = { { 1, 1 }, { 5, 5 }, { 10, 25 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {

    },
}