local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  sources = {
    {name = 'path'},
    {name = 'nvim_lsp'},
    {name = 'buffer'},
    {name = 'luasnip'},
    {name = 'ultisnips'},
  },
})
