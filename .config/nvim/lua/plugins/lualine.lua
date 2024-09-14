return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        options = {
            theme = "auto",
        },
        sections = {
            lualine_c = {
                function()
                    return require("lsp-progress").progress()
                end
            },
            lualine_x = { require("action-hints").statusline },
        },
        extensions = { "neo-tree", "lazy" },
    },
    config = function(spec, opts)
        local lualine = require "lualine"
        lualine.setup(opts)

        -- listen lsp-progress event and refresh lualine
        vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
        vim.api.nvim_create_autocmd("User", {
            group = "lualine_augroup",
            pattern = "LspProgressStatusUpdated",
            callback = lualine.refresh,
        })
    end,
}
