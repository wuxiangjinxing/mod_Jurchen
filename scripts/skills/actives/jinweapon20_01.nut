this.jinweapon20_01 <- this.inherit("scripts/skills/skill", {
	m = {
		ApplyAxeMastery = false
	},
	function isAxeMasteryApplied()
	{
		return this.m.ApplyAxeMastery;
	}

	function setApplyAxeMastery( _f )
	{
		this.m.ApplyAxeMastery = _f;
		this.m.HitChanceBonus = _f ? 0 : 5;
	}

	function create()
	{
		this.m.ID = "actives.jinweapon20_01";
		this.m.Name = "Chop Down";
		this.m.Description = "Use halberd to attack the enemy.";
		this.m.Icon = "skills/jinweapon20_01.png";
		this.m.IconDisabled = "skills/jinweapon20_01_sw.png";
		this.m.Overlay = "jinweapon20_01";
		this.m.SoundOnUse = [
			"sounds/combat/strike_01.wav",
			"sounds/combat/strike_02.wav",
			"sounds/combat/strike_03.wav"
		];
		this.m.SoundOnHit = [
			"sounds/combat/strike_hit_01.wav",
			"sounds/combat/strike_hit_02.wav",
			"sounds/combat/strike_hit_03.wav"
		];
		this.m.Type = this.Const.SkillType.Active;
		this.m.Order = this.Const.SkillOrder.OffensiveTargeted;
		this.m.IsSerialized = false;
		this.m.IsActive = true;
		this.m.IsTargeted = true;
		this.m.IsStacking = false;
		this.m.IsAttack = true;
		this.m.IsRanged = false;
		this.m.IsTooCloseShown = true;
		this.m.IsWeaponSkill = true;
		this.m.InjuriesOnBody = this.Const.Injury.CuttingBody;
		this.m.InjuriesOnHead = this.Const.Injury.CuttingHead;
		this.m.DirectDamageMult = 0.3;
		this.m.HitChanceBonus = 0;
		this.m.ActionPointCost = 4;
		this.m.FatigueCost = 18;
		this.m.MinRange = 1;
		this.m.MaxRange = 1;
		this.m.ChanceDecapitate = 50;
		this.m.ChanceDisembowel = 33;
		this.m.ChanceSmash = 0;
	}

	function getTooltip()
	{
		local ret = this.getDefaultTooltip();
		{
			ret.push({
				id = 6,
				type = "text",
				icon = "ui/icons/hitchance.png",
				text = "Has [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit"
			});

			
		}

		return ret;
	}

	function onAfterUpdate( _properties )
	{
		if (this.m.ApplyAxeMastery)
		{
			this.m.FatigueCostMult = _properties.IsSpecializedInAxes ? this.Const.Combat.WeaponSpecFatigueMult : 1.0;
		}
		else
		{
			this.m.FatigueCostMult = _properties.IsSpecializedInPolearms ? this.Const.Combat.WeaponSpecFatigueMult : 1.0;
		}
	}

	function onUse( _user, _targetTile )
	{
		this.spawnAttackEffect(_targetTile, this.Const.Tactical.AttackEffectSplitShield);
		return this.attackEntity(_user, _targetTile.getEntity());
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			if (!this.m.ApplyAxeMastery)
			{
				_properties.MeleeSkill += 5;
			}

			if (_targetEntity != null && (this.m.ApplyAxeMastery && !this.getContainer().getActor().getCurrentProperties().IsSpecializedInAxes || !this.m.ApplyAxeMastery && !this.getContainer().getActor().getCurrentProperties().IsSpecializedInPolearms) && this.getContainer().getActor().getTile().getDistanceTo(_targetEntity.getTile()) == 1)
			{
				_properties.MeleeSkill += -0;
				this.m.HitChanceBonus = -10;
			}
			else
			{
				this.m.HitChanceBonus = this.m.ApplyAxeMastery ? 0 : 5;
			}
		}
	}

});

