-- suda 提供协议头支持，所以你可以用 :w suda://%
-- 或者直接调用其内置命令 :SudaWrite
vim.keymap.set("n", "<leader>W", ":SudaWrite<CR>", { noremap = true, silent = true, desc = "Sudo Save" })
return {
  'lambdalisue/suda.vim',
  opts = function()
    -- 当你打开一个没有写入权限的文件时，自动使用 suda 重新读取
    vim.g.suda_smart_edit = 1
    vim.g.suda_command_prefix = 'sudo -S'
  end
}
