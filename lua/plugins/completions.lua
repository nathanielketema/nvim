return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"SirVer/ultisnips",
		dependencies = {
			"quangnguyen30192/cmp-nvim-ultisnips",
		},
		config = function()
			vim.g.UltiSnipsEditSplit = "vertical"
			vim.keymap.set("i", "<C-j>", vim.cmd.UltiSnipsJumpForwardTrigger)
			vim.keymap.set("i", "<C-k>", vim.cmd.UltiSnipsJumpBackwardTrigger)
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
						-- vim.fn["UltiSnips#Anon"].(args.body)
						-- vim.snippet.expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-p>"] = cmp.mapping.scroll_docs(-4),
					["<C-n>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" }, -- For luasnip users.
					{ name = "ultishnips" },
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}