this.jinweapon05_01 <- this.inherit("scripts/skills/skill", {
	m = {},
	function create()
	{
		this.m.ID = "actives.jinweapon05_01";
		this.m.Name = "Mace Strike";
		this.m.Description = "With a heavy blow from the mace, the enemy will have terrible wounds and bleeding.";
		this.m.KilledString = "Smashed";
		this.m.Icon = "skills/jinweapon05_01.png";
		this.m.IconDisabled = "skills/jinweapon05_01_sw.png";
		this.m.Overlay = "jinweapon05_01";
		this.m.SoundOnUse = [
			"sounds/combat/cudgel_01.wav",
			"sounds/combat/cudgel_02.wav",
			"sounds/combat/cudgel_03.wav"
		];
		this.m.SoundOnHit = [
			"sounds/combat/cudgel_hit_01.wav",
			"sounds/combat/cudgel_hit_02.wav",
			"sounds/combat/cudgel_hit_03.wav",
			"sounds/combat/cudgel_hit_04.wav"
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
		this.m.InjuriesOnBody = this.Const.Injury.BluntBody;
		this.m.InjuriesOnHead = this.Const.Injury.BluntHead;
		this.m.DirectDamageMult = 0.4;
		this.m.HitChanceBonus = 0;
		this.m.ActionPointCost = 6;
		this.m.FatigueCost = 20;
		this.m.MinRange = 1;
		this.m.MaxRange = 2;
		this.m.ChanceDecapitate = 0;
		this.m.ChanceDisembowel = 0;
		this.m.ChanceSmash = 50;
	}

	function getTooltip()
	{
		local ret = this.getDefaultTooltip();
		local dmg = this.getContainer().getActor().getCurrentProperties().IsSpecializedInCleavers ? 10 : 5;
		ret.push({
			id = 8,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Inflicts additional stacking [color=" + this.Const.UI.Color.DamageValue + "]" + dmg + "[/color] bleeding damage per turn, for 2 turns"
		});
		
		ret.push({
			id = 7,
			type = "text",
			icon = "ui/icons/vision.png",
			text = "Has a range of [color=" + this.Const.UI.Color.PositiveValue + "]2" + "[/color] tiles"
		});
		ret.push({
			id = 6,
			type = "text",
			icon = "ui/icons/special.png",
			text = "Inflicts [color=" + this.Const.UI.Color.DamageValue + "]" + this.Const.Combat.FatigueReceivedPerHit * 2 + "[/color] extra fatigue"
		});
		if (!this.getContainer().getActor().getCurrentProperties().IsSpecializedInMaces)
		{
			ret.push({
				id = 6,
				type = "text",
				icon = "ui/icons/hitchance.png",
				text = "Has [color=" + this.Const.UI.Color.NegativeValue + "]-15%[/color] chance to hit targets directly adjacent because the weapon is too unwieldy"
			});
		}

		return ret;
	}

	function onAfterUpdate( _properties )
	{
		this.m.FatigueCostMult = _properties.IsSpecializedInMaces ? this.Const.Combat.WeaponSpecFatigueMult : 1.0;
	}


	function onUse( _user, _targetTile )
	{
		this.spawnAttackEffect(_targetTile, this.Const.Tactical.AttackEffectBash);
		return this.attackEntity(_user, _targetTile.getEntity());
	}

	function onAnySkillUsed( _skill, _targetEntity, _properties )
	{
		if (_skill == this)
		{
			_properties.FatigueDealtPerHitMult += 2.0;

			if (_targetEntity != null && !this.getContainer().getActor().getCurrentProperties().IsSpecializedInMaces && this.getContainer().getActor().getTile().getDistanceTo(_targetEntity.getTile()) == 1)
			{
				_properties.MeleeSkill += -15;
				this.m.HitChanceBonus = -15;
			}
			else
			{
				this.m.HitChanceBonus = 0;
			}
		}
	}
    function onUse( _user, _targetTile )
	{
		this.spawnAttackEffect(_targetTile, this.Const.Tactical.AttackEffectChop);
		local target = _targetTile.getEntity();
		local hp = target.getHitpoints();
		local success = this.attackEntity(_user, _targetTile.getEntity());

		if (!_user.isAlive() || _user.isDying())
		{
			return;
		}

		if (success)
		{
			if (!target.isAlive() || target.isDying())
			{
				if (this.isKindOf(target, "lindwurm_tail") || !target.getCurrentProperties().IsImmuneToBleeding)
				{
					this.Sound.play(this.m.SoundsA[this.Math.rand(0, this.m.SoundsA.len() - 1)], this.Const.Sound.Volume.Skill, _user.getPos());
				}
				else
				{
					this.Sound.play(this.m.SoundsB[this.Math.rand(0, this.m.SoundsB.len() - 1)], this.Const.Sound.Volume.Skill, _user.getPos());
				}
			}
			else if (!target.getCurrentProperties().IsImmuneToBleeding && hp - target.getHitpoints() >= this.Const.Combat.MinDamageToApplyBleeding)
			{
				local effect = this.new("scripts/skills/effects/bleeding_effect");
				effect.setDamage(this.getContainer().getActor().getCurrentProperties().IsSpecializedInCleavers ? 10 : 5);
				target.getSkills().add(effect);
				this.Sound.play(this.m.SoundsA[this.Math.rand(0, this.m.SoundsA.len() - 1)], this.Const.Sound.Volume.Skill, _user.getPos());
			}
			else
			{
				this.Sound.play(this.m.SoundsB[this.Math.rand(0, this.m.SoundsB.len() - 1)], this.Const.Sound.Volume.Skill, _user.getPos());
			}
		}

		return success;
	}
});

