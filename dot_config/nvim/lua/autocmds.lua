-- Disable undofile for gopass
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead " }, {
	pattern = { "/dev/shm/gopass*" },
	command = "setlocal noswapfile nobackup noundofile",
})
-- Highlight text on yank
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
	pattern = { "*" },
	command = "silent! lua vim.highlight.on_yank {timeout=250}",
})
