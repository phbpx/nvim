return {
  { 'MattesGroeger/vim-bookmarks' },
  {
    'tom-anders/telescope-vim-bookmarks.nvim',
    config = function()
      require('telescope').load_extension('vim_bookmarks')
      vim.keymap.set("n", "<leader>ml", ":Telescope vim_bookmarks all<CR>",
        { noremap = true, desc = 'List all bookmarks' })
      vim.keymap.set("n", "<leader>mc", ":Telescope vim_bookmarks current_file<CR>",
        { noremap = true, desc = 'List bookmarks in current file' })
    end
  },
}
