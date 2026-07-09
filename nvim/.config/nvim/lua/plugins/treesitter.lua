return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
        require('nvim-treesitter').install({ 'lua', 'cpp', 'vim', 'c', 'vimdoc', 'terraform', 'yaml', 'c_sharp' })

        vim.api.nvim_create_autocmd('FileType', {
            pattern = '*',
            callback = function() 
                pcall(vim.treesitter.start) 
            end,
        })

        vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        vim.wo.foldmethod = 'expr'
        vim.wo.foldenable = false -- Keeps folds open by default when you open a file
    end
}
