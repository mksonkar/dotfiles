return {
  "neovim/nvim-lspconfig",
  opts = {
    ---@class PluginLspOpts
    -- Enable this to enable the builtin LSP inlay hints on Neovim >= 0.10.0
    -- Be aware that you also will need to properly configure your LSP server to
    -- provide the inlay hints.
    inlay_hints = {
      enabled = true,
      exclude = { "javascriptreact", "javascript" }, -- filetypes for which you don't want to enable inlay hints
    },
  },
}
