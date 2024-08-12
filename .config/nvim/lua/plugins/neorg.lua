return {

'nvim-neorg/neorg',
lazy = true,
ft = {'norg', 'neorg'},
version = '*',

opts = {
	load = {
		['core.defaults'] = {},
		['core.concealer'] = {},
		['core.dirman'] = {
			config = {
				workspaces = {notes = '~/Projects/notes'},
				default_workspace = 'notes',
			},
		},
	},
	vim.wo.foldlevel == 99,
	vim.wo.conceallevel == 2
}
}
