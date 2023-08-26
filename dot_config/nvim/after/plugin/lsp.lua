-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"eslint",
		"lua_ls",
		"rust_analyzer",
		"tsserver",
	},
})

local lsp = require("lsp-zero")
lsp.preset({
	float_border = "rounded",
	call_servers = "local",
	configure_diagnostics = true,
	setup_servers_on_start = true,
	set_lsp_keymaps = {
		preserve_mappings = false,
		omit = {},
	},
	manage_nvim_cmp = {
		set_sources = "recommended",
		set_basic_mappings = true,
		set_extra_mappings = false,
		use_luasnip = true,
		set_format = true,
		documentation_window = true,
	},
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	float = true,
})
