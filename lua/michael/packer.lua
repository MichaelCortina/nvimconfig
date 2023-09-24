
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }
  -- Install without configuration
  use ({ 'projekt0n/caret.nvim' })

  -- Or with configuration
  use({
    'projekt0n/caret.nvim',
    config = function()
      require('caret').setup({
        -- ...
      })

      vim.cmd('colorscheme caret')
    end
  })

  use {
    'kdheepak/tabline.nvim',
    config = function()
        require'tabline'.setup {
            -- Defaults configuration options
            enable = true,
            options = {
                -- If lualine is installed tabline will use separators configured in lualine by default.
                -- These options can be used to override those settings.
                section_separators = {'', ''},
                component_separators = {'', ''},
                max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
                show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
                show_devicons = true, -- this shows devicons in buffer section
                show_bufnr = false, -- this appends [bufnr] to buffer section,
                show_filename_only = false, -- shows base filename only instead of relative path in filename
                modified_icon = "+ ", -- change the default modified icon
                modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
                show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
            }
        }
        vim.cmd[[
        set guioptions-=e " Use showtabline in gui vim
        set sessionoptions+=tabpages,globals " store tabpages and globals in session
        ]]
    end,
    requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
  }

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}) 
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

end)

