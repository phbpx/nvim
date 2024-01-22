local status_ok, which_key = pcall(require, "which-key")
if not status_ok then
    return
end

local opts = {
    mode = "n",     -- NORMAL mode
    prefix = "<leader>",
    buffer = nil,   -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true,  -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true,  -- use `nowait` when creating keymaps
}

local mappings = {
    --Toggle Term
    t = {
        name = "Terminal",
        f = { "<cmd>ToggleTerm direction=float<cr>", "Float" }, -- Floating Terminal
        t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "htop" },
        b = { "<cmd>lua _BTOP_TOGGLE()<cr>", "btop" },
        h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" }, -- Horizontal Terminal
        v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },     -- Vertical Terminal
    },
}

which_key.register(mappings, opts)
