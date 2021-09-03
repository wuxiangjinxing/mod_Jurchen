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

	function onClear()
	{
	}

	function onExecute( _faction )
	{
		local camp;
		local r = this.Math.rand(1, 2);
		local disallowedTerrain = [];

		for( local i = 0; i < this.Const.World.TerrainType.COUNT; i = ++i )
		{
			if (i == this.Const.World.TerrainType.Desert || i == this.Const.World.TerrainType.Oasis || i == this.Const.World.TerrainType.Steppe || i == this.Const.World.TerrainType.Hills)
			{
			}
			else
			{
				disallowedTerrain.push(i);
			}
		}

		if (r == 1)
		{
			local tile = this.getTileToSpawnLocation(this.Const.Factions.BuildCampTries, disallowedTerrain, 13, 35, 1000, 7, 7, null, 0.0, 0.2);

			if (tile != null)
			{
				camp = this.World.spawnLocation("scripts/entity/world/locations/nomad_jin_city_location", tile.Coords);
			}
		}
		
		else if (r == 2)
		{
			local tile = this.getTileToSpawnLocation(this.Const.Factions.BuildCampTries, disallowedTerrain, 14, 37, 1000, 7, 7, null, 0.0, 0.2);

			if (tile != null)
			{
				camp = this.World.spawnLocation("scripts/entity/world/locations/nomad_jin_city_location", tile.Coords);
			}
		}

		if (camp != null)
		{
			local banner = this.getAppropriateBanner(camp, _faction.getSettlements(), 10, this.Const.NomadBanners);
			camp.onSpawned();
			camp.setBanner(banner);
			_faction.addSettlement(camp, false);
		}
	}

});

