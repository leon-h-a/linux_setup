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

vim.keymap.set("n", "afa", function()
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
