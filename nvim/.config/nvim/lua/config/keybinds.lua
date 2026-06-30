vim.g.mapleader = " "

vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

vim.keymap.set("n", "<leader>cs", function()
    vim.cmd("edit " .. vim.fn.stdpath("config") .. "/cheatsheet.md")
    vim.cmd("MarkdownPreview")
end, { desc = "Open cheatsheet in browser" })
