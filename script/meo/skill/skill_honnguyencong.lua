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
          damage_factor_z = { { 1, 2 }, { 5, 14 }, { 10, 70 } },
        },
        { magic = "state_add_dexterity",
          damage_factor_z = { { 1, 1 }, { 5, 9 }, { 10, 44 } },
        },
        { magic = "state_add_energy",
          damage_factor_z = { { 1, 3 }, { 5, 24 }, { 10, 116 } },
        },
        { magic = "state_add_vitality",
          damage_factor_z = { { 1, 2 }, { 5, 16 }, { 10, 84 } },
        },
        { magic = "state_add_observe",
          damage_factor_z = { { 1, 2 }, { 5, 19 }, { 10, 96 } },
        },
        { magic = "state_life_max_point_add",
          damage_factor_z = { { 1, 800 }, { 5, 3936 }, { 10, 19680 } },
        },
        { magic = "state_def_critical_point_increase",
          damage_factor_z = { { 1, 1 }, { 5, 12 }, { 10, 48 } },
        },
        { magic = "state_destiny_armor_point_add",
          damage_factor_z = { { 1, 5 }, { 5, 20 }, { 10, 100 } },
        },
        { magic = "state_i_defence_point_add",
          damage_factor_z = { { 1, 6 }, { 5, 24 }, { 10, 120 } },
        },
        { magic = "state_o_defence_point_add",
          damage_factor_z = { { 1, 6 }, { 5, 24 }, { 10, 120 } },
        },
        -- khi b� ��nh s� tr� v�o state id 83
        { magic = "state_be_attacked_2_magic",
          damage_factor_z = { { 1, 6553683 }, { 10, 65536083 } },
        },
        -- khi t�n c�ng s� tr� v�o state id 84
        { magic = "state_npc_event_2_magic",
          damage_factor_z = { { 1, 6553684 }, { 10, 65536084 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --���ܵȼ��������ħ������
    {
    },
}
