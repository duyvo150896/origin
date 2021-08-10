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
          damage_factor_z = { { 1, 3 }, { 5, 22 }, { 10, 111 } },
        },
        { magic = "state_add_dexterity",
          damage_factor_z = { { 1, 5 }, { 5, 11 }, { 10, 55 } },
        },
        { magic = "state_add_energy",
          damage_factor_z = { { 1, 3 }, { 5, 20 }, { 10, 100 } },
        },
        { magic = "state_add_vitality",
          damage_factor_z = { { 1, 2 }, { 5, 19 }, { 10, 94 } },
        },
        { magic = "state_add_observe",
          damage_factor_z = { { 1, 2 }, { 5, 10 }, { 10, 51 } },
        },
        { magic = "state_life_max_point_add",
          damage_factor_z = { { 1, 800 }, { 5, 4032 }, { 10, 20160 } },
        },
        { magic = "state_def_critical_point_increase",
          damage_factor_z = { { 1, 1 }, { 5, 12 }, { 10, 48 } },
        },
        { magic = "state_destiny_armor_point_add",
          damage_factor_z = { { 1, 10 }, { 5, 35 }, { 10, 80 } },
        },
        { magic = "state_i_defence_point_add",
          damage_factor_z = { { 1, 6 }, { 5, 24 }, { 10, 120 } },
        },
        { magic = "state_o_defence_point_add",
          damage_factor_z = { { 1, 6 }, { 5, 24 }, { 10, 120 } },
        },
        -- khi bŞ ®¸nh sÏ trë vµo state id 87
        { magic = "state_be_attacked_2_magic",
          damage_factor_z = { { 1, 6553687 }, { 10, 65536087 } },
        },
        -- khi tÊn c«ng sÏ trë vµo state id 88
        { magic = "state_npc_event_2_magic",
          damage_factor_z = { { 1, 6553688 }, { 10, 65536088 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --¼¼ÄÜµÈ¼¶Ïà¹ØÁ¢¼´Ä§·¨ÊôĞÔ
    {
        { magic = "imme_summon_life_add",
          damage_factor_a = { { 1, 200 }, { 10, 200 } },
          damage_factor_c = { { 1, 300 }, { 10, 300 } },
          damage_factor_z = { { 1, 100 }, { 10, 1000 } },
        },
        { magic = "imme_summon_attack_add",
          damage_factor_a = { { 1, 160 }, { 6, 160 } },
          damage_factor_c = { { 1, 220 }, { 6, 220 } },
          damage_factor_z = { { 1, 400 }, { 6, 800 } },
          damage_factor_f = { { 1, 100 }, { 6, 100 } },
        },
        { magic = "imme_summon_attack_rate_add",
          damage_factor_a = { { 1, 100 }, { 6, 100 } },
          damage_factor_c = { { 1, 120 }, { 6, 120 } },
          damage_factor_z = { { 1, 200 }, { 6, 300 } },
        },
        { magic = "imme_summon_physical_defence_add",
          damage_factor_a = { { 1, 20 }, { 6, 20 } },
          damage_factor_c = { { 1, 30 }, { 6, 30 } },
          damage_factor_z = { { 1, 100 }, { 6, 200 } },
        },
        { magic = "imme_summon_magic_defence_add",
          damage_factor_a = { { 1, 20 }, { 6, 20 } },
          damage_factor_c = { { 1, 30 }, { 6, 30 } },
          damage_factor_z = { { 1, 100 }, { 6, 200 } },
        },
    },
}
