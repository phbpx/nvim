return {
  'AlexvZyl/nordic.nvim',
  lazy = false,
  priority = 1099,
  config = function()
    require 'nordic'.load({
      bold_keywords = true,
    })

    vim.cmd.colorscheme 'nordic'
  end
}
