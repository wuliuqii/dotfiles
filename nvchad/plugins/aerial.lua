local present, aerial = pcall(require, "aerial")

if not present then
  return
end

aerial.setup {
  backends = { "treesitter", "lsp" },
}
