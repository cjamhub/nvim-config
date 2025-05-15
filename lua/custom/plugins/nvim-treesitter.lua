return {

  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { 'python', 'go', 'rust' })
      opts.fold = {
        enable = true,
        method = 'expr',
        expr = 'nvim_treesitter#foldexpr()',
      }
      return opts
    end,
  },
}
