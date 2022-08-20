local M = {}
local override = require("custom.override")

M.plugins = {
	override = {
		["kyazdani42/nvim-tree.lua"] = override.nvimtree,
		["nvim-treesitter/nvim-treesitter"] = override.treesitter,
		["lukas-reineke/indent-blankline.nvim"] = override.blankline,
		["goolord/alpha-nvim"] = override.alpha,
		["williamboman/mason.nvim"] = override.mason,
		["nvim-telescope/telescope.nvim"] = override.telescope,
		["hrsh7th/nvim-cmp"] = override.cmp,
	},

	user = require("custom.plugins"),
}

M.ui = {
	theme = "chadracula",
}

M.mappings = require("custom.mappings")

return M
