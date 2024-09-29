return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    vim.keymap.set("n", "sub", substitute.operator, { desc = "Substitute with motion" })
    vim.keymap.set("n", "subs", substitute.line, { desc = "Substitute line" })
    vim.keymap.set("n", "Sub", substitute.eol, { desc = "Substitute to end of line" })
    vim.keymap.set("x", "sub", substitute.visual, { desc = "Substitute in visual mode" })
  end,
}
