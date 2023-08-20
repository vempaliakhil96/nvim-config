local lsp = require('lsp-zero').preset({})
-- Refer for lsp-zero config https://github.com/VonHeikemen/lsp-zero.nvim/tree/v2.x
lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
end)

lsp.ensure_installed({
	-- Replace these with whatever servers you want to install
	'tsserver',
	'eslint',
	'rust_analyzer',
	'pyright'
})
-- mason refer https://github.com/williamboman/mason.nvim#how-to-use-installed-packages
lsp.setup()
require("mason-null-ls").setup({
	ensure_installed = { "black" }
})

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.black,
	},
})
