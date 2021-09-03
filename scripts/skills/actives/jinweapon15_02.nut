this.jinweapon15_02 <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "actives.jinweapon15_02";
		this.m.Name = "Puncture";
		this.m.Description = "Use the length of the snake spear to attack the enemy's rear, which can be attacked as far as two squares away.";
		this.m.KilledString = "Split in two";
		this.m.Icon = "skills/jinweapon15_02.png";
		this.m.IconDisabled = "skills/jinweapon15_02_sw.png";
		this.m.Overlay = "jinweapon15_02";
		this.m.SoundOnUse = [
			"sounds/combat/impale_01.wav",
			"sounds/combat/impale_02.wav",
			"sounds/combat/impale_03.wav"
		];
		this.m.SoundOnHit = [
			"sounds/combat/impale_hit_01.wav",
			"sounds/combat/impale_hit_02.wav",
			"sounds/combat/impale_hit_03.wav"
		];
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.OffensiveTargeted;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = true;
		this.m.IsTargetingActor = true;
		this.m.IsStacking = false;
		this.m.IsAttack = true;
		this.m.IsIgnoredAsAOO = true;
		this.m.IsAOE = true;
		this.m.IsWeaponSkill = true;
		this.m.InjuriesOnBody = this.Const.Injury.CuttingBody;
		this.m.InjuriesOnHead = this.Const.Injury.CuttingHead;
		this.m.DirectDamageMult = 0.3;
		this.m.ActionPointCost = 6;
		this.m.FatigueCost = 20;
		this.m.MinRange = 1;
		this.m.MaxRange = 2;
		this.m.ChanceDecapitate = 50;
		this.m.ChanceDisembowel = 25;
		this.m.ChanceSmash = 0;
	}

	function getTooltip()
	{
		local ret = this.getDefaultTooltip();
		ret.push({
			id = 10,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Can hit up to 2 targets"
		});

		if (!this.getContainer().getActor().getCurrentProperties().IsSpecializedInSwords)
		{
			ret.push({
				id = 6,
				type = "text",
				icon = "ui/icons/hitchance.png",
				text = "Has [color=" + this.Const.UI.Color.NegativeValue + "]-5%[/color] chance to hit"
			});
		}

		return ret;
	}

	function onAfterUpdate( _properties )
	{
		this.m.FatigueCostMult = _properties.IsSpecializedInSwords ? this.Const.Combat.WeaponSpecFatigueMult : 1.0;
	}

	function onUse( _user, _targetTile )
	{
		this.spawnAttackEffect(_targetTile, this.Const.Tactical.AttackEffectSplit);
		local ret = this.attackEntity(_user, _targetTile.getEntity());

		if (!_user.isAlive() || _user.isDying())
		{
			return ret;
		}

		local ownTile = _user.getTile();
		local dir = ownTile.getDirectionTo(_targetTile);

		if (_targetTile.hasNextTile(dir))
		{
			local forwardTile = _targetTile.getNextTile(dir);

			if (forwardTile.IsOccupiedByActor && forwardTile.getEntity().isAttackable() && this.Math.abs(forwardTile.Level - ownTile.Level) <= 1)
			{
				ret = this.attackEntity(_user, forwardTile.getEntity()) || ret;
			}
		}

		return ret;
	}

	function onTargetSelected( _targetTile )
	{
		this.Tactical.getHighlighter().addOverlayIcon(this.Const.Tactical.Settings.AreaOfEffectIcon, _targetTile, _targetTile.Pos.X, _targetTile.Pos.Y);
		local ownTile = this.m.Container.getActor().getTile();
		local dir = ownTile.getDirectionTo(_targetTile);

		if (_targetTile.hasNextTile(dir))
		{
			local forwardTile = _targetTile.getNextTile(dir);

			if (this.Math.abs(forwardTile.Level - ownTile.Level) <= 1)
			{
				this.Tactical.getHighlighter().addOverlayIcon(this.Const.Tactical.Settings.AreaOfEffectIcon, forwardTile, forwardTile.Pos.X, forwardTile.Pos.Y);
			}
		}
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			if (!this.getContainer().getActor().getCurrentProperties().IsSpecializedInSwords)
			{
				_properties.MeleeSkill -= 5;
			}
		}
	}

});

