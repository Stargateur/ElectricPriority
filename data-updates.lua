local string = require('__stdlib__/stdlib/utils/string')

for priority, config in pairs(require("data")) do
  for entity_type_name in string.gmatch(settings.startup["electric-priority-" .. priority].value, "([^,]+)") do
    string.trim(entity_type_name)
    local entity_type = data.raw[entity_type_name]
    if entity_type then
      for _, entity in pairs(entity_type) do
        if entity.energy_source then
          log("Setting usage_priority of " .. entity.name .. " to " .. priority)
          entity.energy_source.usage_priority = config.usage_priority
          if config.input_flow_limit then
            log("Setting input_flow_limit of " .. entity.name .. " to " .. config.input_flow_limit)
            entity.energy_source.input_flow_limit = config.input_flow_limit
          end
          if config.output_flow_limit then
            log("Setting output_flow_limit of " .. entity.name .. " to " .. config.output_flow_limit)
            entity.energy_source.output_flow_limit = config.output_flow_limit
          end
        end
      end
    end
  end
end
