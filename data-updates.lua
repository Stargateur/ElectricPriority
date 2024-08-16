local string = require('__stdlib__/stdlib/utils/string')

for priority, _ in pairs(require("data")) do
  for entity_type_name in string.gmatch(settings.startup["electric-priority-" .. priority].value, "([^,]+)") do
    string.trim(entity_type_name)
    local entity_type = data.raw[entity_type_name]
    if entity_type then
      for _, entity in pairs(entity_type) do
        if entity.energy_source then
          log("Setting usage_priority of " .. entity.name .. " to " .. priority)
          entity.energy_source.usage_priority = priority
        end
      end
    end
  end
end
