this.weaponsmith_oriental_building <- this.inherit("scripts/entity/world/settlements/buildings/weaponsmith_building", {
	m = {},
	function create()
	{
		this.weaponsmith_building.create();
		this.m.ID = "building.weaponsmith_oriental";
		this.m.UIImage = "ui/settlements/desert_building_04";
		this.m.UIImageNight = "ui/settlements/desert_building_04_night";
	}

	function onUpdateShopList()
	{
		local list = [
			{
				R = 40,
				P = 1.0,
				S = "weapons/oriental/qatal_dagger"
			},
			{
				R = 70,
				P = 1.0,
				S = "weapons/oriental/composite_bow"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/oriental/nomad_sling"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/oriental/nomad_sling"
			},
			{
				R = 20,
				P = 1.0,
				S = "weapons/oriental/light_southern_mace"
			},
			{
				R = 30,
				P = 1.0,
				S = "weapons/oriental/heavy_southern_mace"
			},
			{
				R = 40,
				P = 1.0,
				S = "weapons/oriental/polemace"
			},
			{
				R = 60,
				P = 1.0,
				S = "weapons/oriental/swordlance"
			},
			{
				R = 30,
				P = 1.0,
				S = "weapons/oriental/two_handed_saif"
			},
			{
				R = 40,
				P = 1.0,
				S = "weapons/oriental/two_handed_scimitar"
			},
			{
				R = 40,
				P = 1.0,
				S = "weapons/falchion"
			},
			{
				R = 30,
				P = 1.0,
				S = "weapons/oriental/saif"
			},
			{
				R = 30,
				P = 1.0,
				S = "weapons/oriental/saif"
			},
			{
				R = 40,
				P = 1.0,
				S = "weapons/scimitar"
			},
			{
				R = 40,
				P = 1.0,
				S = "weapons/scimitar"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/shamshir"
			},
			{
				R = 20,
				P = 1.0,
				S = "weapons/militia_spear"
			},
			{
				R = 30,
				P = 1.0,
				S = "weapons/boar_spear"
			},
			{
				R = 40,
				P = 1.0,
				S = "weapons/fighting_spear"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/javelin"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/javelin"
			},
			{
				R = 45,
				P = 1.0,
				S = "weapons/pike"
			},
			{
				R = 75,
				P = 1.0,
				S = "weapons/military_pick"
			},
			{
				R = 80,
				P = 1.0,
				S = "weapons/warhammer"
			},
			{
				R = 70,
				P = 1.0,
				S = "weapons/flail"
			},
			{
				R = 90,
				P = 1.0,
				S = "weapons/greatsword"
			},
			{
				R = 90,
				P = 1.0,
				S = "weapons/warbrand"
			},
			{
				R = 90,
				P = 1.0,
				S = "weapons/greataxe"
			},
			{
				R = 90,
				P = 1.0,
				S = "weapons/two_handed_hammer"
			},
			{
				R = 40,
				P = 1.0,
				S = "weapons/battle_whip"
			},
			{
				R = 10,
				P = 1.0,
				S = "weapons/jinweapon01"
			},
			{
				R = 20,
				P = 1.0,
				S = "weapons/jinweapon02"
			},
			{
				R = 30,
				P = 1.0,
				S = "weapons/jinweapon03"
			},
			{
				R = 40,
				P = 1.0,
				S = "weapons/jinweapon04"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/jinweapon05"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/jinweapon06"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/jinweapon07"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/jinweapon08"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/jinweapon09"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/jinweapon10"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/jinweapon12"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/jinweapon13"
			},
			{
				R = 60,
				P = 1.0,
				S = "weapons/jinweapon11"
			},
			{
				R = 50,
				P = 1.0,
				S = "weapons/jinweapon14"
			},
		];

		if (this.Const.DLC.Unhold)
		{
			list.extend([
				{
					R = 60,
					P = 1.0,
					S = "weapons/two_handed_wooden_hammer"
				},
				{
					R = 80,
					P = 1.0,
					S = "weapons/longsword"
				},
				{
					R = 80,
					P = 1.0,
					S = "weapons/three_headed_flail"
				},
				{
					R = 95,
					P = 1.0,
					S = "weapons/two_handed_flail"
				},
				{
					R = 90,
					P = 1.0,
					S = "weapons/two_handed_wooden_flail"
				},
				{
					R = 30,
					P = 1.0,
					S = "weapons/spetum"
				},
				{
					R = 60,
					P = 1.0,
					S = "weapons/polehammer"
				},
				{
					R = 70,
					P = 1.0,
					S = "weapons/two_handed_mace"
				},
				{
					R = 70,
					P = 1.0,
					S = "weapons/two_handed_flanged_mace"
				},
				{
					R = 80,
					P = 1.0,
					S = "weapons/fencing_sword"
				},
				{
					R = 10,
					P = 1.0,
					S = "weapons/throwing_spear"
				}
			]);
		}

		if (this.Const.DLC.Wildmen)
		{
			list.extend([
				{
					R = 20,
					P = 1.0,
					S = "weapons/warfork"
				}
			]);
		}

		foreach( i in this.Const.Items.NamedMeleeWeapons )
		{
			if (this.Math.rand(1, 100) <= 30)
			{
				list.push({
					R = 99,
					P = 2.0,
					S = i
				});
			}
		}

		this.m.Settlement.onUpdateShopList(this.m.ID, list);
		this.fillStash(list, this.m.Stash, 1.25, false);
	}

});

