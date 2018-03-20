data:extend(
	{
	  {
		type = "gun",
		name = "apistol",
		icon = "__akimbo-weapons__/graphics/icons/pistol32.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "gun",
		order = "a[basic-clips]-a[pistol]",
		attack_parameters =
		{
		  type = "projectile",
		  ammo_category = "bullet",
		  cooldown = 7.5,
		  movement_slow_down_factor = 0.2,
		  shell_particle =
		  {
			name = "shell-particle",
			direction_deviation = 0.1,
			speed = 0.1,
			speed_deviation = 0.03,
			center = {0, 0.1},
			creation_distance = -0.5,
			starting_frame_speed = 0.4,
			starting_frame_speed_deviation = 0.1
		  },
		  projectile_creation_distance = 1.125,
		  range = 15,
		  sound = make_light_gunshot_sounds(),
		},
		stack_size = 5
	  },
	  {
		type = "gun",
		name = "ashotgun",
		icon = "__akimbo-weapons__/graphics/icons/shotgun32.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "gun",
		order = "b[shotgun]-a[basic]",
		attack_parameters =
		{
		  type = "projectile",
		  ammo_category = "shotgun-shell",
		  cooldown = 30,
		  movement_slow_down_factor = 0.7,
		  projectile_creation_distance = 1.125,
		  range = 20,
		  min_range = 1,
		   
		},
		stack_size = 5
	  },
	  {
		type = "gun",
		name = "acombat-shotgun",
		icon = "__akimbo-weapons__/graphics/icons/combatshotgun32.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "gun",
		order = "b[shotgun]-a[combat]",
		attack_parameters =
		{
		  type = "projectile",
		  ammo_category = "shotgun-shell",
		  cooldown = 15,
		  movement_slow_down_factor = 0.6,
		  damage_modifier = 1.2,
		  projectile_creation_distance = 1.125,
		  range = 20,
		  sound =
		  {
			{
			  filename = "__base__/sound/pump-shotgun.ogg",
			  volume = 0.5
			}
		  }
		},
		stack_size = 5
	  },
	  {
		type = "gun",
		name = "asmg",
		icon = "__akimbo-weapons__/graphics/icons/submachinegun32.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "gun",
		order = "a[basic-clips]-b[submachine-gun]",
		attack_parameters =
		{
		  type = "projectile",
		  ammo_category = "bullet",
		  cooldown = 3,
		  movement_slow_down_factor = 0.7,
		  shell_particle =
		  {
			name = "shell-particle",
			direction_deviation = 0.1,
			speed = 0.1,
			speed_deviation = 0.03,
			center = {0, 0.1},
			creation_distance = -0.5,
			starting_frame_speed = 0.4,
			starting_frame_speed_deviation = 0.1
		  },
		  projectile_creation_distance = 1.125,
		  range = 18,
		  sound = make_light_gunshot_sounds(),
		},
		stack_size = 5
	  },
	  {
		type = "gun",
		name = "minigun",
		icon = "__akimbo-weapons__/graphics/icons/minigun32.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "gun",
		order = "a[basic-clips]-c[minigun]",
		attack_parameters =
		{
		  type = "projectile",
		  ammo_category = "bullet",
		  cooldown = 1,
		  movement_slow_down_factor = 1,
		  shell_particle =
		  {
			name = "shell-particle",
			direction_deviation = 0.1,
			speed = 0.1,
			speed_deviation = 0.03,
			center = {0, 0.1},
			creation_distance = -0.5,
			starting_frame_speed = 0.4,
			starting_frame_speed_deviation = 0.1
		  },
		  projectile_creation_distance = 1.125,
		  range = 20,
		  sound = make_light_gunshot_sounds(),
		},
		stack_size = 1
	  }
	}
)
 