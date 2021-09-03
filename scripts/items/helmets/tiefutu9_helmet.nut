this.tiefutu9_helmet <- this.inherit("scripts/items/helmets/helmet", {
	m = {},
	function create()
	{
		this.helmet.create();
		this.m.ID = "armor.head.tiefutu9_helmet";
		this.m.Name = "Centurion Helmet";
		this.m.Description = "A kind of helmet, like an iron tower, tightly wraps the wearer. The easterners call this kind of helmet tiefutu.";
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
		this.m.Value = 2000;
		this.m.Condition = 300;
		this.m.ConditionMax = 300;
		this.m.StaminaModifier = -22;
		this.m.Vision = -3;
	}

	function updateVariant()
	{
		local variant = this.m.Variant > 9 ? this.m.Variant : "0" + this.m.Variant;
		this.m.Sprite = "bust_jin_helmet9_" + variant;
		this.m.SpriteDamaged = "bust_jin_helmet9_" + variant + "_damaged";
		this.m.SpriteCorpse = "bust_jin_helmet9_" + variant + "_dead";
		this.m.IconLarge = "";
		this.m.Icon = "helmets/icon_jin_helmet9_" + variant + ".png";
	}
});

