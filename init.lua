-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lspconfig").typst_lsp.setup({
  settings = {
    exportPdf = "onType", -- Choose onType, onSave or never.
  },
})

local actions = require("telescope.actions")
local telescope = require("telescope")
telescope.setup({
  defaults = {
    mappings = {
      n = {
        ["l"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
      },
    },
    initial_mode = "normal",
  },
})
