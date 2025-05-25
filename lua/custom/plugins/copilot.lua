return {
  {
    -- 1) The Copilot client
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot', -- load on :Copilot
    build = ':Copilot auth', -- authenticate once after install
    event = 'InsertEnter', -- or on first Insert
    opts = {
      panel = {
        enabled = false,
      },
      suggestion = {
        enabled = true, -- inline ghost-text
        auto_trigger = true,
        keymap = {
          accept = '<C-l>', -- accept suggestion
          next = '<M-]>', -- next suggestion
          prev = '<M-[>', -- previous suggestion
        },
      },
      filetypes = {
        yaml = true,
        markdown = true,
        gitcommit = true,
        gitrebase = true,
        help = true,
      },
    },
    config = function(_, opts)
      require('copilot').setup(opts)
    end,
  },
  {
    -- 2) Bridge Copilot into nvim-cmp
    'zbirenbaum/copilot-cmp',
    after = { 'copilot.lua', 'nvim-cmp' },
    config = function()
      require('copilot_cmp').setup {
        method = 'getCompletionsCycling',
      }
    end,
  },
}
