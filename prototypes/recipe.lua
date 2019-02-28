data:extend(
{
	{
		type = "recipe",
		name = "apistol",
		enabled = "false",
		energy_required = 10,	
		ingredients =
		{
		  {"pistol", 2},
		  {"iron-gear-wheel", 1}
		},
		result = "apistol"
	},
	{
		type = "recipe",
		name = "asmg",
		enabled = "false",
		energy_required = 10,	
		ingredients =
		{
		  {"submachine-gun", 2},
		  {"iron-gear-wheel", 1},
		  {"electronic-circuit", 1} 
		},
		result = "asmg"
	},
	{
		type = "recipe",
		name = "ashotgun",
		enabled = "false",
		energy_required = 10,	
		ingredients =
		{
		  {"shotgun", 2},
		  {"iron-gear-wheel", 1},
		  {"electronic-circuit", 1} 
		},
		result = "ashotgun"
	},
	{
		type = "recipe",
		name = "acombat-shotgun",
		enabled = "false",
		energy_required = 10,	
		ingredients =
		{
		  {"combat-shotgun", 2},
		  {"iron-gear-wheel", 1},
		  {"advanced-circuit", 1}
		},
		result = "acombat-shotgun"
	},
	{
		type = "recipe",
		name = "minigun",
		enabled = "false",
		energy_required = 15,
		ingredients =
		{
		  {"iron-gear-wheel", 20},
		  {"copper-plate", 10},
		  {"steel-plate", 10},
		  {"processing-unit", 10},
		  {"battery", 5},
		  {"asmg", 2}
		},
		result = "minigun"
  }
}	
)

data.raw.recipe["submachine-gun"]["expensive"].ingredients =
{
	{"apistol", 1 },
	{"iron-gear-wheel",10 },
	{"iron-plate", 20},
	{"copper-plate", 10}
}
data.raw.recipe["submachine-gun"]["normal"].ingredients =
{
	{"apistol", 1 },
	{"iron-gear-wheel",5 }
}
data.raw.recipe["combat-shotgun"].ingredients =
{
	{"ashotgun",1 },
	{"steel-plate",10 }
}