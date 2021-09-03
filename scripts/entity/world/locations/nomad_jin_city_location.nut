this.nomad_jin_city_location <- this.inherit("scripts/entity/world/location", {
	m = {},
	function getDescription()
	{
		return "A mysterious army from an ancient country in the far east .";
	}

	function create()
	{
		this.location.create();
		this.m.Name = "The Eastern Army Battalion";
		this.m.TypeID = "location.nomad_jin_city";
		this.m.LocationType = this.Const.World.LocationType.Lair;
		this.m.CombatLocation.Template[0] = "tactical.desert_camp";
		this.m.CombatLocation.Fortification = this.Const.Tactical.FortificationType.None;
		this.m.CombatLocation.CutDownTrees = false;
		this.m.CombatLocation.AdditionalRadius = 5;
		this.m.IsDespawningDefenders = false;
		//this.setDefenderSpawnList(this.Const.World.Spawn.NomadJin);
		this.m.Resources = 300;
		this.m.NamedShieldsList = this.Const.Items.NamedSouthernShields;
	}

	function onSpawned()
	{
		this.location.onSpawned();
		
		local Troops = 
		[		
			{
			Type = this.Const.World.Spawn.Troops.NomadFireBlunderbuss,
			Num = 5
			}	
			
			{
			Type = this.Const.World.Spawn.Troops.NomadIronPagoda,
			Num = 8
			}
			
			{
			Type = this.Const.World.Spawn.Troops.NomadCenturion,
			Num = 1
			}
				
			{
			Type = this.Const.World.Spawn.Troops.NomadHalberdMaster,
			Num = 2
			}
			
			{
			Type = this.Const.World.Spawn.Troops.NomadSpearMaster,
			Num = 2
			}
			
			{
			Type = this.Const.World.Spawn.Troops.NomadInfantry,
			Num = 10
			}			
		]
		
		foreach(troop in Troops)
		{
			for( local i = 0; i < troop.Num; i = ++i )
			{
				this.Const.World.Common.addTroop(this, {Type = troop.Type}, false);
			}
		}		
	}

	function onDropLootForPlayer( _lootTable )
	{
		this.location.onDropLootForPlayer(_lootTable);
		this.dropMoney(this.Math.rand(300, 700), _lootTable);
		this.dropArmorParts(this.Math.rand(25, 50), _lootTable);
		this.dropAmmo(this.Math.rand(0, 50), _lootTable);
		this.dropMedicine(this.Math.rand(5, 15), _lootTable);
		local treasure = [
			"trade/incense_item",
			"trade/dies_item",
			"trade/cloth_rolls_item",
			"trade/silk_item",
			"trade/spices_item",
			"loot/silverware_item",
			"loot/silver_bowl_item",
			"loot/signet_ring_item",
			"tools/fire_bomb_item"
		];

		if (this.Const.DLC.Unhold)
		{
			treasure.extend(treasure);
			treasure.extend(treasure);
			treasure.extend(treasure);
			treasure.push("armor_upgrades/metal_plating_upgrade");
			treasure.push("armor_upgrades/metal_pauldrons_upgrade");
			treasure.push("armor_upgrades/mail_patch_upgrade");
			treasure.push("armor_upgrades/leather_shoulderguards_upgrade");
			treasure.push("armor_upgrades/leather_neckguard_upgrade");
			treasure.push("armor_upgrades/joint_cover_upgrade");
			treasure.push("armor_upgrades/heraldic_plates_upgrade");
			treasure.push("armor_upgrades/double_mail_upgrade");
		}

		this.dropFood(this.Math.rand(4, 8), [
			"bread_item",
			"dried_fruits_item",
			"ground_grains_item",
			"roots_and_berries_item",
			"goat_cheese_item"
		], _lootTable);
		this.dropTreasure(this.Math.rand(2, 3), treasure, _lootTable);

		if (this.Const.DLC.Unhold && this.Math.rand(1, 100) <= 10)
		{
			local treasure = [];
			treasure.push("misc/paint_set_item");
			treasure.push("misc/paint_black_item");
			treasure.push("misc/paint_red_item");
			treasure.push("misc/paint_orange_red_item");
			treasure.push("misc/paint_white_blue_item");
			treasure.push("misc/paint_white_green_yellow_item");
			this.dropTreasure(1, treasure, _lootTable);
		}
	}

	function onInit()
	{
		this.location.onInit();
		local body = this.addSprite("body");
		body.setBrush("jincamp");
	}

});

