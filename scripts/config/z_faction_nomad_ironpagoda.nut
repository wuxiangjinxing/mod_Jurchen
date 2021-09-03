local gt = this.getroottable();


gt.Const.Tactical.Actor.NomadIronPagoda <- {
	XP = 450,
	ActionPoints = 9,
	Hitpoints = 130,
	Bravery = 100,
	Stamina = 165,
	MeleeSkill = 80,
	RangedSkill = 55,
	MeleeDefense = 15,
	RangedDefense = 10,
	Initiative = 115,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 20
};



gt.Const.EntityType.NomadIronPagoda <- gt.Const.EntityType.len() -2

gt.Const.EntityIcon.extend([
	"nomad_12_orientation"
]);

gt.Const.Strings.EntityName.extend([
	"Iron Pagoda",
]);

gt.Const.Strings.EntityNamePlural.extend([
	"Iron Pagoda",
]);


gt.Const.World.Spawn.Troops.NomadIronPagoda <-
	{
		ID = this.Const.EntityType.NomadIronPagoda,
		Variant = 0,
		Strength = 20,
		Cost = 30,
		Row = 1,
		Script = "scripts/entity/tactical/humans/nomad_ironpagoda",
		TitleList = null
	}