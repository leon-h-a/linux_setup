-- Vimtex settings
vim.g.vimtex_view_method = "zathura"
-- vim.g.vimtex_view_general_viewer = 'zathura'
-- vim.g.vimtex_view_general_options = '-reuse-instance @pdf'
-- vim.g.vimtex_view_general_options_latexmk = '-reuse-instance'

vim.keymap.set("n", "<F9>", [[
    :! rm *.aux
    :! rm *.out
    :! rm *.log
    :! rm *.fls
    :! rm *.synctex.gz
    :! rm *.fdb_latexmk
]], { silent = true })

vim.keymap.set("n", "<leader>d", function()
    local ffp = vim.api.nvim_buf_get_name(0)
    local base = ffp:match("(.+)%..+$")
    local ext = {".aux", ".out", ".log", ".fls", ".synctex.gz", ".fdb_latexmk"}
    for i, v in pairs(ext) do
        os.remove(base .. v)
    end
    print("LaTeX compilation files deleted!")
end)

vim.api.nvim_create_autocmd({"BufEnter"}, {
    pattern = "*.tex",
    callback = function()
       vim.cmd "VimtexCompile"
    end
})

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
