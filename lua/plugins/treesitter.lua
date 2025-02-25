-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "javascript",
      "typescript",
      "html",
      "css",
      "tsx",
    },
  },
}
