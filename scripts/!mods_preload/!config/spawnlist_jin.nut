
local gt = this.getroottable();

if (!("World" in gt.Const))
{
    gt.Const.World <- {};
}

if (!("Spawn" in gt.Const.World))
{
    gt.Const.World.Spawn <- {};
}

gt.Const.World.Spawn.JurchenRoamers <- [
    {
        Cost = 0,
        MovementSpeedMult = 1.0,
        VisibilityMult = 1.0,
        VisionMult = 1.0,
        Body = "figure_tiefutu_01",
        Troops =
        [
            {
            Type = this.Const.World.Spawn.Troops.NomadInfantry,
            Num = 5
            },			
        ]
    },
    {
        Cost = 0,
        MovementSpeedMult = 1.0,
        VisibilityMult = 1.0,
        VisionMult = 1.0,
        Body = "figure_tiefutu_01",
        Troops =
        [
            {
            Type = this.Const.World.Spawn.Troops.NomadInfantry,
            Num = 5
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadFireBlunderbuss,
            Num = 2
            },			
        ]
    },
    {
        Cost = 0,
        MovementSpeedMult = 1.0,
        VisibilityMult = 1.0,
        VisionMult = 1.0,
        Body = "figure_tiefutu_01",
        Troops =
        [
            {
            Type = this.Const.World.Spawn.Troops.NomadInfantry,
            Num = 4
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadFireBlunderbuss,
            Num = 2
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadIronPagoda,
            Num = 3
            },			
        ]
    },
    {
        Cost = 0,
        MovementSpeedMult = 1.0,
        VisibilityMult = 1.0,
        VisionMult = 1.0,
        Body = "figure_tiefutu_01",
        Troops =
        [
            {
            Type = this.Const.World.Spawn.Troops.NomadInfantry,
            Num = 4
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadFireBlunderbuss,
            Num = 2
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadIronPagoda,
            Num = 3
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadCenturion,
            Num = 1
            },			
        ]
    },	
];

gt.Const.World.Spawn.JurchenRaiders <- [
    {
        Cost = 0,
        MovementSpeedMult = 1.0,
        VisibilityMult = 1.0,
        VisionMult = 1.0,
        Body = "figure_tiefutu_01",
        Troops =
        [
            {
            Type = this.Const.World.Spawn.Troops.NomadInfantry,
            Num = 4
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadFireBlunderbuss,
            Num = 2
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadIronPagoda,
            Num = 3
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadHalberdMaster,
            Num = 1
            },			
        ]
    },
    {
        Cost = 0,
        MovementSpeedMult = 1.0,
        VisibilityMult = 1.0,
        VisionMult = 1.0,
        Body = "figure_tiefutu_01",
        Troops =
        [
            {
            Type = this.Const.World.Spawn.Troops.NomadInfantry,
            Num = 4
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadFireBlunderbuss,
            Num = 2
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadIronPagoda,
            Num = 3
            },
            {
            Type = this.Const.World.Spawn.Troops.NomadSpearMaster,
            Num = 1
            },			
        ]
    },
];

gt.Const.World.Spawn.JurchenDefenders <- [
    {
        Cost = 0,
        MovementSpeedMult = 1.0,
        VisibilityMult = 1.0,
        VisionMult = 1.0,
        Body = "figure_changjidashi_01",
        Troops =
        [
			{
			Type = this.Const.World.Spawn.Troops.NomadFireBlunderbuss,
			Num = 2
			},				
			{
			Type = this.Const.World.Spawn.Troops.NomadIronPagoda,
			Num = 3
			},
			{
			Type = this.Const.World.Spawn.Troops.NomadCenturion,
			Num = 1
			},
			{
			Type = this.Const.World.Spawn.Troops.NomadHalberdMaster,
			Num = 1
			},
			{
			Type = this.Const.World.Spawn.Troops.NomadSpearMaster,
			Num = 1
			},
			{
			Type = this.Const.World.Spawn.Troops.NomadInfantry,
			Num = 4
			}			
        ]
    },
    {
        Cost = 0,
        MovementSpeedMult = 1.0,
        VisibilityMult = 1.0,
        VisionMult = 1.0,
        Body = "figure_changmaodashi_01",
        Troops =
        [
			{
			Type = this.Const.World.Spawn.Troops.NomadFireBlunderbuss,
			Num = 5
			},			
			{
			Type = this.Const.World.Spawn.Troops.NomadIronPagoda,
			Num = 8
			},			
			{
			Type = this.Const.World.Spawn.Troops.NomadCenturion,
			Num = 1
			},				
			{
			Type = this.Const.World.Spawn.Troops.NomadHalberdMaster,
			Num = 2
			},			
			{
			Type = this.Const.World.Spawn.Troops.NomadSpearMaster,
			Num = 2
			},			
			{
			Type = this.Const.World.Spawn.Troops.NomadInfantry,
			Num = 10
			}			
        ]
    },
    {
        Cost = 0,
        MovementSpeedMult = 1.0,
        VisibilityMult = 1.0,
        VisionMult = 1.0,
        Body = "figure_tietufu_01",
        Troops =
        [
			{
			Type = this.Const.World.Spawn.Troops.NomadFireBlunderbuss,
			Num = 6
			},				
			{
			Type = this.Const.World.Spawn.Troops.NomadIronPagoda,
			Num = 9
			},			
			{
			Type = this.Const.World.Spawn.Troops.NomadCenturion,
			Num = 2
			},				
			{
			Type = this.Const.World.Spawn.Troops.NomadHalberdMaster,
			Num = 4
			},			
			{
			Type = this.Const.World.Spawn.Troops.NomadSpearMaster,
			Num = 4
			},			
			{
			Type = this.Const.World.Spawn.Troops.NomadInfantry,
			Num = 8
			}			
        ]
    },	
];

function onCostCompare( _t1, _t2 )
{
    if (_t1.Cost < _t2.Cost)
    {
        return -1;
    }
    else if (_t1.Cost > _t2.Cost)
    {
        return 1;
    }

    return 0;
}

function calculateCosts( _p )
{
    foreach( p in _p )
    {
        p.Cost <- 0;

        foreach( t in p.Troops )
        {
            p.Cost += t.Type.Cost * t.Num;
        }

        if (!("MovementSpeedMult" in p))
        {
            p.MovementSpeedMult <- 1.0;
        }

        if (!("VisibilityMult" in p))
        {
            p.VisibilityMult <- 1.0;
        }

        if (!("VisionMult" in p))
        {
            p.VisionMult <- 1.0;
        }
    }

    _p.sort(this.onCostCompare);
}

this.calculateCosts(this.Const.World.Spawn.JurchenRoamers);
this.calculateCosts(this.Const.World.Spawn.JurchenRaiders);
this.calculateCosts(this.Const.World.Spawn.JurchenDefenders);