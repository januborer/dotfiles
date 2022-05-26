"------------插件安装-------------------
call plug#begin('~/.config/nvim/plugged')
Plug 'neovim/nvim-lspconfig'
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
Plug 'ludovicchabant/vim-gutentags'
Plug 'ryanoasis/vim-devicons'
" Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'zivyangll/git-blame.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'moll/vim-bbye'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-commentary' "gc注释代码
Plug 'tpope/vim-abolish' "查找替换插件:Subvert/address{,es}/reference{,s}/g
Plug 'mattn/vim-gist' "将配置文件传到github的gists
Plug 'mattn/webapi-vim'
Plug 'apzelos/blamer.nvim'
Plug 'rust-lang/rust.vim'
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
" 代码片段
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
call plug#end()

source $HOME/.config/nvim/.custom_vimrc
source $HOME/.config/nvim/.plug_vimrc
source $HOME/.config/nvim/.other_vimrc
" 控制透明--且要加在colorscheme后面
hi Normal ctermfg=252 ctermbg=none
