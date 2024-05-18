local null_ls = require "null-ls"

local opts = {
  sources = {
    null_ls.builtins.formatting.prettierd,
    require "none-ls.diagnostics.eslint", -- requires none-ls-extras.nvim
  },
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      -- vim.api.nvim_create_autocmd("BufWritePre", {
      --   group = augroup,
      --   buffer = bufnr,
      --   callback = function()
      --     vim.lsp.buf.format { bufnr = bufnr }
      --   end,
      -- })
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        command = "EslintFixAll",
      })
    end
  end,
}

return opts
