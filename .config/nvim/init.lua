-- lua config requires
--
local cmd = vim.cmd                       -- to execute Vim commands e.g. cmd('pwd')
local fn  = vim.fn                        -- to call Vim functions e.g. fn.bufnr()
local g   = vim.g                         -- a table to access global variables


require('plugins')
require('colorscheme')                    --Loads Catppuccin colorscheme
require('lsp_diagnostic')
require('options')
require('mappings')
require('lsp_and_coq')                    -- LSP and Completion

require('colorizer').setup()              -- Color highlighter
require('treesitter')                     -- Treesitter
require('toggle_term')                           -- Toggle Terminal
require('just_quickrun')                  -- load JAQ
--require('coq')
