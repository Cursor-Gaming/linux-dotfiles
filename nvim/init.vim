call plug#begin('~/.local/share/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Mofiqul/vscode.nvim'
Plug 'ziglang/zig.vim'
call plug#end()
set number
" set relativenumber
set wrap
filetype plugin indent on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
colorscheme vscode
" Remap Tab to complete the suggestion if the popup is visible
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : '    '
lua <<EOF
require('nvim-treesitter.configs').setup {
    ensure_installed = {"python", "c"},
    highlight = {
        enabled = true,
        additional_vim_regex_highlighting = false
    },
    indent = {
        enabled = true
    }
}
EOF
autocmd FileType * TSBufEnable highlight
