local overrides = require "custom.plugins.overrides"

---@type NvPluginsTable
local plugins = {

  ["neovim/nvim-lspconfig"] = {
    dependencies = {
      -- format & linting
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.plugins.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  ["goolord/alpha-nvim"] = false,

  ["folke/which-key.nvim"] = {
    enabled = true,
  },

  ["lukas-reineke/indent-blankline.nvim"] = {
    override_options = overrides.blankline,
  },
}

return plugins
