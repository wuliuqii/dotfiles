-- overriding default plugin configs!

local M = {}

M.telescope = {
	extensions_list = { "themes", "terms", "aerial", "projects" },
}

M.treesitter = {
	ensure_installed = {
		"vim",
		"toml",
		"lua",
		"go",
		"rust",
		"markdown",
		"make",
		"python",
	},
}

M.nvimtree = {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},

	sync_root_with_cwd = false,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = false,
	},
}

M.blankline = {
	filetype_exclude = {
		"help",
		"terminal",
		"alpha",
		"packer",
		"lspinfo",
		"TelescopePrompt",
		"TelescopeResults",
		"nvchad_cheatsheet",
		"lsp-installer",
		"",
	},
}

M.alpha = {
	header = {
		val = {
			"           ▄ ▄                   ",
			"       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
			"       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
			"    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
			"  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
			"  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄ ",
			"▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █ ",
			"█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █ ",
			"    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█     ",
		},
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- go
		"gopls",
		"golangci-lint",
		"golangci-lint-langserver",
		"goimports-reviser",
		"golines",

		-- rust
		"rust-analyzer",
		"taplo",

		-- markdown
		"marksman",
		"prettier",

		-- python
		"pyright",
		"pylint",
		"black",
	},
}

M.cmp = function()
	local cmp = require("cmp")

	return {
		mapping = {
			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-j>"] = cmp.mapping.select_next_item(),
		},
	}
end

return M
