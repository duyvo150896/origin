--¼¼ÄÜ: Ç±Áú¼ÅÃğĞÄ·¨

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --¼¼ÄÜÊôĞÔ

    SKILL_LEVEL_BASE_ATTRIB = --¼¼ÄÜµÈ¼¶Ïà¹Ø»ù±¾ÊôĞÔ
    {

    },

    SKILL_LEVEL_COST_ATTRIB = --¼¼ÄÜµÈ¼¶Ïà¹ØÏûºÄÊôĞÔ
    {

    },

    SKILL_LEVEL_MISSLE_ATTRIB = --¼¼ÄÜµÈ¼¶Ïà¹Ø×Óµ¯ÊôĞÔ
    {
    },

    --Ä§·¨ÊôĞÔ

    --ÊôĞÔÖµ:	ÆÕÍ¨¹¥»÷Á¦ * X + (1 + ¼¼ÄÜµÈ¼¶ * Y) * (Á¦Á¿ * A + ¸ù¹Ç * B + Éí·¨ * C + ÄÚ¹¦ * D + ¶´²ì * E)
    --			+ ÎäÆ÷Íâ¹¦¹¥»÷µã * F + Z
    --			(ÆäÖĞ,A,B,C,D,E,F,X,Y,ZÎªÉËº¦ÒòËØ.³ıZÍâ,ÆäÓà¸÷ÉËº¦ÒòËØÎª°Ù·Ö±ÈÊı.)

    --³É¹¦¼¸ÂÊ:	(ÊôĞÔÖµ * A + (×ÔÉíµÈ¼¶ - ¶Ô·½µÈ¼¶) * B + ¼¼ÄÜµÈ¼¶ * C) * D + X
    --			(ÆäÖĞ,A,B,C,D,XÎª¼¸ÂÊÒòËØ.³ıXÍâ,ÆäÓà¸÷¼¸ÂÊÒòËØÎª°Ù·Ö±ÈÊı.)

    SKILL_MAGIC_DAMAGE_ATTRIB = --¼¼ÄÜµÈ¼¶Ïà¹ØÉËº¦Ä§·¨ÊôĞÔ
    {
    },

    SKILL_MAGIC_STATE_ATTRIB = --¼¼ÄÜµÈ¼¶Ïà¹Ø×´Ì¬Ä§·¨ÊôĞÔ
    {
        { magic = "state_add_strength",
          damage_factor_z = { { 1, 1 }, { 5, 12 }, { 10, 60 } },
        },
        { magic = "state_add_dexterity",
          damage_factor_z = { { 1, 1 }, { 5, 11 }, { 10, 54 } },
        },
        { magic = "state_add_energy",
          damage_factor_z = { { 1, 2 }, { 5, 20 }, { 10, 99 } },
        },
        { magic = "state_add_vitality",
          damage_factor_z = { { 1, 3 }, { 5, 20 }, { 10, 102 } },
        },
        { magic = "state_add_observe",
          damage_factor_z = { { 1, 2 }, { 5, 19 }, { 10, 96 } },
        },
        { magic = "state_life_max_point_add",
          damage_factor_z = { { 1, 800 }, { 5, 4080 }, { 10, 20400 } },
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
        -- khi bŞ ®¸nh sÏ trë vµo state id 91
        { magic = "state_be_attacked_2_magic",
          damage_factor_z = { { 1, 6553691 }, { 10, 65536091 } },
        },
        -- khi tÊn c«ng sÏ trë vµo state id 92
        { magic = "state_npc_event_2_magic",
          damage_factor_z = { { 1, 6553692 }, { 10, 65536092 } },
        },
        { magic = "state_attack_buff_time",
          damage_factor_z = { { 1, 5 }, { 1, 25 }, { 10, 50 } },
        },
        { magic = "state_defence_buff_time",
          damage_factor_z = { { 1, 5 }, { 1, 25 }, { 10, 50 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --¼¼ÄÜµÈ¼¶Ïà¹ØÁ¢¼´Ä§·¨ÊôĞÔ
    {
    },
}
