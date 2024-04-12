vim.keymap.set("n", "<leader>bs", function()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. [[\bigskip]] .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
end)

vim.keymap.set("n", "<leader>ms", function()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. [[\bigskip]] .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
end)

vim.keymap.set("n", "<leader>ss", function()
  local pos = vim.api.nvim_win_get_cursor(0)[2]
  local line = vim.api.nvim_get_current_line()
  local nline = line:sub(0, pos) .. [[\bigskip]] .. line:sub(pos + 1)
  vim.api.nvim_set_current_line(nline)
end)
