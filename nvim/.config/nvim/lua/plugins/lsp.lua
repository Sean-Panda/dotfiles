return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable("clangd")
        vim.lsp.enable("lua_ls")
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local opts = { buffer = args.buf }
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
                vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
                vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
            end,
        })
    end
}

