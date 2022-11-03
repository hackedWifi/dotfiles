-- The vim.api.nvim_set_keymap() function allow us to define a new mapping. 
-- specific behaviors such as noremap must be passed as a table to that 
-- function.
--
-- Here is a helper to create mappings with the noremap option set to true
-- by default.

local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- CTRL-s to save
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>q', ':q<CR>')
-- Use semicolon instead of colon for command-mode
map('n', ';', ':')
-- press jj in to go back to normal mode 
map('i', 'jj', '<Esc>')
-- slip pane navigation
map('n', '<C-J>', '<C-W><C-J>')
map('n', '<C-K>', '<C-W><C-K>')
map('n', '<C-L>', '<C-W><C-L>')
map('n', '<C-H>', '<C-W><C-H>')
-- <TAB> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

-- Telescope mappings using command-line sugar {{{
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fu', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
map('n', '<leader>fb', '<cmd>Telescope file_browser<cr>')
map('n', '<leader>fm', '<cmd>Telescope man_pages<cr>')

-- Just another quickrun mappings
map('n', '<leader>r' , '<cmd>Jaq terminal<cr>')

-- Toggle Term mappings are
-- <c-\>
