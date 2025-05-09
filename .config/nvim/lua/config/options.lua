local o=vim.o

o.encoding='utf8'
o.number=true
o.cursorline=true
o.relativenumber=true
o.laststatus=2
o.ruler=true
-- syntax enable
o.clipboard='unnamedplus'
o.listchars='tab:▸·,trail:■'
o.list=true
o.tabstop=2
o.shiftwidth=2
o.expandtab=true
o.showcmd=true
o.autoindent=true
o.smartindent=true
-- o.noexpandtab=true
-- o.cindent=true
-- 开启自动查找单词,输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
-- o.incsearch=true
o.title=true
-- 搜索时不忽略大小写（默认也是这样）
o.smartcase=true
-- 搜索时忽略大小写
--o.ignorecase=true
-- 启用搜索突出显示
o.hlsearch=true

o.wildmenu=true
o.wildmode='longest:list,full'
o.hidden=true
o.history=1000
--不创建交换文件
-- o.noswapfile=true
--保存撤销历史，下次打开文件可以继续使用撤销等操作
o.undofile=true
--设置文件保存路径这些文件要先创建一下
-- Centralize backups, swapfiles and undo history
o.backupdir = vim.fn.stdpath('config') .. '/backups'
o.directory = vim.fn.stdpath('config') .. '/swaps'
o.undodir = vim.fn.stdpath('config') .. '/undo'
o.showmatch=true
o.wrapmargin=2
--o.pastetoggle=<F9>
-- 开启文件类型检测--自适应不同语言的智能缩进
--filetype plugin on
--filetype indent on
-- Set to auto read when a file is changed from the outside
o.autoread=true
--o.foldmethod=indent
--o.nofoldenable=true
-- Use the OS clipboard by default (on versions compiled with `+clipboard`)
-- vim.o.clipboard = vim.o.clipboard .. "unnamedplus"
