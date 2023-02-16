---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "chadracula",
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
