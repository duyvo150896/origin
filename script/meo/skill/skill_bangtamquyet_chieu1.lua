--技能: 潜龙寂灭心法

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --技能属性

    SKILL_LEVEL_BASE_ATTRIB = --技能等级相关基本属性
    {
        { "skill_effect_persist_time", { { 1, 1 }, { 5, 3 }, { 10, 7 } } },
    },

    SKILL_LEVEL_COST_ATTRIB = --技能等级相关消耗属性
    {
    },

    SKILL_LEVEL_MISSLE_ATTRIB = --技能等级相关子弹属性
    {
    },

    --魔法属性

    --属性值:	普通攻击力 * X + (1 + 技能等级 * Y) * (力量 * A + 根骨 * B + 身法 * C + 内功 * D + 洞察 * E)
    --			+ 武器外功攻击点 * F + Z
    --			(其中,A,B,C,D,E,F,X,Y,Z为伤害因素.除Z外,其余各伤害因素为百分比数.)

    --成功几率:	(属性值 * A + (自身等级 - 对方等级) * B + 技能等级 * C) * D + X
    --			(其中,A,B,C,D,X为几率因素.除X外,其余各几率因素为百分比数.)

    SKILL_MAGIC_DAMAGE_ATTRIB = --技能等级相关伤害魔法属性
    {
    },

    SKILL_MAGIC_STATE_ATTRIB = --技能等级相关状态魔法属性
    {
        { magic = "state_def_critical_point_increase",
          damage_factor_z = { { 1, 1 }, { 5, 2 }, { 10, 12 } },
        },
        { magic = "state_destiny_armor_point_add",
          damage_factor_z = { { 1, 1 }, { 5, 5 }, { 10, 25 } },
        },
        { magic = "state_receive_half_damage",
          damage_factor_z = { { 1, 1 }, { 5, 8 }, { 10, 20 } },
        },
        { magic = "state_life_percent_per10s_anytime",
          damage_factor_z = { { 1, 1 }, { 2, 1 }, { 3, 1 }, { 4, 2 }, { 5, 2 }, { 6, 2 }, { 7, 3 }, { 10, 3 } },
        },
        { magic = "state_interrupt_rate_dec",
          damage_factor_z = { { 1, 1 }, { 5, 5 }, { 10, 25 } },
        },
    },

    SKILL_MAGIC_IMME_ATTRIB = --技能等级相关立即魔法属性
    {
    },
}


