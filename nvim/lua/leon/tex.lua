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

vim.api.nvim_create_autocmd({"BufEnter"}, {
    pattern = "*.tex",
    callback = function()
       vim.cmd "VimtexCompile"
    end
})
