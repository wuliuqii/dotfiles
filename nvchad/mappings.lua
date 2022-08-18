local M = {}

M.general = {
	n = {
		["<"] = { "<<", "left indent" },
		[">"] = { ">>", "right indent" },

		-- resize with arrows
		["<A-Up>"] = { ":resize -2<CR>" },
		["<A-Down>"] = { ":resize +2<CR>" },
		["<A-Left>"] = { ":vertical resize -2<CR>" },
		["<A-Right>"] = { ":vertical resize +2<CR>" },

		["<S-h>"] = { "^", "begin of line" },
		["<S-l>"] = { "$", "end of line" },
	},
}

M.shade = {
	n = {
		["<leader>s"] = {
			function()
				require("shade").toggle()
			end,

			"   toggle shade.nvim",
		},

		["<leader>lz"] = {
			function()
				require("nvterm.terminal").send("lazygit", "vertical")
			end,
			"nvterm lazygit",
		},
	},
}

M.symbols_outline = {
	n = {
		["<leader>so"] = { "<cmd> SymbolsOutline <CR>", "Toggle symbols outline" },
	},
}

M.truzen = {
	n = {
		["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
		["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
		["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
	},
}

M.treesitter = {
	n = {
		["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
	},
}

M.trouble = {
	n = {
		["<leader>t"] = { "<cmd> TroubleToggle <CR>", "open the trouble list" },
		["<leader>tw"] = { "<cmd> TroubleToggle workspace_diagnostics <CR>", "workspace diagnostics from lsp" },
	},
}

return M
