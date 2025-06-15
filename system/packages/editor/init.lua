-- Clipboard support (Neovide enables system clipboard by default)
vim.opt.clipboard = "unnamedplus"

-- Line numbers
vim.opt.number = true            -- Absolute line numbers
vim.opt.relativenumber = true    -- Relative to current line

-- Vertical splits to the right
vim.opt.splitright = true

-- Sensible defaults for Neovide
vim.o.guifont = "FiraCode Nerd Font:h14"
vim.g.neovide_remember_window_size = true
vim.g.neovide_cursor_animation_length = 0.05
vim.g.neovide_scroll_animation_length = 0.1
vim.g.neovide_hide_mouse_when_typing = true

-- Better editing
vim.opt.mouse = "a"              -- Enable mouse support
vim.opt.tabstop = 2              -- Tabs are 4 spaces
vim.opt.shiftwidth = 2           -- Auto-indent width
vim.opt.expandtab = true         -- Convert tabs to spaces
vim.opt.smartindent = true       -- Smarter auto-indentation
vim.opt.wrap = false             -- Disable word wrap

-- Highlight current line
vim.opt.cursorline = true

