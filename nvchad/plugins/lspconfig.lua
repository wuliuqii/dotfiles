local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "gopls", "rust_analyzer", "taplo" }

local opts = {}

for _, lsp in ipairs(servers) do
	opts = {
		on_attach = on_attach,
		capabilities = capabilities,
	}

	if lsp == "rust_analyzer" then
		require("rust-tools").setup {
			tools = {
				on_initialized = function()
					vim.cmd [[
						autocmd BufEnter,CursorHold,InsertLeave,BufWritePost *.rs silent! lua vim.lsp.codelens.refresh()	
					]]
				end,
			},
			server = {
				on_attach = on_attach,
				capabilities = capabilities,
				settings = {
					["rust-analyzer"] = {
						lens = {
							enable = true,
						},
						checkOnSave = {
							command = "clippy",
						},
					},
				},
			},
		}

		goto continue
	end

	lspconfig[lsp].setup(opts)
	::continue::
end
