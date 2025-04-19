local sounds = require("__base__/prototypes/entity/sounds.lua")



local function make_gun(name, additive_slowdown)
	local gun = table.deepcopy(data.raw["gun"][name])
	local icons_size = 64
	local icons = nil
	if gun == nil then
		icons = {{icon="__akimbo-weapons__/graphics/icons/"..name.."32.png", icon_size=icons_size}}
	else
		local baseicon = gun.icon
		icons = {
			{
				icon = baseicon,
				icon_size = icons_size,
				scale = 0.9,
				shift = {-icons_size/8, -icons_size/8},
			},
			{
				icon = baseicon,
				icon_size = icons_size,
				scale = 0.9,
				shift = {icons_size/8, icons_size/8},
				--floating = true
			}
		}
	end

	gun.name = "bra-akimbo-"..name
	gun.icon = nil
	gun.icons = icons
	gun.attack_parameters.cooldown = gun.attack_parameters.cooldown * 0.5
	gun.attack_parameters.movement_slow_down_factor = gun.attack_parameters.movement_slow_down_factor + additive_slowdown
	return gun
end



local akimbo_pistol = make_gun("pistol", 0.05)
local akimbo_shotgun = make_gun("shotgun", 0.1)
local akimbo_combat_shotgun = make_gun("combat-shotgun", 0.1)
local akimbo_submachine_gun = make_gun("submachine-gun", 0.1)



-- Add the new items to the game
local minigun = table.deepcopy(data.raw["gun"]["tank-machine-gun"])
local minigun_sounds = minigun.attack_parameters.sound
minigun.name = "bra-akimbo-minigun"
minigun.icon = "__akimbo-weapons__/graphics/icons/minigun32.png"
minigun.icon_size = 32
minigun.attack_parameters.cooldown = 2
minigun.attack_parameters.movement_slow_down_factor = 1
minigun.attack_parameters.shell_particle = data.raw["gun"]["pistol"].attack_parameters.shell_particle
minigun.attack_parameters.damage_modifier = 1.5
minigun.attack_parameters.range = 22
minigun.hidden = false
minigun.order = "a[basic-clips]-c[minigun]"



if mods["space-age"] then
	local akimbo_railgun = make_gun("railgun", 0.3)
	minigun.attack_parameters.damage_modifier = 2
	data:extend({
		akimbo_railgun
	})
end


data:extend({
	akimbo_pistol,
	akimbo_shotgun,
	akimbo_combat_shotgun,
	akimbo_submachine_gun,
	minigun
  })