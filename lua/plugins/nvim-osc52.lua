return{
    "ojroques/nvim-osc52",
    enabled = true,
    lazy = true,
    init = function ()
        -- TODO: advanced usage?
    end,
    init = function ()
        local function copy(lines, _)
            require('osc52').copy(table.concat(lines, '\n'))
        end

        local function paste()
            return {vim.fn.split(vim.fn.getreg(''), '\n'), vim.fn.getregtype('')}
        end

        vim.g.clipboard = {
            name = 'osc52',
            copy = {['+'] = copy, ['*'] = copy},
            paste = {['+'] = paste, ['*'] = paste},
        }

    end,
    config = function()
        require('osc52').setup {
            max_length = 0,           -- Maximum length of selection (0 for no limit)
            silent = true,           -- Disable message on successful copy
            trim = false,             -- Trim surrounding whitespaces before copy
            tmux_passthrough = false, -- Use tmux passthrough (requires tmux: set -g allow-passthrough on)
        }
    end,
    keys = function()
        -- Now the '+' register will copy to system clipboard using OSC52
        vim.keymap.set('n', '<leader>c', '"+y')
        vim.keymap.set('n', '<leader>cc', '"+yy')
    end
}
