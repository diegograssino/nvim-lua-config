-- Define map leader
vim.g.mapleader = ' '

-- Escape from insert mode
vim.keymap.set('i', '<C-c>', '<Esc>')

-- Exit and save
vim.keymap.set('n', '<Leader>wq', ':wq<CR>')

-- Save
vim.keymap.set('n', '<Leader>w', ':w<CR>')

-- Reload config without exit
vim.keymap.set('n','<Leader>so', ':source $MYVIMRC<CR>')

-- Exit
vim.keymap.set('n', '<Leader>q', ':q<CR>')

-- Exit without saving
vim.keymap.set('n', '<Leader>qq', ':q!<CR>')

-- Duplicate line
vim.keymap.set('n', 'tt', ':t.<CR>')

-- Open nvim-tree
vim.keymap.set('n', '<Leader>n', ':NvimTreeToggle<CR>')
