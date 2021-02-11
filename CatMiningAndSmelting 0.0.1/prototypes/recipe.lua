data:extend({
 {
  type = "recipe",
  name = "burner-mining-drill",
  normal = 
  {
    energy_required = 2,
    ingredients = 
	{
      {"stone-brick", 8},
      {"iron-gear-wheel", 4}
    },
	result = "burner-mining-drill"
  },
  expensive = 
  {
    energy_required = 2,
    ingredients =
	{
      {"stone-brick", 16},
      {"iron-gear-wheel", 8}
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
      {"electronic-circuit", 5},
      {"iron-plate", 10},
      {"iron-gear-wheel", 5}
    },
	result = "electric-mining-drill"
  },
  expensive = {
    energy_required = 2,
    ingredients = 
	{
	  {"burner-mining-drill", 2},
      {"electronic-circuit", 10},
      {"iron-plate", 20},
      {"iron-gear-wheel", 10}
    },
	result = "electric-mining-drill"
  }
 }
})