local status, null_ls = pcall(require, "null-ls")
if not status then
  vim.notify("not found null-ls")
end

local b = null_ls.builtins

local sources = {

  b.formatting.prettierd.with {
    filetypes = { "javascript", "typescript", "vue", "html", "markdown", "css", "scll", "less", "json", "yaml" },
    prefer_local = "node_modules/.bin"
  },
  b.formatting.deno_fmt,

  -- Lua
  b.formatting.stylua,
  b.diagnostics.luacheck.with { extra_args = { "--global vim" } },

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
}


null_ls.setup {
  debug = true,
  sources = sources,

  -- format on save
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
    end
  end,
}
