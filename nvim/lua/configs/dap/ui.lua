return function()
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
        layouts = {
            {
                elements = {
                    -- Provide as ID strings or tables with "id" and "size" keys
                    {
                        id = "scopes",
                        size = 0.50, -- Can be float or integer > 1
                    },
                    -- { id = "breakpoints", size = 0.25 },
                    { id = "watches", size = 0.30 },
                    { id = "stacks", size = 0.20 },
                },
                size = 40,
                position = "left", -- Can be "left", "right", "top", "bottom"
            },
            {
                elements = {
                    "repl",
                    "console"
                },
                size = 0.25,
                position = "bottom", -- Can be "left", "right", "top", "bottom"
            },
        },
        -- tray = {
        --     elements = { "repl" },
        --     size = 10,
        --     position = "bottom", -- Can be "left", "right", "top", "bottom"
        -- },
        floating = {
            max_height = nil, -- These can be integers or a float between 0 and 1.
            max_width = nil, -- Floats will be treated as percentage of your screen.
            border = "rounded", -- Border style. Can be "single", "double" or "rounded"
            mappings = {
                close = { "q", "<Esc>" },
            },
        },
        windows = { indent = 1 },
    })
end