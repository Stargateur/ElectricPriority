for priority, config in pairs(require("data")) do
  local default_value
  if config.default then
    default_value = table.concat(config.default, ",")
  else
    default_value = ""
  end
  data:extend(
    {
      {
        type = "string-setting",
        name = "electric-priority-" .. priority,
        setting_type = "startup",
        default_value = default_value,
        allow_blank = true,
      },
    }
  )
end
