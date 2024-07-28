return {
{
"nvim-lualine/lualine.nvim",
lazy = false,
config = function()
	require("lualine").setup {
		options = {
			icons_enabled = true,
			theme = 'auto',
		}
	}
end,
dependencies = { {"nvim-tree/nvim-web-devicons"} }    
}}
