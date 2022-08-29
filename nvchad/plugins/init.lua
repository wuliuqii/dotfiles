return {
	-- format & linting
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	-- rust
	["simrat39/rust-tools.nvim"] = {
		ft = { "rust" },
	},

	["saecki/crates.nvim"] = {
		event = { "BufRead Cargo.toml" },
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("crates").setup()
		end
	},

	-- lsp enhance
	["stevearc/aerial.nvim"] = {
		after = "nvim-treesitter",
		cmd = "AerialToggle",
		config = function()
			require("aerial").setup()
		end,
	},

	["folke/trouble.nvim"] = {
		after = "nvim-lspconfig",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("custom.plugins.trouble")
		end,
	},

	-- minimal modes
	["Pocco81/TrueZen.nvim"] = {
		cmd = {
			"TZAtaraxis",
			"TZMinimalist",
			"TZFocus",
		},
		config = function()
			require("custom.plugins.truezen")
		end,
	},

	-- dim inactive windows
	["andreadev-it/shade.nvim"] = {
		module = "shade",
		config = function()
			require("custom.plugins.shade")
		end,
	},

	["goolord/alpha-nvim"] = {
		disable = false,
		cmd = "Alpha",
	},

	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},
}
