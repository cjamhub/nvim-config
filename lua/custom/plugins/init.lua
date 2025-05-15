-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- keymaps
  vim.keymap.set('n', '<leader>e', ':e%:h<CR>'),
  vim.keymap.set('n', '<C-j>', ':tabnext<CR>'),
  vim.keymap.set('n', '<C-k>', ':tabprev<CR>'),

  -- set fuzzy search current buffer
  vim.keymap.set('n', '<C-s>', ':Telescope current_buffer_fuzzy_find<CR>'),
}
