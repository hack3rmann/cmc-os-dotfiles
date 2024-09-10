return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
        highlight = { enable = true },
        indent = { enable = true },
    },
    config = function(spec, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
