return {
  'lambdalisue/suda.vim',
  opts = function()
    -- 当你打开一个没有写入权限的文件时，自动使用 suda 重新读取
    vim.g.suda_smart_edit = 1
    vim.g.suda_command_prefix = 'sudo -S'
  end,
  keys = {
    { "<leader>W", mode = { "n" }, ":SudaWrite<CR>", { noremap = true, silent = true, desc = "Sudo Save" } },
  },
}
