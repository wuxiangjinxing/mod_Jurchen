this.named_jinweapon02 <- this.inherit("scripts/items/weapons/named/named_weapon", {
	m = {},
	function create()
	{
		this.named_weapon.create();
		this.m.ID = "weapon.named_jinweapon02";
		this.m.NameList = this.Const.Strings.jinweapon02Names;
		this.m.UseRandomName = false;
		this.m.Description = "A long pike used for thrusting over some distance and keeping the enemy at bay. This particular pike is skillfully crafted from flexible wood that may bend but never snap, and the metal tip consists of an alloy rarely seen in these parts of the world.";
		this.m.Categories = "Polearm, Two-Handed";
		this.m.IconLarge = "weapons/melee/named_jin_weapon_02.png";
		this.m.Icon = "weapons/melee/named_jin_weapon_02_70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Named | this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded | this.Const.Items.ItemType.Defensive;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "named_jin_weapon_02";
		this.m.Value = 2800;
		this.m.ShieldDamage = 0;
		this.m.Condition = 72.0;
		this.m.ConditionMax = 72.0;
		this.m.StaminaModifier = -16;
		this.m.RangeMin = 1;
		this.m.RangeMax = 2;
		this.m.RangeIdeal = 2;
		this.m.RegularDamage = 60;
		this.m.RegularDamageMax = 80;
		this.m.ArmorDamageMult = 1.3;
		this.m.DirectDamageMult = 0.3;
		this.m.ChanceToHitHead = 5;
		this.randomizeValues();
	}

	

	function onEquip()
	{
		this.weapon.onEquip();
		this.addSkill(this.new("scripts/skills/actives/jinweapon02_01"));
		this.addSkill(this.new("scripts/skills/actives/jinweapon02_02"));
	}

});

