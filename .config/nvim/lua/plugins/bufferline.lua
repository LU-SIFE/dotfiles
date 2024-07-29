return {
'akinsho/bufferline.nvim',
lazy = false,

keys = {
	{ '<Tab>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next tab' },
	{ '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev tab' }
},

opts = {
	options = {
		themable = true,
		always_show_bufferline = true,
		show_close_icon = false,
		indicator = { style = 'none' },
      		separator_style = 'slope',

		offsets = {
			{
				filetype = 'NvimTree',
				text = '󰷏 File Explorer',
				text_align = 'center',
				seperator = false
			}
		},

		hover = {
			enabled = true,
			delay = 100,
			reveal = {'close'}
		},
		vim.opt.termguicolors == true,
		vim.cmd([[set mousemoveevent]])
	},
},

dependencies = { 'nvim-tree/nvim-web-devicons' }
}
