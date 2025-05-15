return {
  {
    -- Floating terminal
    'itmecho/neoterm.nvim',
    opts = {
      clear_on_run = true, -- run clear command before user specified commands
      position = 'center', -- vertical/horizontal/fullscreen
      noinsert = false, -- disable entering insert mode when opening the neoterm window
      persist_mode = false,
    },
    config = function(_, opts)
      require('neoterm').setup(opts)
      vim.keymap.set('n', '<C-/>', ':NeotermToggle<CR>', {})
      vim.keymap.set('t', '<C-/>', '<C-\\><C-n>:NeotermToggle<CR>', {})
      vim.keymap.set('n', '<leader>tx', ':NeotermExit<CR>', {})
    end,
  },
}
