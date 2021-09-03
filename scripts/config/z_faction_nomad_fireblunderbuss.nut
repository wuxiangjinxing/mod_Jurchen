local gt = this.getroottable();


gt.Const.Tactical.Actor.NomadFireBlunderbuss <- {
	XP = 250,
	ActionPoints = 9,
	Hitpoints = 80,
	Bravery = 80,
	Stamina = 120,
	MeleeSkill = 65,
	RangedSkill = 75,
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



gt.Const.EntityType.NomadFireBlunderbuss <- gt.Const.EntityType.len() -2

gt.Const.EntityIcon.extend([
	"nomad_14_orientation"
]);

gt.Const.Strings.EntityName.extend([
	"Fire Blunderbuss",
]);

gt.Const.Strings.EntityNamePlural.extend([
	"Fire Blunderbuss",
]);


gt.Const.World.Spawn.Troops.NomadFireBlunderbuss <-
	{
		ID = this.Const.EntityType.NomadFireBlunderbuss,
		Variant = 0,
		Strength = 10,
		Cost = 20,
		Row = 3,
		Script = "scripts/entity/tactical/humans/nomad_fireblunderbuss",
		TitleList = null
	}