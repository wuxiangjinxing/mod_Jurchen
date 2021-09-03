local gt = this.getroottable();


gt.Const.Tactical.Actor.NomadInfantry <- {
	XP = 200,
	ActionPoints = 9,
	Hitpoints = 70,
	Bravery = 70,
	Stamina = 120,
	MeleeSkill = 60,
	RangedSkill = 5,
	MeleeDefense = 5,
	RangedDefense = 5,
	Initiative = 120,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 15

};



gt.Const.EntityType.NomadInfantry <- gt.Const.EntityType.len() -2

gt.Const.EntityIcon.extend([
	"nomad_09_orientation"
]);

gt.Const.Strings.EntityName.extend([
	"Infantry",
]);

gt.Const.Strings.EntityNamePlural.extend([
	"Infantry",
]);


gt.Const.World.Spawn.Troops.NomadInfantry <-
	{
		ID = this.Const.EntityType.NomadInfantry,
		Variant = 0,
		Strength = 10,
		Cost = 15,
		Row = 3,
		Script = "scripts/entity/tactical/humans/nomad_infantry",
		TitleList = null
	}