require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c", "python", "rust", 
  },
  ignore_install = 
  { 
    "norg", "beancount", "biblex", "c_sharp", "clojure", "commonlisp", "dart", 
    "devicetree", "dockerfile", "elixir", "elm", "earlang", "fennel", "fish", 
    "godot", "glimmer", "go", "gomod", "graphql", "haskell", "java", "javascript",
    "jsdoc", "julia", "kotlin", "latex", "ledger", "nix", "ocaml", 
    "ocaml_interface", "php", "ql", "r", "rst", "ruby", "scala", 
    "sparql", "supercollider", "svelte", "swift", "teal", "toml", "tsx", 
    "turtle", "verilog", "vue", "zig"
  }, -- List of parser to ignore installing
  highlight = {
    enable = true,
    
  },

--`  indent = {
--    enable = true,
--  },

}

