return {

-- Treesitter
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      opts = {
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown" },
        highlight = { enable = true },
      },
      config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
      end,
    },
-- Neorg
    {
      "nvim-neorg/neorg",
      lazy = false,
      version = "*",
      config = function()
        require("neorg").setup {
          load = {
            ["core.defaults"] = {},
            ["core.concealer"] = {},
            ["core.dirman"] = {
              config = {
                workspaces = {
                  notes = "~/notes",
                },
                default_workspace = "notes",
              },
            },
          },
        }
  
        vim.wo.foldlevel = 99
        vim.wo.conceallevel = 2
      end,
    },
-- Dashboard
    {
	"glepnir/dashboard-nvim",
	event = 'VimEnter',
	config = function()
		require("dashboard").setup {
			config = {
				week_header = { enable = true},
				
				shortcut = { { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
					{
						icon = ' ',
          					icon_hl = '@variable',
          					desc = 'Files',
          					group = 'Label',
          					action = 'Telescope find_files hidden=true',
          					key = 'f',
        				},
				},
			},
		}
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'} }
    },
-- LuaLine
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
    },

-- multi cursor
    {
	"mg979/vim-visual-multi"
    }
}
