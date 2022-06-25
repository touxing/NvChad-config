local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return "Not Found treesitter.configs"
end

require "nvim-treesitter.install".complers = {"clang", "gcc"}

treesitter.setup {
  ensure_installed = {
    "lua",
    "vim",
    "html",
    "css",
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
