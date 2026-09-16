vim.opt.termguicolors = true

vim.api.nvim_set_hl(0, "Normal", { bg = "none", fg = "{{colors.on_surface.default.hex}}" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

vim.api.nvim_set_hl(0, "@keyword", {
    fg = "{{colors.primary.default.hex}}",
    bold = true
})

vim.api.nvim_set_hl(0, "@string", {
    fg = "{{colors.tertiary.default.hex}}"
})

vim.api.nvim_set_hl(0, "@function", {
    fg = "{{colors.secondary.default.hex}}"
})

vim.api.nvim_set_hl(0, "@type", {
    fg = "{{colors.primary_container.default.hex}}"
})

vim.api.nvim_set_hl(0, "@number", {
    fg = "{{colors.error.default.hex}}"
})
