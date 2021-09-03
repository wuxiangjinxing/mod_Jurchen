this.oriental3_armor <- this.inherit("scripts/items/armor/armor", {
	m = {},
	function create()
	{
		this.armor.create();
		this.m.ID = "armor.body.oriental3_armor";
		this.m.Name = "The Armor of Master Halberd";
		this.m.Description = "This armor has noble decorations on its outside to demonstrate the merit of its owner.";
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = true;
		this.m.Variant = 1;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.Const.Sound.ClothEquip;
		this.m.Value = 3000;
		this.m.Condition = 200;
		this.m.ConditionMax = 200;
		this.m.StaminaModifier = -28;
	}

	function updateVariant()
	{
		local variant = this.m.Variant > 9 ? this.m.Variant : "0" + this.m.Variant;
		this.m.Sprite = "bust_jin_ armor3_body_" + variant;
		this.m.SpriteDamaged = "bust_jin_ armor3_body_" + variant + "_damaged";
		this.m.SpriteCorpse = "bust_jin_ armor3_body_" + variant + "_dead";
		this.m.IconLarge = "armor/inventory_jin_armor3_body_" + variant + ".png";
		this.m.Icon = "armor/icon_jin_armor3_body_" + variant + ".png";
	}
});