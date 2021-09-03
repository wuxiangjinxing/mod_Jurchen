this.build_jin_camp_action <- this.inherit("scripts/factions/faction_action", {
	m = {},
	function create()
	{
		this.m.ID = "build_jin_camp_action";
		this.m.IsRunOnNewCampaign = true;
		this.faction_action.create();
	}

	function onUpdate( _faction )
	{
		local settlements = _faction.getSettlements();

		if (this.World.FactionManager.isGreaterEvil())
		{
			if (settlements.len() > 3)
			{
				return;
			}
		}
		else if (settlements.len() > 5)
		{
			return;
		}

		this.m.Score = 2;
	}

	function onExecute( _faction )
	{
		local camp;
		local disallowedTerrain = [this.Const.World.TerrainType.Mountains, this.Const.World.TerrainType.Impassable, this.Const.World.TerrainType.Ocean]
		local tile = this.getTileToSpawnLocation(this.Const.Factions.BuildCampTries, disallowedTerrain, 13, 35, 1000, 7, 7, null, 0.0, 1.0);

		if (tile != null)
		{
			camp = this.World.spawnLocation("scripts/entity/world/locations/nomad_jin_city_location", tile.Coords);
		}

		if (camp != null)
		{
			camp.onSpawned();
			camp.setBanner("banner_jin");
			_faction.addSettlement(camp, false);
		}
	}

});

