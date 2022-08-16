-- Some CMD to execute vim-script
vim.cmd("set modifiable")

-- Will unify clipboards
vim.o.clipboard = "unnamedplus"

-- Will put the new window below the currentone
vim.o.splitbelow = true

-- Will put the new window right of the current one
vim.o.splitright = true

-- Will lazy load the file
vim.o.lazyredraw = true

-- Print the line number in front of each line
vim.wo.number = true
vim.o.number = true

-- Show the line number relative to the line with the cursor in front of each line
vim.wo.relativenumber = false
vim.o.relativenumber = false

-- Lines longer than the width of the window will wrap and displaying continues on the next line
vim.wo.wrap = false
vim.o.wrap = false

-- But don't break words, only 'by words'
vim.wo.linebreak = true

-- Will toogle the native auto indentation
vim.o.autoindent = true
vim.bo.autoindent = true

-- Highlight the screen line of the cursor with CursorLine
vim.wo.cursorline = true

-- Tab spaces config
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Plugins able to add, remove files
vim.bo.modifiable = true
