local overrides = require "custom.configs.overrides"
local plugins = {

-- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  { "goolord/alpha-nvim", enbled = false },

  { "folke/which-key.nvim", enabled = true },

  { "lukas-reineke/indent-blankline.nvim", override_options = overrides.blankline },

  { "nvim-tree/nvim-tree.lua", enabled = false },
}

return plugins
