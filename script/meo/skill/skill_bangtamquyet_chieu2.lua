--����: Ǳ�������ķ�

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --��������

    SKILL_LEVEL_BASE_ATTRIB = --���ܵȼ���ػ�������
    {
        { "skill_effect_persist_time", { { 1, 1 }, { 5, 1 }, { 10, 2 } } },
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
        { magic = "state_slow",
          damage_factor_z = { { 1, 5 }, { 5, 10 }, { 10, 50 } },
          probability_factor_x = { { 1, 5 }, { 10, 50 } },
        },
        { magic = "state_fetter",
          damage_factor_z = { { 1, 1 }, { 10, 1 } },
          probability_factor_x = { { 1, 1 }, { 5, 2 }, { 10, 10 } },
        },
        { magic = "state_confusion",
          damage_factor_z = { { 1, 1 }, { 10, 1 } },
          probability_factor_x = { { 1, 1 }, { 5, 1 }, { 10, 5 } },
        },
        { magic = "state_burst_dec_rate",
          damage_factor_z = { { 1, 5 }, { 5, 10 }, { 10, 50 } },
          probability_factor_x = { { 1, 1 }, { 5, 2 }, { 10, 12 } },
        },
        { magic = "state_attack_speed_dec",
          damage_factor_z = { { 1, 5 }, { 5, 10 }, { 10, 50 } },
          probability_factor_x = { { 1, 1 }, { 5, 2 }, { 10, 12 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {
    },
}
