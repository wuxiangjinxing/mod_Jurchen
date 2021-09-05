local gt = this.getroottable();

gt.Const.Strings.jinweapon15Names <- [
	"One foot spear",
	"Puncture person"
];
gt.Const.Strings.jinweapon18Names <- [
	"Unparalleled In The World",
	"Fang Tian Hua Ji"
];
gt.Const.Strings.jinweapon20Names <- [
	"The Destroyer",
];
gt.Const.Strings.jinweapon02Names <- [
	"Spikes"
];
gt.Const.Strings.jinweapon03Names <- [
	"Long crescent moon"
];
gt.Const.Strings.jinweapon04Names <- [
	"Caving a mountain"
];
gt.Const.Strings.jinweapon05Names <- [
	"The blood"
];
gt.Const.Strings.jinweapon13Names <- [
	"Seek hegemony"
];
gt.Const.Strings.jinNames <- [
	"Wanggiya",
	"Deji"
];

gt.Const.FactionType.Jurchen <- gt.Const.FactionType.len() - 2;
gt.Const.FactionType.COUNT = gt.Const.FactionType.len();

gt.Const.Faction.Jurchen <- gt.Const.Faction.len() - 2;
gt.Const.Faction.COUNT = gt.Const.FactionType.len();

gt.Const.FactionColor.push(this.createColor("#b75a00"));
gt.Const.FactionColor[gt.Const.Faction.Jurchen] = this.createColor("#ff9595");

gt.Const.FactionAlliance.push([this.Const.Faction.Jurchen]);

gt.Const.FactionTrait.Jurchen <- gt.Const.FactionTrait.len() - 1;
gt.Const.FactionTrait.Actions.push([
"scripts/factions/actions/build_jin_camp_action",
"scripts/factions/actions/send_jin_ambushers_action",
"scripts/factions/actions/send_jin_roamers_action",
"scripts/factions/actions/defend_jin_action"
]);

gt.Const.JurchenBanners <- [
	"banner_jin"	
];

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

gt.Const.Tactical.Actor.NomadHalberdMaster <- {
	XP = 550,
	ActionPoints = 9,
	Hitpoints = 200,
	Bravery = 130,
	Stamina = 185,
	MeleeSkill = 70,
	RangedSkill = 55,
	MeleeDefense = 15,
	RangedDefense = 5,
	Initiative = 150,
	FatigueEffectMult = 1.0,
	MoraleEffectMult = 1.0,
	Armor = [
		0,
		0
	],
	FatigueRecoveryRate = 20
};

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

gt.Const.EntityType.NomadFireBlunderbuss <- gt.Const.EntityType.len() - 2
gt.Const.EntityType.NomadHalberdMaster <- gt.Const.EntityType.len() - 2
gt.Const.EntityType.NomadInfantry <- gt.Const.EntityType.len() - 2
gt.Const.EntityType.NomadIronPagoda <- gt.Const.EntityType.len() - 2
gt.Const.EntityType.NomadSpearMaster <- gt.Const.EntityType.len() - 2
gt.Const.EntityType.NomadCenturion <- gt.Const.EntityType.len() - 2

gt.Const.EntityIcon.extend([
	"nomad_14_orientation",
	"nomad_11_orientation",
	"nomad_09_orientation",
	"nomad_12_orientation",
	"nomad_10_orientation",
	"nomad_13_orientation"
]);

gt.Const.Strings.EntityName.extend([
	"Fire Blunderbuss",
	"Halberd Master",
	"Infantry",
	"Iron Pagoda",
	"Spear Master",
	"Centurion"
]);

gt.Const.Strings.EntityNamePlural.extend([
	"Fire Blunderbusses",
	"Halberd Masters",
	"Infantries",
	"Iron Pagodas",
	"Spear Masters",
	"Centurions"
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

gt.Const.Strings.NomadHalberdMasterNames <- ["Akdun", "Gao", "AmbalinggU", "Pei" , "Colhorokongge", "Fiyangtahun", "Gabsihiyan", "Giyahun", "Jurgangga", "TondoGiljan", "YebkenHaha" ]
gt.Const.Strings.NomadHalberdMasterTitles <- ["Ten Thousand People Against", "The Mighty", "The lion", "The Awful", "The legendary Generals", "The border Officer", "Battle-Scarred"]
	
gt.Const.World.Spawn.Troops.NomadHalberdMaster <-
	{
		ID = this.Const.EntityType.NomadHalberdMaster,
		Variant = 5,
		Strength = 30,
		Cost = 40,
		Row = 1,
		Script = "scripts/entity/tactical/humans/nomad_halberdmaster",
		NameList = this.Const.Strings.NomadHalberdMasterNames,
		TitleList = this.Const.Strings.NomadHalberdMasterTitles
	}
	
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

gt.Const.Strings.NomadSpearMasterNames <- ["Deji", "Botebu", "Dezhibumbi", "Isibu" , "Welimbi", "Isibumbi", "Alibu", "Hurubu" ]
gt.Const.Strings.NomadSpearMasterTitles <- ["the Legendary", "the Quick", "the Clever", "Swift Eagle", "the Best of Spear master", "Excellent in martial arts", "the Precision strike"]
	
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

gt.Const.Strings.NomadCenturionNames <- ["Wanggiya", "Abkai horgiku", "Bodohonggo", "FaSSangga" , "Fujurungga", "Gelmerjembi", "Giljan", "Kesingge" , "MuduriMorin ", "Mukdembi", "NiowargiGasha"  ]
gt.Const.Strings.NomadCenturionTitles <- ["A pivot of the sky", "Resourceful", "Superior", "Prominent personage", "Spotless", "Blessed is the man", "Commander candidate"]
	
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
	
gt.Const.FactionTrait.Actions[this.Const.FactionTrait.Settlement].push("scripts/factions/actions/drive_away_jin_action");	
gt.Const.FactionTrait.Actions[this.Const.FactionTrait.OrientalCityState].push("scripts/factions/actions/drive_away_jin_action");	