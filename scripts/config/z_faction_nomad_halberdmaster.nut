local gt = this.getroottable();


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



gt.Const.EntityType.NomadHalberdMaster <- gt.Const.EntityType.len() -2

gt.Const.EntityIcon.extend([
	"nomad_11_orientation"
]);


gt.Const.Strings.NomadHalberdMasterNames <- ["Akdun", "Gao", "AmbalinggU", "Pei" , "Colhorokongge", "Fiyangtahun", "Gabsihiyan", "Giyahun", "Jurgangga", "TondoGiljan", "YebkenHaha" ]
gt.Const.Strings.NomadHalberdMasterTitles <- ["Ten Thousand People Against", "The Mighty", "The lion", "The Awful", "The legendary Generals", "The border Officer", "Battle-Scarred"]

gt.Const.Strings.EntityName.extend([
	"Halberd Master",
]);

gt.Const.Strings.EntityNamePlural.extend([
	"Halberd Master",
]);


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