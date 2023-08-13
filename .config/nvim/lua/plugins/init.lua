local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system {
        "git",
        "clone",
        "--filter=blob:none",
        "--single-branch",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    }
end
vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup("plugins.modules", {
    defaults = { lazy = true },
    checker = { enabled = false },
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "matchit",
                "matchparen",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
            },
        },
    },
    debug = false,
    dev = {
        path = "~/github",
        pattern = { "core" },
        fallback = true,
    },
})
--theme
-- vim.cmd[[colorscheme catppuccin  ]]
-- vim.cmd[[colorscheme zengarden  ]]
-- vim.cmd[[colorscheme pompeii  ]]
-- vim.cmd[[colorscheme mellow  ]]
-- Define a function to execute a random command

