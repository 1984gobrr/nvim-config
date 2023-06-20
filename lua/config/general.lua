-- Disable mouse
vim.opt.mouse = ''

-- Disable the intro message when starting
vim.opt.shortmess:append('I')

-- Set Font
vim.opt.guifont = 'JetBrainsMono Nerd Font'

-- Set encoding to UTF-8
vim.opt.fileencoding = 'utf-8'

-- Disable lsp documentation inside split
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

-- Enalbe line number
vim.opt.number = true

-- Disable mode
vim.opt.showmode = false

-- C syntax in .h files
vim.g.c_syntax_for_h = true

-- Two-space indentation for: Lua, HTML, CSS and XML
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'html', 'css', 'xml' },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.expandtab = true
  end
})
