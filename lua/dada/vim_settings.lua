-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!
--
-- vim.o.autochdir = true
-- Define the command
vim.api.nvim_create_user_command('Gdformat', function()
    -- Get the current buffer's file path
    local filepath = vim.fn.expand('%:p')

    -- Save the current buffer to ensure the file is up-to-date
    vim.cmd('write')

    -- Run gdformat on the file
    local command = 'gdformat ' .. vim.fn.shellescape(filepath)
    vim.fn.system(command)

    -- Reload the buffer to reflect the changes
    vim.cmd('edit!')
end, {})


-- Set highlight on search
vim.o.hlsearch = false


-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- enable relative numbers
vim.o.relativenumber = true

-- some options the nvim-tree suggest
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- stuff
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.scrolloff = 8
