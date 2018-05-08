data:extend({
  {
    type = "artillery-projectile",
    name = "cliff-artillery-projectile",
    flags = {"not-on-map"},
    acceleration = 0,
    direction_only = true,
    reveal_map = true,
    map_color = {r= .08, g= .25, b= .38},
    picture = {
      filename = "__thecomb-cliffArtillery__/graphics/entity/hr-shell.png",
      width = 64,
      height = 64,
      scale = 0.5,
    },
    shadow = {
      filename = "__thecomb-cliffArtillery__/graphics/entity/hr-shell-shadow.png",
      width = 64,
      height = 64,
      scale = 0.5,
    },
    chart_picture = {
      filename = "__thecomb-cliffArtillery__/graphics/entity/artillery-shoot-map-visualization.png",
      flags = { "icon" },
      frame_count = 1,
      width = 64,
      height = 64,
      priority = "high",
      scale = 0.25,
    },
    action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "nested-result",
            action = {
              type = "area",
              radius = 4.0,
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "damage",
                    damage = {amount = 500 , type = "physical"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 500 , type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "ground-explosion"
                  },
                  {
                    type = "create-entity",
                    entity_name = "small-scorchmark",
                    check_buildability = true
                  },
                  {
                    type = "destroy-cliffs",
                    radius = 7.7,
                    explosion = "explosion"
                  }
                }
              }
            }
          },
          {
            type = "create-trivial-smoke",
            smoke_name = "artillery-smoke",
            initial_height = 0,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.005,
            offset_deviation = {{-4, -4}, {4, 4}},
            max_radius = 3.5,
            repeat_count = 4 * 4 * 15
          },
          {
            type = "create-entity",
            entity_name = "big-artillery-explosion"
          },
          {
            type = "show-explosion-on-chart",
            scale = 8/32,
          }
        }
      }
    },
    final_action = {
      type = "direct",
      action_delivery = {
        type = "instant",
        target_effects = {
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    },
    animation = {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
    height_from_ground = 280 / 64
  },
})
