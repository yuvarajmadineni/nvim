require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle Breakpoint" })
map("n", "<leader>dus", function()
  local widgets = require "dap.ui.widgets"
  local sidebar = widgets.sidebar(widgets.scopes)
  sidebar.open()
end, { desc = "Open debugging session" })
map("n", "<leader>gh", function()
  vim.lsp.buf.hover()
end, { desc = "Hover definition" })

map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
-- map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- local nomap = vim.keymap.del

-- nomap("n", "<C-h>")
-- nomap("n", "<C-j>")
-- nomap("n", "<C-k>")
-- nomap("n", "<C-l>")
--
-- map("n", "<C-k>", ":wincmd k<CR>")
-- map("n", "<C-j>", ":wincmd j<CR>")
-- map("n", "<C-h>", ":wincmd h<CR>")
-- map("n", "<C-l>", ":wincmd l<CR>")
--
-- -- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
