-- FZF
vim.g.fzf_layout = { down = "20%" }

--opt
vim.opt.list = false  -- Disables display of unprintable characters as special symbols.
vim.opt.number = true  -- Enables line numbers on the left side of the window.
vim.opt.relativenumber = true  -- Enables relative line numbering from the cursor line.
vim.opt.cursorline = true  -- Highlights the current line where the cursor is located.
vim.opt.guicursor = ""  -- Controls the appearance of the cursor in GUI mode. Empty string leaves it to default.
vim.opt.guicursor = 'a:blinkon0'
vim.opt.guifont = "Berkeley Mono:h19"  -- Sets the GUI font to RobotoNerd with height 14.
vim.opt.background = "dark"  -- Sets the background to dark mode for syntax highlighting.
vim.opt.colorcolumn = "80"  -- Highlights the 80th column to indicate the length of code lines.
vim.opt.textwidth = 120  -- Sets the maximum width of text that is being inserted.
vim.opt.hlsearch = false  -- Disables highlighting of search matches.
vim.opt.hidden = true  -- Allows switching buffers without saving them.
vim.opt.showmatch = true  -- Enables showing matching brackets when the cursor is over them.
vim.opt.ignorecase = true  -- Makes searches case-insensitive.
vim.opt.incsearch = true  -- Shows search matches as you type.
vim.opt.expandtab = true  -- Converts tabs to spaces.
vim.opt.shiftwidth = 4  -- Sets the number of space characters inserted for indentation.
vim.opt.tabstop = 4  -- Sets the number of space characters equivalent to one tab.
vim.opt.softtabstop = 4  -- Number of spaces that a Tab counts for while performing editing operations.
vim.opt.autoindent = true  -- Copies indentation from current line when starting a new line.
vim.opt.signcolumn = "yes"  -- Always show the sign column, used for 'diff' and other things.
vim.opt.spell = false  -- Disables spelling checks.
vim.opt.swapfile = false  -- Disables the creation of a swapfile.
vim.opt.backup = false  -- Disables creating a backup before overwriting a file.
vim.opt.scrolloff = 8  -- Keeps 8 lines visible above and below the cursor when scrolling.
vim.opt.cmdheight = 1  -- Sets the height of the command line to 1 line.
vim.opt.linespace = 4  -- Sets the spacing between lines to 4 pixels.
vim.opt.undolevels = 10000  -- Maximum number of changes that can be undone.
vim.opt.undofile = true  -- Enables persistent undo, which allows undoing even after closing and reopening Vim.
vim.opt.hidden = true  -- Buffers remain in memory when hidden instead of being unloaded.
vim.opt.termguicolors = true  -- Enables true color support in the terminal.
vim.opt.updatetime = 50  -- Sets the time (in milliseconds) that Vim waits before writing to the swap file.
vim.opt.clipboard = "unnamedplus"  -- Allows sharing clipboard with the system.
vim.opt.encoding = "utf-8"  -- Sets the character encoding to UTF-8.


-- g
vim.g.tablineclosebutton = 1
vim.g.indentLine_char = '│'
vim.g.clangd_encoding = 'utf-8'
vim.g.lsp_settings = { encoding = 'utf-8' }
