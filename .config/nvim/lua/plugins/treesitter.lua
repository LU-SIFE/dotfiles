return {
'nvim-treesitter/nvim-treesitter',
build = ':TSUpdate',
lazy = true,
cmd = { "TSUpdate" },

opts = {
	ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query', 'markdown' },
	highlight = { enable = true },
}
}
