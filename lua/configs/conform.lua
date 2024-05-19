local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { { "prettierd", "prettier", "eslint_d" } },
    typescript = { "prettier", "eslint_d", "prettierd" },
    javascriptreact = { "prettier", "eslint_d", "prettierd" },
    typescriptreact = { "prettier", "eslint_d", "prettierd" },
    css = { "prettierd" },
    html = { "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
