local M = {}
local unmap = function()end

M.general = {
  n = {
    ["<ESC>"] = {unmap},
    ["<leader>h"] = { "<cmd> noh <CR>", "no highlight" },

    ["<leader>w"] = { ":w <CR>", "save file" },
    ["<leader>q"] = { ":q <CR>", "quit file" },
    ["<C-c>"] = {unmap},

    ["<leader>wa"] = {unmap},
    ["<leader>wl"] = {unmap},
    ["<leader>wr"] = {unmap},
  },
}

M.tabufline = {
  n = {
    ["<TAB>"] = {unmap},
    ["<S-Tab>"] = {unmap},
    ["<Bslash>"] = {unmap},
    ["<leader>x"] = {unmap},
    ["<leader>c"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "goto next buffer",
    },

    -- cycle through buffers
    ["<S-l>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "goto next buffer",
    },

    -- cycle through buffers
    ["<S-h>"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "goto previous buffer",
    },
  }
}

M.nvimtree = {
  n = {
    ["<C-n>"] = {unmap},
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  }
}

M.whichkey = {
  n = {
    ["<leader>wK"] = {unmap},
    ["<leader>wk"] = {unmap}
  },
}

return M
