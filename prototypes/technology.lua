
if settings.startup["bra-akimbo-enable-military-research-require-akimbo"].value then
	data.raw['technology']['military'].prerequisites = {"bra-akimbo-pistol_tech"}
	data.raw['technology']['military-3'].prerequisites = {"bra-akimbo-submachine-gun_tech","bra-akimbo-shotgun_tech"}
end

local function make_tech(name, prerequisites, unit, order)
	local base_gun = table.deepcopy(data.raw["gun"][name])
	local icons_size = 64
	local icons = nil
	if base_gun == nil then
		icons = {{icon="__akimbo-weapons__/graphics/technology/"..name.."128.png", icon_size=128}}
	else
		local baseicon = base_gun.icon
		icons = {
			{
				icon = baseicon,
				icon_size = icons_size,
				scale = 0.9,
				shift = {-icons_size/8, -icons_size/8},
			},
			{
				icon = baseicon,
				icon_size = 64,
				scale = 0.9,
				shift = {icons_size/8, icons_size/8},
				--floating = true
			}
		}
	end
	return {
		type = "technology",
		name = "bra-akimbo-"..name.."_tech",
		icons = icons,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "bra-akimbo-"..name
			},
		},
		prerequisites = prerequisites,
		unit = unit,
		order = "c-g-a-b-.."..order,
	}
end

local pistol_tech = make_tech(
	"pistol",
	{"automation-science-pack"},
	{
		count = 5,
		ingredients = {{"automation-science-pack", 1}},
		time = 20
	},
	"a"
)
local smg_tech = make_tech(
	"submachine-gun",
	{"military-2", "bra-akimbo-pistol_tech"},
	{
		count = 25,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
		},
		time = 20
	},
	"b"
)

local shotgun_tech = make_tech(
	"shotgun",
	{"military-2", "bra-akimbo-pistol_tech"},
	{
		count = 25,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1}
		},
		time = 20
	},
	"c"
)

local combat_shotgun_tech = make_tech(
	"combat-shotgun",
	{"military-3", "bra-akimbo-submachine-gun_tech", "bra-akimbo-shotgun_tech"},
	{
		count = 150,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"military-science-pack", 1},
			{"chemical-science-pack", 1}
		},
		time = 20
	},
	"d"
)

local minigun_tech = make_tech(
	"minigun",
	{"military-4", "bra-akimbo-combat-shotgun_tech", "artillery", "space-science-pack"},
	{
		count = 1250,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"military-science-pack", 2},
			{"production-science-pack", 1},
			{"utility-science-pack", 1},
			{"space-science-pack", 1}
		},
	time = 60
	},
	"e"
)


if mods["space-age"] then
	minigun_tech.prerequisites = {"bra-akimbo-combat-shotgun_tech", "power-armor-mk2", "carbon-fiber"}
	minigun_tech.unit = {
		count = 750,
		ingredients = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"military-science-pack", 2},
			{"production-science-pack", 1},
			{"utility-science-pack", 1},
			{"space-science-pack", 1},
			{"agricultural-science-pack", 2}
		},
		time = 60
	}
	local railgun_tech = make_tech(
		"railgun",
		{"bra-akimbo-minigun_tech", "railgun"},
		{
			count = 4000,
			ingredients = {
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1},
				{"space-science-pack", 1},
				{"agricultural-science-pack", 1},
				{"electromagnetic-science-pack", 2},
				{"metallurgic-science-pack", 1}
			},
			time = 60
		},
		"f"
	)
	data:extend({railgun_tech})
end

data:extend
(
	{
		pistol_tech,
		smg_tech,
		shotgun_tech,
		combat_shotgun_tech,
		minigun_tech
	}

)
