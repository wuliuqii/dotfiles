local M = {}

M.general = {
  n = {
    ["<"] = { "<<", "left indent" },
    [">"] = { ">>", "right indent" },

    -- resize with arrows
    ["<C-Up>"] = { ":resize -2<CR>" },
    ["<C-Down>"] = { ":resize +2<CR>" },
    ["<C-Left>"] = { ":vertical resize -2<CR>" },
    ["<C-Right>"] = { ":vertical resize -2<CR>" },

    ["<S-h>"] = { "^", "begin of line" },
    ["<S-l>"] = { "$", "end of line" },
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

return M
