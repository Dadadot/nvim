-- [[ Basic Keymaps ]]


-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Ctrl + direciton to decrease/increase the width of the current window
vim.api.nvim_set_keymap('n', '<C-h>', ':vertical resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':vertical resize +2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':resize -2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':resize +2<CR>', { noremap = true, silent = true })

-- costum keymaps
vim.api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = "Toggle NvimTree"})

-- bufferline
vim.keymap.set( 'n', '<S-l>', ':BufferLineCycleNext<CR>', { silent = true })
vim.keymap.set( 'n', '<S-h>', ':BufferLineCyclePrev<CR>', { silent = true })

vim.api.nvim_set_keymap('n', '<leader>ff', ':Format<CR>', { noremap = true, silent = true, desc = "Format File"})
vim.api.nvim_set_keymap('n', '<leader>fl', ':<C-U>s/\\s\\+/ /g<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>fs', ':s/\\s\\+/ /g<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>c', ':lua DadaFoos.buf_kill()<CR>', { noremap = true, silent = true, desc = "Close Buffer"})
