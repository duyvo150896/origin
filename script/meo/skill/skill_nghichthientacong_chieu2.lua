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
        { magic = "state_burst_enhance_rate",
          damage_factor_z = { { 1, 3 }, { 5, 3 }, { 10, 15 } },
        },
        { magic = "state_physical_parmor_poi_add",
          damage_factor_z = { { 1, 1 }, { 5, 1 }, { 10, 5 } },
        },
        { magic = "state_magic_parmor_poi_add",
          damage_factor_z = { { 1, 1 }, { 5, 1 }, { 10, 5 } },
        },
        { magic = "state_p_attack_percent_add",
          damage_factor_z = { { 1, 1 }, { 5, 1 }, { 10, 5 } },
        },
        { magic = "state_m_attack_percent_add",
          damage_factor_z = { { 1, 1 }, { 5, 1 }, { 10, 5 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {

    },
}