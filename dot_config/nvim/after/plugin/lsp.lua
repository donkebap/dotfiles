-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.ensure_installed({
    "eslint",
    "rust_analyzer",
    "sumneko_lua",
    "tsserver",
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {}
})

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    float = true,
})
