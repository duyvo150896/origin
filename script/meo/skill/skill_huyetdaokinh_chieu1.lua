--����: Ǳ�������ķ�

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --��������

    SKILL_LEVEL_BASE_ATTRIB = --���ܵȼ���ػ�������
    {
        { "skill_effect_persist_time", { { 1, 2 }, { 5, 3 }, { 10, 7 } } },
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
        { magic = "state_damage_point",
          damage_factor_z = { { 1, 5 }, { 5, 40 }, { 10, 200 } },
        },
        { magic = "state_max_damage",
          damage_factor_z = { { 1, 1 }, { 5, 4 }, { 10, 20 } },
        },
        { magic = "state_critical_hit_rate",
          damage_factor_z = { { 1, 1 }, { 5, 5 }, { 10, 25 } },
        },
        { magic = "state_destiny_attack_point_add",
          damage_factor_z = { { 1, 1 }, { 5, 4 }, { 10, 20 } },
        },
        { magic = "state_element_all_attack_point_add",
          damage_factor_z = { { 1, 5 }, { 5, 10 }, { 10, 50 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {
    },
}
