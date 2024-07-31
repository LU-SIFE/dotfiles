return {

-- cmp and lsp plugins
{'williamboman/mason.nvim', lazy = true, opts = {}},
{'williamboman/mason-lspconfig.nvim', lazy = true},
{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', lazy = false},
{'neovim/nvim-lspconfig'},
{'hrsh7th/cmp-nvim-lsp'},
{'L3MON4D3/luasnip', lazy = true},
{'hrsh7th/nvim-cmp'},
{'onsails/lspkind.nvim'},

-- yuck support because why not
{'elkowar/yuck.vim', lazy = true}

}
