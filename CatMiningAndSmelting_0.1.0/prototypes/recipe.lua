data:extend({
 {
  type = "recipe",
  name = "burner-mining-drill",
  normal = 
  {
    energy_required = 2,
    ingredients = 
	{
      {"stone-brick", 15},
      {"iron-gear-wheel", 10}
    },
	result = "burner-mining-drill"
  },
  expensive = 
  {
    energy_required = 2,
    ingredients =
	{
      {"stone-brick", 30},
      {"iron-gear-wheel", 20}
    },
	result = "burner-mining-drill"
  }
 },
  
 {
  type = "recipe",
  name = "electric-mining-drill",
  normal = 
  {
    energy_required = 2,
    ingredients = 
	{
	  {"burner-mining-drill", 1},
      {"electronic-circuit", 10},
      {"iron-plate", 25},
      {"iron-gear-wheel", 15}
    },
	result = "electric-mining-drill"
  },
  expensive = {
    energy_required = 2,
    ingredients = 
	{
	  {"burner-mining-drill", 2},
      {"electronic-circuit", 20},
      {"iron-plate", 50},
      {"iron-gear-wheel", 30}
    },
	result = "electric-mining-drill"
  }
 },
 
 {
  type = "recipe",
  name = "advanced-electric-mining-drill",
  enabled = false,
  normal = 
  {
    energy_required = 2,
    ingredients = 
	{
	  {"electric-mining-drill", 1},
      {"advanced-circuit", 15},
      {"steel-plate", 30},
      {"iron-gear-wheel", 40}
    },
	result = "advanced-electric-mining-drill"
  },
  expensive = {
    energy_required = 2,
    ingredients = 
	{
	  {"burner-mining-drill", 2},
      {"advanced-circuit", 30},
      {"steel-plate", 60},
      {"iron-gear-wheel", 100}
    },
	result = "advanced-electric-mining-drill"
  }
 }
})