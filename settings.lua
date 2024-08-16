for priority, entity_types in pairs(require("data")) do
  data:extend(
    {
      {
        type = "string-setting",
        name = "electric-priority-" .. priority,
        setting_type = "startup",
        default_value = table.concat(entity_types, ","),
        allow_blank = true,
      },
    }
  )
end
