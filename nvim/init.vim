syntax on
set clipboard+=unnamedplus
set autoindent smartindent
set nofixeol
set nofixendofline
set smarttab
set tabstop=4
set shiftwidth=4
set ignorecase
set ai
set cursorline
set ttyfast
" set termguicolors
set noswapfile

set keymodel=startsel,stopsel

call plug#begin()

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " & https://github.com/clangd/coc-clangd
Plug 'sbdchd/neoformat'
Plug 'fenetikm/falcon'
Plug 'nvim-lua/plenary.nvim'
Plug 'p00f/clangd_extensions.nvim'
call plug#end()

colorscheme falcon

autocmd BufNew,BufRead *.asm set ft=nasm
" autocmd FileType markdown setlocal colorcolumn=144

map <C-C> "+y
map <C-S-c> "+yy
map <C-V> "+p
map <C-Z> u
cnoremap <c-n> <CR>n/<c-p>
nnoremap <silent> <C-R> <Cmd>redo<CR>
nnoremap <silent> <C-O> <Cmd>CocCommand clangd.switchSourceHeader<CR>
nnoremap <silent> <C-M> <Cmd>!make<CR>
nnoremap <silent> <C-S> <Cmd>w<CR>
nnoremap <silent> <C-Q> <Cmd>q<CR>
nnoremap <silent> <C-E> <Cmd>Explore<CR>

" replace text
nnoremap <C-Y> "hy:%s/<C-r>h//gc<left><left><left>

" Coc-nvim TAB to accept autocomplete
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"


" АВТОПРОВЕРКА НА ОШИБКИ
" lua require'lspconfig'.clangd.setup{}


" lua require'clangd_extensions'.setup{}
" lua require'clangd_extensions.inlay_hints'.setup_autocmd()
" lua require'clangd_extensions.inlay_hints'.set_inlay_hints()

