return {
  {
    'NMAC427/guess-indent.nvim',
    event = { 'BufReadPost', 'BufNewFile' },
    config = function()
      require('guess-indent').setup {
        -- ignore lua file
        exclude_filetypes = { 'lua' },
      }
    end,
  },
}
