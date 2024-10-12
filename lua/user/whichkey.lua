local M = {
  "folke/which-key.nvim",
}

function M.config()
  local mappings = {
    { "<leader>;", "<leader>;", desc = "<cmd>tabnew | terminal<CR>" },
    { "<leader>T", group = "Treesitter" },
    { "<leader>a", group = "Tab" },
    { "<leader>aN", "<cmd>tabnew %<cr>", desc = "New Tab" },
    { "<leader>ah", "<cmd>-tabmove<cr>", desc = "Move Left" },
    { "<leader>al", "<cmd>+tabmove<cr>", desc = "Move Right" },
    { "<leader>an", "<cmd>$tabnew<cr>", desc = "New Empty Tab" },
    { "<leader>ao", "<cmd>tabonly<cr>", desc = "Only" },
    { "<leader>b", group = "Buffers" },
    { "<leader>d", group = "Debug" },
    { "<leader>f", group = "Find" },
    { "<leader>g", group = "Git" },
    { "<leader>h", "<cmd>nohlsearch<CR>", desc = "NOHL" },
    { "<leader>l", group = "LSP" },
    { "<leader>p", group = "Plugins" },
    { "<leader>q", "<cmd>confirm q<CR>", desc = "Quit" },
    { "<leader>t", group = "Test" },
    { "<leader>v", "<cmd>vsplit<CR>", desc = "Split" },
  }

  local which_key = require "which-key"
  which_key.setup {
    plugins = {
      marks = true,
      registers = true,
      spelling = {
        enabled = true,
        suggestions = 20,
      },
      presets = {
        operators = false,
        motions = false,
        text_objects = false,
        windows = false,
        nav = false,
        z = false,
        g = false,
      },
    },
    win = {
      no_overlap = true,
      border = "rounded",
      title_pos = "center",
      padding = { 2, 2 },
      col = 0.5,
    },
    show_help = false,
    show_keys = false,
    disable = {
      buftypes = {},
      filetypes = { "TelescopePrompt" },
    },
  }

  local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
  }

  -- which_key.register(mappings, opts)
  which_key.add(mappings, opts)
end

return M
