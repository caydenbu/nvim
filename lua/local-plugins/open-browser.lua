-- For opening html files in browser for mac
function openBrowser()
    local path = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(0), ":t")
    if path == "" then
        print("No file open")
        return
    end
    vim.cmd('!open ./' .. path)
end

vim.keymap.set("n", "<leader>ob", openBrowser, {})
