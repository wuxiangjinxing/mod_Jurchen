local gt = this.getroottable();


gt.Const.Tactical.Actor.NomadSpearMaster <- {
	XP = 550,
	ActionPoints = 9,
	Hitpoints = 130,
	Bravery = 100,
	Stamina = 145,
	MeleeSkill = 90,
	RangedSkill = 55,
	MeleeDefense = 40,
	RangedDefense = 40,
	Initiative = 125,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 20
};



gt.Const.EntityType.NomadSpearMaster <- gt.Const.EntityType.len() -2

gt.Const.EntityIcon.extend([
	"nomad_10_orientation"
]);


gt.Const.Strings.NomadSpearMasterNames <- ["Deji", "Botebu", "Dezhibumbi", "Isibu" , "Welimbi", "Isibumbi", "Alibu", "Hurubu" ]
gt.Const.Strings.NomadSpearMasterTitles <- ["the Legendary", "the Quick", "the Clever", "Swift Eagle", "the Best of Spear master", "Excellent in martial arts", "the Precision strike"]

gt.Const.Strings.EntityName.extend([
	"Spear Master",
]);

gt.Const.Strings.EntityNamePlural.extend([
	"Spear Master",
]);


gt.Const.World.Spawn.Troops.NomadSpearMaster <-
	{
		ID = this.Const.EntityType.NomadSpearMaster,
		Variant = 5,
		Strength = 20,
		Cost = 40,
		Row = 1,
		Script = "scripts/entity/tactical/humans/nomad_spearmaster",
		NameList = this.Const.Strings.NomadSpearMasterNames,
		TitleList = this.Const.Strings.NomadSpearMasterTitles
	}