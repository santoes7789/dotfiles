return {
  {
    "mason-org/mason.nvim",
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls", "html", "ts_ls" },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      vim.lsp.config('*', {
        capabilities = capabilities
      })


      vim.lsp.config("lua_ls", {} )
      vim.lsp.enable({ "lua_ls" })

      vim.lsp.config("html", {} )
      vim.lsp.enable({ "html" })

      vim.lsp.config("tsserver", {} )
      vim.lsp.enable({ "tsserver" })
    end,
  },
}
