description = 
[[
Configurable lamp post from Hamlet. Original by CrazyCat and mentalistpro.

-V1.0-
Updated code for latest API changes. Added config to toggle the auras of the lamps on or off. Changed the "Hard" recipe to use 5 gears instead of a red gem.
]]

name                        = "Colored Lampposts - Updated"
author                      = "Im So HM02 (Original by Neckpunch!)"
version                     = "1.0"
forumthread                 = ""
icon                        = "modicon.tex"
icon_atlas                  = "modicon.xml"
api_version                 = 10
all_clients_require_mod     = true
dst_compatible              = true
client_only_mod             = false

--Configs

local Options 		= {{description = "Enabled", data = true}, {description = "Disabled", data = false}}

local LightRadius 	= {{description = "1", data = 1}, {description = "2", data = 2}, {description = "3", data = 3},
						{description = "4", data = 4}, {description = "5", data = 5}, {description = "6", data = 6},
						{description = "7", data = 7}, {description = "8", data = 8}, {description = "9", data = 9}, 
						{description = "10", data = 10}}

local OnOff			= {{description = "On", data = 1}, {description = "Off", data = 0}}


local Empty = {{description = "", data = 0}}

local function Title(title) --Allows use of an empty label as a header
return {name=title, options=Empty, default=0,}
end

local SEPARATOR = Title("")

configuration_options =
{
	Title("Settings"),
	{
		name = "radius", 
		label = "Light Radius",
		options = LightRadius,
		default = 5
	},
	
	{
		name = "ison", 
		label = "Light always on?",
		options = OnOff,
		default = 0
	},
	
	{
		name = "lamprecipe", 
		label = "Recipe Difficulty",
		options = {
					  {description = "Easy", data = 0},
					  {description = "Normal", data = 1},
					  {description = "Hard", data = 2},
					  --{description = "Original", data = 3},
				  },
		default = 1
	},
	
	{
		name = "icon", 
		label = "Minimap Icon",
		options = OnOff,
		default = 1
	},

	{
		name = "lightauras",
		label = "Light Aura",
		options = OnOff,
		default = 0
	}
}
