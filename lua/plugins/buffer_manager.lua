return {
  'j-morano/buffer_manager.nvim',
  lazy = false,
  config = function()
    local bmui = require("buffer_manager.ui")
    vim.keymap.set('n', '<C-Space>', bmui.toggle_quick_menu)
    -- Navigate in the buffer list of the buffer_manager
    vim.keymap.set('n', '<C-j>', bmui.nav_next)
    vim.keymap.set('n', '<C-k>', bmui.nav_prev)
  end
}
