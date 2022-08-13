-- ###########################################################################
-- # NVIM DOCUMENTATION: OPTIONS
-- # https://neovim.io/doc/user/options.html
-- ###########################################################################

-- ###########################################################################
-- # # PRINT THE LINE NUMBER IN FRONT OF EACH LINE
-- # # https://neovim.io/doc/user/options.html#'number'
-- ###########################################################################
vim.opt.nu = true
vim.opt.relativenumber = true


-- ###########################################################################
-- # # CONFIGURE CURSOR STYLE FOR EACH MODE
-- # # https://neovim.io/doc/user/options.html#'guicursor'
-- ###########################################################################
-- "The Default": Just the regular block cursor - fills the whole character
-- Normal, Visual, Command-line(Normal), Command-line(Insert) mode: block cursor,
-- Insert, Command-line(Insert), Visual(Selection) mode: vertical bar with 25% char width,
-- Replace, Command-line(Replace), Operator-pending mode: horizontal bar with 20% char height
-- >> vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"
-- ###########################################################################

vim.opt.guicursor = "" -- "The Default"
-- Normal, Visual mode: block cursor with blink 49% on/off state, 2% transitioning - of 1 second
vim.opt.guicursor:append('n-v:block-iCursor-blinkwait200-blinkon490-blinkoff490')
-- Insert, Command-line(Insert) mode: vertical bar with 30% cursor with
-- colors from the "iCursor" highlight group. Blink 2% on, 15% off, 30% transition - of 1 second
vim.opt.guicursor:append('i-ci:ver30-iCursor-blinkwait300-blinkon200-blinkoff150')

-- Always show the status line at the bottom, even if you only have one window open.
vim.opt.laststatus = 2

-- The backspace key has slightly unintuitive behavior by default. For example,
-- by default, you can't backspace before the insertion point set with 'i'.
-- This configuration makes backspace behave more reasonably, in that you can
-- backspace over anything.
vim.opt.backspace = 2 -- same as ":set backspace=indent,eol,start"

-- When opening a new line and no file-specific indenting is enabled,
-- keep same indent as the line you're currently on
vim.opt.autoIndent = true -- Explicitly set on

-- Number of visual spaces per TAB
vim.opt.tabstop = 4

-- Number of spaces in TAB when editing
vim.opt.softtabstop = 4

-- Number of spaces indented when reindent operations (>> and <<) are used
vim.opt.shiftwidth = 4

-- Convert TABs to spaces
vim.opt.expandtab = false

-- By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
-- shown in any window) that has unsaved changes. This is to prevent you from "
-- forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
-- hidden buffers helpful enough to disable this protection. See `:help hidden`
-- for more information on this.
vim.opt.hidden = true

-- This setting makes search case-insensitive when all characters in the string
-- being searched are lowercase. However, the search becomes case-sensitive if
-- it contains any capital letters. This makes searching more convenient.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable intelligent tabbing and spacing for indentation and alignment
vim.opt.incsearch = true

-- Do smart autoindenting when starting a new line. Works for C-like programs,
-- but can also be used for other languages.
vim.opt.smartindent = true

-- It doesn't change the text in the buffer - where A longer line will be
-- broken after white space to get this width.
vim.opt.wrap = false

-- Enable mouse support. You should avoid relying on this too much, but it can
-- sometimes be convenient.
vim.opt.mouse = "a"
