-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "gr", false } -- Disable old gr
      keys[#keys + 1] = {
        "glr",
        function()
          Snacks.picker.lsp_references()
        end,
        nowait = true,
        desc = "LSP: References",
      } -- New mapping matching original Snacks behavior
    end,
  },
}
