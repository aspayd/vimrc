" Plugin installations
call plug#begin('~/.vim/plugged')

	" Genearal Util
	Plug 'mbbill/undotree'
	Plug 'jremmen/vim-ripgrep'

	" lsp
	Plug 'neovim/nvim-lspconfig'


	" Telescope
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'

	" Tree sitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'nvim-treesitter/playground'
	
	" Colorschemes
	Plug 'gruvbox-community/gruvbox'
	Plug 'sainnhe/gruvbox-material'
	Plug 'kaicataldo/material.vim', { 'branch': 'main' }

call plug#end()

let mapleader=" "

" UndoTree
nnoremap <leader>u :UndotreeToggle<CR>

" Searching tools
nnoremap <leader>f :Rg<CR>

" File Explorer
nnoremap <leader>pt :Sex! 20<CR>

