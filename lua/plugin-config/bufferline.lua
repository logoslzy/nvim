vim.opt.termguicolors = true
require("bufferline").setup {
    options = {
        -- 使用 nvim 内置lsp
        diagnostics = "coc",
        -- 左侧让出 nvim-tree 的位置
        offsets = {{
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
        }},

        custom_filter = function(buf, buf_nums)
            if vim.bo[buf].buftype == "terminal" then
                return false
            else
                return true
            end
        end
    }
}
