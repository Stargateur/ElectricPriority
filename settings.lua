
for priority, entity_types in pairs(require("data")) do
  for _, entity_type_name in ipairs(entity_types) do
    data:extend(
    {
      {
        type = "string-setting",
        name = "electric-priority-" .. entity_type_name,
        setting_type = "startup",
        default_value = priority,
        allowed_values = {"primary-input", "secondary-input", "tertiary"},
      },
    }
    )
  end
end
