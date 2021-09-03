::mods_registerMod("mod_jin", 1.0, "Jurchen");

local gt = this.getroottable();
gt.Const.FactionTrait.Actions[19].push("scripts/factions/actions/build_jin_camp_action"); 

::mods_queue(null, null, function()
{	
	//flags used:
	//spawnedJin : Set when jin has been spawned, so that only one can be spawned
	::mods_hookNewObjectOnce("states/world/asset_manager", function (o)
	{
		while (!("update" in o)) o = o[o.SuperName];
		local update = o.update;		
		o.update = function(_worldState)
		{	
			update(_worldState)
			if (!this.World.Flags.get("spawnedJin"))
			{
				//spawns the jin
				local disallowedTerrain = [this.Const.World.TerrainType.Mountains, this.Const.World.TerrainType.Impassable, this.Const.World.TerrainType.Ocean]
				local f = this.World.FactionManager.getFactionOfType(this.Const.FactionType.Jin)
				local tile;
				local camp;
				while (tile == null)
				{
					tile = f.m.Deck[0].getTileToSpawnLocation(this.Const.Factions.BuildCampTries * 100, disallowedTerrain, 30, 1000);
				}
				camp = this.World.spawnLocation("scripts/entity/world/locations/nomad_jin_city2_location.nut", tile.Coords);
				if (camp != null)
				{
					this.logInfo("Jin!")
					camp.setName("Front line base")
					camp.setBanner("banner_jin")
					camp.onSpawned();
					f.addSettlement(camp, false);
					this.World.Flags.set("spawnedJin", true)				
				}
            }
		}	
	});
});