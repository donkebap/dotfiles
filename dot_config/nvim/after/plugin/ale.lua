vim.g.ale_fixers = {
	css = { "prettier" },
	javascript = { "prettier" },
	typescript = { "prettier" },
	lua = { "stylua" },
	sh = { "shfmt" },
}
vim.g.ale_fix_on_save = 1
vim.g.ale_linters_explicit = 1
vim.g.ale_javascript_prettier_options = "--trailing-comma es5"
