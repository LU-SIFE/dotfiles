return {
'nvim-tree/nvim-tree.lua',
version = '*',
lazy = true,
opts = {
	sort = {sorter = 'case_sensitive'},
	view = {width = 30},
	renderer = {group_empty = true},
	filters = {dotfiles = false},
},

keys = {{ '<S-U>', '<Cmd>NvimTreeToggle<CR>', desc = 'Open NvimTree' }},
dependencies = {'nvim-tree/nvim-web-devicons'},
}
