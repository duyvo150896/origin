--����: Ǳ�������ķ�

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --��������

    SKILL_LEVEL_BASE_ATTRIB = --���ܵȼ���ػ�������
    {
        { "skill_effect_persist_time", { { 1, 1 }, { 5, 3 }, { 10, 7 } } },
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
        { magic = "state_critical_point_increase",
          damage_factor_z = { { 1, 1 }, { 5, 10 }, { 10, 52 } },
        },
        { magic = "state_critical_damage_increase",
          damage_factor_z = { { 1, 2 }, { 5, 15 }, { 10, 50 } },
        },
        { magic = "state_p_attack_percent_add",
          damage_factor_z = { { 1, 1 }, { 5, 2 }, { 10, 10 } },
        },
        { magic = "state_m_attack_percent_add",
          damage_factor_z = { { 1, 1 }, { 5, 2 }, { 10, 10 } },
        },
        { magic = "state_ignore_defence",
          damage_factor_z = { { 1, 1 }, { 5, 3 }, { 10, 15 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {
    },
}


