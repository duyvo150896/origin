--����: Ǳ�������ķ�

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --��������

    SKILL_LEVEL_BASE_ATTRIB = --���ܵȼ���ػ�������
    {
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
        { magic = "state_add_strength",
          damage_factor_z = { { 1, 2 }, { 5, 16 }, { 10, 80 } },
        },
        { magic = "state_add_dexterity",
          damage_factor_z = { { 1, 2 }, { 5, 16 }, { 10, 80 } },
        },
        { magic = "state_add_energy",
          damage_factor_z = { { 1, 5 }, { 5, 32 }, { 10, 159 } },
        },
        { magic = "state_add_vitality",
          damage_factor_z = { { 1, 3 }, { 5, 18 }, { 10, 93 } },
        },
        { magic = "state_add_observe",
          damage_factor_z = { { 1, 2 }, { 5, 14 }, { 10, 73 } },
        },
        { magic = "state_life_max_point_add",
          damage_factor_z = { { 1, 1200 }, { 5, 4560 }, { 10, 22800 } },
        },
        { magic = "state_def_critical_point_increase",
          damage_factor_z = { { 1, 1 }, { 5, 11 }, { 10, 56 } },
        },
        { magic = "state_destiny_armor_point_add",
          damage_factor_z = { { 1, 4 }, { 5, 24 }, { 10, 120 } },
        },
        { magic = "state_i_defence_point_add",
          damage_factor_z = { { 1, 12 }, { 5, 48 }, { 10, 240 } },
        },
        { magic = "state_o_defence_point_add",
          damage_factor_z = { { 1, 12 }, { 5, 48 }, { 10, 240 } },
        },
        { magic = "state_be_attacked_2_magic",
          damage_factor_z = { { 1, 6553677 }, { 10, 65536077 } },
        },
        { magic = "state_npc_event_2_magic",
          damage_factor_z = { { 1, 6553678 }, { 10, 65536078 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {
    },
}
