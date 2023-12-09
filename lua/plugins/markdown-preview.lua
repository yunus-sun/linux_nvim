return {
    "iamcco/markdown-preview.nvim",
    enabled = true,
    ft = "markdown",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function()
        vim.g.mkdp_filetypes = { "markdown" }
    end,
}
