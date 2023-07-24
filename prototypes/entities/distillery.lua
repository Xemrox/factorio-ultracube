local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

data:extend({
  {
    type = "assembling-machine",
    name = "cube-distillery",
    icon = "__base__/graphics/icons/oil-refinery.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 0.5, result = "cube-distillery"},
    max_health = 400,
    corpse = "oil-refinery-remnants",
    dying_explosion = "oil-refinery-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    damaged_trigger_effect = hit_effects.entity(),
    drawing_box = {{-2.5, -2.8}, {2.5, 2.5}},
    module_specification = {module_slots = 0},
    scale_entity_info_icon = true,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"cube-distillery"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 6
    },
    energy_usage = "400kW",
    vehicle_impact_sound = sounds.generic_impact,
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    animation = data.raw["assembling-machine"]["oil-refinery"].animation,
    working_visualisations = data.raw["assembling-machine"]["oil-refinery"].working_visualisations,
    working_sound = data.raw["assembling-machine"]["oil-refinery"].working_sound,
    fluid_boxes = data.raw["assembling-machine"]["oil-refinery"].fluid_boxes,
    water_reflection = data.raw["assembling-machine"]["oil-refinery"].water_reflection,
  }
})