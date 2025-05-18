return {
  {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require('hop').setup { keys = 'etovxqpdygfblzhckisuran' }
    end,
    enabled = true,
  },
  -- vim.keymap.set('n', '/', ':HopWord<CR>', { desc = 'Hop word' }),
  vim.keymap.set('n', '/', function()
    require('hop').hint_words()
  end, { desc = 'Hop word' }),
}
