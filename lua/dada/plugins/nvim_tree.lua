local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true}
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- my mappings
  vim.keymap.set('n', 'h', api.node.navigate.parent_close, opts("Close Directory"))
  vim.keymap.set('n', 'l', api.node.open.edit, opts("Open Directory"))
  vim.keymap.set('n', '<C-d>', api.tree.change_root_to_node, opts("Change Root To Node"))
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
      on_attach = my_on_attach,
      view = {
        centralize_selection = true,
        number = true,
        relativenumber = true
      },
      update_focused_file = {
        enable = true,
        update_root = true
      }
    }
  end,
}
