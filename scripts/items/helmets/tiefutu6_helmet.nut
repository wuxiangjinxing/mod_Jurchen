this.tiefutu6_helmet <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.tiefutu6_helmet";
		this.m.Name = "Spear Master's Helmet";
		this.m.Description = "The helmet that spear masters often wear completely covers their faces. This kind of helmet can not only protect the head well, but also is not heavy.";
		this.m.ShowOnCharacter = true;
		this.m.HideCharacterHead = false;
		this.m.HideCorpseHead = false;
		this.m.HideHair = true;
		this.m.HideBeard = true;
		this.m.IsDroppedAsLoot = true;
		this.m.Variant = 1;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.Const.Sound.ClothEquip;
		this.m.Value = 4000;
		this.m.Condition = 200;
		this.m.ConditionMax = 200;
		this.m.StaminaModifier = -15;
		this.m.Vision = -1;
	}

	function updateVariant()
	{
		local variant = this.m.Variant > 9 ? this.m.Variant : "0" + this.m.Variant;
		this.m.Sprite = "bust_jin_helmet6_" + variant;
		this.m.SpriteDamaged = "bust_jin_helmet6_" + variant + "_damaged";
		this.m.SpriteCorpse = "bust_jin_helmet6_" + variant + "_dead";
		this.m.IconLarge = "";
		this.m.Icon = "helmets/icon_jin_helmet6_" + variant + ".png";
	}
});

