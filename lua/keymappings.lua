-- Define map leader
vim.g.mapleader = ' '

-- Escape from insert mode
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Exit and save
vim.keymap.set('n', '<Leader>wq', ':wq<CR>')

-- Save
vim.keymap.set('n', '<Leader>w', ':w<CR>')

-- Save VSCode style
vim.keymap.set('n', '<C-S>', ':wa<CR>')

-- Reload config without exit
vim.keymap.set('n','<Leader>so', ':so %<CR>')

-- Exit
vim.keymap.set('n', '<Leader>q', ':q<CR>')

-- Exit without saving
vim.keymap.set('n', '<Leader>qq', ':q!<CR>')

-- Duplicate line
vim.keymap.set('n', 'tt', ':t.<CR>')

-- Open nvim-tree
vim.keymap.set('n', '<Leader>n', ':NvimTreeToggle<CR>')

-- lspsaga
-- hover doc
vim.keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", { silent = true })

local action = require("lspsaga.action")
-- scroll down hover doc or scroll in definition preview
vim.keymap.set("n", "<C-f>", function()
    action.smart_scroll_with_saga(1)
end, { silent = true })
-- scroll up hover doc
vim.keymap.set("n", "<C-b>", function()
    action.smart_scroll_with_saga(-1)
end, { silent = true })

-- Preview Definition
vim.keymap.set("n", "gd", "<cmd>Lspsaga preview_definition<CR>", { silent = true })

-- Move between buffers
-- vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", silent)
vim.keymap.set("n", "<Tab>", ":bn<CR>", silent)
-- vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", silent)
vim.keymap.set("n", "<S-Tab>", ":bp<CR>", silent)
vim.keymap.set("n", "<S-q>", ":BufferClose<CR>", silent)

-- Move between windows
vim.keymap.set("n", "<C-h>", "<C-w>h", silent)
vim.keymap.set("n", "<C-j>", "<C-w>j", silent)
vim.keymap.set("n", "<C-k>", "<C-w>k", silent)
vim.keymap.set("n", "<C-l>", "<C-w>l", silent)
