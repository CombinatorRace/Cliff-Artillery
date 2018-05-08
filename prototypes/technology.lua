data:extend({
  {
    type = "technology",
    name = "cliff-artillery-shell",
    icon_size = 64,
    icon = "__thecomb-cliffArtillery__/graphics/entity/hr-shell.png",
    effects = {
      {
        type = "unlock-recipe",
        recipe = "cliff-artillery-shell"
      },
    },
    prerequisites = {"artillery", "cliff-explosives"},
    unit = {
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"military-science-pack", 1},
        {"high-tech-science-pack", 1},
      },
      time = 35,
      count = 2250,
    },
    order = "c-a"
  },
})
