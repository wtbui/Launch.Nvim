local M = {
  "HiPhish/rainbow-delimiters.nvim",
  event = "VeryLazy",
}

function M.config()
  local rainbow_delimiters = require "rainbow-delimiters"

  require("rainbow-delimiters.setup").setup {
    strategy = {
      [""] = rainbow_delimiters.strategy["global"],
      vim = rainbow_delimiters.strategy["local"],
      cpp = rainbow_delimiters.strategy["local"],
      c = rainbow_delimiters.strategy["local"],
    },
    query = {
      [""] = "rainbow-delimiters",
      lua = "rainbow-blocks",
      cpp = "rainbow-delimiters",
      c = "rainbow-delimiters",
    },
    highlight = {
      "RainbowDelimiterRed",
      "RainbowDelimiterYellow",
      "RainbowDelimiterBlue",
      "RainbowDelimiterOrange",
      "RainbowDelimiterGreen",
      "RainbowDelimiterViolet",
      "RainbowDelimiterCyan",
    },
  }
end

return M
