local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { { "prettierd", "eslint_d" } },
    typescript = { { "prettierd", "eslint_d" } },
    javascriptreact = { { "prettierd", "eslint_d" } },
    typescriptreact = { { "prettierd", "eslint_d" } },
    css = { "prettierd" },
    html = { "prettierd" },
    yaml = { { "prettierd", "eslint_d" } },
    json = { "eslint_d", "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
