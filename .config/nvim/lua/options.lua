vim.g.mapleader=" "
--
--[[
""" Enable 256-color by default in the suckless st terminal
""" Fixes st terminal black and white colors issue
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"if !has('gui_running') | set t_Co=256 | endif
if (has("termguicolors"))
set termguicolors
endif
"""
--]]

-- Options {{{
--vim.opt.shell = '/usr/local/bin/xonsh'          -- set the default shell
vim.opt.number = true                           -- nu: Print the line number in front of each line.
vim.opt.cursorline = true                       -- highlight the screen line of the cursor with CursorLine.
vim.opt.completeopt = [[menuone,noselect]]      -- Insert mode completion selection options.
vim.opt.history = 50                            -- hi: keep 50 lines of command line history.
vim.opt.hidden = true                           -- hid: don't care about closing modified buffers.
vim.opt.winminheight = 0                        -- wmh:   allow showing windows as just status bars.
vim.opt.mouse = ''                              -- Enable the use of a mouse.
vim.opt.wrap = false                            -- soft-wrapping is off by default.
vim.opt.shada = [['0,:0,/0,h]]                  -- shada file parameters, see :h 'shada'.
vim.opt.textwidth=80                            -- Maximum width of text that is being inserted
-- }}}

-- Folding {{{
vim.opt.foldmethod = 'expr'			-- fdm:   fold by the indentation by default
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldnestmax = 10                        -- fnd:  deepest fold is 10 levels 
vim.opt.foldlevel = 0                           -- if positive some folds are open.

-- }}}

-- Search {{{

vim.opt.ignorecase = true                       -- ic:    ignores case when pattern matching

-- }}}
--
-- Tabs {{{
-- NOTE: after reading https://www.reddit.com/r/vim/wiki/tabstop
-- do not change tabstop. Leave it default to 8
vim.opt.shiftwidth = 2                          -- sw:    number of spaces to use for autoindent
vim.opt.softtabstop = 2                         -- sts:   number of spaces that tabs insert
vim.opt.smarttab = true                         -- sta:   helps with backspacing because of expandtab
vim.opt.expandtab = true                        -- et:    uses spaces instead of tab characters

-- }}}

--[[ colorscheme entries

"if strftime('%H') >= 7 && strftime('%H') < 17 
  "let g:lightline = { 'colorscheme': 'one' }
"opt(background=light
  "colorscheme gruvbox
"else
  "" Start all plugins before starting colorscheme gruvbox
  "let g:lightline = { 'colorscheme': 'gruvbit' }
  colorscheme gruvbox
  set background=dark
  
 "autocmd vimenter * colorscheme gruvbox
"let g:one_allow_italics = 1
"set background=dark         "set background needs to be called after setting the 
                            "colorscheme where VIM tries to determine the best 
                            "background when cterm for the Normal highlight is 
                            "defined
--]]
--Programming {{{
vim.opt.termguicolors = true                    --tgc: set 24-bit RGB color
vim.opt.syntax = 'on'
vim.opt.cindent = true                          --cin:   enables automatic indenting c-style
vim.opt.showmatch = true                        --sm:    flashes matching brackets or parenthasis
vim.opt.matchtime = 3                           --mat:   How long to flash brackets
--set makeprg=make\ -r
--}}}


--Backups {{{

vim.opt.backup = false                          --nobk:  in this age of version control, who needs it
vim.opt.writebackup = false                     --nowb:  don't make a backup before overwriting
vim.opt.swapfile = false                        --noswf: don't litter swap files everywhere
vim.opt.directory = "tmp"                       --dir:   directory for temp files

-- }}}
--
-- Menu completation {{{
-- Wildignore
vim.opt.wildmenu = true                         -- wmnu:  enhanced ed command completion
vim.opt.wildignore = "o,*.obj,*.pyc"
vim.opt.wildignore:append { ".sass-cache","tmp" }
vim.opt.wildignore:append("node_modules,log,logs,vendor,custom")
vim.opt.wildignore:append("log,logs")           -- wig:   ignore compiled objects and backups
vim.opt.wildmode = "longest:full,list:full"     -- wim: completion mode that is used for the character specified with 'wildchar'
-- }}}

-- Coq completion autostart
vim.g.coq_settings = { auto_start='shut-up' }
