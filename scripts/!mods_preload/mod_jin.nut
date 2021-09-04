::mods_registerMod("mod_jin", 1.0, "Jurchen");
 
::mods_queue("mod_jin", ">mod_legends", function()
{	
	::mods_hookNewObjectOnce("factions/faction_manager", function (o)
	{
		local createFactions = o.createFactions;
		if (::mods_getRegisteredMod("mod_legends") != null)
		{
			o.createFactions = function( _settings )
			{	
				createFactions( _settings )
				local jin_faction = this.new("scripts/factions/jin_faction")
				jin_faction.setID(this.m.Factions.len());
				jin_faction.setName("Samurai");
				jin_faction.setDiscovered(true);
				jin_faction.addTrait(this.Const.FactionTrait.Jurchen);
				this.m.Factions.push(jin_faction);
			}
		}
		else
		{
			o.createFactions = function()
			{	
				createFactions()
				local jin_faction = this.new("scripts/factions/jin_faction")
				jin_faction.setID(this.m.Factions.len());
				jin_faction.setName("Samurai");
				jin_faction.setDiscovered(true);
				jin_faction.addTrait(this.Const.FactionTrait.Jurchen);
				this.m.Factions.push(jin_faction);
			}			
		}
		
		local runSimulation = o.runSimulation;		
		o.runSimulation = function()
		{	
			runSimulation()
			local jin = this.getFactionOfType(this.Const.FactionType.Jurchen);
			for( local i = 0; i < this.Const.Factions.CyclesOnNewCampaign; i = ++i )
			{
				jin.update(true, true);
			}
		}		
	})
	
	::mods_hookExactClass("ai/tactical/behaviors/ai_attack_default", function ( o )
	{
		o.m.PossibleSkills.push("actives.jinweapon15_01");
		o.m.PossibleSkills.push("actives.jinweapon12_01");
		o.m.PossibleSkills.push("actives.jinweapon18_01");
		o.m.PossibleSkills.push("actives.jinweapon19_01");
		o.m.PossibleSkills.push("actives.jinweapon19_02");
		o.m.PossibleSkills.push("actives.jinweapon20_01");
		o.m.PossibleSkills.push("actives.jinweapon99_01");
		o.m.PossibleSkills.push("actives.jinweapon13_01");
		o.m.PossibleSkills.push("actives.jinweapon01_01");
		o.m.PossibleSkills.push("actives.jinweapon05_01");
		o.m.PossibleSkills.push("actives.jinweapon03_01");
		o.m.PossibleSkills.push("actives.jinweapon04_01");
		o.m.PossibleSkills.push("actives.jinweapon03_02");
		o.m.PossibleSkills.push("actives.jinweapon02_01");
		o.m.PossibleSkills.push("actives.jinweapon11_01");
		o.m.PossibleSkills.push("actives.jinweapon06_01");
		o.m.PossibleSkills.push("actives.jinweapon07_01");
		o.m.PossibleSkills.push("actives.jinweapon08_01");
		o.m.PossibleSkills.push("actives.jinweapon09_01");
		o.m.PossibleSkills.push("actives.jinweapon14_01");
	});

	::mods_hookExactClass("ai/tactical/behaviors/ai_attack_swing", function ( o )
	{
		o.m.PossibleSkills.push("actives.jinweapon12_02");
		o.m.PossibleSkills.push("actives.jinweapon18_02");
		o.m.PossibleSkills.push("actives.jinweapon20_02");
		o.m.PossibleSkills.push("actives.jinweapon15_02");
		o.m.PossibleSkills.push("actives.jinweapon04_02");
		o.m.PossibleSkills.push("actives.jinweapon13_02");
		o.m.PossibleSkills.push("actives.jinweapon09_02");
		o.m.PossibleSkills.push("actives.jinweapon08_02");
		
	});
	
	::mods_hookExactClass("ai/tactical/behaviors/ai_attack_reap", function ( o )
	{
		o.m.PossibleSkills.push("actives.jinweapon15_02");
		o.m.PossibleSkills.push("actives.jinweapon02_02");
	});
	
	::mods_hookExactClass("ai/tactical/behaviors/ai_line_breaker", function ( o )
	{
		o.m.PossibleSkills.push("actives.jinweapon99_02");
	});
});