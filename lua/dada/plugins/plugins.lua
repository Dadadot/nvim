return {
    {
        -- NOTE: First, some plugins that don't require any configuration

        -- Git related plugins
        'tpope/vim-fugitive',
        'tpope/vim-rhubarb',

        -- Detect tabstop and shiftwidth automatically
        'tpope/vim-sleuth',
        'ambv/black',

        require("dada.plugins.transparent"),
        require("dada.plugins.bufferline"),
        require("dada.plugins.lsp"),
        require("dada.plugins.autocompletion"),
        require("dada.plugins.gitsigns"),
        require("dada.plugins.nvim_tree"),
        require("dada.plugins.autopairs"),
        { 'folke/which-key.nvim',  opts = {} },

        {
            -- Theme inspired by Atom
            'navarasu/onedark.nvim',
            priority = 1000,
            config = function()
                vim.cmd.colorscheme 'onedark'
            end,
        },

        {
            -- Set lualine as statusline
            'nvim-lualine/lualine.nvim',
            -- See `:help lualine.txt`
            opts = {
                options = {
                    icons_enabled = false,
                    theme = 'onedark',
                    component_separators = '|',
                    section_separators = '',
                },
            },
        },

        {
            -- Add indentation guides even on blank lines
            'lukas-reineke/indent-blankline.nvim',
            -- Enable `lukas-reineke/indent-blankline.nvim`
            -- See `:help indent_blankline.txt`
            main = "ibl",
            opts = {},
        },

        -- "gc" to comment visual regions/lines
        { 'numToStr/Comment.nvim', opts = {} },

        -- Fuzzy Finder (files, lsp, etc)
        {
            'nvim-telescope/telescope.nvim',
            branch = '0.1.x',
            dependencies = {
                'nvim-lua/plenary.nvim',
                -- Fuzzy Finder Algorithm which requires local dependencies to be built.
                -- Only load if `make` is available. Make sure you have the system
                -- requirements installed.
                {
                    'nvim-telescope/telescope-fzf-native.nvim',
                    -- NOTE: If you are having trouble with this installation,
                    --       refer to the README for telescope-fzf-native for more instructions.
                    build = 'make',
                    cond = function()
                        return vim.fn.executable 'make' == 1
                    end,
                },
            },
        },

        {
            -- Highlight, edit, and navigate code
            'nvim-treesitter/nvim-treesitter',
            dependencies = {
                'nvim-treesitter/nvim-treesitter-textobjects',
            },
            build = ':TSUpdate',
        },

        -- NOTE: Next Step on Your Neovim Journey: Add/Configure additional "plugins" for kickstart
        --       These are some example plugins that I've included in the kickstart repository.
        --       Uncomment any of the lines below to enable them.
        -- require 'kickstart.plugins.autoformat',
        -- require 'kickstart.plugins.debug',

        -- NOTE: The import below can automatically add your own plugins, configuration, etc from `lua/custom/plugins/*.lua`
        --    You can use this folder to prevent any conflicts with this init.lua if you're interested in keeping
        --    up-to-date with whatever is in the kickstart repo.
        --    Uncomment the following line and add your plugins to `lua/custom/plugins/*.lua` to get going.
        --
        --    For additional information see: https://github.com/folke/lazy.nvim#-structuring-your-plugins
        -- { import = 'custom.plugins' },
    }, {}
}
