-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

 -- use({
 --   'rose-pine/neovim',
 --   as     = 'rose-pine',
 --   config = function()
 --     vim.cmd('colorscheme rose-pine')
 --   end
 -- })


  use({
    'folke/tokyonight.nvim',
    config = function()
      vim.cmd('colorscheme tokyonight')
    end
  })

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('ThePrimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
    'numToStr/Navigator.nvim',
    config = function()
      require('Navigator').setup()
    end
  }

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          ---@diagnostic disable-next-line: param-type-mismatch
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
      { 'hrsh7th/cmp-buffer' },   -- Optional
      { 'hrsh7th/cmp-path' },     -- Optional
      { 'hrsh7th/cmp-cmdline' },
    }
  }

  -- use {
  --   'VonHeikemen/lsp-zero.nvim',
  --   branch = 'v1.x',
  --   requires = {
  --     -- LSP Support
  --     { 'neovim/nvim-lspconfig' },             -- Required
  --     { 'williamboman/mason.nvim' },           -- Optional
  --     { 'williamboman/mason-lspconfig.nvim' }, -- Optional

  --     -- Autocompletion
  --     { 'hrsh7th/nvim-cmp' },         -- Required
  --     { 'hrsh7th/cmp-nvim-lsp' },     -- Required
  --     { 'hrsh7th/cmp-buffer' },       -- Optional
  --     { 'hrsh7th/cmp-path' },         -- Optional
  --     { 'hrsh7th/cmp-cmdline' },
  --     { 'saadparwaiz1/cmp_luasnip' }, -- Optional
  --     { 'hrsh7th/cmp-nvim-lua' },     -- Optional

  --     -- Snippets
  --     { 'L3MON4D3/LuaSnip' },             -- Required
  --     { 'rafamadriz/friendly-snippets' }, -- Optional
  --   }
  -- }

  -- editor experience
  use({ 'windwp/nvim-autopairs' })
  use({ 'tpope/vim-abolish' }) -- preserve case while searching

  -- language specific plugins
  -- flutter
  use {
    'akinsho/flutter-tools.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
  }

  -- fun and games
  use({ 'ThePrimeagen/vim-be-good' })
  use({ 'alec-gibson/nvim-tetris' })
  use({ 'eandrju/cellular-automaton.nvim' })
end)
