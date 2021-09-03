this.tiefutu7_helmet <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.tiefutu7_helmet";
		this.m.Name = "Oriental Helmet";
		this.m.Description = "A helmet widely worn by soldiers in the East.";
		this.m.ShowOnCharacter = true;
		this.m.HideCharacterHead = false;
		this.m.HideCorpseHead = false;
		this.m.HideHair = true;
		this.m.HideBeard = false;
		this.m.IsDroppedAsLoot = true;
		this.m.Variant = 1;
		this.updateVariant();
		this.m.ImpactSound = this.Const.Sound.ArmorLeatherImpact;
		this.m.InventorySound = this.Const.Sound.ClothEquip;
		this.m.Value = 2000;
		this.m.Condition = 150;
		this.m.ConditionMax = 150;
		this.m.StaminaModifier = -10;
		this.m.Vision = -1;
	}

	function updateVariant()
	{
		local variant = this.m.Variant > 9 ? this.m.Variant : "0" + this.m.Variant;
		this.m.Sprite = "bust_jin_helmet7_" + variant;
		this.m.SpriteDamaged = "bust_jin_helmet7_" + variant + "_damaged";
		this.m.SpriteCorpse = "bust_jin_helmet7_" + variant + "_dead";
		this.m.IconLarge = "";
		this.m.Icon = "helmets/icon_jin_helmet7_" + variant + ".png";
	}
});

