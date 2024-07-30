return {

-- cmp and lsp plugins
{'williamboman/mason.nvim', lazy = true, opts = {}},
{'williamboman/mason-lspconfig.nvim', lazy = true},
{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', lazy = true},
{'neovim/nvim-lspconfig'},
{'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/nvim-cmp'},
{'L3MON4D3/LuaSnip', lazy = true},
{'onsails/lspkind.nvim'},

-- yuck support because why not
{'elkowar/yuck.vim', lazy = true}

}
