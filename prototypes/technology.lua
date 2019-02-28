data.raw['technology']['military'].prerequisites = {"apistol_tech"}
data.raw['technology']['military-3'].prerequisites = {"asmg_tech","ashotgun_tech"}


data:extend
(
	{
		{
			type = "technology",
			name = "apistol_tech",
			icon = "__akimbo-weapons__/graphics/technology/pistol128.png",
			icon_size = 128,
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "apistol"
				},		
			},
			unit =
			{
				count = 5,
				ingredients =
				{
					{"automation-science-pack", 1},
					},
				time = 20
			},
			order = "c-g-a-b-a",
		},
		{
			type = "technology",
			name = "asmg_tech",
			icon = "__akimbo-weapons__/graphics/technology/submachinegun128.png",
			icon_size = 128,
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "asmg"
				},		
			},
			prerequisites = {"military-2", "apistol_tech"},
			unit =
			{
				count = 25,
				ingredients =
				{
					{"automation-science-pack", 5},
					{"logistic-science-pack", 5},
					{"military-science-pack", 15}
				},
				time = 20
			}, 
			order = "c-g-a-b-b",
		},
		{
			type = "technology",
			name = "ashotgun_tech",
			icon = "__akimbo-weapons__/graphics/technology/shotgun128.png",
			icon_size = 128,
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "ashotgun"
				},		
			},
			prerequisites = {"military-2", "apistol_tech"},
			unit =
			{
				count = 25,
				ingredients =
				{
					{"automation-science-pack", 5},
					{"logistic-science-pack", 5},
					{"military-science-pack", 15}
				},
				time = 20
			},
			order = "c-g-a-b-c",
		},
		{
			type = "technology",
			name = "acombat-shotgun_tech",
			icon = "__akimbo-weapons__/graphics/technology/combatshotgun128.png",
			icon_size = 128,
			effects =
			{
				{
					type = "unlock-recipe",
					recipe = "acombat-shotgun"
				},		
			},
			prerequisites = {"military-4", "asmg_tech","ashotgun_tech"},
			unit =
			{
				count = 50,
				ingredients =
				{
					{"automation-science-pack", 5},
					{"logistic-science-pack", 5},
					{"military-science-pack", 15}
				},
				time = 20
			}, 
			order = "c-g-a-b-d",
		},
		{
		type = "technology",
		name = "minigun_tech",
		icon = "__akimbo-weapons__/graphics/technology/minigun128.png",
		icon_size = 128,
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "minigun"
		  }
		},
		prerequisites = {"military-4","acombat-shotgun_tech","artillery","space-science-pack"},
		unit =
		{
		  count = 750,
		  ingredients =
		  {
			{"automation-science-pack", 5},
			{"logistic-science-pack", 5},
			{"chemical-science-pack", 5},
			{"military-science-pack", 10},
			{"production-science-pack", 1},
			{"utility-science-pack", 1},
			{"space-science-pack", 2},			
		  },
		  time = 60
		},
		order = "c-g-a-b-e"
	  },
	}
)