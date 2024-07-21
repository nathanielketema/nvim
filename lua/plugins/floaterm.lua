return {
    "voldikss/vim-floaterm",

    config = function()
        vim.keymap.set("n", "<leader>ft", ":FloatermNew --width=0.7 --height=0.7<CR>")
        vim.keymap.set("n", "<leader>lg", ":FloatermNew --width=0.9 --height=0.9 lazygit<CR>")
        vim.keymap.set("n", "<leader>lf", ":FloatermNew --width=0.8 --height=0.8 lf<CR>")
    end,
}
