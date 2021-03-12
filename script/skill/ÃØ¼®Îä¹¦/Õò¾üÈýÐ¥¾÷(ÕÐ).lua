--技能: 镇军三啸诀(招)

Include("\\script\\skill\\skillfunctions.lua")

SKILL = {
	--技能属性

	SKILL_LEVEL_BASE_ATTRIB	  =	--技能等级相关基本属性
	{
	{"skill_effect_persist_time",{{1,10},{10,10}}},
	{"skill_display_persist_time",{{1,10},{10,10}}},
	},

	SKILL_LEVEL_COST_ATTRIB	  =	--技能等级相关消耗属性
	{
	},

	SKILL_LEVEL_MISSLE_ATTRIB =	--技能等级相关子弹属性
	{
	},

	--魔法属性

	--属性值:	普通攻击力 * X + (1 + 技能等级 * Y) * (力量 * A + 根骨 * B + 身法 * C + 内功 * D + 洞察 * E)
	--			+ 武器外功攻击点 * F + Z
	--			(其中,A,B,C,D,E,F,X,Y,Z为伤害因素.除Z外,其余各伤害因素为百分比数.)

	--成功几率:	(属性值 * A + (自身等级 - 对方等级) * B + 技能等级 * C) * D + X
	--			(其中,A,B,C,D,X为几率因素.除X外,其余各几率因素为百分比数.)

	SKILL_MAGIC_DAMAGE_ATTRIB =	--技能等级相关伤害魔法属性
	{
	},

	SKILL_MAGIC_STATE_ATTRIB  =	--技能等级相关状态魔法属性
	{
	{magic="state_physical_parmor_per_dec",
	damage_factor_z={{1,35},{7,5},{8,0},{10,0}},
	},
	{magic="state_magic_parmor_per_dec",
	damage_factor_z={{1,35},{7,5},{8,0},{10,0}},
	},
	{magic="state_physical_parmor_per_add",
	damage_factor_z={{1,0},{7,0},{8,10},{10,20}},
	},
	{magic="state_magic_parmor_per_add",
	damage_factor_z={{1,0},{7,0},{8,10},{10,20}},
	},
	{magic="state_skill_cast_interval_dec_spec_1",
	damage_factor_z={{1,47448073},{2,47448073},{3,47448073},{10,47448136}},
	},
	{magic="state_skill_cast_interval_dec_spec_2",
	damage_factor_z={{1,47775780},{10,47775942}},
	},
	{magic="state_skill_cast_interval_dec_spec_3",
	damage_factor_z={{1,47841325},{10,47841568}},
	},
	{magic="state_perfect_dodge_rate",
	damage_factor_z={{1,30},{10,30}},
	},
	{magic="state_npc_event_2_magic",
	damage_factor_z={{1,6553648},{10,6553648}},
	},
	},

	SKILL_MAGIC_IMME_ATTRIB   =	--技能等级相关立即魔法属性
	{
	},
}
