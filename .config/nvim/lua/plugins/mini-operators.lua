return {
  "nvim-mini/mini.nvim",
  version = false, -- Use latest (or pin to a tag like '*')
  config = function()
    local operators = require("mini.operators")
    operators.setup({
      replace = {
        prefix = "gr", -- Custom prefix (e.g., <leader>graf for around function)
        reindent_linewise = true, -- Optional: Reindent pasted text (default)
      },
      exchange = nil, -- Disable unused exchange operator
    })
  end,
}
