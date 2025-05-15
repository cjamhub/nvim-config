return {
  {
    'vhyrro/luarocks.nvim',
    priority = 1000, -- Very high priority is required, luarocks.nvim should run as the first plugin in your config.
    config = true,
  },
  {
    'nvim-neorg/neorg',
    dependencies = { 'luarocks.nvim' },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = '*', -- Pin Neorg to the latest stable release
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {},
          ['core.concealer'] = {},
          ['core.export'] = {},
          ['core.export.markdown'] = {},
          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = '~/Workspace/Jam/notes/',
              },
              default_workspace = 'notes',
            },
          },
          ['core.keybinds'] = {
            config = {
              hook = function(keybinds)
                keybinds.map_event('norg', 'n', '<Leader>td', 'core.qol.todo_items.todo.task_done')
                keybinds.map_event('norg', 'n', '<Leader>tu', 'core.qol.todo_items.todo.task_undone')
                keybinds.map_event('norg', 'n', '<Leader>th', 'core.qol.todo_items.todo.task_on_hold')
                keybinds.map_event('norg', 'n', '<Leader>tp', 'core.qol.todo_items.todo.task_pending')
                keybinds.map_event('norg', 'n', '<Leader>tc', 'core.qol.todo_items.todo.task_cancelled')
                keybinds.map_event('norg', 'n', '<Leader>ti', 'core.qol.todo_items.todo.task_important')

                -- new note
                keybinds.map_event('norg', 'n', '<Leader>nn', 'core.dirman.new.note')
              end,
            },
          },
          ['core.export'] = {},
          ['core.ui.calendar'] = {},
        },
      }
    end,
  },
  vim.keymap.set('n', '<leader>tt', ':Neorg journal today<CR><CR>', {}),
  vim.keymap.set('n', '<leader>ty', ':Neorg journal yesterday<CR><CR>', {}),
}
