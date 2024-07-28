return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	opts = {
		sort = {sorter = "case_sensitive"},
		view = {width = 30},
		renderer = {group_empty = true},
		filters = {dotfiles = false},
  },
	dependencies = {"nvim-tree/nvim-web-devicons"},
}
