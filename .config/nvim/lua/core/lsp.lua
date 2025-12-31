vim.lsp.enable({
  "rust_analyzer",
  "lua_ls",
  "clangd",
  "denols",
  "cmake",
  "markdown_oxide",
  "postgres_lsp",
  "taplo",
  "zls",
})
-- vim.lsp.config("*", {
--   local capabilities = {
--     textDocument = {
--       semanticTokens = {
--         multilineTokenSupport = true,
--       },
--     },
--   },
--   root_markers = { ".git" },
-- })

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("my.lsp", {}),
  callback = function(args)
    local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
    if client:supports_method("textDocument/implementation") then
      -- Create a keymap for vim.lsp.buf.implementation ...
    end
    -- -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
    -- if client:supports_method("textDocument/completion") then
    --   -- Optional: trigger autocompletion on EVERY keypress. May be slow!
    --   -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
    --   -- client.server_capabilities.completionProvider.triggerCharacters = chars
    -- vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    -- end
    -- Auto-format ("lint") on save.
    -- Usually not needed if server supports "textDocument/willSaveWaitUntil".
    if
        not client:supports_method("textDocument/willSaveWaitUntil")
        and client:supports_method("textDocument/formatting")
    then
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("my.lsp", { clear = false }),
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id, timeout_ms = 1000 })
        end,
      })
    end
    local opts = { buffer = args.buf }

    -- 核心：将 gd 绑定到 LSP 的跳转定义函数
    -- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

    -- 其他常用的 LSP 快捷键绑定
    -- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    -- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    -- vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
  end,
})
