return {
    "rcarriga/nvim-dap-ui",
    enabled = true,
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
        local dapui = require("dapui")
        dapui.setup({
            icons = { expanded = "▾", collapsed = "▸" },
            mappings = {
                -- Use a table to apply multiple mappings
                expand = { "<CR>", "<2-LeftMouse>" },
                open = "o",
                remove = "d",
                edit = "e",
                repl = "r",
            },
            sidebar = {
                elements = {
                    -- You can change the order of elements in the sidebar
                    "scopes",
                    "breakpoints",
                    "stacks",
                    "watches",
                },
                width = 40,
                position = "left", -- Can be "left" or "right"
            },
            tray = {
                elements = { "repl" },
                height = 10,
                position = "bottom", -- Can be "bottom" or "top"
            },
            floating = {
                max_height = nil, -- These can be integers or a float between 0 and 1.
                max_width = nil, -- Floats will be treated as percentage of your screen.
                mappings = {
                    close = { "q", "<Esc>" },
                },
            },
            windows = { indent = 1 },
        })
    end,
}
