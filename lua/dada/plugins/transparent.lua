return {
    "xiyaowong/transparent.nvim",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "NvimTreeNormal" })
        -- vimscript: let g:transparent_groups = extend(get(g:, 'transparent_groups', []), ["ExtraGroup"])
    end
}
