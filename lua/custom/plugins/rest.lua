return {
  "rest-nvim/rest.nvim",
  dependencies = { { "nvim-lua/plenary.nvim" } },
  config = function()
    require("rest-nvim").setup({
      skip_ssl_verification = true,
    })
  end
}
