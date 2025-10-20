return {
  {
    "Mofiqul/dracula.nvim",
    lazy = false, -- Load during startup
    priority = 1000, -- Load before other plugins
    config = function()
      require("dracula").setup({
        -- Use 'soft' for a slightly less contrasty look
        colors = { theme = "dracula-soft" }, -- Optional: use soft variant
        transparent_bg = false, -- Set to true for transparent background
      })
      vim.cmd("colorscheme dracula")
    end,
  },
}
