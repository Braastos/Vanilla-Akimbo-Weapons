
local function make_recipe(name, energy_required, ingredients)
	return {
		type = "recipe",
		name = "bra-akimbo-"..name,
		enabled = false,
		energy_required = energy_required,
		ingredients = ingredients,
		results = {{type = "item", name= "bra-akimbo-"..name, amount = 1}}
	}
end

local function ingedient_builder(name, amount)
	return {type = "item", name = name, amount = amount}
end

local akimbo_pistol = make_recipe(
	"pistol",
	10,
	{
		ingedient_builder("iron-gear-wheel", 1),
		ingedient_builder("copper-plate", 10),
		ingedient_builder("iron-plate", 10)
	}
)
local akimbo_submachine_gun = make_recipe(
	"submachine-gun",
	10,
	{
		ingedient_builder("submachine-gun", 2),
		ingedient_builder("iron-gear-wheel", 1),
		ingedient_builder("electronic-circuit", 1)
	}
)
local akimbo_shotgun = make_recipe(
	"shotgun",
	10,
	{
		ingedient_builder("shotgun", 2),
		ingedient_builder("iron-gear-wheel", 1),
		ingedient_builder("electronic-circuit", 1)
	}
)
local akimbo_combat_shotgun = make_recipe(
	"combat-shotgun",
	10,
	{
		ingedient_builder("combat-shotgun", 2),
		ingedient_builder("iron-gear-wheel", 1),
		ingedient_builder("advanced-circuit", 1)
	}
)
local akimbo_minigun = make_recipe(
	"minigun",
	15,
	{
		ingedient_builder("iron-gear-wheel", 20),
		ingedient_builder("copper-plate", 10),
		ingedient_builder("steel-plate", 10),
		ingedient_builder("processing-unit", 10),
		ingedient_builder("battery", 5),
		ingedient_builder("bra-akimbo-submachine-gun", 2)
	}
)

if mods["space-age"] then
	local akimbo_railgun = make_recipe(
		"railgun",
		15,
		{
			ingedient_builder("railgun", 2),
			ingedient_builder("quantum-processor", 10),
			ingedient_builder("supercapacitor", 5),
			ingedient_builder("superconductor", 2),}
	)
	akimbo_minigun.ingredients = {
		ingedient_builder("iron-gear-wheel", 20),
		ingedient_builder("copper-plate", 10),
		ingedient_builder("processing-unit", 10),
		ingedient_builder("battery", 5),
		ingedient_builder("bra-akimbo-submachine-gun", 2),
		ingedient_builder("carbon-fiber", 20)
	}
	data:extend({akimbo_railgun})
end


if settings.startup["bra-akimbo-enable-upgrading-recipes"].value then
	data.raw.recipe["submachine-gun"].ingredients =
	{
		ingedient_builder("bra-akimbo-pistol", 1 ),
		ingedient_builder("iron-gear-wheel",5 )
	}
	data.raw.recipe["combat-shotgun"].ingredients =
	{
		ingedient_builder("bra-akimbo-shotgun",1 ),
		ingedient_builder("steel-plate",10 )
	}
	local pistol = {
		type = "recipe",
		name = "pistol",
		enabled = true,
		energy_required = 10,
		ingredients = {
			ingedient_builder("copper-plate", 5),
			ingedient_builder("iron-plate", 5)
		},
		results = {{type = "item", name= "pistol", amount = 1}}
	}
	akimbo_pistol.ingredients = {
		ingedient_builder("pistol", 2),
		ingedient_builder("iron-gear-wheel", 1)
	}
	data:extend({pistol})
end

data:extend(
{
	akimbo_pistol,
	akimbo_submachine_gun,
	akimbo_shotgun,
	akimbo_combat_shotgun,
	akimbo_minigun
}
)