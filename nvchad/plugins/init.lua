local overrides = require("custom.plugins.override")

return {
	-- format & linting
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	-- markdown
	["iamcco/markdown-preview.nvim"] = {
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
		ft = { "markdown" },
	},

	["ellisonleao/glow.nvim"] = {
		ft = { "markdown" },
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

	["ThePrimeagen/refactoring.nvim"] = {
		ft = { "go" },
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
		config = function()
			require("refactoring").setup({
				-- prompt for return type
				prompt_func_return_type = {
					go = true,
				},
				-- prompt for function parameters
				prompt_func_param_type = {
					go = true,
				},
			})
		end,
	},

	["lukas-reineke/virt-column.nvim"] = {
		event = "BufRead",
		config = function()
			vim.opt.colorcolumn = "120"
			vim.cmd("highlight clear ColorColumn")
			require("virt-column").setup()
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

	-- tmux
	["aserowy/tmux.nvim"] = {
		config = function()
			require("tmux").setup()
		end,
	},

	-- Override plugin definition options
	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	-- overrde plugin configs
	["goolord/alpha-nvim"] = {
		disable = false,
		cmd = "Alpha",
		override_options = overrides.alpha,
	},

	["nvim-treesitter/nvim-treesitter"] = {
		override_options = overrides.treesitter,
	},

	["williamboman/mason.nvim"] = {
		override_options = overrides.mason,
	},

	["kyazdani42/nvim-tree.lua"] = {
		override_options = overrides.nvimtree,
	},

	["lukas-reineke/indent-blankline.nvim"] = {
		override_options = overrides.blankline,
	},

	["nvim-telescope/telescope.nvim"] = {
		override_options = overrides.telescope,
	},

	["hrsh7th/nvim-cmp"] = {
		override_options = overrides.cmp,
	},
}
