vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

-- vim.opt.rtp = /opt/homebrew/opt/fzf/

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.clipboard:append("unnamedplus")


vim.opt.scrolloff = 8
vim.opt.updatetime = 50

vim.opt.splitright = true
vim.opt.splitbelow = true


vim.opt.colorcolumn = "80"

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- smart search
-- vim.opt.ignorecase = true
-- vim.opt.smartcase = true

-- vim.g.netrw_browsex_viewer="mupdf-gl" -- Everytime you press x in netrw it opens with mupdf-gl
vim.g.netrw_localrmdir='rm -r'
