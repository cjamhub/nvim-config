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
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
}
