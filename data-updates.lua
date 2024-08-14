for _, entity_types in pairs(require("data")) do
  for _, entity_type_name in ipairs(entity_types) do
    local entity_type = data.raw[entity_type_name]
    if entity_type then
      for _, entity in pairs(entity_type) do
        if entity.energy_source then
          entity.energy_source.usage_priority = settings.startup["electric-priority-" .. entity_type_name].value
        end
      end
    end
  end
end
