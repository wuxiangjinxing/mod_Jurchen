this.halberdmaster_scenario <- this.inherit("scripts/scenarios/world/starting_scenario", {
	m = {},
	function create()
	{
		this.m.ID = "scenario.halberdmaster";
		this.m.Name = "Halberd Master";
		this.m.Description = "[p=c][img]gfx/ui/events/event_90.png[/img][/p][p]A halberd master from the far east, with an unknown past in him.\n\n[color=#bcad8c]Strong physique:[/color] Halberd master's exclusive ability to charge with a halberd and repel enemies while taking less damage.\n[color=#bcad8c]Hero:[/color] If your halberd master dies the game ends.\n[color=#bcad8c]Elite Few:[/color]You can only have 12 men in your roster.[/p]";
		this.m.Difficulty = 1;
		this.m.Order = 120;
	}

	function isValid()
	{
		return this.Const.DLC.Wildmen;
	}

	function onSpawnAssets()
	{
		local roster = this.World.getPlayerRoster();
		local bro;
		bro = roster.create("scripts/entity/tactical/player");
		bro.setStartValuesEx([
			"halberdmaster_background"
		]);
		bro.getBackground().m.RawDescription = "The halberd master came from far east, and everything about him was a mystery.";
		bro.getBackground().buildDescription(true);
		bro.setTitle("Halberd Master");
		bro.getSkills().removeByID("trait.survivor");
		bro.getSkills().removeByID("trait.greedy");
		bro.getSkills().removeByID("trait.loyal");
		bro.getSkills().removeByID("trait.disloyal");
		bro.getSkills().add(this.new("scripts/skills/traits/player_character_trait"));
		bro.getSkills().add(this.new("scripts/skills/effects/sizhanbutui"));
		bro.getSkills().add(this.new("scripts/skills/perks/perk_battle_forged"));
		bro.getSkills().add(this.new("scripts/skills/perks/perk_brawny"));
		bro.getSkills().add(this.new("scripts/skills/perks/perk_berserk"));
		bro.getSkills().add(this.new("scripts/skills/actives/jinweapon99_03"));
		bro.setPlaceInFormation(4);
		bro.getFlags().set("IsPlayerCharacter", true);
		bro.m.HireTime = this.Time.getVirtualTimeF();
		bro.m.PerkPoints = 0;
		bro.m.LevelUps = 3;
		bro.m.Level = 4;
		bro.m.Talents = [];
		bro.m.Attributes = [];
		local talents = bro.getTalents();
		talents.resize(this.Const.Attributes.COUNT, 0);
		talents[this.Const.Attributes.MeleeDefense] = 3;
		talents[this.Const.Attributes.Hitpoints] = 3;
		talents[this.Const.Attributes.MeleeSkill] = 3;
		bro.fillAttributeLevelUpValues(this.Const.XP.MaxLevelWithPerkpoints - 1);
		this.World.Assets.m.BusinessReputation = 50;
		this.World.Assets.getStash().resize(this.World.Assets.getStash().getCapacity() - 9);
		this.World.Assets.getStash().add(this.new("scripts/items/supplies/smoked_ham_item"));
		this.World.Assets.getStash().add(this.new("scripts/items/supplies/smoked_ham_item"));
		this.World.Assets.m.Money = 2000;
		this.World.Assets.m.ArmorParts = 0;
		this.World.Assets.m.Medicine = 50;
		this.World.Assets.m.Ammo = 0;
	}

	function onSpawnPlayer()
	{
		local randomVillage;
		local northernmostY = 0;

		for( local i = 0; i != this.World.EntityManager.getSettlements().len(); i = ++i )
		{
			local v = this.World.EntityManager.getSettlements()[i];

			if (v.getTile().SquareCoords.Y > northernmostY && !v.isMilitary() && !v.isIsolatedFromRoads() && v.getSize() <= 2)
			{
				northernmostY = v.getTile().SquareCoords.Y;
				randomVillage = v;
			}
		}

		randomVillage.setLastSpawnTimeToNow();
		local randomVillageTile = randomVillage.getTile();
		local navSettings = this.World.getNavigator().createSettings();
		navSettings.ActionPointCosts = this.Const.World.TerrainTypeNavCost_Flat;

		do
		{
			local x = this.Math.rand(this.Math.max(2, randomVillageTile.SquareCoords.X - 2), this.Math.min(this.Const.World.Settings.SizeX - 2, randomVillageTile.SquareCoords.X + 2));
			local y = this.Math.rand(this.Math.max(2, randomVillageTile.SquareCoords.Y - 2), this.Math.min(this.Const.World.Settings.SizeY - 2, randomVillageTile.SquareCoords.Y + 2));

			if (!this.World.isValidTileSquare(x, y))
			{
			}
			else
			{
				local tile = this.World.getTileSquare(x, y);

				if (tile.Type == this.Const.World.TerrainType.Ocean || tile.Type == this.Const.World.TerrainType.Shore || tile.IsOccupied)
				{
				}
				else if (tile.getDistanceTo(randomVillageTile) <= 1)
				{
				}
				else
				{
					local path = this.World.getNavigator().findPath(tile, randomVillageTile, navSettings, 0);

					if (!path.isEmpty())
					{
						randomVillageTile = tile;
						break;
					}
				}
			}
		}
		while (1);
		this.World.State.m.Player = this.World.spawnEntity("scripts/entity/world/player_party", randomVillageTile.Coords.X, randomVillageTile.Coords.Y);
		this.World.Assets.updateLook(15);
		this.World.getCamera().setPos(this.World.State.m.Player.getPos());
		this.Time.scheduleEvent(this.TimeUnit.Real, 1000, function ( _tag )
		{
			this.Music.setTrackList([
				"music/worldmap_11.ogg"
			], this.Const.Music.CrossFadeTime);
			this.World.Events.fire("event.halberdmaster_scenario_intro");
		}, null);
	}

	function onInit()
	{
		this.World.Assets.m.BrothersMax = 12;
	}

	function onCombatFinished()
	{
		local roster = this.World.getPlayerRoster().getAll();

		foreach( bro in roster )
		{
			if (bro.getFlags().get("IsPlayerCharacter"))
			{
				return true;
			}
		}

		return false;
	}


});

