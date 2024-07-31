require("config.lazy")

-- Clipboard
vim.cmd([[set clipboard+=unnamedplus]])
-- Colorscheme (possibly move to ./plugins/colorscheme.lua?
vim.cmd([[colorscheme ashes_dark]])

require('lsp-zero').on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  require('lsp-zero').default_keymaps({buffer = bufnr})
end)

require('mason-lspconfig').setup_handlers({
  function(server)
    require('lspconfig')[server].setup({})
  end,
})

require('cmp').setup({

	formatting = {
		format = require('lspkind').cmp_format({
			mode = 'symbol_text',
			maxwidth = 50,
			ellipsis_char = '...',
			show_labelDetails = true,

			before = function (entry, vim_item)
				return vim_item
			end
		})
	},

  mapping = require('cmp').mapping.preset.insert({
    -- `Enter` key to confirm completion
    ['<CR>'] = require('cmp').mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = require('cmp').mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = require('lsp-zero').cmp_action().luasnip_jump_forward(),
    ['<C-b>'] = require('lsp-zero').cmp_action().luasnip_jump_backward(),

    -- Scroll up and down in the completion documentation
    ['<C-u>'] = require('cmp').mapping.scroll_docs(-4),
    ['<C-d>'] = require('cmp').mapping.scroll_docs(4),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})

-- gray
vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { bg='NONE', strikethrough=true, fg='#808080' })
-- blue
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { bg='NONE', fg='#569CD6' })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { link='CmpIntemAbbrMatch' })
-- light blue
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { bg='NONE', fg='#9CDCFE' })
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link='CmpItemKindVariable' })
vim.api.nvim_set_hl(0, 'CmpItemKindText', { link='CmpItemKindVariable' })
-- pink
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { bg='NONE', fg='#C586C0' })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link='CmpItemKindFunction' })
-- front
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { bg='NONE', fg='#D4D4D4' })
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link='CmpItemKindKeyword' })
vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { link='CmpItemKindKeyword' })

require('lspconfig').emmet_language_server.setup({
  filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "pug", "typescriptreact" },
  -- Read more about this options in the [vscode docs](https://code.visualstudio.com/docs/editor/emmet#_emmet-configuration).
  -- **Note:** only the options listed in the table are supported.
  init_options = {
    ---@type table<string, string>
    includeLanguages = {},
    --- @type string[]
    excludeLanguages = {},
    --- @type string[]
    extensionsPath = {},
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/preferences/)
    preferences = {},
    --- @type boolean Defaults to `true`
    showAbbreviationSuggestions = true,
    --- @type "always" | "never" Defaults to `"always"`
    showExpandedAbbreviation = "always",
    --- @type boolean Defaults to `false`
    showSuggestionsAsSnippets = false,
    --- @type table<string, any> [Emmet Docs](https://docs.emmet.io/customization/syntax-profiles/)
    syntaxProfiles = {},
    --- @type table<string, string> [Emmet Docs](https://docs.emmet.io/customization/snippets/#variables)
    variables = {},
  },
})
vim.keymap.set(  't'  ,  '<C-,>'  ,  '<Cmd>ToggleTerm<CR>'  ,  {noremap = true}  )
vim.keymap.set('n', '<C-,>', '<Cmd>cd %:p:h<CR> <BAR> <Cmd>ToggleTerm<CR>')
