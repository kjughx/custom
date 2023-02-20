local M = {}
local unmap = function() end

M.general = {
  i = {
    -- go to  beginning and end
    ["<C-b>"] = { unmap },
    ["<C-e>"] = { unmap },
  },
  n = {
    ["<ESC>"] = { unmap },
    ["<leader>h"] = { "<cmd> noh <CR>", "no highlight" },
    ["<leader>v"] = { unmap },

    ["<leader>w"] = { ":w <CR>", "save file" },
    ["<leader>q"] = { ":q <CR>", "quit file" },
    ["<C-c>"] = { unmap },

    ["<leader>wa"] = { unmap },
    ["<leader>wl"] = { unmap },
    ["<leader>wr"] = { unmap },
  },

  v = {
    ["<"] = { "<gv" },
    [">"] = { ">gv" },
  },
}

M.tabufline = {
  n = {
    ["<TAB>"] = { unmap },
    ["<S-Tab>"] = { unmap },
    ["<Bslash>"] = { unmap },
    ["<leader>x"] = { unmap },
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
  },
}

M.nvimtree = {
  n = {
    ["<C-n>"] = { unmap },
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.whichkey = {
  n = {
    ["<leader>wK"] = { unmap },
    ["<leader>wk"] = { unmap },
  },
}

M.gitsigns = {
  -- Actions
  n = {
    ["<leader>rh"] = { unmap },
    ["<leader>gr"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },

    ["<leader>gs"] = {
      function()
        require("gitsigns").stage_hunk()
      end,
      "Stage hunk",
    },

    ["<leader>ph"] = { unmap },
    ["<leader>gp"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview hunk",
    },
  },
}

M.lspconfig = {
  n = {
    ["<leader>fm"] = { unmap },
    ["<leader>lf"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "lsp formatting",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>tk"] = { unmap },
  },
}

return M
