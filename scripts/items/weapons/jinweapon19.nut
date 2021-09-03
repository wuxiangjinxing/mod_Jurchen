this.jinweapon19 <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.jinweapon19";
		this.m.Name = "Cross Pike";
		this.m.Description = "A long spear with a strange shape. Only a halberd master can use it skillfully.";
		this.m.Categories = "Polearm, Two-Handed";
		this.m.IconLarge = "weapons/melee/jin_weapon_19.png";
		this.m.Icon = "weapons/melee/jin_weapon_19_70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.IsAgainstShields = true;
		this.m.IsAoE = true;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "jin_weapon_19";
		this.m.Value = 3000;
		this.m.Condition = 74.0;
		this.m.ConditionMax = 74.0;
		this.m.StaminaModifier = -18;
		this.m.RegularDamage = 60;
		this.m.RegularDamageMax = 80;
		this.m.ArmorDamageMult = 1.2;
		this.m.DirectDamageMult = 0.25;
		this.m.DirectDamageAdd = 0.1;
		this.m.ChanceToHitHead = 10;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		this.addSkill(this.new("scripts/skills/actives/jinweapon19_01"));
		this.addSkill(this.new("scripts/skills/actives/jinweapon19_02"));
	}

});


