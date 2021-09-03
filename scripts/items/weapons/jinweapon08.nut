this.jinweapon08 <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.jinweapon08";
		this.m.Name = "Horse-chopping Sword";
		this.m.Description = "A machete from the East used to cut the legs of cavalry horses.";
		this.m.Categories = "Cleaver, Two-Handed";
		this.m.IconLarge = "weapons/melee/jin_weapon_08.png";
		this.m.Icon = "weapons/melee/jin_weapon_08_70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.IsAgainstShields = true;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "jin_weapon_08";
		this.m.Value = 2600;
		this.m.ShieldDamage = 18;
		this.m.Condition = 64.0;
		this.m.ConditionMax = 64.0;
		this.m.StaminaModifier = -18;
		this.m.RegularDamage = 70;
		this.m.RegularDamageMax = 90;
		this.m.ArmorDamageMult = 1.1;
		this.m.DirectDamageMult = 0.25;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		this.addSkill(this.new("scripts/skills/actives/jinweapon08_01"));
		this.addSkill(this.new("scripts/skills/actives/jinweapon08_02"));
		this.addSkill(this.new("scripts/skills/actives/split_shield"));
	}

});

