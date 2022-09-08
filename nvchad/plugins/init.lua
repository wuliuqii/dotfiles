return {
	-- format & linting
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	-- rust stuffs
	["simrat39/rust-tools.nvim"] = {
		ft = { "rust" },
	},

	["saecki/crates.nvim"] = {
		event = { "BufRead Cargo.toml" },
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("crates").setup()
		end,
	},

	-- lsp enhancements
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

	-- projects management
	["ahmedkhalf/project.nvim"] = {
		event = "VimEnter",
		config = function()
			require("project_nvim").setup()
		end,
	},

	["nvim-telescope/telescope-project.nvim"] = {},

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

	-- undotree
	["jiaoshijie/undotree"] = {
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("undotree").setup()
		end,
	},

	-- easymotion but lua
	["phaazon/hop.nvim"] = {
		branch = "v2",
		config = function()
			require("hop").setup()
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
