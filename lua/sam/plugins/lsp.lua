local lsp_zero = require('lsp-zero')

---- General setup

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- mason.nvim information:
-- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guide/integrate-with-mason-nvim.md
require('mason').setup({})
require('mason-lspconfig').setup({
  -- Go to this link to find available servers:
  -- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
  ensure_installed = {
    "clangd", -- C and C++
    "csharp_ls", -- C#
    "gopls", -- Go
    "html", -- HTML
    "lemminx", -- XML
    "jdtls", -- Java
    "tsserver", -- JavaScript and TypeScript
    "jsonls", -- JSON
    "cssls", -- CSS
    "sqls", -- SQL
    "lua_ls", -- Lua
    "autotools_ls", -- Make
    "pyright", -- Python
    -- "r_language_server", -- This really doesn't want to work
    "rust_analyzer", -- Rust
    "matlab_ls" -- Matlab
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

---- Highlighting
vim.cmd('highlight LspDiagnosticsError ctermfg=Red guifg=#ff0000')
vim.cmd('highlight LspDiagnosticsWarning ctermfg=Yellow guifg=#ffff00')
vim.cmd('highlight LspDiagnosticsInformation ctermfg=Cyan guifg=#00ffff')
vim.cmd('highlight LspDiagnosticsHint ctermfg=Green guifg=#00ff00')
