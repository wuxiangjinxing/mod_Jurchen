local gt = this.getroottable();


gt.Const.Tactical.Actor.NomadCenturion <- {
	XP = 500,
	ActionPoints = 9,
	Hitpoints = 150,
	Bravery = 110,
	Stamina = 165,
	MeleeSkill = 85,
	RangedSkill = 55,
	MeleeDefense = 20,
	RangedDefense = 20,
	Initiative = 110,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 20
};



gt.Const.EntityType.NomadCenturion <- gt.Const.EntityType.len() -2

gt.Const.EntityIcon.extend([
	"nomad_13_orientation"
]);


gt.Const.Strings.NomadCenturionNames <- ["Wanggiya", "Abkai horgiku", "Bodohonggo", "FaSSangga" , "Fujurungga", "Gelmerjembi", "Giljan", "Kesingge" , "MuduriMorin ", "Mukdembi", "NiowargiGasha"  ]
gt.Const.Strings.NomadCenturionTitles <- ["A pivot of the sky", "Resourceful", "Superior", "Prominent personage", "Spotless", "Blessed is the man", "Commander candidate"]

gt.Const.Strings.EntityName.extend([
	"The Centurion",
]);

gt.Const.Strings.EntityNamePlural.extend([
	"The Centurion",
]);


gt.Const.World.Spawn.Troops.NomadCenturion <-
	{
		ID = this.Const.EntityType.NomadCenturion,
		Variant = 5,
		Strength = 20,
		Cost = 30,
		Row = 1,
		Script = "scripts/entity/tactical/humans/nomad_centurion",
		NameList = this.Const.Strings.NomadCenturionNames,
		TitleList = this.Const.Strings.NomadCenturionTitles
	}