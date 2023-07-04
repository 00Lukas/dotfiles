-- Install package manager
--    https://github.com/folke/lazy.nvim
--    `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    -- Git related plugins
    'tpope/vim-fugitive',
      
    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',
  
    -- LSP Configuration & Plugins
    {
    'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Useful status updates for LSP
                  { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
    },
	  },      
  
    -- Useful plugin to show you pending keybinds.
    { 'folke/which-key.nvim', opts = {} },
      
    {
      -- Set lualine as statusline
      'nvim-lualine/lualine.nvim',
      -- See `:help lualine.txt`
      opts = {
        options = {
          icons_enabled = false,
          theme = 'moonfly',
          component_separators = '|',
          section_separators = '',
        },
      },
    },
  
    -- Fuzzy Finder (files, lsp, etc)
    { 'nvim-telescope/telescope.nvim', branch = '0.1.x',  
      dependencies = 
        { 'nvim-lua/plenary.nvim' } 
    },
  
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  
    {
      -- Highlight, edit, and navigate code
      'nvim-treesitter/nvim-treesitter',
      dependencies = {
        'nvim-treesitter/nvim-treesitter-textobjects',
      },
      build = ':TSUpdate',
    },
    'nvim-treesitter/nvim-treesitter-context',

    -- Theme
    'catppuccin/nvim',

    -- Minimal and fast autopairs
    'echasnovski/mini.pairs',

    {'folke/trouble.nvim',
      config = function()
          require("trouble").setup {
              icons = false,
          }
      end
    },

    'theprimeagen/harpoon',

    'mbbill/undotree',
  
  }, {})
