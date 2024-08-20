return {
  ["primary-input"] = {
    ["usage_priority"] = "primary-input",
    ["output_flow_limit"] = "0W",
    ["default"] = {
      "mining-drill",
      "inserter",
      "arithmetic-combinator",
      "decider-combinator",
      "programmable-speaker",
      "loader",
      "loader-1x1",
    },
  },
  ["secondary-input"] = {
    ["usage_priority"] = "secondary-input",
    ["output_flow_limit"] = "0W",
    ["default"] = {
      "electric-turret",
    },
  },
  ["tertiary-input"] = {
    ["usage_priority"] = "tertiary",
    ["output_flow_limit"] = "0W",
  },
  ["primary-output"] = {
    ["usage_priority"] = "primary-output",
    ["input_flow_limit"] = "0W",
  },
  ["secondary-output"] = {
    ["usage_priority"] = "secondary-output",
    ["input_flow_limit"] = "0W",
  },
  ["tertiary-output"] = {
    ["usage_priority"] = "tertiary",
    ["input_flow_limit"] = "0W",
    ["default"] = {
      "generator",
    },
  },
  ["primary"] = {
    ["usage_priority"] = "primary-output",
  },
  ["secondary"] = {
    ["usage_priority"] = "secondary-output",
    ["default"] = {
      "accumulator",
    }
  },
  ["tertiary"] = {
    ["usage_priority"] = "tertiary",
  },
}
