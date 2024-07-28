return {
{
"glepnir/dashboard-nvim",
event = 'VimEnter',
config = function()
	require("dashboard").setup {
		config = {
			week_header = { enable = true},
			shortcut = {
				{ desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
				{ icon = ' ', icon_hl = '@variable', desc = 'Files', group = 'Label', action = 'Telescope find_files hidden=true', key = 'f' },
			},
		},
	}
end,
dependencies = { {'nvim-tree/nvim-web-devicons'} }
}}