return {
  "voldikss/vim-translator",
  -- 可选，但推荐（用于异步）
  dependencies = { "nvim-lua/plenary.nvim" },
  -- 延迟加载，或用 keys 触发加载
  event = "VeryLazy",
  -- 在插件加载前设置 Vim 全局变量（因为是 Vimscript 插件）
  init = function()
    -- 默认翻译引擎（针对中文用户推荐多个引擎，提高准确率）
    -- vim.g.translator_default_engines = { "bing", "google", "haici", "youdao" }
    vim.g.translator_default_engines = { "google", "bing" }

    -- 目标语言（'zh' 为中文，'en' 为英文）
    vim.g.translator_target_lang = "zh"

    -- 源语言（为空则自动检测）
    vim.g.translator_source_lang = "auto"

    -- 显示方式：popup（推荐，浮动窗口）、echo（命令行）、preview（预览窗口）、split（分割窗口）
    vim.g.translator_window_type = "popup"

    -- 窗口最大宽度/高度（可选）
    vim.g.translator_window_max_width = 0.6
    vim.g.translator_window_max_height = 0.6

    -- 代理设置（如果需要翻墙访问 Google 等）
    -- vim.g.translator_proxy_url = "socks5://127.0.0.1:1080"

    -- 窗口边框样式（可选）
    vim.g.translator_window_border_chars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" }
  end,
  config = function()
    -- 快捷键映射（推荐使用 <Plug> 映射，避免冲突）
    vim.keymap.set("n", "<leader>t", "<Plug>Translate", { desc = "Translate word under cursor (echo)" })
    vim.keymap.set("v", "<leader>t", "<Plug>TranslateV", { desc = "Translate selection (echo)" })
    -- 替换原文为翻译结果
    vim.keymap.set("n", "<leader>tr", "<Plug>TranslateR", { desc = "Translate & replace word" })
    vim.keymap.set("v", "<leader>tr", "<Plug>TranslateRV", { desc = "Translate & replace selection" })
    -- 剪切翻译结果
    vim.keymap.set("n", "<leader>tx", "<Plug>TranslateX", { desc = "Translate & replace word" })
  end,
}
