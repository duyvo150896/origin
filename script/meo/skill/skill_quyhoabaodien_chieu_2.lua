--����: Ǳ�������ķ�

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --��������

    SKILL_LEVEL_BASE_ATTRIB = --���ܵȼ���ػ�������
    {
        { "skill_effect_persist_time", { { 1, 1 }, { 5, 3 }, { 10, 6 } } },
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

        { magic = "state_critical_damage_increase",
          damage_factor_z = { { 1, 1 }, { 5, 20 }, { 10, 200 } },
        },
        { magic = "state_def_critical_damage_increase",
          damage_factor_z = { { 1, 1 }, { 5, 20 }, { 10, 200 } },
        },
        { magic = "state_destiny_attack_point_add",
          damage_factor_z = { { 1, 6 }, { 5, 30 }, { 10, 150 } },
        },
        { magic = "state_element_all_attack_point_add",
          damage_factor_z = { { 1, 4 }, { 5, 20 }, { 10, 100 } },
        },
        { magic = "state_damage_point",
          damage_factor_z = { { 1, 120 }, { 5, 600 }, { 10, 3000 } },
        },
        { magic = "state_interval_ignore",
          damage_factor_z = { { 1, 1 }, { 5, 15 }, { 10, 100 } },
        },
        { magic = "state_slow_attack",
          damage_factor_z = { { 1, 327730 }, { 3, 327730 }, { 4, 655410 }, { 6, 655410 }, { 7, 983090 }, { 9, 983090 }, { 10, 1310770 } },
        },
        { magic = "state_accuracy_point_increase",
          damage_factor_z = { { 1, 100 }, { 1, 1000 }, { 10, 5000 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {
    },
}
