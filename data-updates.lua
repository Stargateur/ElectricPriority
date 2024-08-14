local pair_priority_entity_types = {
  ["primary-input"] = {
    data.raw["mining-drill"],
    data.raw["inserter"],
    data.raw["arithmetic-combinator"],
    data.raw["decider-combinator"],
    data.raw["programmable-speaker"],
    data.raw["loader"],
    data.raw["loader-1x1"],
  },
  ["secondary-input"] = {
    data.raw["electric-turret"],
  },
  ["tertiary"] = {
    data.raw["radar"],
    data.raw["roboport"],
    data.raw["beacon"],
  },
}

for priority, entity_types in pairs(pair_priority_entity_types) do
  for _, entities in ipairs(entity_types) do
    for _, entity in pairs(entities) do
      if entity.energy_source then
        entity.energy_source.usage_priority = priority
      end
    end
  end
end
