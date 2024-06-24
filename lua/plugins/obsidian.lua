return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "/Users/fabio/Documents/50-59 Tech/53 Program Data/53.01 Obsidian Vault/FabiosMind",
      },
      {
        name = "no-vault",
        path = function()
          return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
        end,
        overrides = {
          notes_subdir = vim.NIL, -- have to use 'vim.NIL' instead of 'nil'
          new_notes_location = "current_dir",
          templates = {
            folder = "/Users/fabio/Documents/50-59 Tech/53 Program Data/53.01 Obsidian Vault/FabiosMind/🗃Archiv/Templates",
          },
          daily_notes = {
            -- Optional, if you keep daily notes in a separate directory.
            folder = "/Users/fabio/Documents/50-59 Tech/53 Program Data/53.01 Obsidian Vault/FabiosMind/🔁Tagebuch",
          },
          disable_frontmatter = true,
        },
      },
    },
    templates = {
      folder = "/Users/fabio/Documents/50-59 Tech/53 Program Data/53.01 Obsidian Vault/FabiosMind/🗃Archiv/Templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
      substitutions = {
        yesterday = function()
          return os.date("%Y-%m-%d", os.time() - 86400)
        end,
        tomrrow = function()
          return os.date("%Y-%m-%d", os.time() + 86400)
        end,
      },
    },
    daily_notes = {
      -- Optional, if you keep daily notes in a separate directory.
      folder = "🔁Tagebuch",
      -- Optional, if you want to change the date format for the ID of daily notes.
      date_format = "%Y/%m-%B/%Y-%m-%d-%A",
      -- Optional, if you want to change the date format of the default alias of daily notes.
      alias_format = "%Y/%m-%B/%Y-%m-%d-%A",
      -- Optional, default tags to add to each new daily note created.
      default_tags = { "daily-notes" },
      -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
      template = "Daily Note Template.md",
    },
    mappings = {},
  },
}
