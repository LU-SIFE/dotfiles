return {


    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      config = function()
          vim.cmd.colorscheme("tokyonight")
      end,
    },
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      opts = {
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
        highlight = { enable = true },
      },
      config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
      end,
    },
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


    {
	"glepnir/dashboard-nvim",
	event = 'VimEnter',
	config = function()
		require("dashboard").setup {
			config = {
				week_header = { enable = true}
			}
		}
	end,
	dependencies = { {'nvim-tree/nvim-web-devicons'} }
    },
}
