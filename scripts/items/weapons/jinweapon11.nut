this.jinweapon11 <- this.inherit("scripts/items/weapons/weapon", {
	m = {},
	function create()
	{
		this.weapon.create();
		this.m.ID = "weapon.jinweapon11";
		this.m.Name = "Firelock";
		this.m.Description = "An iron barrel with a long wooden handle. It fires shrapnel in a cone and can hit multiple targets with one shot. Can not be used while engaged in melee.";
		this.m.Categories = "Mace, Two-Handed";
		this.m.IconLarge = "weapons/melee/jin_weapon_11.png";
		this.m.Icon = "weapons/melee/jin_weapon_11_70.png";
		this.m.SlotType = this.Const.ItemSlot.Mainhand;
		this.m.BlockedSlotType = this.Const.ItemSlot.Offhand;
		this.m.ItemType = this.Const.Items.ItemType.Weapon | this.Const.Items.ItemType.MeleeWeapon | this.Const.Items.ItemType.TwoHanded;
		this.m.IsAgainstShields = true;
		this.m.IsAoE = false;
		this.m.AddGenericSkill = true;
		this.m.ShowQuiver = false;
		this.m.ShowArmamentIcon = true;
		this.m.ArmamentIcon = "jin_weapon_11";
		this.m.Value = 2000;
		this.m.ShieldDamage = 20;
		this.m.Condition = 70.0;
		this.m.ConditionMax = 70.0;
		this.m.StaminaModifier = -18;
		this.m.RegularDamage = 45;
		this.m.RegularDamageMax = 65;
		this.m.ArmorDamageMult = 1.0;
		this.m.DirectDamageMult = 0.4;
		this.m.ChanceToHitHead = 0;
	}

	function onEquip()
	{
		this.weapon.onEquip();
		this.addSkill(this.new("scripts/skills/actives/jinweapon11_01"))
	}

});

