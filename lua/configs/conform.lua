local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "eslint_d", "prettierd" },
    typescript = { "eslint_d", "prettierd" },
    javascriptreact = { "eslint_d", "prettierd" },
    typescriptreact = { "eslint_d", "prettierd" },
    css = { "prettierd" },
    html = { "prettierd" },
    yaml = { "prettierd" },
    json = { "eslint_d", "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
