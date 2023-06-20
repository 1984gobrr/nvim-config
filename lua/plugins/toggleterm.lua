return {
  'akinsho/toggleterm.nvim',
  cmd = 'ToggleTerm',
  lazy = false,
  opts = {
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    autochdir = false,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    persist_mode = true,
    direction = 'float',
    close_on_exit = true,
    shell = vim.o.shell,
    auto_scroll = true,
  }
}
