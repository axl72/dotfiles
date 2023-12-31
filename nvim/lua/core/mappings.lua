M = {}

M.general = {
    ["<C-b>"] = { 'n', ":e /home/axell/.config/nvim/init.lua<CR>", { silent = true } },
    ["<C-s>"] = { 'n', ':w<CR>', { silent = true } },
    ["<C-a>"] = { 'n', 'ggVG$', { noremap = true, silent = true } },
    ["<leader>q"] = { 'n', ':q!<CR>', { noremap = true, silent = false } },
    -- Manejo de buffers
    ["<leader>n"] = { 'n', ':bn<CR>', { noremap = true, silent = false } },
    ["<leader>p"] = { 'n', ':bp<CR>', { noremap = true, silent = false } },
    ["<leader>q"] = { 'n', ':q!<CR>', { noremap = true, silent = false } },
}

M.load_keybindings = function()
    for k, v in pairs(M.general) do
        vim.api.nvim_set_keymap(v[1], k, v[2], v[3])
    end
end

return M
