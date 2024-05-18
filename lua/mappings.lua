require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
--  Debugging
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
map("n", "<leader>fr", function()
  require("telescope.builtin").lsp_references()
end, { desc = "Telescope" })
map("n", "<leader>h", "")

-- map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- local nomap = vim.keymap.del

-- nomap("n", "<C-h>")
-- nomap("n", "<C-j>")
-- nomap("n", "<C-k>")
-- nomap("n", "<C-l>")
--
map("n", "<C-k>", ":TmuxNavigateUp<CR>")
map("n", "<C-j>", ":TmuxNavigateDown<CR>")
map("n", "<C-h>", ":TmuxNavigateLeft<CR>")
map("n", "<C-l>", ":TmuxNavigateUp<CR>")
--
-- -- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
