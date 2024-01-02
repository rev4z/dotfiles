local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    return
end

treesitter.setup({
    ensure_installed = { "lua", "javascript", "typescript", "python" },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
})
