"------------插件安装-------------------
call plug#begin('~/.config/nvim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'neovim/nvim-lsp'
Plug 'godlygeek/tabular'

Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
" Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'majutsushi/tagbar'
Plug 'lfv89/vim-interestingwords'
" Plug 'scrooloose/syntastic'
Plug 'neomake/neomake'
Plug 'ryanoasis/vim-devicons'
" Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'zivyangll/git-blame.vim'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'moll/vim-bbye'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary' "gc注释代码
Plug 'tpope/vim-abolish' "查找替换插件:Subvert/address{,es}/reference{,s}/g
Plug 'mattn/vim-gist' "将配置文件传到github的gists
Plug 'mattn/webapi-vim'
Plug 'apzelos/blamer.nvim'

Plug 'preservim/nerdcommenter'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'godlygeek/tabular'
Plug 'voldikss/vim-translator'
Plug 'makerj/vim-pdf'
Plug 'kana/vim-fakeclip'
" Plug 'plasticboy/vim-markdown'
" Plug 'junegunn/limelight.vim'
Plug 'tpope/vim-haml'
" Plug 'mattn/emmet-vim'
" Plug 'othree/html5.vim'
"主题
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes'
" 前端
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'leafoftree/vim-vue-plugin'

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Plug 'maranimatias/vue-formatter'
" 代码片段
" Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'
call plug#end()

" let g:loaded_python3_provider=0
source $HOME/.config/nvim/.custom_vimrc
source $HOME/.config/nvim/.plug_vimrc
source $HOME/.config/nvim/.other_vimrc

" Automatic commands
" if has("autocmd")
    " " Enable file type detection
    " filetype on
    " autocmd BufRead,BufNewFile *.hurl setlocal filetype=hurl
    " " Auto-format *.rs (rust) files prior to saving them
    " " (async = false is the default for format)
    " autocmd BufWritePre *.rs,*.go,*.tf lua vim.lsp.buf.format({ async = false })
    " " Get the 2-space YAML as the default when hit carriage return after the colon
    " autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    " " Trim trailing white space on save
    " autocmd BufWritePre * :call StripWhitespace()
" endif
" 控制透明--且要加在colorscheme后面
hi Normal ctermfg=252 ctermbg=none
