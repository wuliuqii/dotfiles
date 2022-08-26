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
		["<C-q>"] = { ":q <CR>", "quit" },
		["<C-s>"] = { ":w <CR>", "save" },

		[";"] = { ":" },
	},
	i = {
		["jk"] = { "<ESC>" },
		["zz"] = { "<ESC> zz i" },
	},
}

M.aerial = {
	n = {
		["<leader>a"] = { "<cmd> AerialToggle <CR>", "   toggle aerial symbols outline" },
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

M.rust_tools = {
	n = {
		["<leader>rh"] = { "<cmd> RustSetInlayHints <CR>" },
		["<leader>rhd"] = { "<cmd> RustDisableInlayHints <CR>" },
		["<leader>rr"] = { "<cmd> RustRunnables <CR>" },
		["<leader>rem"] = { "<cmd> RustExpandMacro <CR>" },
		["<leader>roc"] = { "<cmd> RustOpenCargo <CR>" },
		["<leader>rpm"] = { "<cmd> RustParentModule <CR>" },
		["<leader>rjl"] = { "<cmd> RustJoinLines <CR>" },
		["<leader>rha"] = { "<cmd> RustHoverActions <CR>" },
		["<leader>rhr"] = { "<cmd> RustHoverRange <CR>" },
		["<leader>rmd"] = { "<cmd> RustMoveItemDown <CR>" },
		["<leader>rmu"] = { "<cmd> RustMoveItemUp <CR>" },
		["<leader>rsb"] = { "<cmd> RustStartStandaloneServerForBuffer <CR>" },
		["<leader>rd"] = { "<cmd> RustDebuggables <CR>" },
		["<leader>rv"] = { "<cmd> RustViewCrateGraph <CR>" },
		["<leader>rw"] = { "<cmd> RustReloadWorkspace <CR>" },
	},
}

return M
