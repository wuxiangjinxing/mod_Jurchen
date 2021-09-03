this.jinweapon14a <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.jinweapon14a";
		this.m.Name = "Ancestral halberd";
		this.m.Description = "A halberd that has been with the master for ten years, as if it were the master's hand.";
		this.m.Categories = "Polearm, Two-Handed";
		this.m.IconLarge = "weapons/melee/jin_weapon_14.png";
		this.m.Icon = "weapons/melee/jin_weapon_14_70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "jin_weapon_14";
		this.m.Value = 5400;
		this.m.ShieldDamage = 0;
		this.m.Condition = 80.0;
		this.m.ConditionMax = 80.0;
		this.m.StaminaModifier = -16;
		this.m.RangeMin = 1;
		this.m.RangeMax = 2;
		this.m.RangeIdeal = 2;
		this.m.RegularDamage = 65;
		this.m.RegularDamageMax = 85;
		this.m.ArmorDamageMult = 1.5;
		this.m.DirectDamageMult = 0.3;
		this.m.ChanceToHitHead = 5;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		this.addSkill(this.new("scripts/skills/actives/jinweapon14_01"));
		this.addSkill(this.new("scripts/skills/actives/jinweapon02_02"));
		this.addSkill(this.new("scripts/skills/actives/jinweapon99_03"));
		this.addSkill(this.new("scripts/skills/actives/hook"));
	}

});

