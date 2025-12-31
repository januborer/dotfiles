return {
  "folke/flash.nvim",
  event = "VeryLazy",
  -- 设置keys会让插件默认的所有mapkeys失效hh
  keys = {
    { "<leader>o", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    -- { "S",         mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
    -- { "r",         mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
    -- { "R",         mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    -- { "<c-s>",     mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
  }, -- 禁用默认 keymap
  opts = {
    -- jump是flash插件提供的Default Settings内容
    jump = {
      -- 设置nvim-tree目录也使用flash
      filter = function(win)
        local buf = vim.api.nvim_win_get_buf(win)
        local ft = vim.bo[buf].filetype
        local bt = vim.bo[buf].buftype

        -- 允许普通 buffer + nvim-tree
        return bt == "" or ft == "NvimTree"
      end,
    },
  },
}
