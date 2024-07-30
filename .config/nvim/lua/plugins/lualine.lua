return {
'nvim-lualine/lualine.nvim',
event = { 'BufReadPre' },

opts = {
	options = {
		icons_enabled = true,
		theme = 'auto',
	}
},

dependencies = { 'nvim-tree/nvim-web-devicons' }
}
