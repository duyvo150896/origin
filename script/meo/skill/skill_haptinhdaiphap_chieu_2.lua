--����: Ǳ�������ķ�

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --��������

    SKILL_LEVEL_BASE_ATTRIB = --���ܵȼ���ػ�������
    {
        { "skill_effect_persist_time", { { 1, 1 }, { 5, 3 }, { 10, 5 } } },
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
        { magic = "state_life_per_per8f",
          damage_factor_z = { { 1, 0 }, { 5, 50 }, { 10, 300 } },
        },
        { magic = "state_add_allability",
          damage_factor_z = { { 1, 30 }, { 5, 50 }, { 10, 200 } },
        },
        { magic = "state_knockback_when_lose_hp",
          damage_factor_z = { { 1, 589824 }, { 5, 589834 }, { 10, 589874 } },
        },
        { magic = "state_destiny_attack_point_add",
          damage_factor_z = { { 1, 6 }, { 5, 20 }, { 10, 100 } },
        },
        { magic = "state_element_all_attack_point_add",
          damage_factor_z = { { 1, 4 }, { 5, 16 }, { 10, 80 } },
        },
        { magic = "state_accuracy_point_increase",
          damage_factor_z = { { 1, 100 }, { 1, 720 }, { 10, 3600 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {
    },
}
