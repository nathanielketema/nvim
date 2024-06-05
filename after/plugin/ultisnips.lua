-- vim.g.UltiSnipsSnippetDirectories = {"UltiSnips"}
vim.g.UltiSnipsEditSplit = "vertical"

-- mappings
vim.keymap.set("i", "<C-j>", vim.cmd.UltiSnipsJumpForwardTrigger)
vim.keymap.set("i", "<C-k>", vim.cmd.UltiSnipsJumpBackwardTrigger)


