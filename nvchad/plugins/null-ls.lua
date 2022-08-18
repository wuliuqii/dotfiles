local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end

local b = null_ls.builtins

local sources = {

	-- Lua
	b.formatting.stylua,

	-- go
	b.formatting.gofmt,
	b.diagnostics.golangci_lint,

	-- rust
	b.formatting.rustfmt,
}

null_ls.setup({
	debug = true,
	sources = sources,
})
