return {
    "rcarriga/nvim-notify",
    enabled = false,
    lazy = true,
    config = function()
        require("notify").setup({
            background_colour = "#000000",
        })
    end,
}
