---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "everforest_green",
  theme_toggle = { "everforest_green", "everforest" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,

  tabufline = {
    overriden_modules = function(modules)
      table.remove(modules, 1)
    end,
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
