-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})

-- Neotree
vim.api.nvim_set_keymap( "n", "<leader>E", ":lua require('neo-tree.command').execute({ toggle = true })<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>e", ":Neotree filesystem reveal left<CR>", { noremap = true, silent = true })

-- LSP
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})

-- Formatting
vim.keymap.set("n", "<leader>F", function()
  vim.lsp.buf.format()
  local pos = vim.api.nvim_win_get_cursor(0)
  vim.cmd("normal! gg=G")
  vim.api.nvim_win_set_cursor(0, pos)
end, {})

vim.keymap.set("n", "<leader>f", function()
  local pos = vim.api.nvim_win_get_cursor(0)
  vim.cmd("normal! gg=G")
  vim.api.nvim_win_set_cursor(0, pos)
end, {})
