require "paq" {		            	      -- load the package manager installed in 
                                     	      -- ~/.local/share/nvim/site/pack/paqs/opt/paq-nvim
{ "savq/paq-nvim", opt=true }; 		      -- Let Paq manage itself.
"neovim/nvim-lspconfig";                      -- Collection of common configurations for LSP.

"nvim-treesitter/nvim-treesitter";
--run=function() vim.cmd('TSUpdate') end}     -- Treesitter
-- Colorschemes
"catppuccin/nvim";

-- Colorizer {{{                         
"norcalli/nvim-colorizer.lua";                -- Color highlighter

-- Autocompletion
{ "ms-jpq/coq_nvim", branch='coq' };             
{ "ms-jpq/coq.artifacts", branch='artifacts'}; 

--Telescope dependencies {{{
"nvim-lua/popup.nvim";
"nvim-lua/plenary.nvim";

-- Terminal Integration
"akinsho/toggleterm.nvim";                    -- Best terminal support in nvim
"is0n/jaq-nvim";                              -- Just Another Quick run
-- run=function() require("toggleterm").setup{} end};  

"b3nj5m1n/kommentary";			      -- Comment text in and out
-- "m4xshen/autoclose.nvim";                      -- Minimal autoclose

}
