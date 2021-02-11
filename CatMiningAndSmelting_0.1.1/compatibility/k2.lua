if mods["Krastorio2"] then

data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].collision_box = {{-2.4,-2.4},{2.4,2.4}}
data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].selection_box = {{-2.5,-2.5},{2.5,2.5}}
data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].input_fluid_box =
		{
			production_type = "input-output",
			pipe_picture = assembler2pipepictures(),
			pipe_covers = pipecoverspictures(),
			base_area = 1,
			height = 2,
			base_level = -1,
			pipe_connections =
			{
				{ position = {-3, 0} },
				{ position = {3, 0} },
				{ position = {0, 3} }
			}
		}
data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].mining_speed = 4.5
data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].energy_usage = "675kW"
data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].resource_searching_radius = 5.49
data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].vector_to_place_result = {0, -2.85}
data.raw["mining-drill"]["kr-electric-mining-drill-mk2"].module_specification ={module_slots = 6}

data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].collision_box = {{-2.4,-2.4},{2.4,2.4}}
data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].selection_box = {{-2.5,-2.5},{2.5,2.5}}
data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].input_fluid_box =
		{
			production_type = "input-output",
			pipe_picture = assembler2pipepictures(),
			pipe_covers = pipecoverspictures(),
			base_area = 1,
			height = 2,
			base_level = -1,
			pipe_connections =
			{
				{ position = {-3, 0} },
				{ position = {3, 0} },
				{ position = {0, 3} }
			}
		}
data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].mining_speed = 5
data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].energy_usage = "725kW"
data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].resource_searching_radius = 5.49
data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].vector_to_place_result = {0, -2.85}
data.raw["mining-drill"]["kr-electric-mining-drill-mk3"].module_specification ={module_slots = 6}

data.raw["mining-drill"]["advanced-electric-mining-drill"].enabled = false

data:extend(
{
  {
	type = "technology",
    name = "advanced-mining",
    icon_size = 256, icon_mipmaps = 4,
    icon = "__base__/graphics/technology/mining-productivity.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "advanced-electric-mining-drill"
      }
    },
    prerequisites = {"advanced-electronics", "kr-electric-mining-drill"},
    unit =
    {
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1}
      },
      time = 30,
      count = 250
    },
    order = "e-p-b-c"
  },
  {
	type = "technology",
	name = "kr-electric-mining-drill-mk2",
	mod = "Krastorio2",
	icon = kr_technologies_icons_path .. "electric-mining-drill-mk2.png",
	icon_size = 256, 
	icon_mipmaps = 4,
	effects =
	{
		{
			type = "unlock-recipe",
			recipe = "kr-electric-mining-drill-mk2"
		}
	},
	prerequisites = {"advanced-mining", "engine"},
	unit =
	{
		count = 300,
		ingredients = 
		{
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1}
		},
		time = 45
		}	
  },
  {
	type = "recipe",
	name = "kr-electric-mining-drill-mk2",
	energy_required = 5,
	enabled = false,
	ingredients =
	{
		{"advanced-electric-mining-drill", 1},
		{"steel-gear-wheel", 5},
		{"rare-metals", 4}
	},
	result = "kr-electric-mining-drill-mk2"
  }
})

end