local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set leader key
vim.g.mapleader = ' '

require('lazy').setup("plugins", {
  defaults = { lazy = true },
  checker = { enabled = false },
  change_detection = { enabled = false },
  performance = {
    cache = { enabled = true },
    rtp = {
      disabled_plugins = {
        'gzip',
        'matchit',
        'tarPlugin',
        'tohtml',
        'tutor',
        'zipPlugin',
        'nvim-treesitter-textobjects',
        'getscript',
        'getscriptPlugin',
        'vimball',
        'vimballPlugin',
        '2html_plugin',
        'logipat',
        'rrhelper',
        'spellfile_plugin',
        'shada',
        'man',
        'health',
        'editorconfig',
      },
    },
  },
  debug = false,
})
