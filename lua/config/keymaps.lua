-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Exit insert mode with jj
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode with jj" })



vim.keymap.set("n", "<leader>jr", function()
  vim.cmd("write")
  local dir = vim.fn.expand("%:p:h")
  local name = vim.fn.expand("%:t:r")

  -- Create a 'bin' folder if it doesn't exist, compile into it, and run from it
  local command = "mkdir -p bin && javac -d bin *.java && java -cp bin " .. name

  vim.cmd("split | term cd " .. dir .. " && " .. command)
end, { desc = "Compile to bin and Run" })
