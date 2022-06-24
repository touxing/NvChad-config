local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return "Not Found treesitter.configs"
end

treesitter.setup {
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  }
}
