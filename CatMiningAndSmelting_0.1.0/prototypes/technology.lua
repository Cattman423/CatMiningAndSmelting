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
    prerequisites = {"advanced-electronics"},
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
})