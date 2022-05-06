--技能: 潜龙寂灭心法

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
    --技能属性

    SKILL_LEVEL_BASE_ATTRIB = --技能等级相关基本属性
    {
        { "skill_effect_persist_time", { { 1, 1 }, { 5, 3 }, { 10, 5 } } },
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

    SKILL_MAGIC_IMME_ATTRIB = --技能等级相关立即魔法属性
    {
    },
}
